% Create an instance of NIDAQPool
obj = NIDAQPool;

% Initialize dq structure
dq.loadstatus = 1;
dq.edgecountmode = 0; % 1 for edge counting mode, 0 for analog input mode
dq.UseDAQdummy = 0; % 0 to use real DAQ, 1 to use dummy signal
dq.CtrInName = 'Dev1/ctr0';
dq.CtrInTermName = '/Dev1/PFI0';
dq.CtrInternalTrig = '/Dev1/PFI1';
dq.CtrExternalTrig = '/Dev1/PFI2';
dq.extTrigger = uint32(1); %whether external trigger (pulsebaster) is used
dq.CtrOutName = 'Dev1/ctr1';
dq.CtrOutTermName = '/Dev1/PFI12';
dq.DwellTime = 0.1; % 100 ms dwell time
dq.AIchan = 'Dev1/ai0';
dq.DynRange = 10; % +/- 10V for analog input


% Configure buffered counter sampling
dq.totSampsNeed = 1E5;
dq.SampleClock = '/Dev1/PFI3';

dq.ClockPeriod = 1E5; %Clock period in ns, this can be 
dq.ClockRate = 1E9/dq.ClockPeriod; %Clock rate for counter input
dq.SampRate = 2e6; % Sample rate for analog input
dq.SampsPerRead = 1000; % Samples per read for analog input

dq.digReadSize = uint64(1000);%Samples per read of digital input, need to be uint64 to work
%The read is very unstable when above ~5k read size, where it sometimes
%returns arrays of all 0s
dq.bufferSize = uint64(16384); %size of the internal buffer in the DAQ memory, max is 16384 samples

% Setup tasks, setting up takes ~30ms
dq = obj.setupTasks(dq);
old = datetime();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Take one data point
[dq, sig] = obj.readProcData(dq);

t = milliseconds(datetime - old);
disp(['Time: ' , num2str(t), ' ms']);

% Display the data
disp(['Signal: ', num2str(sig)]);

% Clear all tasks
dq = obj.clearAllTasks(dq);

times = linspace( 0, (double(dq.digReadSize)./dq.ClockRate), dq.digReadSize );
% plot(times, sig);