/* C thunk file for functions in Madlib_proto.m generated on Fri Sep 15 15:01:40 2023. */


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

#include "Madlib.h"
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

/*  double MCL_SingleReadZ ( int handle ); */
EXPORT_EXTERN_C double doubleint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	return ((double (*)(int32_T ))fcn)(p0);
}

/*  double MCL_SingleReadN ( unsigned int axis , int handle ); */
EXPORT_EXTERN_C double doubleuint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	int32_T p1;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	return ((double (*)(uint32_T , int32_T ))fcn)(p0 , p1);
}

/*  int MCL_SingleWriteZ ( double position , int handle ); */
EXPORT_EXTERN_C int32_T int32doubleint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	int32_T p1;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	return ((int32_T (*)(double , int32_T ))fcn)(p0 , p1);
}

/*  int MCL_SingleWriteN ( double position , unsigned int axis , int handle ); */
EXPORT_EXTERN_C int32_T int32doubleuint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	uint32_T p1;
	int32_T p2;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(uint32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((int32_T (*)(double , uint32_T , int32_T ))fcn)(p0 , p1 , p2);
}

/*  double MCL_MonitorZ ( double position , int handle ); */
EXPORT_EXTERN_C double doubledoubleint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	int32_T p1;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	return ((double (*)(double , int32_T ))fcn)(p0 , p1);
}

/*  double MCL_MonitorN ( double position , unsigned int axis , int handle ); */
EXPORT_EXTERN_C double doubledoubleuint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	uint32_T p1;
	int32_T p2;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(uint32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((double (*)(double , uint32_T , int32_T ))fcn)(p0 , p1 , p2);
}

/*  int MCL_ResetEncoderZ ( int handle ); */
EXPORT_EXTERN_C int32_T int32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	return ((int32_T (*)(int32_T ))fcn)(p0);
}

/*  int MCL_ThetaX ( double milliradians , double * actual , int handle ); */
EXPORT_EXTERN_C int32_T int32doublevoidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	void * p1;
	int32_T p2;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((int32_T (*)(double , void * , int32_T ))fcn)(p0 , p1 , p2);
}

/*  int MCL_CFocusSetFocusMode ( bool focusModeOn , int handle ); */
EXPORT_EXTERN_C int32_T int32uint8int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint8_T p0;
	int32_T p1;
	p0=*(uint8_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	return ((int32_T (*)(uint8_T , int32_T ))fcn)(p0 , p1);
}

/*  int MCL_ReadWaveFormN ( unsigned int axis , unsigned int DataPoints , double milliseconds , double * waveform , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32uint32doublevoidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	uint32_T p1;
	double p2;
	void * p3;
	int32_T p4;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(uint32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(double const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(void * const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(int32_T const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	return ((int32_T (*)(uint32_T , uint32_T , double , void * , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4);
}

/*  int MCL_Setup_ReadWaveFormN ( unsigned int axis , unsigned int DataPoints , double milliseconds , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32uint32doubleint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	uint32_T p1;
	double p2;
	int32_T p3;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(uint32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(double const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	return ((int32_T (*)(uint32_T , uint32_T , double , int32_T ))fcn)(p0 , p1 , p2 , p3);
}

/*  int MCL_Trigger_ReadWaveFormN ( unsigned int axis , unsigned int DataPoints , double * waveform , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32uint32voidPtrint32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	uint32_T p1;
	void * p2;
	int32_T p3;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(uint32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(void * const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	return ((int32_T (*)(uint32_T , uint32_T , void * , int32_T ))fcn)(p0 , p1 , p2 , p3);
}

/*  int MCL_Trigger_LoadWaveFormN ( unsigned int axis , int handle ); */
EXPORT_EXTERN_C int32_T int32uint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	uint32_T p0;
	int32_T p1;
	p0=*(uint32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	return ((int32_T (*)(uint32_T , int32_T ))fcn)(p0 , p1);
}

/*  int MCL_WfmaSetup ( double * wfDacX , double * wfDacY , double * wfDacZ , int dataPointsPerAxis , double milliseconds , unsigned short iterations , int handle ); */
EXPORT_EXTERN_C int32_T int32voidPtrvoidPtrvoidPtrint32doubleuint16int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	void * p0;
	void * p1;
	void * p2;
	int32_T p3;
	double p4;
	uint16_T p5;
	int32_T p6;
	p0=*(void * const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(void * const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	p4=*(double const *)callstack;
	callstack+=sizeof(p4) % sizeof(size_t) ? ((sizeof(p4) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p4);
	p5=*(uint16_T const *)callstack;
	callstack+=sizeof(p5) % sizeof(size_t) ? ((sizeof(p5) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p5);
	p6=*(int32_T const *)callstack;
	callstack+=sizeof(p6) % sizeof(size_t) ? ((sizeof(p6) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p6);
	return ((int32_T (*)(void * , void * , void * , int32_T , double , uint16_T , int32_T ))fcn)(p0 , p1 , p2 , p3 , p4 , p5 , p6);
}

/*  int MCL_WfmaTriggerAndRead ( double * wfAdcX , double * wfAdcY , double * wfAdcZ , int handle ); */
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

/*  int MCL_IssBindClockToAxis ( int clock , int mode , int axis , int handle ); */
EXPORT_EXTERN_C int32_T int32int32int32int32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	int32_T p1;
	int32_T p2;
	int32_T p3;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	return ((int32_T (*)(int32_T , int32_T , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3);
}

/*  int MCL_IssConfigurePolarity ( int clock , int mode , int handle ); */
EXPORT_EXTERN_C int32_T int32int32int32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	int32_T p1;
	int32_T p2;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int32_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((int32_T (*)(int32_T , int32_T , int32_T ))fcn)(p0 , p1 , p2);
}

/*  int MCL_ChangeClock ( double milliseconds , short clock , int handle ); */
EXPORT_EXTERN_C int32_T int32doubleint16int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	double p0;
	int16_T p1;
	int32_T p2;
	p0=*(double const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(int16_T const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	return ((int32_T (*)(double , int16_T , int32_T ))fcn)(p0 , p1 , p2);
}

/*  int MCL_GetClockFrequency ( double * adcfreq , double * dacfreq , int handle ); */
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

/*  int MCL_SequenceLoad ( int axis , double * sequence , int seqSize , int handle ); */
EXPORT_EXTERN_C int32_T int32int32voidPtrint32int32Thunk(void fcn(),const char *callstack,int stacksize)
{
	int32_T p0;
	void * p1;
	int32_T p2;
	int32_T p3;
	p0=*(int32_T const *)callstack;
	callstack+=sizeof(p0) % sizeof(size_t) ? ((sizeof(p0) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p0);
	p1=*(void * const *)callstack;
	callstack+=sizeof(p1) % sizeof(size_t) ? ((sizeof(p1) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p1);
	p2=*(int32_T const *)callstack;
	callstack+=sizeof(p2) % sizeof(size_t) ? ((sizeof(p2) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p2);
	p3=*(int32_T const *)callstack;
	callstack+=sizeof(p3) % sizeof(size_t) ? ((sizeof(p3) / sizeof(size_t)) + 1) * sizeof(size_t):sizeof(p3);
	return ((int32_T (*)(int32_T , void * , int32_T , int32_T ))fcn)(p0 , p1 , p2 , p3);
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

