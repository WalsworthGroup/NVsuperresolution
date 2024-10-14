initialize_handle;
tic
%movement waveform
startpos = 0;
endpos = 20;
interval = 2; %step size between positions
postime = 100; %how long to spend at each position (in ms)
rate = 2; %rate of writing waveform
waveform = double(startpos:interval:endpos); 
waveform = repmat(waveform, round(postime/rate), 1);
waveform= reshape(waveform, 1, []);
waveform = [waveform 0]; % add zero at the end

axis = 2;
datapoints = length(waveform);
clock = 2; %line clock is #2
error = calllib('Madlib','MCL_IssBindClockToAxis',2,2,axis,handle);
error = calllib('Madlib','MCL_IssBindClockToAxis',4,2,axis,handle);
error = calllib('Madlib','MCL_LoadWaveFormN',axis,datapoints,rate,waveform,handle);

nreads = 2000;
posreads = zeros(1,nreads);
timevec = posreads;
tic
for i = 1:nreads
    timevec(i) = toc*1000;
    posreads(i) = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
end
error = calllib('Madlib','MCL_IssBindClockToAxis',4,2,axis,handle);
cleanup(handle,error)
% plot(timevec,posreads)