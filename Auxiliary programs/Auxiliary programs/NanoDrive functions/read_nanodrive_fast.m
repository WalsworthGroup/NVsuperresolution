function prevpospercent = read_nanodrive_fast(axis,handle)
%axis = 1, 2, or 3
%pauselength = typically 100, but it seems higher values are better since
%they give more time for the stage to move to the correct position (esp.
%for large jumps)
tic
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
    message = sprintf('Position = %f%% of the total range of motion.', prevpospercent);
    disp(message);
end
toc

end
