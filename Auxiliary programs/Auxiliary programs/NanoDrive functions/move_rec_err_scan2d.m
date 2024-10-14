% script to move nanodrive and record error over whole range of stage
% movement
posvec = (0:1:100)/1;
poserrmatX = zeros(length(posvec),length(posvec));
poserrmatZ = poserrmatX;

move_nanodrive_simple(1,posvec(1),1000); %start initial position
move_nanodrive_simple(3,posvec(1),1000); %start initial position
initialize_handle;
total = length(posvec)^2;
progress = 0;
tic
for i = 1:length(posvec)
    for j = 1:length(posvec)
        [poserrmatX(i,j),~,~,~] = move_nanodrive_multread(1,handle,posvec(j),500);
        [poserrmatZ(i,j),~,~,~] = move_nanodrive_multread(3,handle,posvec(i),500);
        progress = progress+1;
        message = sprintf('Finished %u out of %u. Elapsed time %.1f seconds.',progress,total,toc);
        disp(message);w wa
    end
end
MCLcleanup(handle, 1);
toc
save('2D scan 4-16-24 - Position error 2D scan results 1 perc increments, averaged, X as smaller index','posvec','poserrmatX','poserrmatZ');