%Script to count edges with counter input, pausing the counting when
%digital input is low (thus needing the pause trigger)

tic
% Define various DAQmx codes
DAQmx_Val_Volts= int32(10348); % measure volts
DAQmx_Val_Rising = int32(10280); % Rising
DAQmx_Val_FiniteSamps = int32(10178); % Finite Samples
DAQmx_Val_CountUp = int32(10128); % Count Up
DAQmx_Val_CountDown = int32(10124); % Count Down
DAQmx_Val_GroupByChannel = int32(0); % Group per channel
DAQmx_Val_ContSamps = int32(10123); % Continuous Samples
DAQmx_Val_DigLvl = int32(10152); 
DAQmx_Val_Low = int32(10214);

countsold = 0;
countsnew = 0;
status = 0;
counts=[uint32(0)];
sampsread = [int32(0)];

% Set up counter input task
tasknamein = gentaskname(); %generate taskname for counter input
[status taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein,uint64(0));
status = daq.ni.NIDAQmx.DAQmxCreateCICountEdgesChan(taskhandlein,'/Dev1/ctr0','ctr0',DAQmx_Val_Rising,uint32(0),DAQmx_Val_CountUp);
[status, data] = daq.ni.NIDAQmx.DAQmxSetCICountEdgesTerm(taskhandlein,'ctr0','/Dev1/PFI0');
status = daq.ni.NIDAQmx.DAQmxSetCICountEdgesCountDirThreshVoltage(taskhandlein,'ctr0',1.8);

% Set up counter input triggering
status = daq.ni.NIDAQmx.DAQmxSetPauseTrigType(taskhandlein,DAQmx_Val_DigLvl);
[status, data] = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigSrc(taskhandlein,'/Dev1/PFI9');
status = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigWhen(taskhandlein,DAQmx_Val_Low);

% Start tasks
status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandlein);

for i = 1:2
    tic
    countsold = countsnew;
    [status, countsnew, sampsread, ~] = daq.ni.NIDAQmx.DAQmxReadCounterU32(taskhandlein,int32(1),-1,counts,uint32(1),sampsread,[uint32(0)]);
%     pause(0.05)
    counts = countsnew-countsold
    toc
    
end

status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandlein);
status = daq.ni.NIDAQmx.DAQmxClearTask(taskhandlein);