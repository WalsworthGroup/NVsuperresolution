% Initialize dq structure
dq.loadstatus = 1;
dq.edgecountmode = 2; % 1 for edge counting mode, 0 for analog input mode, 2 for multiple pulses mode
dq.UseDAQdummy = 0; % 0 to use real DAQ, 1 to use dummy signal
dq.CtrInName = 'Dev1/ctr0';
dq.CtrInTermName = '/Dev1/PFI2'; %counter in (connect to SPCM output)
dq.CtrInTrigTermName = '/Dev1/PFI4'; %trigger input
dq.CtrOutName = 'Dev1/ctr1';
dq.CtrOutTermName = '/Dev1/PFI5'; %pulse output
dq.CtrOutTrigTermName = '/Dev1/PFI3'; %pulse output trigger terminal
dq.DownTime = 0.055; % 55 ms settling time
dq.DwellTime = 0.04; % 1 ms dwell time
dq.AIchan = 'Dev1/ai0';
dq.DynRange = 10; % +/- 10V for analog input
dq.SampRate = 1000; % Sample rate for analog input
dq.SampsPerRead = 1000; % Samples per read for analog input
dq.npulses = 10;

obj = NIDAQPool;

%% Counter output
% Set up counter output task
tasknameout = obj.genTaskName(); % Generate task name for counter output
[status, taskhandleout] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknameout, uint64(0));
status = daq.ni.NIDAQmx.DAQmxCreateCOPulseChanTime(taskhandleout, dq.CtrOutName, 'ctrout', obj.DAQmx_Val_Seconds, obj.DAQmx_Val_Low, 0, dq.DownTime, dq.DwellTime);
status = daq.ni.NIDAQmx.DAQmxCfgImplicitTiming(taskhandleout,obj.DAQmx_Val_FiniteSamps,uint64(dq.npulses)); %set number of pulses
status = daq.ni.NIDAQmx.DAQmxCfgDigEdgeStartTrig(taskhandleout,dq.CtrOutTrigTermName,obj.DAQmx_Val_Rising); %configure digital start trigger for outputting pulse train
[status, data] = daq.ni.NIDAQmx.DAQmxSetCOPulseTerm(taskhandleout, 'ctrout', dq.CtrOutTermName); % Set output terminal

% Start output task, wait until done
status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandleout); % Output the pulse
istaskdone = uint32(0);
tic
while istaskdone == 0
    [status, istaskdone] = daq.ni.NIDAQmx.DAQmxIsTaskDone(taskhandleout, istaskdone); % Wait for pulse to finish outputting
end
toc
% pause(1);
status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandleout); % Stop output task when done


