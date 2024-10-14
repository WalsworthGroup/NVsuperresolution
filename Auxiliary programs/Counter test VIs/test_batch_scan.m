
%% DAQ settings
dq.loadstatus = 1;
dq.mode = "edge_batch"; % 1 for edge counting mode, 0 for analog input mode, 2 for multiple pulses mode, 3 for batch scan mode
dq.UseDAQdummy = 0; % 0 to use real DAQ, 1 to use dummy signal
dq.CtrInName = 'Dev1/ctr0';
dq.CtrInTermName = '/Dev1/PFI0'; %counter in (connect to SPCM output)
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

obj = NIDAQPooltest;

dq = obj.setupTasks(dq); % setup tasks for batch scan

%% Nanostage settings

initialize_handle; % initialize communication with nanostage

%movement waveform
startpos = 0;
endpos = 20;
interval = 2; %step size between positions
postime = dq.DownTime + dq.DwellTime; %how long to spend at each position (in ms)
rate = 0.02; %rate of writing waveform
scanposvec = double(startpos:interval:endpos); 

waveform = repmat(scanposvec, round(postime/rate), 1);
waveform= reshape(waveform, 1, []);
waveform = [waveform 0]; % add zero at the end
axis = 2;
datapoints = length(waveform);
clock = 2; %line clock is #2
error = calllib('Madlib','MCL_IssBindClockToAxis',2,2,axis,handle);

%% Start DAQ and counter output tasks, wait until done
nbatches = 5;
tic
for i = 1:nbatches %repeat batch scans/reads nbatches number of times
    %load waveform to nanostage and generate trigger to counter output task
    error = calllib('Madlib','MCL_LoadWaveFormN',axis,datapoints,rate,waveform,handle);
    [dq,sig] = obj.procReadEdgeCountingBatch(dq); %read counts from DAQ
    pause(0.05);
end

%% Stop and clear all tasks
status = obj.clearAllTasks(dq);

%% Clear Nanostage
cleanup(handle,0);