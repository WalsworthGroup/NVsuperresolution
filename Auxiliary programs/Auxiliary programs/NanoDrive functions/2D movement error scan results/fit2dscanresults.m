fit_2dscan(posvecxz,posvecxz,poserrmatX,1);
fit_2dscan(posvecxz,posvecxz,poserrmatZ,3);

%If we want to throw out results at X = 0 and Z = 0 as they may suffer not
%enough settling time

poserrmatX(:,1) = [];
poserrmatX(1,:) = [];
poserrmatZ(1,:) = [];
poserrmatZ(:,1) = [];
posvecxz(1)=[];

fit_2dscan(posvecxz,posvecxz,poserrmatX,1);
fit_2dscan(posvecxz,posvecxz,poserrmatZ,3);