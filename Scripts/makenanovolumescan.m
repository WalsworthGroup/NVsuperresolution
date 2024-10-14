function makenanovolumescan(app,scancenterxy,zdepth,filepath,filename,ZerrorNano, XYerrorNano)
%Version assume micro stage do not move anymore
% use Nano stages to find the surface
% perform volume scan around a particular site

% For this to work, app must be the handle of the
% DM confocal app. Scancenterxy = [x,y] is the scan center, while zdepth
% indicates how deep into the surface we want to scan.

% For this function to work properly, the following must be set manually in
% the app:
% 1. Nanodrive XY scan limits and steps
% 2. Microdrive Z scan limits and steps (for finding surface)
% 3. Dwell time
% 4. MFF101 filter flipper connections are open
% 5. micro stage z should be at or very close to the surface already

% Go to an XY position with NanoDrive
app.goToNanoPosX(scancenterxy(1));
pause(1); % wait for stage to settle
app.goToNanoPosX(scancenterxy(1));
pause(0.5);
app.goToNanoPosY(scancenterxy(2));
pause(1); % wait for stage to settle
app.goToNanoPosY(scancenterxy(2));
pause(0.5)

% switch filter position to green
app.switchfilters("Green","ND filter");
% 
% find surface by scanning Z. This should also set to optimum Z
% automatically
pause(2); % wait for mechanical movement effect to dissipate
app.switchfilters("Green","ND filter"); % ensure the filter is switched
pause(2)

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
pause(1);
app.goToNanoPosZ(optz-zdepth*1000); % move inside surface specified by zdepth. Convert mm to um.

% % switch filter to red
app.switchfilters("Red","None");
pause(2); % wait for mechanical movement effect to dissipate
app.switchfilters("Red","None"); % ensure the filter is switched
pause(2)

% % update nanoscan range
app.UseNewScanCenterNano.Value = 1;
app.ScanCenterPosXNano.Value= scancenterxy(1);
pause(0.5)
app.ScanCenterPosYNano.Value= scancenterxy(2);
pause(0.5)
app.centerScanRangeNanoButton()
pause(0.5)

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

app.ScanCenterPosXNano.Value= 0;
pause(0.5)
app.ScanCenterPosYNano.Value= 0;
pause(0.5)
app.centerScanRangeNanoButton()
pause(0.5)
app.UseNewScanCenterNano.Value = 0;

app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually
pause(1)
end

