% script to move nanodrive and record error over whole range of stage
% movement. Version with absolute position instead of percentages
posvecxz = (0:2:200);
poserrmatX = zeros(length(posvecxz),length(posvecxz));
poserrmatZ = poserrmatX;

initialize_handle;
move_nanodrive_multread_abs(1,handle,posvecxz(1),1000);
move_nanodrive_multread_abs(3,handle,posvecxz(1),1000);
total = length(posvecxz)^2;
progress = 0;
tic
for i = 1:length(posvecxz)
    for j = 1:length(posvecxz)
        [poserrmatX(i,j),~] = move_nanodrive_multread_abs(1,handle,posvecxz(j),500);
        [poserrmatZ(i,j),~] = move_nanodrive_multread_abs(3,handle,posvecxz(i),500);
        progress = progress+1;
        message = sprintf('Finished %u out of %u. Elapsed time %.1f seconds.',progress,total,toc);
        disp(message);
    end
end
MCLcleanup(handle, 1);
toc
save('2D scan 4-30-24 - Position error 2D scan results 2 um increments, averaged, X as smaller index','posvecxz','poserrmatX','poserrmatZ');