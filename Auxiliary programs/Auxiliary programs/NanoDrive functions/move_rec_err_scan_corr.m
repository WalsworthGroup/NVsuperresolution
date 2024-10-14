% script to move nanodrive and record error over whole range of stage
% movement
axis = 1;
offset = 0; %offset as a percentage of full movement range (absolute accuracy will tend to be worse near 100% range)
posvec = (0:1:100)/1;
% posvec = flip(posvec);
posvec = posvec + offset;
% posvec = 0:0.1:2;
tic
poserrvec = zeros(1,length(posvec));
move_nanodrive_corr(axis,posvec(1),2000); %start initial position
for i = 1:length(posvec)
    [poserrvec(i),~] = move_nanodrive_corr(axis,posvec(i),500);
end
move_nanodrive_corr(axis,posvec(1),2000); %return back to initial position
mean(abs(poserrvec))
std(abs(poserrvec))
toc
figure;
plot(posvec,poserrvec);
xlabel('Position (percentage of total range)');
ylabel('Position error (nm)');
title('Absolute position error (X) when Z = 99%, with correction')