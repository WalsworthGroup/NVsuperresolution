% script to move nanodrive and record error
axis = 1;
offset = 50; %offset as a percentage of full movement range (absolute accuracy will tend to be worse near 100% range)
deltapos = 0.05;

% version with moving based on previous read
poserrvec = zeros(1,length(posvec));
calvec = poserrvec*0;
deltaposvec = poserrvec*0;
move_nanodrive_simple(axis,offset,500); %start initial position
newpos = offset;
for i = 1:length(posvec)
    [poserrvec(i),deltaposvec(i),calvec(i),newposread] = move_nanodrive_simple(axis,newpos,100);
    newpos = newposread + deltapos;
end
move_nanodrive_simple(axis,offset,500); %return back to initial position
mean(abs(poserrvec))
mean(deltaposvec(2:end))
std(deltaposvec(2:end))

hold on;
plot(deltaposvec(2:end))