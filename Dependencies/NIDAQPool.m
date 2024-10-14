%class dq takes in a struct object (dq), as well as a NIDAQPool class object (obj), which includes necessary parameters
%for the experiment operation
%Neeed to include list of all needed parameters
%TODO: clean upcomments, combine sampsperread and digReadSize, remove
%waiting for output task and always wait for falling edge trigger instead

classdef NIDAQPool

    methods
        function dq = setupTasks(obj, dq)

            if dq.extTrigger == 1
                dq.CtrInTrigTermName = dq.CtrExternalTrig;
            else
                dq.CtrInTrigTermName = dq.CtrInternalTrig;
            end

            % Setup input and output tasks. Start input task.
            % Output task must be executed within scanning loop, so it is not included here.
            % To be run every time a new scan begins.
            %8/28 JY changed edge countingto buffered
            if dq.loadstatus == 1
                if dq.edgecountmode == 1
                    dq = obj.setupBufferedEdgeCounting(dq);
                else
                    dq = obj.setupAnalogInput(dq);
                end
            end
        end

        function [dq, sig] = readProcData(obj, dq)
            % Reads and processes data from the DAQ.sampsread
            if dq.loadstatus == 1
                if dq.edgecountmode == 1
                    [dq, sig] = obj.processEdgeCounting(dq);
                else
                    sig = obj.processAnalogInput(dq);
                end
            elseif dq.UseDAQdummy == 1
                % If use dummy is activated, generate a random number as "signal"
                sig = rand(1) * 1e5;
            end
        end

        %changes dq structure as [dq.status, dq.countsnew, dq.sampsread, ~]
        function dq = takeData(obj, dq)
            % Outputs pulse with length depending on previously specified dwell time,
            % which is then read in as a trigger for acquisition by ctrinput.
            % The number of single photon counts is then extracted from ctrinput.
            dq.dataIn = zeros(1, dq.totSampsNeed, 'uint32');
            dq.countsnew = zeros(1, dq.digReadSize, 'uint32');
            istaskdone = uint32(0);
            timeout = 2;
            timestart = datetime();
            sampsPerChanRead = int32(0);
            totalSampsRead = 0;
            
            if dq.extTrigger == 0
                status = daq.ni.NIDAQmx.DAQmxStartTask(dq.taskhandleout); % Output the pulse
                while istaskdone == 0
                    [status, istaskdone] = daq.ni.NIDAQmx.DAQmxIsTaskDone(dq.taskhandleout, istaskdone); % Wait for pulse to finish outputting
                end
                status = daq.ni.NIDAQmx.DAQmxStopTask(dq.taskhandleout); % Stop output task when done

            else 
                % while totalSampsRead<dq.totSampsNeed && (datetime()-timestart)<seconds(timeout)
                    % [dq.status, dq.countsnew, sampsPerChanRead, ~] = [status, array of new counts length dq.digReadSize, actual number of new samples read]
                    [status, dq.countsnew, sampsPerChanRead, ~]=...
                    daq.ni.NIDAQmx.DAQmxReadCounterU32(dq.taskhandlein, int32(dq.digReadSize), timeout, dq.countsnew, uint32(dq.digReadSize), sampsPerChanRead, uint32(0)); % Read counter input buffer
                    
                    %fill the total data vector dq.dataIn with each read
                    % for i=1:sampsPerChanRead
                    %     if i < dq.totSampsNeed  
                    %         dq.dataIn(i+totalSampsRead) = countsnew(i);
                    %     end
                    % end
                    % 
                    % %increment read samples with the appropriate amount
                    % totalSampsRead = totalSampsRead + sampsPerChanRead;
                    % 
                    % %fill the total data array dq.dataIn with each read
                    % 

                % end
            end
        end

        function dq = clearAllTasks(obj, dq)
            % Stop and clear all tasks after scan is finished.
            if dq.loadstatus == 1
                status = daq.ni.NIDAQmx.DAQmxStopTask(dq.taskhandlein);
                status = daq.ni.NIDAQmx.DAQmxClearTask(dq.taskhandlein);

                if dq.edgecountmode == 1 && dq.extTrigger == 0
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
        

        
    end
    
    methods (Access = private)
        function dq = setupEdgeCounting(obj, dq)
            % Setup tasks for edge counting mode.
            DAQmx_Val_Rising = int32(10280); % Rising
            DAQmx_Val_CountUp = int32(10128); % Count Up
            DAQmx_Val_DigLvl = int32(10152);
            DAQmx_Val_Low = int32(10214);
            DAQmx_Val_Seconds = int32(10364);
            DAQmx_Val_Falling = int32(10171);
            dq.countsnew = 0; % Reset cumulative edge counter
            
            % Set up counter input task
            disp('ctr input');
            tasknamein = obj.genTaskName(); % Generate task name for counter input
            [~, taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein, uint64(0));
            status = daq.ni.NIDAQmx.DAQmxCreateCICountEdgesChan(taskhandlein, dq.CtrInName, 'ctrin', DAQmx_Val_Rising, uint32(0), DAQmx_Val_CountUp);
            [status, data] = daq.ni.NIDAQmx.DAQmxSetCICountEdgesTerm(taskhandlein, 'ctrin', dq.CtrInTermName);
            
            % Set up counter input triggering
            disp('pause trg setup');
            status = daq.ni.NIDAQmx.DAQmxSetPauseTrigType(taskhandlein, DAQmx_Val_DigLvl);
            [status, data] = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigSrc(taskhandlein, dq.CtrInTrigTermName);
            status = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigWhen(taskhandlein, DAQmx_Val_Low);

            % set DAQ to retriggerable option    
            % status = daq.ni.NIDAQmx.DAQmxSetStartTrigRetriggerable(taskhandlein, uint32(1))
% 
            %setup another input trigger task for the falling edge, use
            %falling edge to stop data aquisition 
            disp('falling edge setup');
            status = daq.ni.NIDAQmx.DAQmxCfgDigEdgeRefTrig(taskhandlein, dq.CtrInTrigTermName, DAQmx_Val_Falling, dq.digReadSize);
            
            %If external trigger is 0, set up internal trigger 
            if dq.extTrigger == 0
                disp('self trig out setup');
                % Set up counter output task
                tasknameout = obj.genTaskName(); % Generate task name for counter output
                [status, taskhandleout] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknameout, uint64(0));
                status = daq.ni.NIDAQmx.DAQmxCreateCOPulseChanTime(taskhandleout, dq.CtrOutName, 'ctrout', DAQmx_Val_Seconds, DAQmx_Val_Low, 0, dq.DwellTime, dq.DwellTime);
                [status, data] = daq.ni.NIDAQmx.DAQmxSetCOPulseTerm(taskhandleout, 'ctrout', dq.CtrOutTermName); % Set output terminal
            
                %enter output task handle into dqtake   
                dq.taskhandleout = taskhandleout;
            end

        end


        function dq = setupBufferedEdgeCounting(obj, dq)
            % Setup tasks for edge counting mode.
            DAQmx_Val_Rising = int32(10280); % Rising
            DAQmx_Val_CountUp = int32(10128); % Count Up
            DAQmx_Val_DigLvl = int32(10152);
            DAQmx_Val_Low = int32(10214);
            DAQmx_Val_Seconds = int32(10364);
            DAQmx_Val_Falling = int32(10171);
            DAQmx_Val_SampleClock = int32(10388); %unused
            DAQmx_Val_FiniteSamps = int32(10178);

            dq.countsnew = zeros(1, dq.digReadSize, 'uint32'); % Reset cumulative edge counter
            %How to read available samples in the buffer? 
            
            % Set up buffered counter input task
            disp('ctr input');
            tasknamein = obj.genTaskName(); % Generate task name for counter input
            [~, taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein, uint64(0));

            status = daq.ni.NIDAQmx.DAQmxCreateCICountEdgesChan(taskhandlein, dq.CtrInName, 'ctrin', ...
                DAQmx_Val_Rising, uint32(0), DAQmx_Val_CountUp);
            [status, data] = daq.ni.NIDAQmx.DAQmxSetCICountEdgesTerm(taskhandlein, 'ctrin', dq.CtrInTermName);
            
            %using Sample Clock function in daq timing
            status = daq.ni.NIDAQmx.DAQmxCfgSampClkTiming(taskhandlein, dq.SampleClock, dq.ClockRate, ...
                DAQmx_Val_Rising, DAQmx_Val_FiniteSamps, dq.bufferSize);
            
            % Set up counter pause triggering for TTL hi 
            disp('pause trg setup');
            status = daq.ni.NIDAQmx.DAQmxSetPauseTrigType(taskhandlein, DAQmx_Val_DigLvl);
            [status, data] = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigSrc(taskhandlein, dq.CtrInTrigTermName);
            status = daq.ni.NIDAQmx.DAQmxSetDigLvlPauseTrigWhen(taskhandlein, DAQmx_Val_Low);
            
            %Set up retriggerable counter arm start so that we can repeat
            %measurements
            disp('arm start trigger setup');
            DAQmxSetArmStartTrigType(TaskHandle taskHandle, int32 data);
            DAQmxSetDigEdgeArmStartTrigSrc(TaskHandle taskHandle, const char *data);
            DAQmxSetDigEdgeArmStartTrigEdge(TaskHandle taskHandle, int32 data);
            
            

            % Start input task
            status = daq.ni.NIDAQmx.DAQmxStartTask(taskhandlein);
            
            % Enter input task handle and task status into dq
            dq.status = status;
            dq.taskhandlein = taskhandlein;
        end
        
        function dq = setupAnalogInput(obj, dq)
            % Setup tasks for analog input mode.
            tasknamein = obj.genTaskName(); % Generate task name for analog input
            [status, taskhandlein] = daq.ni.NIDAQmx.DAQmxCreateTask(tasknamein, uint64(0));

            status = daq.ni.NIDAQmx.DAQmxCreateAIVoltageChan(taskhandlein, dq.AIchan, 'analoginputchan', ...
                daq.ni.NIDAQmx.DAQmx_Val_Cfg_Default, -dq.DynRange, dq.DynRange, daq.ni.NIDAQmx.DAQmx_Val_Volts, char(0));

            status = daq.ni.NIDAQmx.DAQmxCfgSampClkTiming(taskhandlein, 'OnboardClock', dq.SampRate, ...
                daq.ni.NIDAQmx.DAQmx_Val_Rising, daq.ni.NIDAQmx.DAQmx_Val_ContSamps, uint64(dq.SampsPerRead));
            
            % Enter all data into dq
            dq.status = status;
            dq.taskhandlein = taskhandlein;
        end
        
        function [dq, sig] = processEdgeCounting(obj, dq)
            % Process data for edge counting mode.
            countsold = dq.countsnew;
            dq = obj.takeData(dq);
            countsraw = cast(dq.countsnew - countsold, 'double'); % Subtract new and old cumulative counts to get counts for one pulse
            % sig = countsraw / dq.DwellTime; % Convert to counts per second
			sig = countsraw; %return in Counts as a float64
        end
        
        function sig = processAnalogInput(obj, dq)
            % Process data for analog input mode.
            darray = zeros(1, dq.SampsPerRead);
            actualsampsread = 0;

            [dq.status, dq.VoltageInputArray, ~, ~] = ...
                daq.ni.NIDAQmx.DAQmxReadAnalogF64(dq.taskhandlein, int32(dq.SampsPerRead), -1, uint32(0), ...
                darray, uint32(dq.SampsPerRead), int32(actualsampsread), uint32(0));

            sig = mean(dq.VoltageInputArray);
        end
    end
end