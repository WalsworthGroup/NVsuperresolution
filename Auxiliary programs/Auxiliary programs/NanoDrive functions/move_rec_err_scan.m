% script to move nanodrive and record error over whole range of stage
% movement
axis = 2;
offset = 0; %offset as a percentage of full movement range (absolute accuracy will tend to be worse near 100% range)
posvec = (0:2:100)/1;
% posvec = flip(posvec);
posvec = posvec + offset;
% posvec = 0:0.1:2;
tic
poserrvec = zeros(1,length(posvec));
calvec = poserrvec*0;
deltaposvec = poserrvec*0;
move_nanodrive_simple(axis,posvec(1),2000); %start initial position
initialize_handle;
for i = 1:length(posvec)
    [poserrvec(i),deltaposvec(i),calvec(i),~] = move_nanodrive_multread(axis,handle,posvec(i),500);
end
MCLcleanup(handle, 1);
move_nanodrive_simple(axis,posvec(1),2000); %return back to initial position
mean(abs(poserrvec))
std(abs(poserrvec))
mean(deltaposvec(2:end))
std(deltaposvec(2:end))
toc
figure;
plot(posvec,poserrvec);
xlabel('Position (percentage of total range)');
ylabel('Position error (nm)');
title('Absolute position error (Y)')