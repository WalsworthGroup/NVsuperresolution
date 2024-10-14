%Make sure to launch apps and ensure their settings are correct (read
%comments in makenanoscan()
scancenterlist = readmatrix("G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\Confocal control software\nanoscanxypoints.csv");
zdepth = 0.005; % unit in mm
filepath = "G:\Shared drives\PHYS - Walsworth Group\Experiment folders\Dark Matter\Confocal\Data\Raw data\06262024_cassini5and6";
filename = "C6_nanoscan_5umdepth_200nmXYres_site";
optzposvec = zeros(1,length(scancenterlist));
nanoZerror = 20; % unit in nm
nanoXYerror = 20; % unit in nm
for i = 1:length(scancenterlist)
    updatefilename = strcat(filename,"_",num2str(i));
    % optzposvec(i)=makenanoscan(app,scancenterlist(i,:),zdepth,filepath,updatefilename);
    optzposvec(i)=makenanoscandoublez(app,scancenterlist(i,:),zdepth,filepath,updatefilename,nanoZerror, nanoXYerror);
    % optzposvec(i)=makemicroscandoublez(app,scancenterlist(i,:),zdepth,filepath,updatefilename);
end