% Create an instance of NIDAQPool
obj = NIDAQPoolmain;

% Initialize dq structure
dq.loadstatus = 1;
dq.mode = "edge"; % 1 for edge counting mode, 0 for analog input mode
dq.UseDAQdummy = 0; % 0 to use real DAQ, 1 to use dummy signal
dq.CtrInName = 'Dev1/ctr0';
dq.CtrInTermName = '/Dev1/PFI1'; %connect to SPCM output
dq.CtrInTrigTermName = '/Dev1/PFI4'; %trigger in
dq.CtrOutName = 'Dev1/ctr1';
dq.CtrOutTermName = '/Dev1/PFI5'; %trigger out
dq.DwellTime = 0.1; % 1 ms dwell time
dq.AIchan = 'Dev1/ai0';
dq.DynRange = 10; % +/- 10V for analog input
dq.SampRate = 1000; % Sample rate for analog input
dq.SampsPerRead = 1000; % Samples per read for analog input
n = 1;
tic
% Setup tasks
dq = obj.setupTasks(dq);
% Take one data point
for i = 1:n
    [dq, sig] = obj.readProcData(dq);
    % Display the data
    disp(['Signal: ', num2str(sig)]);
end

% Clear all tasks
dq = obj.clearAllTasks(dq);
toc