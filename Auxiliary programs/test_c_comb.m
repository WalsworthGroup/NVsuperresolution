% Script to emit pulses of pulsedur via counter output which is then read
% by the same device to be used as a pause trigger for input DAQ using a
% counter input.
pulsedur = 0.2; %pulse duration in seconds = dwell time

daqset.devicename = 'Dev1';
daqset.ctrin = 'ctr0';
daqset.ctrinterm = 'PFI0';
daqset.ctrintrig = 'PFI12';
daqset.ctrout = 'ctr1'; 
daqset.ctroutterm = 'PFI1';

% Define various DAQmx codes
DAQmx_Val_Rising = int32(10280); % Rising
DAQmx_Val_CountUp = int32(10128); %1 Count Up
DAQmx_Val_DigLvl = int32(10152);
DAQmx_Val_Low = int32(10214);
DAQmx_Val_Seconds = int32(10364);

countsold = 0;
countsnew = 0;
status = 0;
counts=[uint32(0)];
sampsread = [int32(0)];
istaskdone = uint32(0);


% Set up counter input task
tasknamein = gentaskname(); %generate taskname for counter input
[status taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein,uint64(0));
status = daq.ni.NIDAQmx.DAQmxCreateCICountEdgesChan(taskhandlein,strcat('/',daqset.devicename,'/',daqset.ctrin)','ctrin',DAQmx_Val_Rising,uint32(0),DAQmx_Val_CountUp);
[status, data] = daq.ni.NIDAQmx.DAQmxSetCICountEdgesTerm(taskhandlein,'ctrin',strcat('/',daqset.devicename,'/',daqset.ctrinterm));

% Set up counter input triggering
status = daq.ni.NIDAQmx.DAQmxSetPauseTrigType(taskhandlein,DAQmx_Val_DigLvl);
[status, data] = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigSrc(taskhandlein,strcat('/',daqset.devicename,'/',daqset.ctrintrig));
status = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigWhen(taskhandlein,DAQmx_Val_Low);

% Set up counter output task
tasknameout = gentaskname(); %generate taskname for counter input
[status taskhandleout] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknameout,uint64(0));
status = daq.ni.NIDAQmx.DAQmxCreateCOPulseChanTime(taskhandleout,strcat('/',daqset.devicename,'/',daqset.ctrout),'ctrout',DAQmx_Val_Seconds,DAQmx_Val_Low,0,pulsedur,pulsedur);
[status, data] = daq.ni.NIDAQmx.DAQmxSetCOPulseTerm(taskhandleout,'ctrout',strcat('/',daqset.devicename,'/',daqset.ctroutterm)); % Set output terminal


% Start input tasks
status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandlein);

for i = 1:10
    tic
    countsold = countsnew;
    status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandleout); % output the pulse
    toc
    istaskdone = uint32(0);
    while istaskdone == 0
        [status,istaskdone] = daq.ni.NIDAQmx.DAQmxIsTaskDone(taskhandleout,istaskdone); % wait for pulse to finish outputting
    end
    status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandleout); %stop output task when done
    [status, countsnew, sampsread, ~] = daq.ni.NIDAQmx.DAQmxReadCounterU32(taskhandlein,int32(1),-1,counts,uint32(1),sampsread,[uint32(0)]); %read counter input buffer
    counts = countsnew-countsold %subtract cumulative counts to get counts for one pulse
end

%stop all tasks
status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandlein);
status = daq.ni.NIDAQmx.DAQmxClearTask(taskhandlein);
status = daq.ni.NIDAQmx.DAQmxClearTask(taskhandleout);
% 
