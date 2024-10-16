function [methodinfo,structs,enuminfo,ThunkLibName]=MicroDrive_proto
%MICRODRIVE_PROTO Create structures to define interfaces found in 'MicroDrive'.

%This function was generated by loadlibrary.m parser version  on Tue Jun 20 14:51:41 2023
%perl options:'MicroDrive.i -outfile=MicroDrive_proto.m -thunkfile=MicroDrive_thunk_pcwin64.c -header=MicroDrive.h'
ival={cell(1,0)}; % change 0 to the actual number of functions to preallocate the data.
structs=[];enuminfo=[];fcnNum=1;
fcns=struct('name',ival,'calltype',ival,'LHS',ival,'RHS',ival,'alias',ival,'thunkname', ival);
MfilePath=fileparts(mfilename('fullpath'));
ThunkLibName=fullfile(MfilePath,'MicroDrive_thunk_pcwin64');
%  void MCL_DLLVersion ( short * version , short * revision ); 
fcns.thunkname{fcnNum}='voidvoidPtrvoidPtrThunk';fcns.name{fcnNum}='MCL_DLLVersion'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'int16Ptr', 'int16Ptr'};fcnNum=fcnNum+1;
%  int MCL_InitHandle (); 
fcns.thunkname{fcnNum}='int32Thunk';fcns.name{fcnNum}='MCL_InitHandle'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  int MCL_GrabHandle ( short device ); 
fcns.thunkname{fcnNum}='int32int16Thunk';fcns.name{fcnNum}='MCL_GrabHandle'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int16'};fcnNum=fcnNum+1;
%  int MCL_InitHandleOrGetExisting (); 
fcns.thunkname{fcnNum}='int32Thunk';fcns.name{fcnNum}='MCL_InitHandleOrGetExisting'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  int MCL_GrabHandleOrGetExisting ( short device ); 
fcns.thunkname{fcnNum}='int32int16Thunk';fcns.name{fcnNum}='MCL_GrabHandleOrGetExisting'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int16'};fcnNum=fcnNum+1;
%  int MCL_GetHandleBySerial ( short serial ); 
fcns.thunkname{fcnNum}='int32int16Thunk';fcns.name{fcnNum}='MCL_GetHandleBySerial'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int16'};fcnNum=fcnNum+1;
%  int MCL_GrabAllHandles (); 
fcns.thunkname{fcnNum}='int32Thunk';fcns.name{fcnNum}='MCL_GrabAllHandles'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  int MCL_GetAllHandles ( int * handles , int size ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_GetAllHandles'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_NumberOfCurrentHandles (); 
fcns.thunkname{fcnNum}='int32Thunk';fcns.name{fcnNum}='MCL_NumberOfCurrentHandles'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  void MCL_ReleaseHandle ( int handle ); 
fcns.thunkname{fcnNum}='voidint32Thunk';fcns.name{fcnNum}='MCL_ReleaseHandle'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'int32'};fcnNum=fcnNum+1;
%  void MCL_ReleaseAllHandles (); 
fcns.thunkname{fcnNum}='voidThunk';fcns.name{fcnNum}='MCL_ReleaseAllHandles'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  int MCL_MDStatus ( unsigned short * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MDStatus'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint16Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDStop ( unsigned short * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MDStop'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint16Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveMoveStatus ( int * isMoving , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveMoveStatus'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveWait ( int handle ); 
fcns.thunkname{fcnNum}='int32int32Thunk';fcns.name{fcnNum}='MCL_MicroDriveWait'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32'};fcnNum=fcnNum+1;
%  int MCL_MDMoveThreeAxesM ( int axis1 , double velocity1 , int microSteps1 , int axis2 , double velocity2 , int microSteps2 , int axis3 , double velocity3 , int microSteps3 , int handle ); 
fcns.thunkname{fcnNum}='int32int32doubleint32int32doubleint32int32doubleint32int32Thunk';fcns.name{fcnNum}='MCL_MDMoveThreeAxesM'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32', 'double', 'int32', 'int32', 'double', 'int32', 'int32', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDMoveThreeAxesR ( int axis1 , double velocity1 , double distance1 , int rounding1 , int axis2 , double velocity2 , double distance2 , int rounding2 , int axis3 , double velocity3 , double distance3 , int rounding3 , int handle ); 
fcns.thunkname{fcnNum}='int32int32doubledoubleint32int32doubledoubleint32int32doubledoubleint32int32Thunk';fcns.name{fcnNum}='MCL_MDMoveThreeAxesR'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32', 'double', 'double', 'int32', 'int32', 'double', 'double', 'int32', 'int32', 'double', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDMoveThreeAxes ( int axis1 , double velocity1 , double distance1 , int axis2 , double velocity2 , double distance2 , int axis3 , double velocity3 , double distance3 , int handle ); 
fcns.thunkname{fcnNum}='int32int32doubledoubleint32doubledoubleint32doubledoubleint32Thunk';fcns.name{fcnNum}='MCL_MDMoveThreeAxes'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32', 'double', 'double', 'int32', 'double', 'double', 'int32', 'double', 'double', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDMoveM ( unsigned int axis , double velocity , int microSteps , int handle ); 
fcns.thunkname{fcnNum}='int32uint32doubleint32int32Thunk';fcns.name{fcnNum}='MCL_MDMoveM'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDMoveR ( unsigned int axis , double velocity , double distance , int rounding , int handle ); 
fcns.thunkname{fcnNum}='int32uint32doubledoubleint32int32Thunk';fcns.name{fcnNum}='MCL_MDMoveR'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'double', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDMove ( unsigned int axis , double velocity , double distance , int handle ); 
fcns.thunkname{fcnNum}='int32uint32doubledoubleint32Thunk';fcns.name{fcnNum}='MCL_MDMove'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'double', 'double', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDSingleStep ( unsigned int axis , int direction , int handle ); 
fcns.thunkname{fcnNum}='int32uint32int32int32Thunk';fcns.name{fcnNum}='MCL_MDSingleStep'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDResetEncoders ( unsigned short * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MDResetEncoders'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint16Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDResetEncoder ( unsigned int axis , unsigned short * status , int handle ); 
fcns.thunkname{fcnNum}='int32uint32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MDResetEncoder'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'uint16Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDReadEncoders ( double * e1 , double * e2 , double * e3 , double * e4 , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='MCL_MDReadEncoders'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'doublePtr', 'doublePtr', 'doublePtr', 'doublePtr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDCurrentPositionM ( unsigned int axis , int * microSteps , int handle ); 
fcns.thunkname{fcnNum}='int32uint32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MDCurrentPositionM'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'int32Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDInformation ( double * encoderResolution , double * stepSize , double * maxVelocity , double * maxVelocityTwoAxis , double * maxVelocityThreeAxis , double * minVelocity , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrvoidPtrvoidPtrvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='MCL_MDInformation'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'doublePtr', 'doublePtr', 'doublePtr', 'doublePtr', 'doublePtr', 'doublePtr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MDEncodersPresent ( unsigned char * encoderBitmap , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MDEncodersPresent'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_GetFirmwareVersion ( short * version , short * profile , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='MCL_GetFirmwareVersion'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int16Ptr', 'int16Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_GetSerialNumber ( int handle ); 
fcns.thunkname{fcnNum}='int32int32Thunk';fcns.name{fcnNum}='MCL_GetSerialNumber'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32'};fcnNum=fcnNum+1;
%  void MCL_PrintDeviceInfo ( int handle ); 
fcns.thunkname{fcnNum}='voidint32Thunk';fcns.name{fcnNum}='MCL_PrintDeviceInfo'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'int32'};fcnNum=fcnNum+1;
%  bool MCL_DeviceAttached ( int milliseconds , int handle ); 
fcns.thunkname{fcnNum}='uint8int32int32Thunk';fcns.name{fcnNum}='MCL_DeviceAttached'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint8'; fcns.RHS{fcnNum}={'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_GetProductID ( unsigned short * PID , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_GetProductID'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint16Ptr', 'int32'};fcnNum=fcnNum+1;
%  bool MCL_CorrectDriverVersion (); 
fcns.thunkname{fcnNum}='uint8Thunk';fcns.name{fcnNum}='MCL_CorrectDriverVersion'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint8'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
%  int MCL_GetAxisInfo ( unsigned char * axis_bitmap , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_GetAxisInfo'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_GetFullStepSize ( double * stepSize , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_GetFullStepSize'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'doublePtr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_GetTirfModuleCalibration ( double * calMM , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_GetTirfModuleCalibration'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'doublePtr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_GetTirfModuleAxis ( int * tirfAxis , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_GetTirfModuleAxis'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveStatus ( unsigned char * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveStatus'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveStop ( unsigned char * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveStop'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveMoveProfileXYZ_MicroSteps ( double velocityX , int microStepsX , double velocityY , int microStepsY , double velocityZ , int microStepsZ , int handle ); 
fcns.thunkname{fcnNum}='int32doubleint32doubleint32doubleint32int32Thunk';fcns.name{fcnNum}='MCL_MicroDriveMoveProfileXYZ_MicroSteps'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'double', 'int32', 'double', 'int32', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveMoveProfile_MicroSteps ( unsigned int axis , double velocity , int microSteps , int handle ); 
fcns.thunkname{fcnNum}='int32uint32doubleint32int32Thunk';fcns.name{fcnNum}='MCL_MicroDriveMoveProfile_MicroSteps'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveMoveProfileXYZ ( double velocityX , double distanceX , int roundingX , double velocityY , double distanceY , int roundingY , double velocityZ , double distanceZ , int roundingZ , int handle ); 
fcns.thunkname{fcnNum}='int32doubledoubleint32doubledoubleint32doubledoubleint32int32Thunk';fcns.name{fcnNum}='MCL_MicroDriveMoveProfileXYZ'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'double', 'double', 'int32', 'double', 'double', 'int32', 'double', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveMoveProfile ( unsigned int axis , double velocity , double distance , int rounding , int handle ); 
fcns.thunkname{fcnNum}='int32uint32doubledoubleint32int32Thunk';fcns.name{fcnNum}='MCL_MicroDriveMoveProfile'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'double', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveSingleStep ( unsigned int axis , int direction , int handle ); 
fcns.thunkname{fcnNum}='int32uint32int32int32Thunk';fcns.name{fcnNum}='MCL_MicroDriveSingleStep'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint32', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveResetEncoders ( unsigned char * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveResetEncoders'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveResetXEncoder ( unsigned char * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveResetXEncoder'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveResetYEncoder ( unsigned char * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveResetYEncoder'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveResetZEncoder ( unsigned char * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveResetZEncoder'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveInformation ( double * encoderResolution , double * stepSize , double * maxVelocity , double * maxVelocityTwoAxis , double * maxVelocityThreeAxis , double * minVelocity , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrvoidPtrvoidPtrvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveInformation'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'doublePtr', 'doublePtr', 'doublePtr', 'doublePtr', 'doublePtr', 'doublePtr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveReadEncoders ( double * x , double * y , double * z , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveReadEncoders'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'doublePtr', 'doublePtr', 'doublePtr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MicroDriveCurrentMicroStepPosition ( int * microStepsX , int * microStepsY , int * microStepsZ , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='MCL_MicroDriveCurrentMicroStepPosition'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32Ptr', 'int32Ptr', 'int32Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MD1MoveProfile_MicroSteps ( double velocity , int microSteps , int handle ); 
fcns.thunkname{fcnNum}='int32doubleint32int32Thunk';fcns.name{fcnNum}='MCL_MD1MoveProfile_MicroSteps'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MD1MoveProfile ( double velocity , double distance , int rounding , int handle ); 
fcns.thunkname{fcnNum}='int32doubledoubleint32int32Thunk';fcns.name{fcnNum}='MCL_MD1MoveProfile'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'double', 'double', 'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MD1SingleStep ( int direction , int handle ); 
fcns.thunkname{fcnNum}='int32int32int32Thunk';fcns.name{fcnNum}='MCL_MD1SingleStep'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MD1ResetEncoder ( unsigned char * status , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MD1ResetEncoder'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'uint8Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MD1ReadEncoder ( double * position , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MD1ReadEncoder'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'doublePtr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MD1CurrentMicroStepPosition ( int * microSteps , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrint32Thunk';fcns.name{fcnNum}='MCL_MD1CurrentMicroStepPosition'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int32Ptr', 'int32'};fcnNum=fcnNum+1;
%  int MCL_MD1Information ( double * encoderResolution , double * stepSize , double * maxVelocity , double * minVelocity , int handle ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtrvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='MCL_MD1Information'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'doublePtr', 'doublePtr', 'doublePtr', 'doublePtr', 'int32'};fcnNum=fcnNum+1;
methodinfo=fcns;