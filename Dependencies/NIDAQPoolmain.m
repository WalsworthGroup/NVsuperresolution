classdef NIDAQPoolmain
    properties
        %codes for various DAQ properties
        DAQmx_Val_Rising = int32(10280); % Rising
        DAQmx_Val_Falling = int32(10171); % Falling
        DAQmx_Val_CountUp = int32(10128); % Count Up
        DAQmx_Val_DigLvl = int32(10152);
        DAQmx_Val_Low = int32(10214);
        DAQmx_Val_Seconds = int32(10364);
        DAQmx_Val_FiniteSamps = int32(10178);
        DAQmx_Val_ContSamps = int32(10123);
        DAQmx_Val_Cfg_Default = int32(-1);
        DAQmx_Val_Volts = int32(10348);
    end

    methods
        function [dq,sig] = take1datagen(obj,dq) %take a single reading from the DAQ
            dq = obj.setupTasks(dq);
            [dq,sig] = obj.readProcData(dq);
            sig = double(sig);
            dq = obj.clearAllTasks(dq);
        end

        function dq = setupTasks(obj, dq)
            % Setup input and output tasks. Start input task.
            % Output task must be executed within scanning loop, so it is not included here.
            % To be run every time a new scan begins.
            if dq.loadstatus == 1
                if dq.mode == "analog"
                    dq = obj.setupAnalogInput(dq);
                elseif dq.mode == "edge"
                    dq = obj.setupEdgeCounting(dq);
                elseif dq.mode == "edge_batch"
                    dq = obj.setupEdgeCountingBatch(dq);
                else
                    dq = obj.setupEdgeCounting(dq);
                end
            end
        end

        function [dq, sig] = readProcData(obj, dq)
            % Reads and processes data from the DAQ.
            if dq.loadstatus == 1
                if dq.mode == "edge"
                    [dq, sig] = obj.processEdgeCounting(dq);
                elseif dq.mode == "edge_batch"
                    [dq, sig] = obj.procReadEdgeCountingBatch(dq);
                elseif dq.mode == "analog"
                    sig = obj.processAnalogInput(dq);
                end
            elseif dq.UseDAQdummy == 1
                % If use dummy is activated, generate a random number as "signal"
                sig = rand(1) * 1e5;
            end
        end

        function dq = takeData(~, dq)
            % Outputs pulse with length depending on previously specified dwell time,
            % which is then read in as a trigger for acquisition by ctrinput.
            % The number of single photon counts is then extracted from ctrinput.
            countsread = [uint32(0)];
            sampsread = [int32(0)];
            status = daq.ni.NIDAQmx.DAQmxStartTask(dq.taskhandleout); % Output the pulse
            istaskdone = uint32(0);
            while istaskdone == 0
                [status, istaskdone] = daq.ni.NIDAQmx.DAQmxIsTaskDone(dq.taskhandleout, istaskdone); % Wait for pulse to finish outputting
            end
            status = daq.ni.NIDAQmx.DAQmxStopTask(dq.taskhandleout); % Stop output task when done
            [dq.status, dq.countsnew, dq.sampsread, ~] = ...
                daq.ni.NIDAQmx.DAQmxReadCounterU32(dq.taskhandlein, int32(1), -1, countsread, uint32(1), sampsread, [uint32(0)]); % Read counter input buffer
        end

        function dq = clearAllTasks(~, dq)
            % Stop and clear all tasks after scan is finished.
            if dq.loadstatus == 1
                status = daq.ni.NIDAQmx.DAQmxStopTask(dq.taskhandlein);
                status = daq.ni.NIDAQmx.DAQmxClearTask(dq.taskhandlein);
                if dq.mode == "edge_batch"
                    status = daq.ni.NIDAQmx.DAQmxStopTask(dq.taskhandleout);
                end
                if dq.mode == "edge" || dq.mode == "edge_batch"
                    status = daq.ni.NIDAQmx.DAQmxClearTask(dq.taskhandleout);
                end
                dq.status = status;
            end
        end

        function taskname = genTaskName(~)
            % Generate a random task name.
            s = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            numRands = length(s); % Number of random characters to choose from
            sLength = 8; % Length of random string to generate
            taskname = s(ceil(rand(1, sLength) * numRands)); % Generate random string
        end
        %% Batch scanning functions
        function [dq, sig] = procReadEdgeCountingBatch(~, dq)
            % disp('Started to read...');
            % Process data for edge counting mode.
            sampsread = int32(zeros(dq.npulses,1));
            totalcounts = uint32(sampsread);

            [status, totalcounts, sampsread, ~] = ...
                daq.ni.NIDAQmx.DAQmxReadCounterU32(dq.taskhandlein, int32(dq.npulses),5, totalcounts, uint32(length(sampsread)), sampsread, [uint32(0)]); % Read counter input buffer
            countsreadvec = totalcounts - [dq.countsnew;totalcounts(1:end-1)];
            % disp(countsreadvec);
            dq.countsnew = totalcounts(end);
            sig = countsreadvec / dq.DwellTime; % Convert to counts per second
			sig = double(sig)/1000; % convert to kcps
            % disp('Finished read...');
        end
    end
    
    methods (Access = private)
        function dq = setupAnalogInput(obj, dq)
            % Setup tasks for analog input mode.
            tasknamein = obj.genTaskName(); % Generate task name for analog input
            [status, taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein, uint64(0));
            status = daq.ni.NIDAQmx.DAQmxCreateAIVoltageChan(taskhandlein, dq.AIchan, 'analoginputchan', ...
                obj.DAQmx_Val_Cfg_Default, -dq.DynRange, dq.DynRange, obj.DAQmx_Val_Volts, char(0));
            status = daq.ni.NIDAQmx.DAQmxCfgSampClkTiming(taskhandlein, 'OnboardClock', dq.SampRate, ...
                obj.DAQmx_Val_Rising, obj.DAQmx_Val_ContSamps, uint64(dq.SampsPerRead));
            
            % Enter all data into dq
            dq.status = status;
            dq.taskhandlein = taskhandlein;
        end

        function dq = setupEdgeCounting(obj, dq)
            % Setup tasks for edge counting mode.
            dq.countsnew = 0; % Reset cumulative edge counter
            
            % Set up counter input task
            tasknamein = obj.genTaskName(); % Generate task name for counter input
            [~, taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein, uint64(0));
            status = daq.ni.NIDAQmx.DAQmxCreateCICountEdgesChan(taskhandlein, dq.CtrInName, 'ctrin', obj.DAQmx_Val_Rising, uint32(0), obj.DAQmx_Val_CountUp);
            [status, data] = daq.ni.NIDAQmx.DAQmxSetCICountEdgesTerm(taskhandlein, 'ctrin', dq.CtrInTermName);
            
            % Set up counter input triggering
            status = daq.ni.NIDAQmx.DAQmxSetPauseTrigType(taskhandlein, obj.DAQmx_Val_DigLvl);
            [status, data] = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigSrc(taskhandlein, dq.CtrInTrigTermName);
            status = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigWhen(taskhandlein, obj.DAQmx_Val_Low);
            
            % Set up counter output task
            tasknameout = obj.genTaskName(); % Generate task name for counter output
            [status, taskhandleout] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknameout, uint64(0));
            status = daq.ni.NIDAQmx.DAQmxCreateCOPulseChanTime(taskhandleout, dq.CtrOutName, 'ctrout', obj.DAQmx_Val_Seconds, obj.DAQmx_Val_Low, 0, dq.DwellTime, dq.DwellTime); %Shortening the low time does not seem to make the code faster
            [status, data] = daq.ni.NIDAQmx.DAQmxSetCOPulseTerm(taskhandleout, 'ctrout', dq.CtrOutTermName); % Set output terminal
            
            % Start input task
            status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandlein);
            
            % Enter all data into dq
            dq.status = status;
            dq.taskhandlein = taskhandlein;
            dq.taskhandleout = taskhandleout;
        end

        function [dq, sig] = processEdgeCounting(obj, dq)
            % Process data for edge counting mode.
            countsold = dq.countsnew;
            dq = obj.takeData(dq);
            countsraw = dq.countsnew - countsold; % Subtract new and old cumulative counts to get counts for one pulse
            % disp(countsraw);
            sig = countsraw / dq.DwellTime; % Convert to counts per second
			sig = double(sig)/1000; % convert to kcps
        end

        function sig = processAnalogInput(~, dq)
            % Process data for analog input mode.
            darray = zeros(1, dq.SampsPerRead);
            actualsampsread = 0;
            [dq.status, dq.VoltageInputArray, ~, ~] = ...
                daq.ni.NIDAQmx.DAQmxReadAnalogF64(dq.taskhandlein, int32(dq.SampsPerRead), -1, uint32(0), ...
                darray, uint32(dq.SampsPerRead), int32(actualsampsread), uint32(0));
            sig = mean(dq.VoltageInputArray);
        end

        %% Batch scanning functions
        function dq = setupEdgeCountingBatch(obj,dq)
            % Setup tasks for batch edge counting mode.
            dq.countsnew = 0; % Reset cumulative edge counter

            %% Counter input
            % Set up counter input task
            tasknamein = obj.genTaskName(); % Generate task name for counter input
            [~, taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein, uint64(0));
            status = daq.ni.NIDAQmx.DAQmxCreateCICountEdgesChan(taskhandlein, dq.CtrInName, 'ctrin', obj.DAQmx_Val_Rising, uint32(0), obj.DAQmx_Val_CountUp);
            [status, data] = daq.ni.NIDAQmx.DAQmxSetCICountEdgesTerm(taskhandlein, 'ctrin', dq.CtrInTermName);

            % Set up counter input triggering
            status = daq.ni.NIDAQmx.DAQmxSetPauseTrigType(taskhandlein, obj.DAQmx_Val_DigLvl);
            [status, data] = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigSrc(taskhandlein, dq.CtrInTrigTermName);
            status = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigWhen(taskhandlein, obj.DAQmx_Val_Low);
            status = daq.ni.NIDAQmx.DAQmxCfgSampClkTiming(taskhandlein,dq.CtrInTrigTermName,double(1/dq.DwellTime*2),obj.DAQmx_Val_Falling,obj.DAQmx_Val_ContSamps,uint64(dq.npulses*10));

            % Start input task
            status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandlein);

            %% Counter output
            % Set up counter output task
            tasknameout = obj.genTaskName(); % Generate task name for counter output
            [status, taskhandleout] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknameout, uint64(0));
            status = daq.ni.NIDAQmx.DAQmxCreateCOPulseChanTime(taskhandleout, dq.CtrOutName, 'ctrout', obj.DAQmx_Val_Seconds, obj.DAQmx_Val_Low, dq.DownTime, dq.DownTime, dq.DwellTime); %initial delay = downtime, so that stage moves first before taking any data
            status = daq.ni.NIDAQmx.DAQmxSetCOEnableInitialDelayOnRetrigger(taskhandleout,'ctrout',uint32(1)); %ensure initial delay is included when retriggered
            status = daq.ni.NIDAQmx.DAQmxCfgImplicitTiming(taskhandleout,obj.DAQmx_Val_FiniteSamps,uint64(dq.npulses)); %set number of pulses
            status = daq.ni.NIDAQmx.DAQmxCfgDigEdgeStartTrig(taskhandleout,dq.CtrOutTrigTermName,obj.DAQmx_Val_Rising); %configure digital start trigger for outputting pulse train
            status = daq.ni.NIDAQmx.DAQmxSetStartTrigRetriggerable(taskhandleout,uint32(1));
            [status, data] = daq.ni.NIDAQmx.DAQmxSetCOPulseTerm(taskhandleout, 'ctrout', dq.CtrOutTermName); % Set output terminal
            status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandleout); % start (i.e. arm) task. After this it will emit the pulse if trigger arrives.

            % Enter all data into dq
            dq.status = status;
            dq.taskhandlein = taskhandlein;
            dq.taskhandleout = taskhandleout;
        end
    end
end