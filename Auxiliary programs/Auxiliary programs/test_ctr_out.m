% ctr.Frequency = 1;
% ctr.InitialDelay = 0;
% ctr.DutyCycle = .999;
% start(dq, "Duration", seconds(1));
% 
% dq2 = daq("ni");
% dq2.Rate = 5000;
% addoutput(dq2, "Dev2", "ao0", "Voltage");


pulsedur = 1; % pulse duration in seconds
pulsemax = 3.5; % voltage of pulse height
outputSignal = zeros(1,dq2.Rate*pulsedur+1)+pulsemax;
outputSignal(end) = 0;
tic
write(dq2,transpose(outputSignal))
toc