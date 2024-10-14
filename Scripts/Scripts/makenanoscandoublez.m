function optz = makenanoscandoublez(app,scancenterxy,zdepth,filepath,filename,ZerrorNano, XYerrorNano)
%Version which uses both Micro and Nano stages to find the surface, in
%order to undo the ~1 um uncertainty if just using Micro stage due to backlash.

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
pause(1); % wait for stage to settle
app.goToGlobalPosY(scancenterxy(2));
pause(1); % wait for stage to settle

% switch filter position to green
app.switchfilters("Green","ND filter");
% 
% find surface by scanning Z. This should also set to optimum Z
% automatically
pause(4); % wait for mechanical movement effect to dissipate
app.switchfilters("Green","ND filter"); % ensure the filter is switched
pause(2)

% First use Microstage to find surface
app.pushTrackZMicroButton();
optz = app.MCLmicroset.optzpos; % unit in mm; optimum z position
pause(1); % wait for stage to settle
app.goToGlobalPosZ(optz); % move to surface
pause(1); % wait for stage to settle

% Second use Nanostage to find surface again.
% modify the tolerance nano Z scan
app.NanoPosErrThreshold.Value = ZerrorNano; % unit in nm
pause(0.3);
app.pushTrackZNanoButton();
pause(1); % wait for stage to settle
optz = app.MCLnanoset.optzpos; % unit in um, optimum z position
maxzdepth = 0.020; %safety feature to avoid objective collision, unit in mm
if abs(zdepth) > maxzdepth
    zdepth = maxzdepth;
end
app.goToNanoPosZ(optz-zdepth*1000); % move inside surface specified by zdepth. Convert mm to um.
pause(1.5);
app.goToNanoPosZ(optz-zdepth*1000); % move inside surface specified by zdepth. Convert mm to um.

% % switch filter to red
app.switchfilters("Red","None");
pause(4); % wait for mechanical movement effect to dissipate
app.switchfilters("Red","None"); % ensure the filter is switched
pause(2)
% % execute nanoscan
app.Fix_xNano.Value = 0;
app.Fix_yNano.Value = 0;
app.Fix_zNano.Value = 1;
% modify the tolerance for XY nano scan error
app.NanoPosErrThreshold.Value = XYerrorNano; % unit in nm
pause(0.3);
app.pushScanNanoButton();
pause(1); % wait for stage to settle

% 
% % save data
% app.saveScanData(filepath,filename,"TXT");
app.saveScanData(filepath,filename,"MAT");
app.saveScanData(filepath,filename,"PNG");

app.NanoPosErrThreshold.Value = 20; % unit in nm, tight tolerance ensure stage is very close to 0 before reading
pause(0.3);
app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually
pause(2)
app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually
app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually
pause(1)
end