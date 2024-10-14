% script to move nanodrive and record error over whole range of stage
% movement. In this version we test the hypothesis that nice round numbers
% are pretty OK for the Nanostage to reach. To do this we use absolute
% numbers instead of percentage
axis = 2;
offset = 0;
% posvec = 190:0.25:195;
posvec = 0:4:200;
% posvec = flip(posvec);
posvec = posvec + offset;
tic
initialize_handle;
poserrvec = zeros(1,length(posvec));
move_nanodrive_multread_abs(axis,handle,posvec(1),2000);
for i = 1:length(posvec)
    [poserrvec(i),~] = move_nanodrive_multread_abs(axis,handle,posvec(i),500);
end
move_nanodrive_multread_abs(axis,handle,posvec(1),2000);
MCLcleanup(handle, 1);

mean(abs(poserrvec))
std(abs(poserrvec))
toc
figure;
plot(posvec,poserrvec);
xlabel('Position (um)');
ylabel('Position error (nm)');
title('Absolute position error (Y)')