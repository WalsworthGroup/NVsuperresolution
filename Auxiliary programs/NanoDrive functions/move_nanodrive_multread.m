function [poserr,deltapos,calibration,newpospercent] = move_nanodrive_multread(axis,handle,goalpospercentori,pauselength)
% Version which allows adjusting settling time based on move distance and making multiple reads afterwards. Also
% moves fast without calling the library each time; assumes it's already
% loaded via handle.
% goalpospercent = goalpospercentori + 43/200000*100; %add offset for correction
goalpospercent = goalpospercentori;

calibration = calllib('Madlib', 'MCL_GetCalibration', axis, handle);

% try reading and writing to the NanoDrive
prevpos = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
prevpospercent = (prevpos/calibration)*100;
fprintf('Previous position = %f%% of the total range of motion.\n', prevpospercent);

goaldeltapos = abs(goalpospercent-prevpospercent);
if goaldeltapos > 5 % moving large distances requires a long pause length
    pauselength = 2000;
end

% get user input for the new position
goalpos = (goalpospercent*calibration)/100;
if goaldeltapos > 0.05
    err = calllib('Madlib', 'MCL_SingleWriteN', goalpos, axis, handle);
    if (err ~= 0)
        fprintf('Error: NanoDrive did not correctly write position. Error Code %d', err);
        MCLcleanup(handle, 1);
        return;
    end

    % pause device before reading again
    calllib('Madlib', 'MCL_DeviceAttached', pauselength, handle);
end

% read the new position to make sure NanoDrive actually moved
nreads = 10;
newposreadvec = zeros(1,nreads);
for i = 1:nreads
    newposreadvec(i) = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
end
newpospercent = (mean(newposreadvec)/calibration)*100;
fprintf('Intended position = %f%%. Actual new position = %f%%.\n',goalpospercentori,newpospercent);

deltapos=(newpospercent-prevpospercent)/100*calibration*1000;
poserr=(goalpospercentori-newpospercent)/100*calibration*1000; % max range of motion is 200 um
fprintf('Position error is %f nm. Delta pos is %f nm.\n', poserr,deltapos);
end
