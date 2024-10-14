%Make sure to launch apps and ensure their settings are correct (read
%comments in makenanoscan()
% scancenterlist = readmatrix("G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\Confocal control software\nanoscanxypoints.csv");
%zdepthls = [-0.0010 -0.0005 0.000 0.0005 0.0010 0.0015 0.0020 0.0025 0.0030]; % unit in mm
zdepthls = [0.000 0.0005 0.0010 0.0015 0.0020];
% zdepthls = [0.001 0.002 0.003 0.004 0.005 0.006 0.007 0.008 0.009 0.010]; % unit in mm
filepath = "G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\Data\Raw data\06122024_sandia1";
filename = "nanoscan_red_col1rowVIIsel_250nmres_depth";
optzposvec = zeros(1,length(zdepthls));
nanoZerror = 20; % unit in nm
nanoXYerror = 20; % unit in nm
scancenter = [-5.303,3.6130]; % can also manually dial in scan center
for i = 1:length(zdepthls)
    updatefilename = strcat(filename,"_",num2str(zdepthls(i)*1000),"um");
    optzposvec(i)=makenanoscandoublez(app,scancenter,zdepthls(i),filepath,updatefilename,nanoZerror, nanoXYerror);
end