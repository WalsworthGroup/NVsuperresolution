
if (~libisloaded('MicroDrive'))
	loadlibrary('MicroDrive',@MicroDrive_proto);
end

% % libfunctions: List the functions available in a DLL
% m = libfunctions('MicroDrive', '-full');
% disp('The following functions are availible to use from MicroDrive')
% disp(m)

% calllib: Call a function in a loaded DLL
calllib('MicroDrive', 'MCL_GrabAllHandles');
% disp(numDevices); 
handlexy = calllib('MicroDrive', 'MCL_GetHandleBySerial',2850);
handlez = calllib('MicroDrive', 'MCL_GetHandleBySerial',2851);

if handlexy == 0 || handlez == 0
	disp('Error: Handle was not initialized correctly');
    disp('Exiting');
    return
else
    disp('handle initialized!!');
    disp(' ');
end 

pointers.pxPos = libpointer('doublePtr', 0.0);
pointers.pyPos = libpointer('doublePtr', 0.0);
pointers.pzPos = libpointer('doublePtr', 0.0);

