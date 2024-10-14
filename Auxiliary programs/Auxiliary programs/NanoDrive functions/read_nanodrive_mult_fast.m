tic
axis = 3;
nreads = 5000;
posvec = zeros(1,nreads);
timevec = posvec;
for i = 1:nreads
    posvec(i) = calllib('Madlib', 'MCL_SingleReadN', axis, handle);
    timevec(i) = toc;
end
toc
figure
plot(timevec,posvec)
xlabel('Time (s)');
ylabel('Stage position (Z)');

find_frequencies;