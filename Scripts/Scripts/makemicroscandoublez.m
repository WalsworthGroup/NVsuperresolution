function optz = makemicroscandoublez(app,scancenterxy,zdepth,filepath,filename)
%Version which uses both Micro and Nano stages to find the surface, in
%order to undo the ~1 um uncertainty if just using Micro stage due to backlash.

% function to make DMconfocal go to an XY point with Microstage, then scan with
% Microstage. For this to work, app must be the handle of the
% DM confocal app. Scancenterxy = [x,y] is the scan center, while zdepth
% indicates how deep into the surface we want to scan.

% For this function to work properly, the following must be set manually in
% the app:
% 1. Microdrive XY scan limits and steps
% 2. Microdrive Z scan limits and steps (for finding surface)
% 3. Dwell time
% 4. MFF101 filter flipper connections are open
% 5. Zero Nanodrive axis before moving global position must not be
% activated for Z

% Go to global XY position with MicroDrive
app.goToGlobalPosX(scancenterxy(1));
app.goToGlobalPosY(scancenterxy(2));
app.centerScanRangeButton(); % center scan range around new position

% switch filter position to green
app.switchfilters("Green","ND filter");

% find surface by scanning Z. This should also set to optimum Z
% automatically
pause(2); % wait longer for mechanical movement effect to dissipate

% First use Microstage to find surface
app.pushTrackZMicroButton();
optz = app.MCLmicroset.optzpos; % unit in mm; optimum z position
pause(0.5);
app.goToGlobalPosZ(optz); % move to surface
pause(0.5);

% Second use Nanostage to find surface again.
app.pushTrackZNanoButton();
optz = app.MCLnanoset.optzpos; % unit in um, optimum z position
pause(0.5);
maxzdepth = 0.020; %safety feature to avoid objective collision, unit in mm
if abs(zdepth) > maxzdepth
    zdepth = maxzdepth;
end
app.goToNanoPosZ(optz-zdepth*1000); % move inside surface specified by zdepth. Convert mm to um.
pause(0.5);

% % switch filter to red
app.switchfilters("Red","None");
pause(2); % wait longer for mechanical movement effect to dissipate
% % execute microscan
app.Coarse_Fix_X.Value = 0;
app.Coarse_Fix_Y.Value = 0;
app.Coarse_Fix_Z.Value = 1;
app.pushScanMicroButton();

% 
% % save data
% app.saveScanData(filepath,filename,"TXT");
app.saveScanData(filepath,filename,"MAT");
app.saveScanData(filepath,filename,"PNG");

app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually

end