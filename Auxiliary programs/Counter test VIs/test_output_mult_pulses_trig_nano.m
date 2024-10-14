
%% DAQ settings
dq.loadstatus = 1;
dq.edgecountmode = 2; % 1 for edge counting mode, 0 for analog input mode, 2 for multiple pulses mode
dq.UseDAQdummy = 0; % 0 to use real DAQ, 1 to use dummy signal
dq.CtrInName = 'Dev1/ctr0';
dq.CtrInTermName = '/Dev1/PFI2'; %counter in (connect to SPCM output)
dq.CtrInTrigTermName = '/Dev1/PFI4'; %trigger input
dq.CtrOutName = 'Dev1/ctr1';
dq.CtrOutTermName = '/Dev1/PFI5'; %pulse output
dq.CtrOutTrigTermName = '/Dev1/PFI7'; %pulse output trigger terminal
dq.DownTime = 0.055; % 55 ms settling time
dq.DwellTime = 0.040; % 1 ms dwell time
dq.AIchan = 'Dev1/ai0';
dq.DynRange = 10; % +/- 10V for analog input
dq.SampRate = 1000; % Sample rate for analog input
dq.SampsPerRead = 1000; % Samples per read for analog input
dq.npulses = 11;

obj = NIDAQPool;

%% Counter input 
% Set up counter input task
tasknamein = obj.genTaskName(); % Generate task name for counter input
[~, taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein, uint64(0));
status = daq.ni.NIDAQmx.DAQmxCreateCICountEdgesChan(taskhandlein, dq.CtrInName, 'ctrin', obj.DAQmx_Val_Rising, uint32(0), obj.DAQmx_Val_CountUp);
[status, data] = daq.ni.NIDAQmx.DAQmxSetCICountEdgesTerm(taskhandlein, 'ctrin', dq.CtrInTermName);

% Set up counter input triggering
status = daq.ni.NIDAQmx.DAQmxSetPauseTrigType(taskhandlein, obj.DAQmx_Val_DigLvl);
[status, data] = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigSrc(taskhandlein, dq.CtrInTrigTermName);
status = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigWhen(taskhandlein, obj.DAQmx_Val_Low);
status = daq.ni.NIDAQmx.DAQmxCfgSampClkTiming(taskhandlein,dq.CtrInTrigTermName,double(1/dq.DwellTime*2),obj.DAQmx_Val_Rising,obj.DAQmx_Val_ContSamps,uint64(dq.npulses*2));

% Start input task
status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandlein);

%% Nanostage settings

initialize_handle; % initialize communication with nanostage

%movement waveform
startpos = 0;
endpos = 10;
interval = 2; %step size between positions
postime = (dq.DownTime + dq.DwellTime); %how long to spend at each position (in ms)
rate = 2; %rate of writing waveform in ms
waveform = double(startpos:interval:endpos); 
waveform = repmat(waveform, round(postime/rate), 1);
waveform= reshape(waveform, 1, []);
waveform = [waveform 0]; % add zero at the end

axis = 2;
datapoints = length(waveform);
clock = 2; %line clock is #2
error = calllib('Madlib','MCL_IssBindClockToAxis',2,2,axis,handle);

%% Counter output
% Set up counter output task
tasknameout = obj.genTaskName(); % Generate task name for counter output
[status, taskhandleout] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknameout, uint64(0));
status = daq.ni.NIDAQmx.DAQmxCreateCOPulseChanTime(taskhandleout, dq.CtrOutName, 'ctrout', obj.DAQmx_Val_Seconds, obj.DAQmx_Val_Low, dq.DownTime, dq.DownTime, dq.DwellTime); %initial delay = downtime, so that stage moves first before taking any data
status = daq.ni.NIDAQmx.DAQmxSetCOEnableInitialDelayOnRetrigger(taskhandleout,'ctrout',uint32(1)); %ensure initial delay is included when retriggered
status = daq.ni.NIDAQmx.DAQmxCfgImplicitTiming(taskhandleout,obj.DAQmx_Val_FiniteSamps,uint64(dq.npulses)); %set number of pulses
status = daq.ni.NIDAQmx.DAQmxCfgDigEdgeStartTrig(taskhandleout,dq.CtrOutTrigTermName,obj.DAQmx_Val_Rising); %configure digital start trigger for outputting pulse train
status = daq.ni.NIDAQmx.DAQmxSetStartTrigRetriggerable(taskhandleout,uint32(1));
[status, data] = daq.ni.NIDAQmx.DAQmxSetCOPulseTerm(taskhandleout, 'ctrout', dq.CtrOutTermName); % Set output terminal
status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandleout); % Output the pulse

%% Start DAQ and counter output tasks, wait until done
nbatches = 3;
tic
for i = 1:nbatches %repeat batch scans/reads nbatches number of times
    %load waveform to nanostage and generate trigger to counter output task

    error = calllib('Madlib','MCL_LoadWaveFormN',axis,datapoints,rate,waveform,handle);

    %% Read counter
    sampsread = [int32(0)];
    countsread = [uint32(0)];
    sampsread = int32(zeros(dq.npulses,1));
    countsread = uint32(sampsread);
    disp('Started to read...');
    [status, countsread, sampsread, ~] = ...
        daq.ni.NIDAQmx.DAQmxReadCounterU32(taskhandlein, int32(dq.npulses),5, countsread, uint32(length(sampsread)), sampsread, [uint32(0)]); % Read counter input buffer
    disp(countsread);
    pause(0.05); %delay needed to ensure read command is finished
end

%% Stop tasks
status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandleout); % Stop output task when done
status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandlein);
status = daq.ni.NIDAQmx.DAQmxClearTask(taskhandlein);

%% Stop Nanostage
cleanup(handle,0);