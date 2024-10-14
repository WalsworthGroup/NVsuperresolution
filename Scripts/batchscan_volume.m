%Make sure to launch apps and ensure their settings are correct (read
scancenterlist = readmatrix("G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\" + ...
    "Confocal control software\nanoscanxypoints.csv");
% zdepthls = [-0.002 -0.0016 -0.0012 -0.0008 -0.0004 0 0.0004 0.0008 0.0012 0.00160 0.002]; % unit in mm
% zdepthls = [-0.0008 -0.0004 0 0.0004 0.0008 0.0012 0.0016]; % unit in mm
zdepthls = [-0.0004 0 0.0004 0.0008]; % unit in mm
% zdepthls = [-0.0004 0 0.0004 0.0008 0.0012]; % unit in mm
% zdepthls = [0 0.0004]; % unit in mm
% zdepthls = [0.001 0.003 0.005]; % unit in mm
filepath = "G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter" + ...
    "\Confocal\Data\Raw data\08212024_sandia1_quadD\QuadD_rowIIcol2_redo\vol_scan";
filename = "QuadD_rowIIcol2_100nmXYres_400nmZres_volume_site";
nanoZerror = 20; % unit in nm
nanoXYerror = 20; % unit in nm
for i = 1:length(scancenterlist) %% check the starting index!
% for i = 14:13 %% check the starting index!
% for i = 101:length(scancenterlist) %% check the starting index!
    for j = 1:length(zdepthls) %% check the starting index!
        updatefilename = strcat(filename,"_",num2str(i),"_depth_",num2str(j));
        makenanovolumescan(confocalapp,scancenterlist(i,:),zdepthls(j),filepath,updatefilename,nanoZerror, nanoXYerror);
    end
end