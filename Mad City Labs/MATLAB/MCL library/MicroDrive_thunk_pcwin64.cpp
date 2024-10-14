/* C thunk file for functions in MicroDrive_proto.m generated on Tue Jun 20 14:51:41 2023. */


#ifdef _WIN32
  #define DLL_EXPORT_SYM __declspec(dllexport)
#elif __GNUC__ >= 4
  #define DLL_EXPORT_SYM __attribute__ ((visibility("default")))
#else
  #define DLL_EXPORT_SYM
#endif

#ifdef LCC_WIN64
  #define DLL_EXPORT_SYM
#endif

#ifdef  __cplusplus
#define EXPORT_EXTERN_C extern "C" DLL_EXPORT_SYM
#else
#define EXPORT_EXTERN_C DLL_EXPORT_SYM
#endif

#include "tmwtypes.h"

int main(){
            return 0;
                }

/* use BUILDING_THUNKFILE to protect parts of your header if needed when building the thunkfile */
#define BUILDING_THUNKFILE

#include "MicroDrive.h"
#ifdef LCC_WIN64
#define EXPORT_EXTERN_C __declspec(dllexport)
#endif

/*  void MCL_DLLVersion ( short * version , short * revision ); */
EXPORT_EXTERN_C void voidvoidPtrvoidPtrThunk(void fcn(),const char *callstack,int stacksize)
{
	void * p0;
	void * p1;
	p0=*(void * const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	((void (*)(void * , void * ))fcn)(p0 , p1);
}

/*  int MCL_InitHandle (); */
EXPORT_EXTERN_C int32_T int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	return ((int32_T (*)( ))fcn)();
}

/*  int MCL_GrabHandle ( short device ); */
EXPORT_EXTERN_C int32_T int32int16Thunk(void fcn(),const char *callstack,int stacksize)
{
	int16_T p0;
	p0=*(int16_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	return ((int32_T (*)(int16_T ))fcn)(p0);
}

/*  int MCL_GetAllHandles ( int * handles , int size ); */
EXPORT_EXTERN_C int32_T int32voidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	void * p0;
	int32_T p1;
	p0=*(void * const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	return ((int32_T (*)(void * , int32_T ))fcn)(p0 , p1);
}

/*  void MCL_ReleaseHandle ( int handle ); */
EXPORT_EXTERN_C void voidint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	((void (*)(int32_T ))fcn)(p0);
}

/*  void MCL_ReleaseAllHandles (); */
EXPORT_EXTERN_C void voidThunk(void fcn(),const char *callstack,int stacksize)
{
	((void (*)( ))fcn)();
}

/*  int MCL_MicroDriveWait ( int handle ); */
EXPORT_EXTERN_C int32_T int32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	return ((int32_T (*)(int32_T ))fcn)(p0);
}

/*  int MCL_MDMoveThreeAxesM ( int axis1 , double velocity1 , int microSteps1 , int axis2 , double velocity2 , int microSteps2 , int axis3 , double velocity3 , int microSteps3 , int handle ); */
EXPORT_EXTERN_C int32_T int32int32doubleint32int32doubleint32int32doubleint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	double p1;
	int32_T p2;
	int32_T p3;
	double p4;
	int32_T p5;
	int32_T p6;
	double p7;
	int32_T p8;
	int32_T p9;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(double const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(double const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	p5=*(int32_T const *)callstack;
	callstack+=sizeof(p5) % sizeof(size_t) ? ((sizeof(p5) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p5);
	p6=*(int32_T const *)callstack;
	callstack+=sizeof(p6) % sizeof(size_t) ? ((sizeof(p6) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p6);
	p7=*(double const *)callstack;
	callstack+=sizeof(p7) % sizeof(size_t) ? ((sizeof(p7) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p7);
	p8=*(int32_T const *)callstack;
	callstack+=sizeof(p8) % sizeof(size_t) ? ((sizeof(p8) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p8);
	p9=*(int32_T const *)callstack;
	callstack+=sizeof(p9) % sizeof(size_t) ? ((sizeof(p9) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p9);
	return ((int32_T (*)(int32_T , double , int32_T , int32_T , double , int32_T , int32_T , double , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4 , p5 , p6 , p7 , p8 , p9);
}

/*  int MCL_MDMoveThreeAxesR ( int axis1 , double velocity1 , double distance1 , int rounding1 , int axis2 , double velocity2 , double distance2 , int rounding2 , int axis3 , double velocity3 , double distance3 , int rounding3 , int handle ); */
EXPORT_EXTERN_C int32_T int32int32doubledoubleint32int32doubledoubleint32int32doubledoubleint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	double p1;
	double p2;
	int32_T p3;
	int32_T p4;
	double p5;
	double p6;
	int32_T p7;
	int32_T p8;
	double p9;
	double p10;
	int32_T p11;
	int32_T p12;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(double const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(double const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(int32_T const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	p5=*(double const *)callstack;
	callstack+=sizeof(p5) % sizeof(size_t) ? ((sizeof(p5) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p5);
	p6=*(double const *)callstack;
	callstack+=sizeof(p6) % sizeof(size_t) ? ((sizeof(p6) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p6);
	p7=*(int32_T const *)callstack;
	callstack+=sizeof(p7) % sizeof(size_t) ? ((sizeof(p7) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p7);
	p8=*(int32_T const *)callstack;
	callstack+=sizeof(p8) % sizeof(size_t) ? ((sizeof(p8) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p8);
	p9=*(double const *)callstack;
	callstack+=sizeof(p9) % sizeof(size_t) ? ((sizeof(p9) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p9);
	p10=*(double const *)callstack;
	callstack+=sizeof(p10) % sizeof(size_t) ? ((sizeof(p10) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p10);
	p11=*(int32_T const *)callstack;
	callstack+=sizeof(p11) % sizeof(size_t) ? ((sizeof(p11) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p11);
	p12=*(int32_T const *)callstack;
	callstack+=sizeof(p12) % sizeof(size_t) ? ((sizeof(p12) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p12);
	return ((int32_T (*)(int32_T , double , double , int32_T , int32_T , double , double , int32_T , int32_T , double , double , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4 , p5 , p6 , p7 , p8 , p9 , p10 , p11 , p12);
}

/*  int MCL_MDMoveThreeAxes ( int axis1 , double velocity1 , double distance1 , int axis2 , double velocity2 , double distance2 , int axis3 , double velocity3 , double distance3 , int handle ); */
EXPORT_EXTERN_C int32_T int32int32doubledoubleint32doubledoubleint32doubledoubleint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	double p1;
	double p2;
	int32_T p3;
	double p4;
	double p5;
	int32_T p6;
	double p7;
	double p8;
	int32_T p9;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(double const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(double const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(double const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	p5=*(double const *)callstack;
	callstack+=sizeof(p5) % sizeof(size_t) ? ((sizeof(p5) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p5);
	p6=*(int32_T const *)callstack;
	callstack+=sizeof(p6) % sizeof(size_t) ? ((sizeof(p6) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p6);
	p7=*(double const *)callstack;
	callstack+=sizeof(p7) % sizeof(size_t) ? ((sizeof(p7) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p7);
	p8=*(double const *)callstack;
	callstack+=sizeof(p8) % sizeof(size_t) ? ((sizeof(p8) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p8);
	p9=*(int32_T const *)callstack;
	callstack+=sizeof(p9) % sizeof(size_t) ? ((sizeof(p9) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p9);
	return ((int32_T (*)(int32_T , double , double , int32_T , double , double , int32_T , double , double , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4 , p5 , p6 , p7 , p8 , p9);
}

/*  int MCL_MDMoveM ( unsigned int axis , double velocity , int microSteps , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32doubleint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	double p1;
	int32_T p2;
	int32_T p3;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(double const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	return ((int32_T (*)(uint32_T , double , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3);
}

/*  int MCL_MDMoveR ( unsigned int axis , double velocity , double distance , int rounding , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32doubledoubleint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	double p1;
	double p2;
	int32_T p3;
	int32_T p4;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(double const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(double const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(int32_T const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	return ((int32_T (*)(uint32_T , double , double , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4);
}

/*  int MCL_MDMove ( unsigned int axis , double velocity , double distance , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32doubledoubleint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	double p1;
	double p2;
	int32_T p3;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(double const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(double const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	return ((int32_T (*)(uint32_T , double , double , int32_T ))fcn)(p0 , p1 , p2 , p3);
}

/*  int MCL_MDSingleStep ( unsigned int axis , int direction , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32int32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	int32_T p1;
	int32_T p2;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((int32_T (*)(uint32_T , int32_T , int32_T ))fcn)(p0 , p1 , p2);
}

/*  int MCL_MDResetEncoder ( unsigned int axis , unsigned short * status , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32voidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	void * p1;
	int32_T p2;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((int32_T (*)(uint32_T , void * , int32_T ))fcn)(p0 , p1 , p2);
}

/*  int MCL_MDReadEncoders ( double * e1 , double * e2 , double * e3 , double * e4 , int handle ); */
EXPORT_EXTERN_C int32_T int32voidPtrvoidPtrvoidPtrvoidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	void * p0;
	void * p1;
	void * p2;
	void * p3;
	int32_T p4;
	p0=*(void * const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(void * const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(void * const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(int32_T const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	return ((int32_T (*)(void * , void * , void * , void * , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4);
}

/*  int MCL_MDInformation ( double * encoderResolution , double * stepSize , double * maxVelocity , double * maxVelocityTwoAxis , double * maxVelocityThreeAxis , double * minVelocity , int handle ); */
EXPORT_EXTERN_C int32_T int32voidPtrvoidPtrvoidPtrvoidPtrvoidPtrvoidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	void * p0;
	void * p1;
	void * p2;
	void * p3;
	void * p4;
	void * p5;
	int32_T p6;
	p0=*(void * const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(void * const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(void * const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(void * const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	p5=*(void * const *)callstack;
	callstack+=sizeof(p5) % sizeof(size_t) ? ((sizeof(p5) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p5);
	p6=*(int32_T const *)callstack;
	callstack+=sizeof(p6) % sizeof(size_t) ? ((sizeof(p6) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p6);
	return ((int32_T (*)(void * , void * , void * , void * , void * , void * , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4 , p5 , p6);
}

/*  int MCL_GetFirmwareVersion ( short * version , short * profile , int handle ); */
EXPORT_EXTERN_C int32_T int32voidPtrvoidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	void * p0;
	void * p1;
	int32_T p2;
	p0=*(void * const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((int32_T (*)(void * , void * , int32_T ))fcn)(p0 , p1 , p2);
}

/*  bool MCL_DeviceAttached ( int milliseconds , int handle ); */
EXPORT_EXTERN_C uint8_T uint8int32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	int32_T p1;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	return ((uint8_T (*)(int32_T , int32_T ))fcn)(p0 , p1);
}

/*  bool MCL_CorrectDriverVersion (); */
EXPORT_EXTERN_C uint8_T uint8Thunk(void fcn(),const char *callstack,int stacksize)
{
	return ((uint8_T (*)( ))fcn)();
}

/*  int MCL_MicroDriveMoveProfileXYZ_MicroSteps ( double velocityX , int microStepsX , double velocityY , int microStepsY , double velocityZ , int microStepsZ , int handle ); */
EXPORT_EXTERN_C int32_T int32doubleint32doubleint32doubleint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	int32_T p1;
	double p2;
	int32_T p3;
	double p4;
	int32_T p5;
	int32_T p6;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(double const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(double const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	p5=*(int32_T const *)callstack;
	callstack+=sizeof(p5) % sizeof(size_t) ? ((sizeof(p5) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p5);
	p6=*(int32_T const *)callstack;
	callstack+=sizeof(p6) % sizeof(size_t) ? ((sizeof(p6) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p6);
	return ((int32_T (*)(double , int32_T , double , int32_T , double , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4 , p5 , p6);
}

/*  int MCL_MicroDriveMoveProfileXYZ ( double velocityX , double distanceX , int roundingX , double velocityY , double distanceY , int roundingY , double velocityZ , double distanceZ , int roundingZ , int handle ); */
EXPORT_EXTERN_C int32_T int32doubledoubleint32doubledoubleint32doubledoubleint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	double p1;
	int32_T p2;
	double p3;
	double p4;
	int32_T p5;
	double p6;
	double p7;
	int32_T p8;
	int32_T p9;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(double const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(double const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(double const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	p5=*(int32_T const *)callstack;
	callstack+=sizeof(p5) % sizeof(size_t) ? ((sizeof(p5) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p5);
	p6=*(double const *)callstack;
	callstack+=sizeof(p6) % sizeof(size_t) ? ((sizeof(p6) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p6);
	p7=*(double const *)callstack;
	callstack+=sizeof(p7) % sizeof(size_t) ? ((sizeof(p7) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p7);
	p8=*(int32_T const *)callstack;
	callstack+=sizeof(p8) % sizeof(size_t) ? ((sizeof(p8) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p8);
	p9=*(int32_T const *)callstack;
	callstack+=sizeof(p9) % sizeof(size_t) ? ((sizeof(p9) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p9);
	return ((int32_T (*)(double , double , int32_T , double , double , int32_T , double , double , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4 , p5 , p6 , p7 , p8 , p9);
}

/*  int MCL_MicroDriveReadEncoders ( double * x , double * y , double * z , int handle ); */
EXPORT_EXTERN_C int32_T int32voidPtrvoidPtrvoidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	void * p0;
	void * p1;
	void * p2;
	int32_T p3;
	p0=*(void * const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(void * const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	return ((int32_T (*)(void * , void * , void * , int32_T ))fcn)(p0 , p1 , p2 , p3);
}

/*  int MCL_MD1MoveProfile_MicroSteps ( double velocity , int microSteps , int handle ); */
EXPORT_EXTERN_C int32_T int32doubleint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	int32_T p1;
	int32_T p2;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((int32_T (*)(double , int32_T , int32_T ))fcn)(p0 , p1 , p2);
}

/*  int MCL_MD1MoveProfile ( double velocity , double distance , int rounding , int handle ); */
EXPORT_EXTERN_C int32_T int32doubledoubleint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	double p1;
	int32_T p2;
	int32_T p3;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(double const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	return ((int32_T (*)(double , double , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3);
}

/*  int MCL_MD1SingleStep ( int direction , int handle ); */
EXPORT_EXTERN_C int32_T int32int32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	int32_T p1;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	return ((int32_T (*)(int32_T , int32_T ))fcn)(p0 , p1);
}

