tic
dq = FunctionPoolDAQ('SetupTasks',dq); %setup tasks and start input task
[dq,counts] = FunctionPoolDAQ('ReadProcData',dq);
dq= FunctionPoolDAQ('ClearAllTasks',dq);
toc
counts