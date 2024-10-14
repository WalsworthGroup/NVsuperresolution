function [posreads,average,stdev] = read_nanodrive_mult(axis,nreads)
loadlibrary('Madlib', @Madlib_proto);
handle = calllib('Madlib', 'MCL_InitHandle');

posreads = zeros(1,nreads);
for i = 1:nreads
    posreads(i) = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
end
average = mean(posreads);
stdev = std(posreads);
MCLcleanup(handle, 0);
end