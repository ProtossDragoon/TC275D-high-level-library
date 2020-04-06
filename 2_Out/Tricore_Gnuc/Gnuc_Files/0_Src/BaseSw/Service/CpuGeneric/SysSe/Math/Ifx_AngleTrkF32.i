# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
# 1 "C:\\Users\\user\\Desktop\\programming_PROJECTS\\�Ѿ��_�Ӻ����ý���\\DevBaseEnv_vscode_TC27D//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
# 29 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h" 1
# 37 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h"
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h" 1
# 44 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h" 1
# 29 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 1
# 29 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
# 1 "0_Src/AppSw/Config/Common/Ifx_Cfg.h" 1
# 30 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 2
# 65 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h" 1
# 29 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 147 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef int wchar_t;
# 30 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h" 2
# 66 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 2
# 120 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
void Ifx_C_Init(void);
# 30 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h" 1
# 88 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;
typedef float float32;
typedef double float64;

typedef unsigned long uint8_least;
typedef unsigned long uint16_least;
typedef unsigned long uint32_least;
typedef signed long sint8_least;
typedef signed long sint16_least;
typedef signed long sint32_least;

typedef unsigned char boolean;
# 31 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h" 2





typedef signed long long sint64;
typedef unsigned long long uint64;

typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;

typedef struct
{
    float32 real;
    float32 imag;
} cfloat32;

typedef struct
{
    sint32 real;
    sint32 imag;
} csint32;

typedef struct
{
    sint16 real;
    sint16 imag;
} csint16;

typedef sint64 Ifx_TickTime;
# 74 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef uint32 Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 146 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;
# 160 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count
} Ifx_Pwm_Mode;
# 178 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 1
# 27 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\cint.h" 1 3
# 24 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 28 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 179 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h" 2
# 190 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
typedef struct
{
    fract real;
    fract imag;
} cfract;

typedef struct
{
    sfract real;
    sfract imag;
} csfract;
# 45 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h" 1
# 98 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
typedef void *IfxStdIf_InterfaceDriver;
# 46 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h" 1
# 51 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef struct IfxStdIf_DPipe_ IfxStdIf_DPipe;

typedef volatile boolean *IfxStdIf_DPipe_WriteEvent;
typedef volatile boolean *IfxStdIf_DPipe_ReadEvent;
# 72 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_Write)(IfxStdIf_InterfaceDriver stdif, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);
# 87 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_Read)(IfxStdIf_InterfaceDriver stdif, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);







typedef sint32 (*IfxStdIf_DPipe_GetReadCount)(IfxStdIf_InterfaceDriver stdif);







typedef IfxStdIf_DPipe_ReadEvent (*IfxStdIf_DPipe_GetReadEvent)(IfxStdIf_InterfaceDriver stdif);







typedef uint32 (*IfxStdIf_DPipe_GetSendCount)(IfxStdIf_InterfaceDriver stdif);







typedef Ifx_TickTime (*IfxStdIf_DPipe_GetTxTimeStamp)(IfxStdIf_InterfaceDriver stdif);







typedef sint32 (*IfxStdIf_DPipe_GetWriteCount)(IfxStdIf_InterfaceDriver stdif);







typedef IfxStdIf_DPipe_WriteEvent (*IfxStdIf_DPipe_GetWriteEvent)(IfxStdIf_InterfaceDriver stdif);
# 146 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_CanReadCount)(IfxStdIf_InterfaceDriver stdif, Ifx_SizeT count, Ifx_TickTime timeout);
# 157 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_CanWriteCount)(IfxStdIf_InterfaceDriver stdif, Ifx_SizeT count, Ifx_TickTime timeout);
# 166 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_FlushTx)(IfxStdIf_InterfaceDriver stdif, Ifx_TickTime timeout);






typedef void (*IfxStdIf_DPipe_ClearRx)(IfxStdIf_InterfaceDriver stdif);






typedef void (*IfxStdIf_DPipe_ClearTx)(IfxStdIf_InterfaceDriver stdif);







typedef void (*IfxStdIf_DPipe_OnReceive)(IfxStdIf_InterfaceDriver stdif);






typedef void (*IfxStdIf_DPipe_OnTransmit)(IfxStdIf_InterfaceDriver stdif);






typedef void (*IfxStdIf_DPipe_OnError)(IfxStdIf_InterfaceDriver stdif);






typedef void (*IfxStdIf_DPipe_ResetSendCount)(IfxStdIf_InterfaceDriver stdif);



struct IfxStdIf_DPipe_
{
    IfxStdIf_InterfaceDriver driver;
    boolean txDisabled;


    IfxStdIf_DPipe_Write write;
    IfxStdIf_DPipe_Read read;
    IfxStdIf_DPipe_GetReadCount getReadCount;
    IfxStdIf_DPipe_GetReadEvent getReadEvent;
    IfxStdIf_DPipe_GetWriteCount getWriteCount;
    IfxStdIf_DPipe_GetWriteEvent getWriteEvent;
    IfxStdIf_DPipe_CanReadCount canReadCount;
    IfxStdIf_DPipe_CanWriteCount canWriteCount;
    IfxStdIf_DPipe_FlushTx flushTx;
    IfxStdIf_DPipe_ClearTx clearTx;
    IfxStdIf_DPipe_ClearRx clearRx;
    IfxStdIf_DPipe_OnReceive onReceive;
    IfxStdIf_DPipe_OnTransmit onTransmit;
    IfxStdIf_DPipe_OnError onError;

    IfxStdIf_DPipe_GetSendCount getSendCount;
    IfxStdIf_DPipe_GetTxTimeStamp getTxTimeStamp;
    IfxStdIf_DPipe_ResetSendCount resetSendCount;
};




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_write(IfxStdIf_DPipe *stdif, void *data, Ifx_SizeT *count, Ifx_TickTime timeout)
{
    return stdif->write(stdif->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_read(IfxStdIf_DPipe *stdif, void *data, Ifx_SizeT *count, Ifx_TickTime timeout)
{
    return stdif->read(stdif->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getReadCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getReadCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getWriteCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getWriteCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_canReadCount(IfxStdIf_DPipe *stdif, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdif->canReadCount(stdif->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_canWriteCount(IfxStdIf_DPipe *stdif, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdif->canWriteCount(stdif->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_ReadEvent IfxStdIf_DPipe_getReadEvent(IfxStdIf_DPipe *stdif)
{
    return stdif->getReadEvent(stdif->driver);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_WriteEvent IfxStdIf_DPipe_getWriteEvent(IfxStdIf_DPipe *stdif)
{
    return stdif->getWriteEvent(stdif->driver);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_flushTx(IfxStdIf_DPipe *stdif, Ifx_TickTime timeout)
{
    return stdif->flushTx(stdif->driver, timeout);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearTx(IfxStdIf_DPipe *stdif)
{
    stdif->clearTx(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearRx(IfxStdIf_DPipe *stdif)
{
    stdif->clearRx(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onReceive(IfxStdIf_DPipe *stdif)
{
    stdif->onReceive(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onTransmit(IfxStdIf_DPipe *stdif)
{
    stdif->onTransmit(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onError(IfxStdIf_DPipe *stdif)
{
    stdif->onError(stdif->driver);
}




static inline __attribute__ ((always_inline)) uint32 IfxStdIf_DPipe_getSendCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getSendCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) Ifx_TickTime IfxStdIf_DPipe_getTxTimeStamp(IfxStdIf_DPipe *stdif)
{
    return stdif->getTxTimeStamp(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_resetSendCount(IfxStdIf_DPipe *stdif)
{
    stdif->resetSendCount(stdif->driver);
}


extern void IfxStdIf_DPipe_print(IfxStdIf_DPipe *stdif, pchar format, ...);
# 47 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h" 2


typedef enum
{
    IfxStdIf_Pos_MotionType_rotating,
    IfxStdIf_Pos_MotionType_linear
} IfxStdIf_Pos_MotionType;


typedef enum
{
    IfxStdIf_Pos_ResolutionFactor_oneFold = 1,
    IfxStdIf_Pos_ResolutionFactor_twoFold = 2,
    IfxStdIf_Pos_ResolutionFactor_fourFold = 4
} IfxStdIf_Pos_ResolutionFactor;


typedef enum
{
    IfxStdIf_Pos_SensorType_encoder,
    IfxStdIf_Pos_SensorType_hall,
    IfxStdIf_Pos_SensorType_resolver,
    IfxStdIf_Pos_SensorType_angletrk,
    IfxStdIf_Pos_SensorType_igmr,
    IfxStdIf_Pos_SensorType_virtual
} IfxStdIf_Pos_SensorType;


typedef enum
{
    IfxStdIf_Pos_Dir_forward,
    IfxStdIf_Pos_Dir_backward,
    IfxStdIf_Pos_Dir_unknown
} IfxStdIf_Pos_Dir;


typedef union
{
    uint32 status;
    struct
    {
        uint32 notSynchronised : 1;
        uint32 signalLoss : 1;
        uint32 signalDegradation : 1;
        uint32 trackingLoss : 1;
        uint32 commError : 1;
    } B;
} IfxStdIf_Pos_Status;

typedef sint32 IfxStdIf_Pos_RawAngle;


typedef struct IfxStdIf_Pos_ IfxStdIf_Pos;
# 109 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef float32 (*IfxStdIf_Pos_GetAbsolutePosition)(IfxStdIf_InterfaceDriver stdIf);





typedef void (*IfxStdIf_Pos_OnZeroIrq)(IfxStdIf_InterfaceDriver stdIf);






typedef sint32 (*IfxStdIf_Pos_GetOffset)(IfxStdIf_InterfaceDriver stdIf);
# 132 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef float32 (*IfxStdIf_Pos_GetPosition)(IfxStdIf_InterfaceDriver stdIf);
# 141 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef IfxStdIf_Pos_Dir (*IfxStdIf_Pos_GetDirection)(IfxStdIf_InterfaceDriver stdIf);






typedef IfxStdIf_Pos_Status (*IfxStdIf_Pos_GetFault)(IfxStdIf_InterfaceDriver stdIf);






typedef uint16 (*IfxStdIf_Pos_GetPeriodPerRotation)(IfxStdIf_InterfaceDriver stdIf);
# 164 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef sint32 (*IfxStdIf_Pos_GetRawPosition)(IfxStdIf_InterfaceDriver stdIf);





typedef float32 (*IfxStdIf_Pos_GetRefreshPeriod)(IfxStdIf_InterfaceDriver stdIf);





typedef sint32 (*IfxStdIf_Pos_GetResolution)(IfxStdIf_InterfaceDriver stdIf);





typedef IfxStdIf_Pos_SensorType (*IfxStdIf_Pos_GetSensorType)(IfxStdIf_InterfaceDriver stdIf);





typedef float32 (*IfxStdIf_Pos_GetSpeed)(IfxStdIf_InterfaceDriver stdIf);





typedef sint32 (*IfxStdIf_Pos_GetTurn)(IfxStdIf_InterfaceDriver stdIf);






typedef void (*IfxStdIf_Pos_OnEventA)(IfxStdIf_InterfaceDriver stdIf);
# 210 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef void (*IfxStdIf_Pos_Update)(IfxStdIf_InterfaceDriver stdIf);
# 219 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef void (*IfxStdIf_Pos_Reset)(IfxStdIf_InterfaceDriver stdIf);
# 228 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
typedef void (*IfxStdIf_Pos_ResetFaults)(IfxStdIf_InterfaceDriver stdIf);






typedef void (*IfxStdIf_Pos_SetOffset)(IfxStdIf_InterfaceDriver stdIf, sint32 offset);






typedef void (*IfxStdIf_Pos_SetPosition)(IfxStdIf_InterfaceDriver stdIf, float32 position);





typedef void (*IfxStdIf_Pos_SetRawPosition)(IfxStdIf_InterfaceDriver stdIf, sint32 position);






typedef void (*IfxStdIf_Pos_SetSpeed)(IfxStdIf_InterfaceDriver stdIf, float32 speed);






typedef void (*IfxStdIf_Pos_SetRefreshPeriod)(IfxStdIf_InterfaceDriver stdIf, float32 updatePeriod);



struct IfxStdIf_Pos_
{
    IfxStdIf_InterfaceDriver driver;
    IfxStdIf_Pos_OnZeroIrq onZeroIrq;
    IfxStdIf_Pos_GetAbsolutePosition getAbsolutePosition;
    IfxStdIf_Pos_GetOffset getOffset;
    IfxStdIf_Pos_GetPosition getPosition;
    IfxStdIf_Pos_GetDirection getDirection;
    IfxStdIf_Pos_GetFault getFault;
    IfxStdIf_Pos_GetRawPosition getRawPosition;
    IfxStdIf_Pos_GetPeriodPerRotation getPeriodPerRotation;
    IfxStdIf_Pos_GetRefreshPeriod getRefreshPeriod;
    IfxStdIf_Pos_GetResolution getResolution;
    IfxStdIf_Pos_GetSensorType getSensorType;
    IfxStdIf_Pos_GetTurn getTurn;
    IfxStdIf_Pos_OnEventA onEventA;
    IfxStdIf_Pos_Reset reset;
    IfxStdIf_Pos_ResetFaults resetFaults;
    IfxStdIf_Pos_GetSpeed getSpeed;
    IfxStdIf_Pos_Update update;
    IfxStdIf_Pos_SetOffset setOffset;
    IfxStdIf_Pos_SetPosition setPosition;
    IfxStdIf_Pos_SetRawPosition setRawPosition;
    IfxStdIf_Pos_SetSpeed setSpeed;
    IfxStdIf_Pos_SetRefreshPeriod setRefreshPeriod;
};


typedef struct
{
    sint32 offset;
    boolean reversed;
    sint32 resolution;
    uint16 periodPerRotation;
    IfxStdIf_Pos_ResolutionFactor resolutionFactor;
    float32 updatePeriod;
    float32 speedModeThreshold;
    float32 minSpeed;
    float32 maxSpeed;
    boolean speedFilterEnabled;
    float32 speedFilerCutOffFrequency;
} IfxStdIf_Pos_Config;







static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_onZeroIrq(IfxStdIf_Pos *stdIf)
{
    stdIf->onZeroIrq(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_getAbsolutePosition(IfxStdIf_Pos *stdIf)
{
    return stdIf->getAbsolutePosition(stdIf->driver);
}





static inline __attribute__ ((always_inline)) IfxStdIf_Pos_Status IfxStdIf_Pos_getFault(IfxStdIf_Pos *stdIf)
{
    return stdIf->getFault(stdIf->driver);
}





static inline __attribute__ ((always_inline)) sint32 IfxStdIf_Pos_getOffset(IfxStdIf_Pos *stdIf)
{
    return stdIf->getOffset(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_getPosition(IfxStdIf_Pos *stdIf)
{
    return stdIf->getPosition(stdIf->driver);
}





static inline __attribute__ ((always_inline)) IfxStdIf_Pos_Dir IfxStdIf_Pos_getDirection(IfxStdIf_Pos *stdIf)
{
    return stdIf->getDirection(stdIf->driver);
}





static inline __attribute__ ((always_inline)) uint16 IfxStdIf_Pos_getPeriodPerRotation(IfxStdIf_Pos *stdIf)
{
    return stdIf->getPeriodPerRotation(stdIf->driver);
}





static inline __attribute__ ((always_inline)) sint32 IfxStdIf_Pos_getRawPosition(IfxStdIf_Pos *stdIf)
{
    return stdIf->getRawPosition(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_getRefreshPeriod(IfxStdIf_Pos *stdIf)
{
    return stdIf->getRefreshPeriod(stdIf->driver);
}





static inline __attribute__ ((always_inline)) sint32 IfxStdIf_Pos_getResolution(IfxStdIf_Pos *stdIf)
{
    return stdIf->getResolution(stdIf->driver);
}





static inline __attribute__ ((always_inline)) sint32 IfxStdIf_Pos_getTurn(IfxStdIf_Pos *stdIf)
{
    return stdIf->getTurn(stdIf->driver);
}





static inline __attribute__ ((always_inline)) IfxStdIf_Pos_SensorType IfxStdIf_Pos_getSensorType(IfxStdIf_Pos *stdIf)
{
    return stdIf->getSensorType(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_getSpeed(IfxStdIf_Pos *stdIf)
{
    return stdIf->getSpeed(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Pos_isFault(IfxStdIf_Pos *stdIf)
{
    return IfxStdIf_Pos_getFault(stdIf).status != 0;
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_onEventA(IfxStdIf_Pos *stdIf)
{
    stdIf->onEventA(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_update(IfxStdIf_Pos *stdIf)
{
    stdIf->update(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_reset(IfxStdIf_Pos *stdIf)
{
    stdIf->reset(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_resetFaults(IfxStdIf_Pos *stdIf)
{
    stdIf->resetFaults(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setOffset(IfxStdIf_Pos *stdIf, sint32 offset)
{
    stdIf->setOffset(stdIf->driver, offset);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setPosition(IfxStdIf_Pos *stdIf, float32 position)
{
    stdIf->setPosition(stdIf->driver, position);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setRawPosition(IfxStdIf_Pos *stdIf, sint32 position)
{
    stdIf->setRawPosition(stdIf->driver, position);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setSpeed(IfxStdIf_Pos *stdIf, float32 speed)
{
    stdIf->setSpeed(stdIf->driver, speed);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Pos_setRefreshPeriod(IfxStdIf_Pos *stdIf, float32 updatePeriod)
{
    stdIf->setRefreshPeriod(stdIf->driver, updatePeriod);
}
# 528 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_radsToRpm(float32 speed)
{
    return (60.0 / (2.0 * (3.1415926535897932384626433832795f))) * speed;
}
# 541 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
static inline __attribute__ ((always_inline)) float32 IfxStdIf_Pos_rpmToRads(float32 speed)
{
    return speed * ((2.0 * (3.1415926535897932384626433832795f)) / 60.0);
}







extern void IfxStdIf_Pos_initConfig(IfxStdIf_Pos_Config *config);







extern void IfxStdIf_Pos_printStatus(IfxStdIf_Pos *driver, IfxStdIf_DPipe *io);
# 38 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.h" 1
# 44 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.h"
typedef struct
{
    float32 a;
    float32 b;
    float32 out;
} Ifx_LowPassPt1F32;


typedef struct
{
    float32 cutOffFrequency;
    float32 gain;
    float32 samplingTime;
} Ifx_LowPassPt1F32_Config;





extern void Ifx_LowPassPt1F32_init(Ifx_LowPassPt1F32 *filter, const Ifx_LowPassPt1F32_Config *config);
static inline __attribute__ ((always_inline)) void Ifx_LowPassPt1F32_reset(Ifx_LowPassPt1F32 *filter);
extern float32 Ifx_LowPassPt1F32_do(Ifx_LowPassPt1F32 *filter, float32 input);







static inline __attribute__ ((always_inline)) void Ifx_LowPassPt1F32_reset(Ifx_LowPassPt1F32 *filter)
{
    filter->out = 0.0;
}
# 39 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h" 2
# 51 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h"
typedef struct
{
    float32 kp;
    float32 ki;
    float32 kd;
    float32 speedLpfFc;
    float32 errorThreshold;
    sint32 sqrAmplMax;
    sint32 sqrAmplMin;
    uint16 periodPerRotation;
    boolean reversed;
    sint32 resolution;
    IfxStdIf_Pos_RawAngle offset;
    sint16 *sinIn;
    sint16 *cosIn;
} Ifx_AngleTrkF32_Config;

typedef struct
{
    float32 kp;
    float32 ki;
    float32 kd;
    float32 errorThreshold;
    sint32 sqrAmplMax;
    sint32 sqrAmplMin;
} Ifx_AngleTrkF32_CfgData;

typedef struct
{
    IfxStdIf_Pos_RawAngle rawPosition;
    sint32 turn;
    IfxStdIf_Pos_Dir direction;
    IfxStdIf_Pos_Status status;

    IfxStdIf_Pos_RawAngle offset;
    boolean reversed;
    uint16 periodPerRotation;
    IfxStdIf_Pos_RawAngle resolution;
    float32 Ts;
    float32 positionConst;
} Ifx_AngleTrkF32_PosIf;


typedef struct
{
    Ifx_AngleTrkF32_PosIf base;
    Ifx_AngleTrkF32_CfgData cfgData;
    sint16 *sinIn;
    sint16 *cosIn;
    float32 halfTs;
    float32 angleAtan;
    float32 angleRef;
    float32 angleEst;
    float32 speedEstA;
    float32 speedEstB;
    float32 accelEst;
    float32 angleErr;
    Ifx_LowPassPt1F32 speedLpf;
} Ifx_AngleTrkF32;
# 135 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h"
extern void Ifx_AngleTrkF32_init(Ifx_AngleTrkF32 *aObsv, const Ifx_AngleTrkF32_Config *config, float32 Ts);
extern void Ifx_AngleTrkF32_initConfig(Ifx_AngleTrkF32_Config *config, sint16 *sinIn, sint16 *cosIn);






extern float32 Ifx_AngleTrkF32_step(Ifx_AngleTrkF32 *aObsv, sint16 sinIn, sint16 cosIn, float32 phase);
extern void Ifx_AngleTrkF32_updateStatus(Ifx_AngleTrkF32 *aObsv, sint16 sinIn, sint16 cosIn);
static inline __attribute__ ((always_inline)) float32 Ifx_AngleTrkF32_getLoopSpeed(Ifx_AngleTrkF32 *aObsv);







static inline __attribute__ ((always_inline)) float32 Ifx_AngleTrkF32_getLoopSpeed(Ifx_AngleTrkF32 *aObsv)
{
    return aObsv->speedEstB;

}
# 171 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h"
extern float32 Ifx_AngleTrkF32_getAbsolutePosition(Ifx_AngleTrkF32 *driver);





extern IfxStdIf_Pos_Dir Ifx_AngleTrkF32_getDirection(Ifx_AngleTrkF32 *driver);





extern IfxStdIf_Pos_Status Ifx_AngleTrkF32_getFault(Ifx_AngleTrkF32 *driver);





extern sint32 Ifx_AngleTrkF32_getOffset(Ifx_AngleTrkF32 *driver);





extern uint16 Ifx_AngleTrkF32_getPeriodPerRotation(Ifx_AngleTrkF32 *driver);





extern float32 Ifx_AngleTrkF32_getPosition(Ifx_AngleTrkF32 *driver);





extern IfxStdIf_Pos_RawAngle Ifx_AngleTrkF32_getRawPosition(Ifx_AngleTrkF32 *aObsv);





extern float32 Ifx_AngleTrkF32_getRefreshPeriod(Ifx_AngleTrkF32 *driver);





extern sint32 Ifx_AngleTrkF32_getResolution(Ifx_AngleTrkF32 *driver);





extern sint32 Ifx_AngleTrkF32_getTurn(Ifx_AngleTrkF32 *driver);





extern IfxStdIf_Pos_SensorType Ifx_AngleTrkF32_getSensorType(Ifx_AngleTrkF32 *driver);





extern float32 Ifx_AngleTrkF32_getSpeed(Ifx_AngleTrkF32 *aObsv);





extern void Ifx_AngleTrkF32_reset(Ifx_AngleTrkF32 *driver);





extern void Ifx_AngleTrkF32_resetFaults(Ifx_AngleTrkF32 *driver);






extern void Ifx_AngleTrkF32_setOffset(Ifx_AngleTrkF32 *aObsv, IfxStdIf_Pos_RawAngle offset);






extern void Ifx_AngleTrkF32_setRefreshPeriod(Ifx_AngleTrkF32 *driver, float32 updatePeriod);





extern void Ifx_AngleTrkF32_update(Ifx_AngleTrkF32 *aObsv);
# 282 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.h"
extern boolean Ifx_AngleTrkF32_stdIfPosInit(IfxStdIf_Pos *stdif, Ifx_AngleTrkF32 *driver);
# 30 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 1 3




# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 1 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 1 3
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\newlib.h" 1 3
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\config.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\config.h" 2 3
# 17 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 2 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 1 3
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_types.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 1 3
# 26 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_types.h" 2 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 353 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__fardata__));
extern struct _reent *const _global_impure_ptr __attribute__((__fardata__));

void _reclaim_reent (struct _reent *);
# 6 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 7 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 1 3
# 8 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 2 3






union __dmath
{
  double d;
  __ULong i[2];
};

union __fmath
{
  float f;
  __ULong i[1];
};


union __ldmath
{
  long double ld;
  __ULong i[4];
};
# 111 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 3
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);
# 148 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 3
typedef float float_t;
typedef double double_t;
# 175 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 3
extern int __isinff (float x);
extern int __isinfd (double x);
extern int __isnanf (float x);
extern int __isnand (double x);
extern int __fpclassifyf (float x);
extern int __fpclassifyd (double x);
extern int __signbitf (float x);
extern int __signbitd (double x);
# 235 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 3
extern double infinity (void);
extern double nan (const char *);
extern int finite (double);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);



extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern int finitef (float);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);

extern float hypotf (float, float);






extern long double atanl (long double);
extern long double cosl (long double);
extern long double sinl (long double);
extern long double tanl (long double);
extern long double tanhl (long double);
extern long double frexpl (long double value, int *);
extern long double modfl (long double, long double *);
extern long double ceill (long double);
extern long double fabsl (long double);
extern long double floorl (long double);
extern long double log1pl (long double);
extern long double expm1l (long double);




extern long double acosl (long double);
extern long double asinl (long double);
extern long double atan2l (long double, long double);
extern long double coshl (long double);
extern long double sinhl (long double);
extern long double expl (long double);
extern long double ldexpl (long double, int);
extern long double logl (long double);
extern long double log10l (long double);
extern long double powl (long double, long double);
extern long double sqrtl (long double);
extern long double fmodl (long double, long double);
extern long double hypotl (long double, long double);


extern long double copysignl (long double, long double);
extern long double nanl (const char *);
extern int ilogbl (long double);
extern long double asinhl (long double);
extern long double cbrtl (long double);
extern long double nextafterl (long double, long double);
extern long double rintl (long double);
extern long double scalbnl (long double, int);
extern long double exp2l (long double);
extern long double scalblnl (long double, long);
extern long double tgammal (long double);
extern long double nearbyintl (long double);
extern long int lrintl (long double);
extern long long int llrintl (long double);
extern long double roundl (long double);
extern long lroundl (long double);
extern long long int llroundl (long double);
extern long double truncl (long double);
extern long double remquol (long double, long double, int *);
extern long double fdiml (long double, long double);
extern long double fmaxl (long double, long double);
extern long double fminl (long double, long double);
extern long double fmal (long double, long double, long double);

extern long double acoshl (long double);
extern long double atanhl (long double);
extern long double remainderl (long double, long double);
extern long double lgammal (long double);
extern long double erfl (long double);
extern long double erfcl (long double);
# 572 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\math.h" 3

# 31 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);
# 100 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\string.h" 1 3
# 101 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\string.h" 2 3


# 32 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.h" 1
# 31 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.h"
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Lut.h" 1
# 35 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Lut.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h" 1
# 31 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2





# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
# 41 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 42 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 2
# 54 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}

static inline __attribute__ ((always_inline)) void __moveToDataParam0(unsigned int var)
{
 __asm__ volatile ("mov\t %%d4, %0"::"d"(var));
}

static inline __attribute__ ((always_inline)) void __moveToDataParamRet(unsigned int var)
{
 __asm__ volatile ("mov\t %%d2, %0"::"d"(var));
}

static inline __attribute__ ((always_inline)) unsigned int __getDataParamRet(void)
{
 unsigned int var;
 __asm__ volatile (" mov\t %0, %%d2":"=d"(var));
 return var;
}

static inline __attribute__ ((always_inline)) void __moveToAddrParam0(const void *var)
{
 __asm__ volatile ("mov.aa\t %%a4, %0"::"a"(var));
}

static inline __attribute__ ((always_inline)) void __jumpToFunction(const void *fun)
{
 __asm__ volatile ("ji %0"::"a"(fun));
}

static inline __attribute__ ((always_inline)) void __jumpToFunctionWithLink(const void *fun)
{
 __jump_and_link((void (*)(void))fun);
}

static inline __attribute__ ((always_inline)) void __jumpBackToLink(void)
{
 __asm__ volatile ("ji %a11");
}
# 130 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 __maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 220 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 __clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("cls  %0,%1":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("maddrs.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("madds.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) laccum __shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}
# 382 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __extru(uint32 a, uint32 p, uint32 w)
{
    uint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 420 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 472 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void __restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 506 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void __cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* __cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 __mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 568 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb __absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 __gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 __gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb __initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void __setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1203 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double __fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1274 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1327 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1373 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void __nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void __rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 __swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1453 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int __cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{

  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 1492 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 __fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}

static inline __attribute__ ((always_inline)) void* __getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void __setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}

static inline __attribute__ ((always_inline)) uint32 __crc32(uint32 b, uint32 a)
{
    uint32 returnvalue = 0;

    __asm__ volatile ("CRC32 %0,%1,%2" : "=d" (returnvalue) : "d"(b), "d"(a));

   return returnvalue;
}

static inline __attribute__ ((always_inline)) uint32 IfxCpu_calculateCrc32(uint32 *startaddress, uint8 length)
{
    uint32 returnvalue = 0;
    for (;length > 0; length--)
    {

        __asm__ ("CRC32 %0,%0,%1" : "+d" (returnvalue) : "d" (*startaddress));
        startaddress++;
    }
    return returnvalue;
}

static inline __attribute__ ((always_inline)) sint32 __popcnt(sint32 a)
{
 sint32 res;
 __asm__ volatile ("popcnt %0,%1":"=d"(res):"d"(a));
  return res;
}



static inline __attribute__ ((always_inline)) void __cacheai(uint8* p)
{
    __asm__ volatile("cachea.i [%0]0"::"a"(p));
}
# 37 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2
# 70 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = __extru(cx, 16, 4);
    return (void *)__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = __extru((int)addr, 28, 4) << 16;
    seg_idx = __extru((int)addr, 6, 16);
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 36 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Lut.h" 2
# 64 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Lut.h"
typedef sint32 Ifx_Lut_FxpAngle;
# 32 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.h" 2
# 40 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.h"
extern const Ifx_Lut_FxpAngle Ifx_g_LutAtan2F32_FxpAngle_table[(1024) + 1];
extern const float32 Ifx_g_LutAtan2F32_table[(1024) + 1];




extern void Ifx_LutAtan2F32_init(void);






extern Ifx_Lut_FxpAngle Ifx_LutAtan2F32_fxpAngle(float32 x, float32 y);
extern float32 Ifx_LutAtan2F32_float32(float32 y, float32 x);
# 33 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c" 2
# 42 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
void Ifx_AngleTrkF32_setUserSampling(Ifx_AngleTrkF32 *aObsv, float32 Ts);
# 53 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
static inline __attribute__ ((always_inline)) float32 Ifx_AngleTrkF32_bound(float32 angle, float32 periodPerRotation)
{
    float32 fullPeriod = 2 * (3.1415926535897932384626433832795f);

    if (angle >= (fullPeriod / 2))
    {
        angle = angle - fullPeriod;
    }
    else if (angle < (-fullPeriod / 2))
    {
        angle = angle + fullPeriod;
    }
    else
    {}

    return angle;
}


static inline __attribute__ ((always_inline)) float32 Ifx_AngleTrkF32_boundInput(float32 input)
{
    return Ifx_AngleTrkF32_bound(input, 1);
}


static inline __attribute__ ((always_inline)) float32 round_f(float32 val)
{

    sint32 val_i = (sint32)val;


    if ((val - (float32)val_i) > 0.5)
    {
        val = (float32)(val_i + 1);
    }
    else
    {
        val = (float32)val_i;
    }

    return val;
}
# 103 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
void Ifx_AngleTrkF32_setControlGains(Ifx_AngleTrkF32_CfgData *cfgData, float32 K, float32 T, float32 psi)
{
    cfgData->kp = ((2 * K) + (psi * psi) + 1) / (T * T);
    cfgData->ki = K * ((psi * psi) + 1) / (T * T * T);
    cfgData->kd = (K + 2) / T;
}



void Ifx_AngleTrkF32_initConfig(Ifx_AngleTrkF32_Config *config, sint16 *sinIn, sint16 *cosIn)
{
    Ifx_AngleTrkF32_CfgData cfgData;
    Ifx_AngleTrkF32_setControlGains(&cfgData, (39.05f), (15e-3f), (1.5f * (3.1415926535897932384626433832795f)));
    config->kp = cfgData.kp;
    config->ki = cfgData.ki;
    config->kd = cfgData.kd;
    config->sinIn = sinIn;
    config->cosIn = cosIn;
    config->errorThreshold = 5.0f / 180 * (3.1415926535897932384626433832795f);
    config->sqrAmplMax = (sint32)((1.01f * 1.01f) * 2048);
    config->sqrAmplMin = (sint32)((0.99f * 0.99f) * 2048);
    config->speedLpfFc = 100;
    config->periodPerRotation = 1;
    config->reversed = 0;
    config->offset = 0;
    config->resolution = (1UL << 12);
}


void Ifx_AngleTrkF32_setUserSampling(Ifx_AngleTrkF32 *aObsv, float32 Ts)
{
    aObsv->base.Ts = Ts;
    aObsv->halfTs = aObsv->base.Ts / 2.0F;
}







void Ifx_AngleTrkF32_init(Ifx_AngleTrkF32 *aObsv, const Ifx_AngleTrkF32_Config *config, float32 Ts)
{
    aObsv->base.offset = config->offset;
    aObsv->base.resolution = config->resolution;
    aObsv->base.reversed = config->reversed;
    aObsv->base.Ts = Ts;
    aObsv->base.rawPosition = 0;
    aObsv->base.direction = IfxStdIf_Pos_Dir_unknown;
    aObsv->base.turn = 0;
    aObsv->base.status.status = 0;
    aObsv->base.periodPerRotation = config->periodPerRotation;
    aObsv->base.positionConst = 1.0 / (float32)aObsv->base.resolution * 2.0 * (3.1415926535897932384626433832795f);

    aObsv->cfgData.kd = config->kd;
    aObsv->cfgData.ki = config->ki;
    aObsv->cfgData.kp = config->kp;
    aObsv->cfgData.errorThreshold = config->errorThreshold;
    aObsv->cfgData.sqrAmplMax = config->sqrAmplMax;
    aObsv->cfgData.sqrAmplMin = config->sqrAmplMin;
    aObsv->sinIn = config->sinIn;
    aObsv->cosIn = config->cosIn;

    if (!( ((config->kp) > (0)) || ((config->kp) < (0)) ) && !( ((config->ki) > (0)) || ((config->ki) < (0)) ) && !( ((config->kp) > (0)) || ((config->kp) < (0)) ))
    {

        Ifx_AngleTrkF32_setControlGains(&aObsv->cfgData, (39.05f), (15e-3f), (1.5f * (3.1415926535897932384626433832795f)));
    }

    Ifx_AngleTrkF32_setUserSampling(aObsv, Ts);
    aObsv->angleErr = 0.0F;
    aObsv->angleEst = 0.0F;
    aObsv->accelEst = 0.0F;
    aObsv->speedEstA = 0.0F;
    aObsv->speedEstB = 0.0F;
    aObsv->angleRef = 0.0F;
    {

        Ifx_LowPassPt1F32_Config lpfConfig;
        lpfConfig.gain = 1.0F;
        lpfConfig.cutOffFrequency = (2 * (3.1415926535897932384626433832795f) * config->speedLpfFc);
        lpfConfig.samplingTime = Ts;
        Ifx_LowPassPt1F32_init(&aObsv->speedLpf, &lpfConfig);

    }
}
# 202 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
float32 Ifx_AngleTrkF32_step(Ifx_AngleTrkF32 *aObsv, sint16 sinIn, sint16 cosIn, float32 phase)
{
    float32 angleRef, angleEst, dAccel, dSpeed, dAngle;

    if (aObsv->base.reversed != 0)
    {
        angleRef = Ifx_LutAtan2F32_float32((float32)cosIn, (float32)sinIn);
    }
    else
    {
        angleRef = Ifx_LutAtan2F32_float32((float32)sinIn, (float32)cosIn);
    }

    aObsv->angleAtan = angleRef;
    angleRef = angleRef + phase;

    aObsv->angleRef = angleRef;


    dAccel = aObsv->cfgData.ki * aObsv->angleErr;
    aObsv->accelEst = aObsv->accelEst + (dAccel * aObsv->base.Ts);


    dSpeed = ((aObsv->cfgData.kp * aObsv->angleErr) + aObsv->accelEst);
    aObsv->speedEstA = aObsv->speedEstA + (dSpeed * aObsv->base.Ts);


    dAngle = ((aObsv->cfgData.kd * aObsv->angleErr) + aObsv->speedEstA);
    angleEst = aObsv->angleEst + ((dAngle + aObsv->speedEstB) * aObsv->halfTs);
    aObsv->speedEstB = dAngle;

    aObsv->angleEst = Ifx_AngleTrkF32_boundInput(angleEst);


    aObsv->angleErr = Ifx_AngleTrkF32_boundInput(aObsv->angleRef - aObsv->angleEst);

    aObsv->base.direction = aObsv->speedEstB > 0 ? IfxStdIf_Pos_Dir_forward : IfxStdIf_Pos_Dir_backward;



    Ifx_LowPassPt1F32_do(&aObsv->speedLpf, aObsv->speedEstB);


    return aObsv->angleEst;
}






void Ifx_AngleTrkF32_setOffset(Ifx_AngleTrkF32 *aObsv, IfxStdIf_Pos_RawAngle offset)
{
    Ifx_AngleTrkF32_PosIf *base = &aObsv->base;
    base->offset = offset;
}
# 266 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c"
void Ifx_AngleTrkF32_updateStatus(Ifx_AngleTrkF32 *aObsv, sint16 sinIn, sint16 cosIn)
{
    Ifx_AngleTrkF32_PosIf *base = &aObsv->base;
    sint32 sqrAmpl = ((sint32)sinIn * (sint32)sinIn) + ((sint32)cosIn * (sint32)cosIn);
    base->status.B.signalLoss = (sqrAmpl < aObsv->cfgData.sqrAmplMin);
    base->status.B.signalDegradation = (sqrAmpl > aObsv->cfgData.sqrAmplMax);
    base->status.B.trackingLoss = ( ((aObsv->angleErr) < 0.0) ? -(aObsv->angleErr) : (aObsv->angleErr) ) > aObsv->cfgData.errorThreshold;
}





void Ifx_AngleTrkF32_update(Ifx_AngleTrkF32 *aObsv)
{
    Ifx_AngleTrkF32_PosIf *base = &aObsv->base;
    float32 angleEst = Ifx_AngleTrkF32_step(aObsv, *aObsv->sinIn, *aObsv->cosIn, 0);

    IfxStdIf_Pos_RawAngle newPosition = (IfxStdIf_Pos_RawAngle)(angleEst * (aObsv->base.resolution / 2) / (3.1415926535897932384626433832795f));
    newPosition = newPosition & (aObsv->base.resolution - 1);
    base->rawPosition = newPosition;

    Ifx_AngleTrkF32_updateStatus(aObsv, *aObsv->sinIn, *aObsv->cosIn);
}






IfxStdIf_Pos_RawAngle Ifx_AngleTrkF32_getRawPosition(Ifx_AngleTrkF32 *aObsv)
{
    Ifx_AngleTrkF32_PosIf *base = &aObsv->base;
    return base->rawPosition;
}





float32 Ifx_AngleTrkF32_getSpeed(Ifx_AngleTrkF32 *aObsv)
{

    return aObsv->speedLpf.out;
}



float32 Ifx_AngleTrkF32_getAbsolutePosition(Ifx_AngleTrkF32 *driver)
{
    return ((float32)driver->base.turn + (float32)driver->base.rawPosition / (float32)driver->base.resolution) * 2.0 * (3.1415926535897932384626433832795f);
}


IfxStdIf_Pos_Dir Ifx_AngleTrkF32_getDirection(Ifx_AngleTrkF32 *driver)
{
    return driver->base.direction;
}


IfxStdIf_Pos_Status Ifx_AngleTrkF32_getFault(Ifx_AngleTrkF32 *driver)
{
    return driver->base.status;
}


sint32 Ifx_AngleTrkF32_getOffset(Ifx_AngleTrkF32 *driver)
{
    return driver->base.offset;
}


uint16 Ifx_AngleTrkF32_getPeriodPerRotation(Ifx_AngleTrkF32 *driver)
{
    return driver->base.periodPerRotation;
}


float32 Ifx_AngleTrkF32_getPosition(Ifx_AngleTrkF32 *driver)
{
    return (float32)driver->base.rawPosition * driver->base.positionConst;
}


float32 Ifx_AngleTrkF32_getRefreshPeriod(Ifx_AngleTrkF32 *driver)
{
    return driver->base.Ts;
}


sint32 Ifx_AngleTrkF32_getResolution(Ifx_AngleTrkF32 *driver)
{
    return driver->base.resolution;
}


IfxStdIf_Pos_SensorType Ifx_AngleTrkF32_getSensorType(Ifx_AngleTrkF32 *driver)
{
    return IfxStdIf_Pos_SensorType_angletrk;
}


sint32 Ifx_AngleTrkF32_getTurn(Ifx_AngleTrkF32 *driver)
{
    return driver->base.turn;
}


void Ifx_AngleTrkF32_resetFaults(Ifx_AngleTrkF32 *driver)
{
    driver->base.status.status = 0;
}


void Ifx_AngleTrkF32_setRefreshPeriod(Ifx_AngleTrkF32 *driver, float32 updatePeriod)
{
    driver->base.Ts = updatePeriod;
}


void Ifx_AngleTrkF32_reset(Ifx_AngleTrkF32 *driver)
{
    driver->base.rawPosition = 0;
    driver->base.direction = IfxStdIf_Pos_Dir_unknown;
    driver->base.turn = 0;
    driver->angleErr = 0.0F;
    driver->angleEst = 0.0F;
    driver->accelEst = 0.0F;
    driver->speedEstA = 0.0F;
    driver->speedEstB = 0.0F;
    driver->angleRef = 0.0F;

    Ifx_LowPassPt1F32_reset(&driver->speedLpf);


    driver->base.status.status = 0;
}


boolean Ifx_AngleTrkF32_stdIfPosInit(IfxStdIf_Pos *stdif, Ifx_AngleTrkF32 *driver)
{

    memset(stdif, 0, sizeof(IfxStdIf_Pos));


    stdif->driver = driver;



 stdif->onZeroIrq =(IfxStdIf_Pos_OnZeroIrq )((void *)0);
 stdif->getAbsolutePosition=(IfxStdIf_Pos_GetAbsolutePosition )&Ifx_AngleTrkF32_getAbsolutePosition;
 stdif->getDirection =(IfxStdIf_Pos_GetDirection )&Ifx_AngleTrkF32_getDirection;
 stdif->getFault =(IfxStdIf_Pos_GetFault )&Ifx_AngleTrkF32_getFault;
 stdif->getOffset =(IfxStdIf_Pos_GetOffset )&Ifx_AngleTrkF32_getOffset;
 stdif->getPeriodPerRotation =(IfxStdIf_Pos_GetPeriodPerRotation )&Ifx_AngleTrkF32_getPeriodPerRotation;
 stdif->getPosition =(IfxStdIf_Pos_GetPosition )&Ifx_AngleTrkF32_getPosition;
 stdif->getRawPosition =(IfxStdIf_Pos_GetRawPosition )&Ifx_AngleTrkF32_getRawPosition;
 stdif->getRefreshPeriod =(IfxStdIf_Pos_GetRefreshPeriod )&Ifx_AngleTrkF32_getRefreshPeriod;
 stdif->getResolution =(IfxStdIf_Pos_GetResolution )&Ifx_AngleTrkF32_getResolution;
    stdif->getSensorType =(IfxStdIf_Pos_GetSensorType )&Ifx_AngleTrkF32_getSensorType;
 stdif->reset =(IfxStdIf_Pos_Reset )&Ifx_AngleTrkF32_reset;
 stdif->resetFaults =(IfxStdIf_Pos_ResetFaults )&Ifx_AngleTrkF32_resetFaults;
 stdif->getSpeed =(IfxStdIf_Pos_GetSpeed )&Ifx_AngleTrkF32_getSpeed;
 stdif->update =(IfxStdIf_Pos_Update )&Ifx_AngleTrkF32_update;
 stdif->setPosition =(IfxStdIf_Pos_SetPosition )((void *)0);
 stdif->setRawPosition =(IfxStdIf_Pos_SetRawPosition )((void *)0);
 stdif->setSpeed =(IfxStdIf_Pos_SetSpeed )((void *)0);
 stdif->setOffset =(IfxStdIf_Pos_SetOffset )&Ifx_AngleTrkF32_setOffset;
 stdif->setRefreshPeriod =(IfxStdIf_Pos_SetRefreshPeriod )&Ifx_AngleTrkF32_setRefreshPeriod;
 stdif->getTurn =(IfxStdIf_Pos_GetTurn )&Ifx_AngleTrkF32_getTurn;


    return 1;
}
