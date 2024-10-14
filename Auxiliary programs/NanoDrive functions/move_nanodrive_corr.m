function [poserr,newpospercent] = move_nanodrive_corr(axis,goalpospercentori,pauselength)
tic

%axis = 1, 2, or 3
%pauselength = typically 100, but it seems higher values are better since
%they give more time for the stage to move to the correct position (esp.
%for large jumps)
loadlibrary('Madlib', @Madlib_proto);

if (~libisloaded('Madlib'))
    disp('Error: Library did not load correctly');
    return
end

% calllib: Call a function in a loaded DLL
handle = calllib('Madlib', 'MCL_InitHandle');
if (handle == 0)
    disp('Error: Handle was not initialized correctly');
    MCLcleanup(handle, 1);
    return;
end

% coefficients to decide offset in each axis
coeffsx = [-10.8,0.578,0,-0.588];
coeffsy = [-8.72,0,0.411,0];
coeffsz = [-5.4,-0.289,0,0.321];

%get calibration and positions for each axis
calx = calllib('Madlib', 'MCL_GetCalibration', 1, handle);
caly = calllib('Madlib', 'MCL_GetCalibration', 2, handle);
calz = calllib('Madlib', 'MCL_GetCalibration', 3, handle);
prevpospercx = calllib('Madlib', 'MCL_SingleReadN', 1, handle)/calx*100;
prevpospercy = calllib('Madlib', 'MCL_SingleReadN', 2, handle)/caly*100;
prevpospercz = calllib('Madlib', 'MCL_SingleReadN', 3, handle)/calz*100;

if axis == 1
    calibration = calx;
    offset = coeffsx(1) + prevpospercx*coeffsx(2) + prevpospercy*coeffsx(3) + prevpospercz*coeffsx(4);
elseif axis == 2
    calibration = caly;
    offset = coeffsy(1) + prevpospercx*coeffsy(2) + prevpospercy*coeffsy(3) + prevpospercz*coeffsy(4);
elseif axis == 3
    calibration = calz;
    offset = coeffsz(1) + prevpospercx*coeffsz(2) + prevpospercy*coeffsz(3) + prevpospercz*coeffsz(4);
end

goalpospercent = goalpospercentori + offset/(calibration*1000) * 100;
% goalpospercent = goalpospercentori;

%ensure value is from 0-100%
goalpospercent = max(goalpospercent,0);
goalpospercent = min(goalpospercent,100);

% get user input for the new position
goalpos = (goalpospercent*calibration)/100;
err = calllib('Madlib', 'MCL_SingleWriteN', goalpos, axis, handle);
if (err ~= 0)
    message = sprintf('Error: NanoDrive did not correctly write position. Error Code %d', err);
    disp(message);
    MCLcleanup(handle, 1);
    return;
end

% pause device before reading again
calllib('Madlib', 'MCL_DeviceAttached', pauselength, handle);

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
poserr=(goalpospercentori-newpospercent)/100*calibration*1000; % max range of motion is 200 um
message = sprintf('Position error is %f nm', poserr);
disp(message)
MCLcleanup(handle, 0);
% toc
end
