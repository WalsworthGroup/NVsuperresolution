
% % start(NIhandle,"continuous") %start the counter
% tic
% read(NIhandle)
% toc
% read(NIhandle)
% toc
% % stop(NIhandle);
% tic
% resetcounters(NIhandle);
% pause(0.2);
% read(NIhandle)
% toc

dq = daq("ni");
pulseinput = addinput(dq, "Dev1", "ctr0", "PulseWidth");
addinput(dq,"Dev1", "ai0", "Voltage");
% addoutput(dq, "Dev1", "ao0", "Voltage");
clockinput = addclock(dq,"ScanClock","External","Dev1/PFI0");
start(dq,"continuous")
% dq.Rate = 5000;
% pulsedur = 0.1; % pulse duration in seconds
% pulsemax = 3.5; % voltage of pulse height
% 
% start(dq,"continuous")
% outputSignal = zeros(1,dq.Rate*pulsedur+1)+pulsemax;
% outputSignal(end) = 0;
% tic
% write(dq,transpose(outputSignal))
% toc