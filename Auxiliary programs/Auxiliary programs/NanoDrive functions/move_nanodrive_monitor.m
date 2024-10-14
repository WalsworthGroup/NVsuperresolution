function [timevec,posvec] = move_nanodrive_monitor(axis,goalpos,monitortime)
% Version which moves nanodrive and monitors the progress of the stage for
% a certain amount of time. monitortime is in seconds
loadlibrary('Madlib', @Madlib_proto);
if (~libisloaded('Madlib'))
    disp('Error: Library did not load correctly');
    return
end

% calllib: Call a function in a loaded DLL
handle = calllib('Madlib', 'MCL_InitHandle');

% get user input for the new position
err = calllib('Madlib', 'MCL_SingleWriteN', goalpos, axis, handle);
if (err ~= 0)
    fprintf('Error: NanoDrive did not correctly write position. Error Code %d', err);
    MCLcleanup(handle, 1);
    return;
end

% read the new position to make sure NanoDrive actually moved
avereadtime = 0.0005; %average time per read is 0.5 ms
nreads = round(monitortime/avereadtime * 1.2); %initiate vector for storing reads, include some extra capacity just in case
timevec = zeros(1,nreads);
posvec = timevec;
timer = tic; % start timer
elapsedtime = 0;
i=1;
while elapsedtime < monitortime
    posvec(i) = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
    elapsedtime = toc(timer);
    timevec(i) = elapsedtime;
    i=i+1;
end

MCLcleanup(handle, 0);

%eliminate zeros in resulting vectors
lastNonZeroIndex = find(timevec ~= 0, 1, 'last');
timevec = timevec(1:lastNonZeroIndex);
posvec = posvec(1:lastNonZeroIndex);

%calculate "final position" by the mean of the last 10% of the vector
numElements = ceil(0.1*length(posvec));
startIndex = length(posvec) - numElements+1;
endmeanpos = mean(posvec(startIndex:end))
err = (goalpos-endmeanpos)*1000 %error in nanometers

plot(timevec,posvec)
xlabel('Time (s)');
ylabel('Stage position');
ylim([endmeanpos*0.999 endmeanpos*1.001])
end
