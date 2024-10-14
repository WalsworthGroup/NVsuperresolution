function [poserr,newpos,offset] = move_nanodrive_corr_abs(axis,goalposori,pauselength)
tic
% Version which uses only absolute position not percentage (with
% appropriately scaled coefficients)

%axis = 1, 2, or 3

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
coeffsx = [12.5,-0.30,0,0.30];
coeffsy = [13,0,-0.22,0];
coeffsz = [5.4,0.15,0,-0.16];

%get positions for each axis
prevposcx = calllib('Madlib', 'MCL_SingleReadN', 1, handle);
prevposcy = calllib('Madlib', 'MCL_SingleReadN', 2, handle);
prevposcz = calllib('Madlib', 'MCL_SingleReadN', 3, handle);

if axis == 1
    offset = coeffsx(1) + prevposcx*coeffsx(2) + prevposcy*coeffsx(3) + prevposcz*coeffsx(4);
elseif axis == 2
    offset = coeffsy(1) + prevposcx*coeffsy(2) + prevposcy*coeffsy(3) + prevposcz*coeffsy(4);
elseif axis == 3
    offset = coeffsz(1) + prevposcx*coeffsz(2) + prevposcy*coeffsz(3) + prevposcz*coeffsz(4);
end
goalpos = goalposori - offset/1000; %convert offset to um

%ensure value is from 0-200
goalpos = max(goalpos,0);
goalpos = min(goalpos,200);

% get user input for the new position
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
    message = sprintf('Intended position = %f um. Actual new position = %f um.',goalposori,newpos);
    disp(message);
end
poserr=(goalposori-newpos)*1000; 
message = sprintf('Position error is %f nm.', poserr);
disp(message)
MCLcleanup(handle, 0);
% toc
end
