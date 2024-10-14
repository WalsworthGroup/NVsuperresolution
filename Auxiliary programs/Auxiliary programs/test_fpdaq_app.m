% Script to test new FunctionPoolDAQ after being adapted for the confocal app

dq.CtrInName = '/Dev1/ctr0';
dq.CtrInTermName = '/Dev1/PFI0';
dq.CtrInTrigTermName = '/Dev1/PFI13';
dq.CtrOutName = '/Dev1/ctr1';
dq.CtrOutTermName = '/Dev1/PFI1';
dq.edgecountmode = 1;

dq.DwellTime= 0.2; %pulse duration in seconds = dwell time
dq.countsnew = 0;

dq = FunctionPoolDAQ('SetupTasks',dq); %setup tasks and start input task

n=10;
zscanresvec = zeros(1,n);
tic
for i = 1:n
    [dq,zscanresvec(i)] = FunctionPoolDAQ('ReadProcData',dq);
    toc
end
zscanresvec

dq= FunctionPoolDAQ('ClearAllTasks',dq);
