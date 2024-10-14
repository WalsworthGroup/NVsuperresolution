function varargout = FunctionPoolDAQ(varargin)

switch varargin{1}
    case 'SetupTasks'
        [varargout{1},varargout{2},varargout{3}] = SetupTasks(varargin{2});
    case 'TakeData'
        [varargout{1},varargout{2},varargout{3}] = TakeData(varargin{2},varargin{3});
    case 'ClearAllTasks'
        varargout{1} = ClearAllTasks(varargin{2},varargin{3});
    otherwise
        disp('FunctionPoolDAQ - function not found.');
end

function [status,taskhandlein,taskhandleout] = SetupTasks(daqset)
% Setup input and output tasks. Start input task. Output task must be
% executed within scanning loop, so is not included here.
% To be run everytime a new scan begins.
% Define various DAQmx codes
DAQmx_Val_Rising = int32(10280); % Rising
DAQmx_Val_CountUp = int32(10128); %1 Count Up
DAQmx_Val_DigLvl = int32(10152);
DAQmx_Val_Low = int32(10214);
DAQmx_Val_Seconds = int32(10364);

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
status = daq.ni.NIDAQmx.DAQmxCreateCOPulseChanTime(taskhandleout,strcat('/',daqset.devicename,'/',daqset.ctrout),'ctrout',DAQmx_Val_Seconds,DAQmx_Val_Low,0,daqset.pulsedur,daqset.pulsedur);
[status, data] = daq.ni.NIDAQmx.DAQmxSetCOPulseTerm(taskhandleout,'ctrout',strcat('/',daqset.devicename,'/',daqset.ctroutterm)); % Set output terminal

% Start input task
status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandlein);


function [countsnew,sampsread,status] = TakeData(taskhandlein,taskhandleout)
%Outputs pulse with length depending on previously specified dwelltime,
%which is then read in as a trigger for acquisition by ctrinput. The number
%of single photon counts is then extracted from ctrinput.
counts=[uint32(0)];
sampsread = [int32(0)];

status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandleout); % output the pulse
istaskdone = uint32(0);
while istaskdone == 0
    [status,istaskdone] = daq.ni.NIDAQmx.DAQmxIsTaskDone(taskhandleout,istaskdone); % wait for pulse to finish outputting
end
status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandleout); %stop output task when done
[status, countsnew, sampsread, ~] = daq.ni.NIDAQmx.DAQmxReadCounterU32(taskhandlein,int32(1),-1,counts,uint32(1),sampsread,[uint32(0)]); %read counter input buffer

function status = ClearAllTasks(taskhandlein,taskhandleout)
%stop and clear all tasks after scan is finished
status = daq.ni.NIDAQmx.DAQmxStopTask(taskhandlein);
status = daq.ni.NIDAQmx.DAQmxClearTask(taskhandlein);
status = daq.ni.NIDAQmx.DAQmxClearTask(taskhandleout);
% 
