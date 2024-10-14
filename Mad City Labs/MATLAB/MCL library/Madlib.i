# 1 "C:\\Users\\WalsworthGroup\\Documents\\Mad City Labs\\Examples_Python,Matlab_June2022\\Madlib.h"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Users\\WalsworthGroup\\Documents\\Mad City Labs\\Examples_Python,Matlab_June2022\\Madlib.h"
# 14 "C:\\Users\\WalsworthGroup\\Documents\\Mad City Labs\\Examples_Python,Matlab_June2022\\Madlib.h"
#pragma pack(push, 1)
struct ProductInformation {
 unsigned char axis_bitmap;
 short ADC_resolution;
 short DAC_resolution;
 short Product_id;
 short FirmwareVersion;
 short FirmwareProfile;
};
#pragma pack(pop)




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

__attribute__((dllimport)) double MCL_SingleReadZ(int handle);
__attribute__((dllimport)) double MCL_SingleReadN(unsigned int axis, int handle);
__attribute__((dllimport)) int MCL_SingleWriteZ(double position, int handle);
__attribute__((dllimport)) int MCL_SingleWriteN(double position, unsigned int axis, int handle);
__attribute__((dllimport)) double MCL_MonitorZ(double position, int handle);
__attribute__((dllimport)) double MCL_MonitorN(double position, unsigned int axis, int handle);
__attribute__((dllimport)) double MCL_ReadEncoderZ(int handle);
__attribute__((dllimport)) int MCL_ResetEncoderZ(int handle);
__attribute__((dllimport)) int MCL_ThetaX(double milliradians, double *actual, int handle);
__attribute__((dllimport)) int MCL_ThetaY(double milliradians, double *actual, int handle);
__attribute__((dllimport)) int MCL_MoveZCenter(double position, double *actual, int handle);
__attribute__((dllimport)) int MCL_LevelZ(double position, int handle);
__attribute__((dllimport)) int MCL_CFocusSetFocusMode(bool focusModeOn, int handle);
__attribute__((dllimport)) int MCL_CFocusStep(double relativePositionChange, int handle);
__attribute__((dllimport)) int MCL_CFocusGetFocusMode(int *focusLocked, int handle);

__attribute__((dllimport)) int MCL_ReadWaveFormN(unsigned int axis,unsigned int DataPoints,double milliseconds,double* waveform, int handle);
__attribute__((dllimport)) int MCL_Setup_ReadWaveFormN(unsigned int axis,unsigned int DataPoints,double milliseconds, int handle);
__attribute__((dllimport)) int MCL_Trigger_ReadWaveFormN(unsigned int axis,unsigned int DataPoints,double *waveform, int handle);
__attribute__((dllimport)) int MCL_LoadWaveFormN(unsigned int axis,unsigned int DataPoints,double milliseconds,double* waveform, int handle);
__attribute__((dllimport)) int MCL_Setup_LoadWaveFormN(unsigned int axis,unsigned int DataPoints,double milliseconds,double *waveform, int handle);
__attribute__((dllimport)) int MCL_Trigger_LoadWaveFormN(unsigned int axis, int handle);
__attribute__((dllimport)) int MCL_TriggerWaveformAcquisition(unsigned int axis, unsigned int DataPoints, double* waveform, int handle);

__attribute__((dllimport)) int MCL_WfmaSetup(double *wfDacX, double *wfDacY, double *wfDacZ, int dataPointsPerAxis, double milliseconds, unsigned short iterations, int handle);
__attribute__((dllimport)) int MCL_WfmaTriggerAndRead(double *wfAdcX, double *wfAdcY, double *wfAdcZ, int handle);
__attribute__((dllimport)) int MCL_WfmaTrigger(int handle);
__attribute__((dllimport)) int MCL_WfmaRead(double *wfAdcX, double *wfAdcY, double *wfAdcZ, int handle);
__attribute__((dllimport)) int MCL_WfmaStop(int handle);

__attribute__((dllimport)) int MCL_IssBindClockToAxis(int clock, int mode, int axis, int handle);
__attribute__((dllimport)) int MCL_IssConfigurePolarity(int clock, int mode, int handle);
__attribute__((dllimport)) int MCL_IssSetClock(int clock, int mode, int handle);
__attribute__((dllimport)) int MCL_IssResetDefaults(int handle);
__attribute__((dllimport)) int MCL_ChangeClock(double milliseconds, short clock, int handle);
__attribute__((dllimport)) int MCL_PixelClock(int handle);
__attribute__((dllimport)) int MCL_LineClock(int handle);
__attribute__((dllimport)) int MCL_FrameClock(int handle);
__attribute__((dllimport)) int MCL_AuxClock(int handle);
__attribute__((dllimport)) int MCL_GetClockFrequency(double *adcfreq, double *dacfreq, int handle);

__attribute__((dllimport)) int MCL_SequenceLoad(int axis, double* sequence, int seqSize, int handle);
__attribute__((dllimport)) int MCL_SequenceClear(int handle);
__attribute__((dllimport)) int MCL_SequenceStart(int handle);
__attribute__((dllimport)) int MCL_SequenceStop(int handle);
__attribute__((dllimport)) int MCL_SequenceGetMax(int* max, int handle);

__attribute__((dllimport)) double MCL_GetCalibration(unsigned int axis, int handle);
__attribute__((dllimport)) double MCL_TipTiltHeight(int handle);
__attribute__((dllimport)) double MCL_TipTiltWidth(int handle);
__attribute__((dllimport)) int MCL_MinMaxThetaX(double *min, double *max, int handle);
__attribute__((dllimport)) int MCL_MinMaxThetaY(double *min, double *max, int handle);
__attribute__((dllimport)) double MCL_GetTipTiltThetaX(int handle);
__attribute__((dllimport)) double MCL_GetTipTiltThetaY(int handle);
__attribute__((dllimport)) double MCL_GetTipTiltCenter(int handle);
__attribute__((dllimport)) int MCL_CurrentMinMaxThetaX(double *min, double *max, int handle);
__attribute__((dllimport)) int MCL_CurrentMinMaxThetaY(double *min, double *max, int handle);
__attribute__((dllimport)) int MCL_CurrentMinMaxCenter(double *min, double *max, int handle);
__attribute__((dllimport)) int MCL_GetFirmwareVersion(short *version, short *profile, int handle);
__attribute__((dllimport)) int MCL_GetSerialNumber(int handle);
__attribute__((dllimport)) int MCL_GetProductInfo(struct ProductInformation *pi, int handle);
__attribute__((dllimport)) void MCL_PrintDeviceInfo(int handle);
__attribute__((dllimport)) bool MCL_DeviceAttached(int milliseconds, int handle);
__attribute__((dllimport)) bool MCL_CorrectDriverVersion();
__attribute__((dllimport)) int MCL_GetCommandedPosition(double *xCom, double *yCom, double *zCom, int handle);
