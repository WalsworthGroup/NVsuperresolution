function MCLcleanup(handle, errors)
if (~libisloaded('Madlib'))
	loadlibrary('Madlib', @Madlib_proto); 
end
calllib('Madlib', 'MCL_ReleaseHandle', handle);
unloadlibrary('Madlib');
if (errors == 1)
    disp('Exiting');
else
    disp('Program finished without any errors');
end
end