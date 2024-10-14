initialize_handle;
move_nanodrive_multread_abs(axisno,handle,waveform(1),200);
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

% axisno = 2;
% waveform = waveform(1:100);
% nreads = 4000;
% posreads = zeros(1,nreads);
% timevec = posreads;
nreps = 4;
posreadvecall=[];
for i = 1:nreps
    datapoints = length(waveform);
    output = calllib('Madlib','MCL_LoadWaveFormN',axisno,datapoints,rate,waveform,handle);
    posreadvec = [];
    timevec = [];
    tic
    time = toc*1000;
    while time < length(waveform)*rate*1.01
        time = toc*1000;
        timevec = [timevec time];
        posread = calllib('Madlib', 'MCL_SingleReadN', axisno, handle);
        posreadvec = [posreadvec posread];
    end
    waveform = flip(waveform);
    posreadvecall = [posreadvecall posreadvec];
end
cleanup(handle,0);
plot(posreadvecall)
ylabel('Position (um)');
