function optz = makenanoscan(app,scancenterxy,zdepth,filepath,filename)
% function to make DMconfocal go to an XY point with Microstage, then scan with
% Nanostage inside of it. For this to work, app must be the handle of the
% DM confocal app. Scancenterxy = [x,y] is the scan center, while zdepth
% indicates how deep into the surface we want to scan.

% For this function to work properly, the following must be set manually in
% the app:
% 1. Nanodrive XY scan limits and steps
% 2. Microdrive Z scan limits and steps (for finding surface)
% 3. Dwell time
% 4. MFF101 filter flipper connections are open

% Go to global XY position with MicroDrive
app.goToGlobalPosX(scancenterxy(1));
app.goToGlobalPosY(scancenterxy(2));

% switch filter position to green
app.switchfilters("Green","ND filter");
% 
% find surface by scanning Z. This should also set to optimum Z
% automatically
pause(2); % wait longer for mechanical movement effect to dissipate
app.pushTrackZMicroButton();
optz = app.MCLmicroset.optzpos; % unit in mm; optimum z position

maxzdepth = 0.020; %safety feature to avoid objective collision, unit in mm
if abs(zdepth) > maxzdepth
    zdepth = maxzdepth;
end
app.goToGlobalPosZ(optz-zdepth); % move inside the surface
pause(2);


% % switch filter to red
app.switchfilters("Red","None");
pause(2); % wait longer for mechanical movement effect to dissipate
% % execute nanoscan
app.Fix_xNano.Value = 0;
app.Fix_yNano.Value = 0;
app.Fix_zNano.Value = 1;
app.pushScanNanoButton();

% 
% % save data
% app.saveScanData(filepath,filename,"TXT");
app.saveScanData(filepath,filename,"MAT");
app.saveScanData(filepath,filename,"PNG");

app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually

end