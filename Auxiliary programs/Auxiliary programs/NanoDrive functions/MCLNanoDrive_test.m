%function MCLNanoDrive
% loadlibary(dll name, header file name) : Load a DLL into memory so that MATLAB can call it.
loadlibrary('Madlib', @Madlib_proto); 

if (~libisloaded('Madlib'))
	disp('Error: Library did not load correctly');
    return
end

% libfunctions: List the functions available in a DLL
m = libfunctions('Madlib', '-full');
disp('The following functions are availible to use from Madlib')
disp(m)

% calllib: Call a function in a loaded DLL
handle = calllib('Madlib', 'MCL_InitHandle');
if (handle == 0)
	disp('Error: Handle was not initialized correctly');
    cleanup(handle, 1);
    return;
end 

% print out information about the NanoDrive
prInfo = libstruct('ProductInformation'); % external structure
pprInfo = libpointer('ProductInformation', get(prInfo)); % need a pointer to the struct

err = calllib('Madlib', 'MCL_GetProductInfo', pprInfo, handle);
if (err ~= 0)
    message = sprintf('Error: NanoDrive did not correctly get product info. Error code %d', err);
    disp(message);
    clear pprInfo 
    clear prInfo
    cleanup(handle, 1);
    return;
else
    disp('NanoDrive product information:');
    disp(pprInfo.value)
    
end

% check for which axis is valid
prInfo = pprInfo.value; % get the info from the pointer back to the structure
axis_bitmap = prInfo.axis_bitmap; % pull out the axis bitmap

% no longer needed, so delete
clear pprInfo 
clear prInfo
axis = 2;

calibration = calllib('Madlib', 'MCL_GetCalibration', axis, handle);

% try reading and writing to the NanoDrive
pos = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
if (pos < 0)
    message = sprintf('Error: NanoDrive did not correctly read position. Error Code %d', pos);
	disp(message);
    cleanup(handle, 1);
    return;
else 
    percent = (pos/calibration)*100;
	message = sprintf('Current position = %f%% of the total range of motion', percent);
	disp(message);	
end

% get user input for the new position
percent = input('Move to what percent of range of motion? (0-100%)\n');
pos = (percent*calibration)/100;
err = calllib('Madlib', 'MCL_SingleWriteN', pos, axis, handle);
if (err ~= 0)
    message = sprintf('Error: NanoDrive did not correctly write position. Error Code %d', err);
	disp(message);
    cleanup(handle, 1);
    return;    
end

% pause device before reading again
calllib('Madlib', 'MCL_DeviceAttached', 100, handle);

% read the new position to make sure NanoDrive actually moved
newpos = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
if (newpos < 0)
    message = sprintf('Error: NanoDrive did not correctly read position. Error Code %d', pos);
	disp(message);
    cleanup(handle, 1);
    return;
else
	percent = (newpos/calibration)*100;
	message = sprintf('New position = %f%% of the total range of motion', percent);
	disp(message);
end

poserr=(pos-newpos)/100*200000;
message = sprintf('Position error is %f nm.', poserr);
disp(message)
cleanup(handle, 0);

function cleanup(handle, errors)
calllib('Madlib', 'MCL_ReleaseHandle', handle);
unloadlibrary('Madlib');
if (errors == 1)
    disp('Exiting');
else
    disp('Program finished without any errors');
end
end
