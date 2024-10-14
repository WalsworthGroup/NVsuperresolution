function [timevec,posvec,posave,err,tottime] = move_nanodrive_monitorpos(axis,goalpos,posthreshold,maxtimeout)
% Version which moves nanodrive and monitors the progress of the stage
% until the running average is within a certain acceptable range.
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
nreads = round(maxtimeout/avereadtime*1.2); %initiate vector for storing reads.
nave = 20; %take the last 10 readings for a running average
timevec = zeros(1,nreads);
posvec = timevec;
timer = tic; % start timer
elapsedtime = 0;
i=1;
posave = 1000000;
posstd = posave;
while elapsedtime < maxtimeout && (abs(posave-goalpos) > posthreshold || posstd > posthreshold)
    posvec(i) = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
    elapsedtime = toc(timer);
    timevec(i) = elapsedtime;
    %Calculate running average
    if i < nave
        posave = mean(posvec(1:i));
        posstd = std(posvec(1:i));
        if posstd == 0
            posstd = 1000000;
        end
    else
        posave = mean(posvec(i-nave+1:i));
        posstd = std(posvec(i-nave+1:i));
    end
    i=i+1;
end

MCLcleanup(handle, 0);

%eliminate zeros in resulting vectors
lastNonZeroIndex = find(timevec ~= 0, 1, 'last');
timevec = timevec(1:lastNonZeroIndex);
posvec = posvec(1:lastNonZeroIndex);

tottime = timevec(end)
err = (goalpos-posave)*1000 %error in nanometers

plot(timevec,posvec)
xlabel('Time (s)');
ylabel('Stage position');
ylim([posave*0.999 posave*1.001])
end
