%Make sure to launch apps and ensure their settings are correct (read
%comments in makenanoscan()
scancenterlist = readmatrix("G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\Confocal control software\nanoscanxypoints.csv");
zdepthls = [0.001 0.003 0.005]; % unit in mm
% zdepthls = [0.001 0.002 0.003 0.004 0.005 0.006 0.007 0.008 0.009 0.010]; % unit in mm
filepath = "G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\Data\Raw data\09052024_cassini5and6";
filename = "C6_nanoscan_100nmXYres";
optzposmat = zeros(length(zdepthls),length(scancenterlist));
nanoZerror = 20; % unit in nm
nanoXYerror = 20; % unit in nm
for i = 1:length(scancenterlist)
    for j = 1:length(zdepthls)
        updatefilename = strcat(filename,"_depth",num2str(zdepthls(j)*1000),"um_site_",num2str(i));
		makenanoscandoublez(confocalapp,scancenterlist(i,:),zdepthls(j),filepath,updatefilename,nanoZerror, nanoXYerror);
    end
end