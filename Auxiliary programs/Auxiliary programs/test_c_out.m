%Script to emit a pulse with certain duration using the counter

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
DAQmx_Val_Seconds = int32(10364);

countsold = 0;
countsnew = 0;
status = 0;
counts=[uint32(0)];
sampsread = [int32(0)];
istaskdone = uint32(0);

pulsedur = 0.1; %pulse duration in seconds

% Set up counter output task
tasknameout = gentaskname(); %generate taskname for counter input
[status taskhandleout] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknameout,uint64(0));
status = daq.ni.NIDAQmx.DAQmxCreateCOPulseChanTime(taskhandleout,'/Dev1/ctr1','ctrout',DAQmx_Val_Seconds,DAQmx_Val_Low,0,pulsedur,pulsedur);
[status, data] = daq.ni.NIDAQmx.DAQmxSetCOPulseTerm(taskhandleout,'ctrout','/Dev1/PFI1'); % Set output terminal
for i = 1:10
    tic
    status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandleout);

    istaskdone = uint32(0);
    while istaskdone == 0
        [status,istaskdone] = daq.ni.NIDAQmx.DAQmxIsTaskDone(taskhandleout,istaskdone);
    end
    status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandleout);
    toc
end

status = daq.ni.NIDAQmx.DAQmxClearTask(taskhandleout);
toc