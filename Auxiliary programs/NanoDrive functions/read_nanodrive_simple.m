function prevpospercent = read_nanodrive_simple(axis)
%axis = 1, 2, or 3
%pauselength = typically 100, but it seems higher values are better since
%they give more time for the stage to move to the correct position (esp.
%for large jumps)
tic
loadlibrary('Madlib', @Madlib_proto);

if (~libisloaded('Madlib'))
    disp('Error: Library did not load correctly');
    return
end

% libfunctions: List the functions available in a DLL
% m = libfunctions('Madlib', '-full');
% disp('The following functions are availible to use from Madlib')
% disp(m)

% calllib: Call a function in a loaded DLL
handle = calllib('Madlib', 'MCL_InitHandle');
if (handle == 0)
    disp('Error: Handle was not initialized correctly');
    MCLcleanup(handle, 1);
    return;
end

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
    message = sprintf('Position = %f%% of the total range of motion, or %f um.', prevpospercent,prevpos);
    disp(message);
end

MCLcleanup(handle, 0);
toc
end
