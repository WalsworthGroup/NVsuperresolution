initialize_handle;
% move_nanodrive_multread_abs(axisno,handle,waveform(1),200);
%movement waveform
% startpos = 0;
% endpos = 20;
% interval = 5;
% postime = 100; %how long to spend at each position (in ms)
% rate = 2; %rate of writing waveform
% waveform = double(startpos:interval:endpos); 
% waveform = repmat(waveform, round(postime/rate), 1);
% waveform= reshape(waveform, 1, []);
% waveform = [waveform 0]; % add zero at the end

axisno = 1;
waveform = waveform(1:100);
datapoints = length(waveform);
error = calllib('Madlib','MCL_IssResetDefaults',handle);
error = calllib('Madlib','MCL_IssBindClockToAxis',3,2,6,handle);
output = calllib('Madlib','MCL_LoadWaveFormN',axisno,datapoints,rate,waveform,handle);
error = calllib('Madlib','MCL_IssResetDefaults',handle);
nreads = 4000;
posreads = zeros(1,nreads);
timevec = posreads;
tic
for i = 1:nreads
    timevec(i) = toc*1000;
    posreads(i) = calllib('Madlib', 'MCL_SingleReadN', axisno, handle);
end

cleanup(handle,0);
% plot(timevec,posreads)
% xlabel('Time (ms)');
% ylabel('Position (um)');