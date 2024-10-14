% Script to emit pulses of pulsedur via counter output which is then read
% by the same device to be used as a pause trigger for input DAQ using a
% counter input.

%Similar to test_c_comb but change to functions in FunctionPoolDAQ as a
%test

daqset.devicename = 'Dev1';
daqset.ctrin = 'ctr0';
daqset.ctrinterm = 'PFI0';
daqset.ctrintrig = 'PFI13';
daqset.ctrout = 'ctr1'; 
daqset.ctroutterm = 'PFI1';
daqset.pulsedur = 0.2; %pulse duration in seconds = dwell time

countsold = 0;
countsnew = 0;
status = 0;
counts=[uint32(0)];
istaskdone = uint32(0);

[status,taskhandlein,taskhandleout] = FunctionPoolDAQtest('SetupTasks',daqset); %setup tasks and start input task


for i = 1:10
    tic
    countsold = countsnew;
    [countsnew,sampsread,status] =  FunctionPoolDAQtest('TakeData',taskhandlein,taskhandleout);
    counts = countsnew-countsold %subtract cumulative counts to get counts for one pulse
    toc
end

status = FunctionPoolDAQtest('ClearAllTasks',taskhandlein,taskhandleout);
