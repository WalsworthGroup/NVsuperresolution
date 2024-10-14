% Create an instance of NIDAQPool
obj = NIDAQPool;

% Initialize dq structure
dq.loadstatus = 1;
dq.edgecountmode = 2; % 1 for edge counting mode, 0 for analog input mode, 2 for multiple pulses mode
dq.UseDAQdummy = 0; % 0 to use real DAQ, 1 to use dummy signal
dq.CtrInName = 'Dev1/ctr0';
dq.CtrInTermName = '/Dev1/PFI0';
dq.CtrInTrigTermName = '/Dev1/PFI1';
dq.CtrOutName = 'Dev1/ctr1';
dq.CtrOutTermName = '/Dev1/PFI2';
dq.DwellTime = 0.04; % 1 ms dwell time
dq.AIchan = 'Dev1/ai0';
dq.DynRange = 10; % +/- 10V for analog input
dq.SampRate = 1000; % Sample rate for analog input
dq.SampsPerRead = 1000; % Samples per read for analog input
dq.npulses = 2;
n = 3;

% Setup tasks
dq = obj.setupTasks(dq);
% Take one data point
for i = 1:n
    tic
    [dq, sig] = obj.readProcData(dq);
    % Display the data
    disp(['Signal: ', num2str(sig)]);
    toc
end

% Clear all tasks
dq = obj.clearAllTasks(dq);