# 1 "C:\\Users\\WalsworthGroup\\Documents\\Mad City Labs\\Examples_Python,Matlab_June2022\\MicroDrive.h"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Users\\WalsworthGroup\\Documents\\Mad City Labs\\Examples_Python,Matlab_June2022\\MicroDrive.h"
# 17 "C:\\Users\\WalsworthGroup\\Documents\\Mad City Labs\\Examples_Python,Matlab_June2022\\MicroDrive.h"
 typedef unsigned char bool;




__attribute__((dllimport)) void MCL_DLLVersion(short *version, short *revision);

__attribute__((dllimport)) int MCL_InitHandle();
__attribute__((dllimport)) int MCL_GrabHandle(short device);
__attribute__((dllimport)) int MCL_InitHandleOrGetExisting();
__attribute__((dllimport)) int MCL_GrabHandleOrGetExisting(short device);
__attribute__((dllimport)) int MCL_GetHandleBySerial(short serial);
__attribute__((dllimport)) int MCL_GrabAllHandles();
__attribute__((dllimport)) int MCL_GetAllHandles(int *handles, int size);
__attribute__((dllimport)) int MCL_NumberOfCurrentHandles();
__attribute__((dllimport)) void MCL_ReleaseHandle(int handle);
__attribute__((dllimport)) void MCL_ReleaseAllHandles();

__attribute__((dllimport)) int MCL_MDStatus(unsigned short* status, int handle);
__attribute__((dllimport)) int MCL_MDStop(unsigned short* status, int handle);
__attribute__((dllimport)) int MCL_MicroDriveMoveStatus(int *isMoving, int handle);
__attribute__((dllimport)) int MCL_MicroDriveWait(int handle);

__attribute__((dllimport)) int MCL_MDMoveThreeAxesM(
       int axis1, double velocity1, int microSteps1,
       int axis2, double velocity2, int microSteps2,
       int axis3, double velocity3, int microSteps3,
       int handle);
__attribute__((dllimport)) int MCL_MDMoveThreeAxesR(
       int axis1, double velocity1, double distance1, int rounding1,
       int axis2, double velocity2, double distance2, int rounding2,
       int axis3, double velocity3, double distance3, int rounding3,
       int handle);
__attribute__((dllimport)) int MCL_MDMoveThreeAxes(
       int axis1, double velocity1, double distance1,
       int axis2, double velocity2, double distance2,
       int axis3, double velocity3, double distance3,
       int handle);
__attribute__((dllimport)) int MCL_MDMoveM(unsigned int axis, double velocity, int microSteps, int handle);
__attribute__((dllimport)) int MCL_MDMoveR(unsigned int axis, double velocity, double distance, int rounding, int handle);
__attribute__((dllimport)) int MCL_MDMove(unsigned int axis, double velocity, double distance, int handle);
__attribute__((dllimport)) int MCL_MDSingleStep(unsigned int axis, int direction, int handle);
__attribute__((dllimport)) int MCL_MDResetEncoders(unsigned short* status, int handle);
__attribute__((dllimport)) int MCL_MDResetEncoder(unsigned int axis, unsigned short* status, int handle);
__attribute__((dllimport)) int MCL_MDReadEncoders(double* e1, double* e2, double *e3, double *e4, int handle);
__attribute__((dllimport)) int MCL_MDCurrentPositionM(unsigned int axis, int *microSteps, int handle);
__attribute__((dllimport)) int MCL_MDInformation(
       double* encoderResolution,
       double* stepSize,
       double* maxVelocity,
       double* maxVelocityTwoAxis,
       double* maxVelocityThreeAxis,
       double* minVelocity,
       int handle);
__attribute__((dllimport)) int MCL_MDEncodersPresent(unsigned char* encoderBitmap, int handle);

__attribute__((dllimport)) int MCL_GetFirmwareVersion(short *version, short *profile, int handle);
__attribute__((dllimport)) int MCL_GetSerialNumber(int handle);
__attribute__((dllimport)) void MCL_PrintDeviceInfo(int handle);
__attribute__((dllimport)) bool MCL_DeviceAttached(int milliseconds, int handle);
__attribute__((dllimport)) int MCL_GetProductID(unsigned short *PID, int handle);
__attribute__((dllimport)) bool MCL_CorrectDriverVersion();
__attribute__((dllimport)) int MCL_GetAxisInfo(unsigned char *axis_bitmap, int handle);
__attribute__((dllimport)) int MCL_GetFullStepSize(double *stepSize, int handle);
__attribute__((dllimport)) int MCL_GetTirfModuleCalibration(double *calMM, int handle);
__attribute__((dllimport)) int MCL_GetTirfModuleAxis(int *tirfAxis, int handle);




__attribute__((dllimport)) int MCL_MicroDriveStatus(unsigned char *status, int handle);
__attribute__((dllimport)) int MCL_MicroDriveStop(unsigned char* status, int handle);
__attribute__((dllimport)) int MCL_MicroDriveMoveProfileXYZ_MicroSteps(
       double velocityX,
       int microStepsX,
       double velocityY,
       int microStepsY,
       double velocityZ,
       int microStepsZ,
       int handle
       );
__attribute__((dllimport)) int MCL_MicroDriveMoveProfile_MicroSteps(
       unsigned int axis,
       double velocity,
       int microSteps,
       int handle
       );
__attribute__((dllimport)) int MCL_MicroDriveMoveProfileXYZ(
       double velocityX,
       double distanceX,
       int roundingX,
       double velocityY,
       double distanceY,
       int roundingY,
       double velocityZ,
       double distanceZ,
       int roundingZ,
       int handle
       );
__attribute__((dllimport)) int MCL_MicroDriveMoveProfile(
       unsigned int axis,
       double velocity,
       double distance,
       int rounding,
       int handle
       );
__attribute__((dllimport)) int MCL_MicroDriveSingleStep(unsigned int axis, int direction, int handle);
__attribute__((dllimport)) int MCL_MicroDriveResetEncoders(unsigned char* status, int handle);
__attribute__((dllimport)) int MCL_MicroDriveResetXEncoder(unsigned char* status, int handle);
__attribute__((dllimport)) int MCL_MicroDriveResetYEncoder(unsigned char* status, int handle);
__attribute__((dllimport)) int MCL_MicroDriveResetZEncoder(unsigned char* status, int handle);
__attribute__((dllimport)) int MCL_MicroDriveInformation(
       double* encoderResolution,
       double* stepSize,
       double* maxVelocity,
       double* maxVelocityTwoAxis,
       double* maxVelocityThreeAxis,
       double* minVelocity,
       int handle);
__attribute__((dllimport)) int MCL_MicroDriveReadEncoders(double* x, double* y, double *z, int handle);
__attribute__((dllimport)) int MCL_MicroDriveCurrentMicroStepPosition(int *microStepsX, int *microStepsY, int *microStepsZ, int handle);
__attribute__((dllimport)) int MCL_MD1MoveProfile_MicroSteps(double velocity, int microSteps, int handle);
__attribute__((dllimport)) int MCL_MD1MoveProfile(double velocity, double distance, int rounding, int handle);
__attribute__((dllimport)) int MCL_MD1SingleStep(int direction, int handle);
__attribute__((dllimport)) int MCL_MD1ResetEncoder(unsigned char* status, int handle);
__attribute__((dllimport)) int MCL_MD1ReadEncoder(double* position, int handle);
__attribute__((dllimport)) int MCL_MD1CurrentMicroStepPosition(int *microSteps, int handle);
__attribute__((dllimport)) int MCL_MD1Information(
       double* encoderResolution,
       double* stepSize,
       double* maxVelocity,
       double* minVelocity,
       int handle);
