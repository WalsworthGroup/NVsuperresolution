% Set up counter input task
tasknamein = gentaskname(); %generate taskname for counter input
[status, taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein,uint64(0));

samplerate = 2000000;
sampspertrace = int32(50000);
numreads = 1;
status = daq.ni.NIDAQmx.DAQmxCreateAIVoltageChan(taskhandlein,'/Dev1/ai0','spcm',daq.ni.NIDAQmx.DAQmx_Val_Cfg_Default,-2,2,daq.ni.NIDAQmx.DAQmx_Val_Volts,char(0));
status = daq.ni.NIDAQmx.DAQmxCfgSampClkTiming(taskhandlein,'OnboardClock',samplerate,daq.ni.NIDAQmx.DAQmx_Val_Rising,daq.ni.NIDAQmx.DAQmx_Val_ContSamps,uint64(sampspertrace));
% status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandlein); %not absolutely needed

darray = zeros(1,sampspertrace);
dmatrix = zeros(numreads,sampspertrace);
actualsampsread=0;
tic
for i = 1:numreads
    [status,darray,sampsPerChanRead,~] = daq.ni.NIDAQmx.DAQmxReadAnalogF64(taskhandlein,sampspertrace,-1,uint32(0),darray,uint32(sampspertrace),int32(actualsampsread),uint32(0));
    dmatrix(i,:) = darray;
end
toc
status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandlein);
status = daq.ni.NIDAQmx.DAQmxClearTask(taskhandlein);
mean(darray)
