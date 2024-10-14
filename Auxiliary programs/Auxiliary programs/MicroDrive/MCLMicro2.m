function MCLMicro2

% loadlibary(dll name, header file name) : Load a DLL into memory so that MATLAB can call it.
% loadlibrary('MicroDrive', 'MicroDrive.h');
loadlibrary('MicroDrive',@MicroDrive_proto);

if (~libisloaded('MicroDrive'))
	disp('Error: Library did not load correctly');
    disp('Exiting');
    return
end

% % libfunctions: List the functions available in a DLL
% m = libfunctions('MicroDrive', '-full');
% disp('The following functions are availible to use from MicroDrive')
% disp(m)

% calllib: Call a function in a loaded DLL
handlexy = calllib('MicroDrive', 'MCL_GetHandleBySerial',2850);
handlez = calllib('MicroDrive', 'MCL_GetHandleBySerial',2851);

if (handle == 0)
	disp('Error: Handle was not initialized correctly');
    disp('Exiting');
    return
else
    disp('handle initialized!!');
    disp(' ');
end 

% declare variables that will be used (they're all doubles)
encoderResolution = 0.0;
pencoderResolution = libpointer('doublePtr', encoderResolution);
stepSize = 0.0;
pstepSize = libpointer('doublePtr', stepSize);
maxVelocity = 0.0;
pmaxVelocity = libpointer('doublePtr', maxVelocity);
maxVelocityTwoAxis = 0.0;
pmaxVelocityTwoAxis = libpointer('doublePtr', maxVelocityTwoAxis);
maxVelocityThreeAxis = 0.0;
pmaxVelocityThreeAxis = libpointer('doublePtr', maxVelocityThreeAxis);
minVelocity = 0.0;
pminVelocity = libpointer('doublePtr', minVelocity);

% find basic information about the MicroDrive
err = calllib('MicroDrive', 'MCL_MDInformation', pencoderResolution, pstepSize, pmaxVelocity, pmaxVelocityTwoAxis, pmaxVelocityThreeAxis, pminVelocity, handle);
if (err ~= 0)
    message = sprintf('Error: Could not get MicroDrive information.  Error Code %d', err);
    disp(message);
    cleanup(handle, 1);
    return;
else
    disp('MicroDrive Information:');
    encoderResolution = pencoderResolution.value; % retrieve the value from pointer
    message = sprintf('Encoder resolution: %f um', encoderResolution);
    disp(message);
    stepSize = pstepSize.value;
    message = sprintf('Step Size: %f mm', stepSize);
    disp(message);
    maxVelocity = pmaxVelocity.value;
    message = sprintf('Max Velocity: %f mm/s', maxVelocity);
    disp(message);
    minVelocity = pminVelocity.value;
    message = sprintf('Min Velocity: %f mm/s\n', minVelocity);
    disp(message);
end

xPos = 0.0;
pxPos = libpointer('doublePtr', xPos);
yPos = 0.0;
pyPos = libpointer('doublePtr', yPos);

zPos = 0.0;
pzPos = libpointer('doublePtr', zPos);
aPos = 0.0;
paPos = libpointer('doublePtr', aPos);


% Read current position
err = calllib('MicroDrive', 'MCL_MDReadEncoders', pxPos, pyPos,pzPos,paPos, handle);
if (err ~= 0)
    message = sprintf('Error: MicroDrive did not correctly read encoders. Error Code %d', err);
    disp(message);
    cleanup(handle, 1);
    return;
else
    xPos = pxPos.value;
    message = sprintf('Current x pos: %f', xPos);
    disp(message);
    yPos = pyPos.value;
    message = sprintf('Current y pos: %f\n', yPos);
    disp(message);
end

% Have user enter new positions to move device to 
xPos = input('How much should x axis move by (in mm)?\n');
yPos = input('How much should y axis move by (in mm)?\n');

if (yPos == 0 && xPos == 0) % no movement, do nothing
    err = 0;
elseif (yPos == 0) % only move x axis
    err = calllib('MicroDrive', 'MCL_MDMove', 1, maxVelocity, xPos, handle);
elseif (xPos == 0) % only move y axis
    err = calllib('MicroDrive', 'MCL_MDMove', 2, maxVelocity, yPos, handle);
else % move both y and x axes
    err = calllib('MicroDrive', 'MCL_MDMoveThreeAxes', 1,maxVelocity, xPos, 2, maxVelocity, yPos, 3,maxVelocity,0.0, handle);
end

if (err ~= 0)
    message = sprintf('Error: MicroDrive did not correctly move. Error code %d', err);
    disp(message);
    cleanup(handle, 1);
    return;
% make sure not to access device until it is finished moving
elseif (abs(xPos) > abs(yPos))
    milliseconds = abs(round(1000*xPos/maxVelocity));
    calllib('MicroDrive', 'MCL_DeviceAttached', milliseconds, handle);
else
    milliseconds = abs(round(1000*yPos/maxVelocity));
    calllib('MicroDrive', 'MCL_DeviceAttached', milliseconds, handle);
end

% Read encoders again to make sure MicroDrive properly moved
err = calllib('MicroDrive', 'MCL_MDReadEncoders', pxPos, pyPos, pzPos, paPos, handle);
if (err ~= 0)
    message = sprintf('Error: MicroDrive did not read encoders properly. Error Code %d', err);
    disp(message);
    cleanup(1);
    return;
else
    xPos = pxPos.value;
    message = sprintf('\nNew x pos: %f', xPos);
    disp(message);
    yPos = pyPos.value;
    message = sprintf('New y pos: %f\n', yPos);
    disp(message);
end


cleanup(handle, 0);

% cleanup by releasing handle and unloading library
function cleanup(errors)

calllib('MicroDrive', 'MCL_ReleaseAllHandles');
unloadlibrary('MicroDrive');
if (errors == 1)
    disp('Exiting\n');
else
    disp('Program finished without any errors');
end
