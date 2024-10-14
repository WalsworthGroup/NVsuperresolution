% script to move nanodrive and record error
axis = 1;
offset =0; %offset as a percentage of full movement range (absolute accuracy will tend to be worse near 100% range)
posvec = (0:0.05:1)/10;
% posvec = flip(posvec);
posvec = posvec + offset;
% posvec = 0:0.1:2;

poserrvec = zeros(1,length(posvec));
calvec = poserrvec*0;
deltaposvec = poserrvec*0;
move_nanodrive_simple(axis,posvec(1),1000); %start initial position
for i = 1:length(posvec)
    [poserrvec(i),deltaposvec(i),calvec(i),~] = move_nanodrive_simple(axis,posvec(i),500);
end
move_nanodrive_simple(axis,posvec(1),1000); %return back to initial position
mean(abs(poserrvec))
std(abs(poserrvec))
mean(deltaposvec(2:end))
std(deltaposvec(2:end))

figure;
plot(posvecx,poserrvec);
xlabel('Position (percentage of total range)');
ylabel('Position error (nm)');
title('Absolute position error (Y) when X = 100%')