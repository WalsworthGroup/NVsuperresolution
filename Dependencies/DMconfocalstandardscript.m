function scanres = DMconfocalstandardscript(app,tilescanset,xyscanset)
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

%% Some hardcoded settings
maxzdepth = 0.020; %zdepth safety feature to avoid objective collision, unit in mm
ZerrorNano = 20; %position tolerance for nano Z scan (in nm)
XYerrorNano = 20; %tolerance for nano XY scan
pausefactor = 1; %set to 1 for normal operation, 0 if we don't need pauses during testing 

%% Go to XY position with MicroDrive or NanoDrive
if tilescanset.tilestage == "MicroDrive" % use MicroDrive to move from tile to tile
    app.goToGlobalPosX(xyscanset.scancenterxy(1));
    pause(pausefactor*1); % wait for stage to settle
    app.goToGlobalPosY(xyscanset.scancenterxy(2));
    pause(pausefactor*1); % wait for stage to settle
elseif tilescanset.tilestage == "NanoDrive" % use NanoDrive to move from tile to tile
    app.goToNanoPosX(xyscanset.scancenterxy(1));
    pause(pausefactor*0.5);
    app.goToNanoPosY(xyscanset.scancenterxy(2));
    pause(pausefactor*0.5);
end

%% Find surface by scanning Z
if tilescanset.scanz == 1
    if abs(tilescanset.zdepth) > maxzdepth % ensure zdepth is within safety limits
        tilescanset.zdepth = maxzdepth;
    end

    % switch filter position to green
    app.switchfilters("Green","ND filter");

    % find surface by scanning Z. This should also set to optimum Z
    % automatically
    pause(pausefactor*4); % wait for mechanical movement effect to dissipate
    app.switchfilters("Green","ND filter"); % ensure the filter is switched
    pause(pausefactor*2)

    if tilescanset.scanzmicro == 1
        % Use Microstage to find surface
        app.pushTrackZMicroButton();
        optz = app.MCLmicroset.optzpos; % unit in mm; optimum z position
        scanres.optz = optz;
        pause(pausefactor*1); % wait for stage to settle
        if tilescanset.scanznano == 0 %if scan Z with nano is not selected, then go directly to the selected Z depth with MicroDrive
            app.goToGlobalPosZ(optz-tilescanset.zdepth); % move to depth
        else
            app.goToGlobalPosZ(optz); % move to surface. We will move to depth with NanoDrive in the next step
        end
        pause(pausefactor*1); % wait for stage to settle
    end

    % Second: Use Nanostage to find surface again.
    if tilescanset.scanznano == 1
        app.NanoPosErrThreshold.Value = ZerrorNano; % unit in nm
        pause(pausefactor*0.3);
        app.pushTrackZNanoButton();
        pause(pausefactor*1); % wait for stage to settle
        optz = app.MCLnanoset.optzpos; % unit in um, optimum z position
        scanres.optz = optz;
        app.goToNanoPosZ(optz-tilescanset.zdepth*1000); % move inside surface specified by zdepth. Convert mm to um.
        pause(pausefactor*1.5);
        app.goToNanoPosZ(optz-tilescanset.zdepth*1000); % move inside surface specified by zdepth. Convert mm to um.
    end

end

if tilescanset.XYscan ~= "None"
    % switch filter to red
    app.switchfilters("Red","None");
    pause(pausefactor*4); % wait for mechanical movement effect to dissipate
    app.switchfilters("Red","None"); % ensure the filter is switched
    pause(pausefactor*2)

    if tilescanset.XYscan == "MicroDrive"
        app.UseNewScanCenter.Value = 0; %Do not use "new scan center" option, as we have already traveled to the new scan center
        app.centerScanRangeButton(); % center scan range around new position
        %fix Z
        app.Coarse_Fix_X.Value = 0;
        app.Coarse_Fix_Y.Value = 0;
        app.Coarse_Fix_Z.Value = 1;

        app.pushScanMicroButton(); %execute MicroDrive scan
    elseif tilescanset.XYscan == "NanoDrive" 
        %if NanoDrive is used for both moving from tile to tile and XY
        %scanning within a tile, then the scan range center must be
        %adjusted each time. If MicroDrive is used for moving tile to tile,
        %then NanoDrive scan range will always be centered around zero.
        if tilescanset.tilestage == "NanoDrive"
            % Daniel's version start
            % in this version, the scan range will be centered around
            % nanostage actual position, so the number will be not round.
            % app.UseNewScanCenterNano.Value = 0;
            % app.centerScanRangeNanoButton();
            % end

            % Jiashen's version start
            % in this version, the scan range will be centered around
            % nice numbers
            app.ScanCenterPosXNano.Value = xyscanset.scancenterxy(1);
            pause(pausefactor*0.5)
            app.ScanCenterPosYNano.Value = xyscanset.scancenterxy(2);
            pause(pausefactor*0.5)
            app.ScanCenterPosZNano.Value = 0;
            pause(pausefactor*0.5)
            app.UseNewScanCenterNano.Value = 1;
            app.centerScanRangeNanoButton();
            % end
        end
        %fix Z
        app.Fix_xNano.Value = 0;
        app.Fix_yNano.Value = 0;
        app.Fix_zNano.Value = 1;

        % modify the tolerance for XY nano scan error
        app.NanoPosErrThreshold.Value = XYerrorNano; % unit in nm
        pause(pausefactor*0.3);
        app.pushScanNanoButton();% execute nanoscan
        pause(pausefactor*1); % wait for stage to settle
    end

    % save data
    app.saveScanData(tilescanset.filepath,xyscanset.filename,"MAT");
    app.saveScanData(tilescanset.filepath,xyscanset.filename,"PNG");

    % pack data into scanres to be processed in tiling program
    scanres.x = app.data.x;
    scanres.y = app.data.y;
    scanres.resmat = app.data.res;
end

pause(pausefactor*0.3);
app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually
pause(pausefactor*2)
app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually
app.nanoToZero(); %Zero nanodrive. Not strictly needed if set manually
pause(pausefactor*1)
end