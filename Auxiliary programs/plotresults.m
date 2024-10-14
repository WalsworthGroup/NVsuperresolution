figure
surf(posvec,posvec,poserrmatX);
view(2);
xlabel('X Position (percentage of total range)');
ylabel('Z Position (percentage of total range)');
title('Absolute position error (X) in nm')
colorbar

figure
surf(posvec,posvec,poserrmatZ);
view(2);
xlabel('X Position (percentage of total range)');
ylabel('Z Position (percentage of total range)');
title('Absolute position error (Z) in nm')
colorbar