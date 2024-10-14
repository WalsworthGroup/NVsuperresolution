initialize_handle;
tic
for i = 1:10
    output = calllib('Madlib','MCL_LineClock',handle);
    pause(0.1)
    toc
end
cleanup(handle,0);