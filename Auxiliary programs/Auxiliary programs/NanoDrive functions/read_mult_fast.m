function [posreads,average,stdev] = read_mult_fast(axis,handle,nreads)
tic
% make sure to initialize_handle first
posreads = zeros(1,nreads);
for i = 1:nreads
    posreads(i) = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
end
average = mean(posreads);
stdev = std(posreads);
toc
end