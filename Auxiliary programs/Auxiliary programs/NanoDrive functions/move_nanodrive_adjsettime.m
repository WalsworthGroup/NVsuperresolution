function [poserr,deltapos,calibration,newpospercent] = move_nanodrive_adjsettime(axis,handle,goalpospercentori,pauselength)
% Version which allows adjusting settling time based on move distance. Also
% moves fast without calling the library each time; assumes it's already
% loaded via handle
% goalpospercent = goalpospercentori + 43/200000*100; %add offset for correction
goalpospercent = goalpospercentori;
%axis = 1, 2, or 3
%pauselength = typically 100, but it seems higher values are better since
%they give more time for the stage to move to the correct position (esp.
%for large jumps)
% loadlibrary('Madlib', @Madlib_proto);
% 
% if (~libisloaded('Madlib'))
%     disp('Error: Library did not load correctly');
%     return
% end

% calllib: Call a function in a loaded DLL
% handle = calllib('Madlib', 'MCL_InitHandle');
% if (handle == 0)
%     disp('Error: Handle was not initialized correctly');
%     MCLcleanup(handle, 1);
%     return;
% end

calibration = calllib('Madlib', 'MCL_GetCalibration', axis, handle);

% try reading and writing to the NanoDrive
prevpos = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
if (prevpos < 0)
    message = sprintf('Error: NanoDrive did not correctly read position. Error Code %d', goalpos);
    disp(message);
    MCLcleanup(handle, 1);
    return;
else
    prevpospercent = (prevpos/calibration)*100;
    message = sprintf('Previous position = %f%% of the total range of motion.', prevpospercent);
    disp(message);
end

goaldeltapos = abs(goalpospercent-prevpospercent);
if goaldeltapos > 5 % moving large distances requires a long pause length
    pauselength = 2000;
end

% get user input for the new position
goalpos = (goalpospercent*calibration)/100;
if goaldeltapos > 0.05
    err = calllib('Madlib', 'MCL_SingleWriteN', goalpos, axis, handle);
    if (err ~= 0)
        message = sprintf('Error: NanoDrive did not correctly write position. Error Code %d', err);
        disp(message);
        MCLcleanup(handle, 1);
        return;
    end

    % pause device before reading again
    calllib('Madlib', 'MCL_DeviceAttached', pauselength, handle);
end



% read the new position to make sure NanoDrive actually moved
newpos = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
if (newpos < 0)
    message = sprintf('Error: NanoDrive did not correctly read position. Error Code %d', goalpos);
    disp(message);
    MCLcleanup(handle, 1);
    return;
else
    newpospercent = (newpos/calibration)*100;
    message = sprintf('Intended position = %f%%. Actual new position = %f%%.',goalpospercentori,newpospercent);
    disp(message);
end
deltapos=(newpospercent-prevpospercent)/100*calibration*1000;
poserr=(goalpospercentori-newpospercent)/100*calibration*1000; % max range of motion is 200 um
message = sprintf('Position error is %f nm. Delta pos is %f nm.', poserr,deltapos);
disp(message)
% MCLcleanup(handle, 0);
end
