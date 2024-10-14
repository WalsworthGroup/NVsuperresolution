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

