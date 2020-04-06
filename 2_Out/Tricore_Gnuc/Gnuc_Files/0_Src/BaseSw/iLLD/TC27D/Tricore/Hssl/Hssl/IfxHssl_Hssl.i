# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.c"
# 1 "C:\\Users\\user\\Desktop\\programming_PROJECTS\\�Ѿ��_�Ӻ����ý���\\DevBaseEnv_vscode_TC27D//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.c"
# 30 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.c"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h" 1
# 373 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h" 1
# 42 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxHssl_cfg.h" 1
# 41 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxHssl_cfg.h"
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
# 42 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxHssl_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_regdef.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_regdef.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/Ifx_TypesReg.h" 1
# 40 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_regdef.h" 2





typedef struct _Ifx_HSSL_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_HSSL_ACCEN0_Bits;


typedef struct _Ifx_HSSL_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_HSSL_ACCEN1_Bits;


typedef struct _Ifx_HSSL_AR_Bits
{
    unsigned int ARW0:2;
    unsigned int ARW1:2;
    unsigned int ARW2:2;
    unsigned int ARW3:2;
    unsigned int reserved_8:8;
    unsigned int MAVCH:2;
    unsigned int reserved_18:14;
} Ifx_HSSL_AR_Bits;


typedef struct _Ifx_HSSL_AW_AWEND_Bits
{
    unsigned int reserved_0:8;
    unsigned int AWE:24;
} Ifx_HSSL_AW_AWEND_Bits;


typedef struct _Ifx_HSSL_AW_AWSTART_Bits
{
    unsigned int reserved_0:8;
    unsigned int AWS:24;
} Ifx_HSSL_AW_AWSTART_Bits;


typedef struct _Ifx_HSSL_CFG_Bits
{
    unsigned int PREDIV:14;
    unsigned int reserved_14:2;
    unsigned int SMT:1;
    unsigned int SMR:1;
    unsigned int SCM:1;
    unsigned int CCC:1;
    unsigned int reserved_20:12;
} Ifx_HSSL_CFG_Bits;


typedef struct _Ifx_HSSL_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_HSSL_CLC_Bits;


typedef struct _Ifx_HSSL_CRC_Bits
{
    unsigned int XORMASK:16;
    unsigned int XEN:1;
    unsigned int reserved_17:15;
} Ifx_HSSL_CRC_Bits;


typedef struct _Ifx_HSSL_I_ICON_Bits
{
    unsigned int IDQ:1;
    unsigned int TQ:1;
    unsigned int LETT:3;
    unsigned int CETT:3;
    unsigned int TOCV:8;
    unsigned int DATLEN:2;
    unsigned int RWT:2;
    unsigned int BSY:1;
    unsigned int ITTAG:3;
    unsigned int TOREL:8;
} Ifx_HSSL_I_ICON_Bits;


typedef struct _Ifx_HSSL_I_IRD_Bits
{
    unsigned int DATA:32;
} Ifx_HSSL_I_IRD_Bits;


typedef struct _Ifx_HSSL_I_IRWA_Bits
{
    unsigned int ADDRESS:32;
} Ifx_HSSL_I_IRWA_Bits;


typedef struct _Ifx_HSSL_I_IWD_Bits
{
    unsigned int DATA:32;
} Ifx_HSSL_I_IWD_Bits;


typedef struct _Ifx_HSSL_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_HSSL_ID_Bits;


typedef struct _Ifx_HSSL_IS_CA_Bits
{
    unsigned int reserved_0:5;
    unsigned int CURR:27;
} Ifx_HSSL_IS_CA_Bits;


typedef struct _Ifx_HSSL_IS_FC_Bits
{
    unsigned int RELCOUNT:16;
    unsigned int CURCOUNT:16;
} Ifx_HSSL_IS_FC_Bits;


typedef struct _Ifx_HSSL_ISSA_Bits
{
    unsigned int reserved_0:5;
    unsigned int START:27;
} Ifx_HSSL_ISSA_Bits;


typedef struct _Ifx_HSSL_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_HSSL_KRST0_Bits;


typedef struct _Ifx_HSSL_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_HSSL_KRST1_Bits;


typedef struct _Ifx_HSSL_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_HSSL_KRSTCLR_Bits;


typedef struct _Ifx_HSSL_MFLAGS_Bits
{
    unsigned int NACK:4;
    unsigned int TTE:4;
    unsigned int TIMEOUT:4;
    unsigned int UNEXPECTED:4;
    unsigned int reserved_16:2;
    unsigned int TMB:1;
    unsigned int IMB:1;
    unsigned int ISB:1;
    unsigned int MAV:1;
    unsigned int SRIE:1;
    unsigned int PIE1:1;
    unsigned int PIE2:1;
    unsigned int CRCE:1;
    unsigned int reserved_26:2;
    unsigned int TSE:1;
    unsigned int TEI:1;
    unsigned int TEO:1;
    unsigned int INI:1;
} Ifx_HSSL_MFLAGS_Bits;


typedef struct _Ifx_HSSL_MFLAGSCL_Bits
{
    unsigned int NACKC:4;
    unsigned int TTEC:4;
    unsigned int TIMEOUTC:4;
    unsigned int UNEXPECTEDC:4;
    unsigned int reserved_16:2;
    unsigned int TMBC:1;
    unsigned int IMBC:1;
    unsigned int ISBC:1;
    unsigned int MAVC:1;
    unsigned int SRIEC:1;
    unsigned int PIE1C:1;
    unsigned int PIE2C:1;
    unsigned int CRCEC:1;
    unsigned int reserved_26:2;
    unsigned int TSEC:1;
    unsigned int reserved_29:1;
    unsigned int TEOC:1;
    unsigned int INIC:1;
} Ifx_HSSL_MFLAGSCL_Bits;


typedef struct _Ifx_HSSL_MFLAGSEN_Bits
{
    unsigned int NACKEN:4;
    unsigned int TTEEN:4;
    unsigned int TIMEOUTEN:4;
    unsigned int UNEXPECTEDEN:4;
    unsigned int reserved_16:5;
    unsigned int MAVEN:1;
    unsigned int SRIEEN:1;
    unsigned int PIE1EN:1;
    unsigned int PIE2EN:1;
    unsigned int CRCEEN:1;
    unsigned int reserved_26:3;
    unsigned int TEIEN:1;
    unsigned int reserved_30:2;
} Ifx_HSSL_MFLAGSEN_Bits;


typedef struct _Ifx_HSSL_MFLAGSSET_Bits
{
    unsigned int NACKS:4;
    unsigned int TTES:4;
    unsigned int TIMEOUTS:4;
    unsigned int UNEXPECTEDS:4;
    unsigned int reserved_16:2;
    unsigned int TMBS:1;
    unsigned int IMBS:1;
    unsigned int ISBS:1;
    unsigned int MAVS:1;
    unsigned int SRIES:1;
    unsigned int PIE1S:1;
    unsigned int PIE2S:1;
    unsigned int CRCES:1;
    unsigned int reserved_26:2;
    unsigned int TSES:1;
    unsigned int reserved_29:1;
    unsigned int TEOS:1;
    unsigned int INIS:1;
} Ifx_HSSL_MFLAGSSET_Bits;


typedef struct _Ifx_HSSL_OCS_Bits
{
    unsigned int TGS:2;
    unsigned int TGB:1;
    unsigned int TG_P:1;
    unsigned int reserved_4:20;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_HSSL_OCS_Bits;


typedef struct _Ifx_HSSL_QFLAGS_Bits
{
    unsigned int I:4;
    unsigned int T:4;
    unsigned int R:4;
    unsigned int reserved_12:4;
    unsigned int E0:2;
    unsigned int E1:2;
    unsigned int E2:2;
    unsigned int E3:2;
    unsigned int reserved_24:4;
    unsigned int IS:1;
    unsigned int RS:1;
    unsigned int TS:1;
    unsigned int ES:1;
} Ifx_HSSL_QFLAGS_Bits;


typedef struct _Ifx_HSSL_SFSFLAGS_Bits
{
    unsigned int RXFL:2;
    unsigned int TXFL:2;
    unsigned int EXFL:2;
    unsigned int reserved_6:9;
    unsigned int ISF:1;
    unsigned int reserved_16:16;
} Ifx_HSSL_SFSFLAGS_Bits;


typedef struct _Ifx_HSSL_T_TCA_Bits
{
    unsigned int A:32;
} Ifx_HSSL_T_TCA_Bits;


typedef struct _Ifx_HSSL_T_TCD_Bits
{
    unsigned int D:32;
} Ifx_HSSL_T_TCD_Bits;


typedef struct _Ifx_HSSL_TIDADD_Bits
{
    unsigned int A:32;
} Ifx_HSSL_TIDADD_Bits;


typedef struct _Ifx_HSSL_TS_CA_Bits
{
    unsigned int reserved_0:5;
    unsigned int CURR:27;
} Ifx_HSSL_TS_CA_Bits;


typedef struct _Ifx_HSSL_TS_FC_Bits
{
    unsigned int RELCOUNT:16;
    unsigned int CURCOUNT:16;
} Ifx_HSSL_TS_FC_Bits;


typedef struct _Ifx_HSSL_TSSA_Bits
{
    unsigned int reserved_0:5;
    unsigned int ADDR:27;
} Ifx_HSSL_TSSA_Bits;


typedef struct _Ifx_HSSL_TSTAT_Bits
{
    unsigned int LASTCC0:5;
    unsigned int LASTTT0:3;
    unsigned int LASTCC1:5;
    unsigned int LASTTT1:3;
    unsigned int LASTCC2:5;
    unsigned int LASTTT2:3;
    unsigned int LASTCC3:5;
    unsigned int LASTTT3:3;
} Ifx_HSSL_TSTAT_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_ACCEN0_Bits B;
} Ifx_HSSL_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_ACCEN1_Bits B;
} Ifx_HSSL_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_AR_Bits B;
} Ifx_HSSL_AR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_AW_AWEND_Bits B;
} Ifx_HSSL_AW_AWEND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_AW_AWSTART_Bits B;
} Ifx_HSSL_AW_AWSTART;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_CFG_Bits B;
} Ifx_HSSL_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_CLC_Bits B;
} Ifx_HSSL_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_CRC_Bits B;
} Ifx_HSSL_CRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_I_ICON_Bits B;
} Ifx_HSSL_I_ICON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_I_IRD_Bits B;
} Ifx_HSSL_I_IRD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_I_IRWA_Bits B;
} Ifx_HSSL_I_IRWA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_I_IWD_Bits B;
} Ifx_HSSL_I_IWD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_ID_Bits B;
} Ifx_HSSL_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_IS_CA_Bits B;
} Ifx_HSSL_IS_CA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_IS_FC_Bits B;
} Ifx_HSSL_IS_FC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_ISSA_Bits B;
} Ifx_HSSL_ISSA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_KRST0_Bits B;
} Ifx_HSSL_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_KRST1_Bits B;
} Ifx_HSSL_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_KRSTCLR_Bits B;
} Ifx_HSSL_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_MFLAGS_Bits B;
} Ifx_HSSL_MFLAGS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_MFLAGSCL_Bits B;
} Ifx_HSSL_MFLAGSCL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_MFLAGSEN_Bits B;
} Ifx_HSSL_MFLAGSEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_MFLAGSSET_Bits B;
} Ifx_HSSL_MFLAGSSET;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_OCS_Bits B;
} Ifx_HSSL_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_QFLAGS_Bits B;
} Ifx_HSSL_QFLAGS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_SFSFLAGS_Bits B;
} Ifx_HSSL_SFSFLAGS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_T_TCA_Bits B;
} Ifx_HSSL_T_TCA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_T_TCD_Bits B;
} Ifx_HSSL_T_TCD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_TIDADD_Bits B;
} Ifx_HSSL_TIDADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_TS_CA_Bits B;
} Ifx_HSSL_TS_CA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_TS_FC_Bits B;
} Ifx_HSSL_TS_FC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_TSSA_Bits B;
} Ifx_HSSL_TSSA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSSL_TSTAT_Bits B;
} Ifx_HSSL_TSTAT;
# 686 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_regdef.h"
typedef volatile struct _Ifx_HSSL_AW
{
    Ifx_HSSL_AW_AWSTART AWSTART;
    Ifx_HSSL_AW_AWEND AWEND;
} Ifx_HSSL_AW;


typedef volatile struct _Ifx_HSSL_I
{
    Ifx_HSSL_I_IWD IWD;
    Ifx_HSSL_I_ICON ICON;
    Ifx_HSSL_I_IRWA IRWA;
    Ifx_HSSL_I_IRD IRD;
} Ifx_HSSL_I;


typedef volatile struct _Ifx_HSSL_IS
{
    Ifx_HSSL_ISSA SA[2];
    Ifx_HSSL_IS_CA CA;
    Ifx_HSSL_IS_FC FC;
} Ifx_HSSL_IS;


typedef volatile struct _Ifx_HSSL_T
{
    Ifx_HSSL_T_TCD TCD;
    Ifx_HSSL_T_TCA TCA;
} Ifx_HSSL_T;


typedef volatile struct _Ifx_HSSL_TS
{
    Ifx_HSSL_TSSA SA[2];
    Ifx_HSSL_TS_CA CA;
    Ifx_HSSL_TS_FC FC;
} Ifx_HSSL_TS;
# 735 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_regdef.h"
typedef volatile struct _Ifx_HSSL
{
    Ifx_HSSL_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_HSSL_ID ID;
    Ifx_HSSL_CRC CRC;
    Ifx_HSSL_CFG CFG;
    Ifx_HSSL_QFLAGS QFLAGS;
    Ifx_HSSL_MFLAGS MFLAGS;
    Ifx_HSSL_MFLAGSSET MFLAGSSET;
    Ifx_HSSL_MFLAGSCL MFLAGSCL;
    Ifx_HSSL_MFLAGSEN MFLAGSEN;
    Ifx_HSSL_SFSFLAGS SFSFLAGS;
    unsigned char reserved_2C[4];
    Ifx_HSSL_I I[4];
    Ifx_HSSL_T T[4];
    Ifx_HSSL_TSTAT TSTAT;
    Ifx_HSSL_TIDADD TIDADD;
    unsigned char reserved_98[8];
    Ifx_HSSL_IS IS;
    Ifx_HSSL_TS TS;
    Ifx_HSSL_AW AW[4];
    Ifx_HSSL_AR AR;
    unsigned char reserved_E4[4];
    Ifx_HSSL_OCS OCS;
    Ifx_HSSL_KRSTCLR KRSTCLR;
    Ifx_HSSL_KRST1 KRST1;
    Ifx_HSSL_KRST0 KRST0;
    Ifx_HSSL_ACCEN1 ACCEN1;
    Ifx_HSSL_ACCEN0 ACCEN0;
    unsigned char reserved_100[768];
} Ifx_HSSL;
# 37 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_reg.h" 2
# 43 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxHssl_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHsct_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHsct_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHsct_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHsct_regdef.h"
typedef struct _Ifx_HSCT_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_HSCT_ACCEN0_Bits;


typedef struct _Ifx_HSCT_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_HSCT_ACCEN1_Bits;


typedef struct _Ifx_HSCT_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_HSCT_CLC_Bits;


typedef struct _Ifx_HSCT_CONFIGPHY_Bits
{
    unsigned int reserved_0:1;
    unsigned int PLLPON:1;
    unsigned int PLLPE:6;
    unsigned int PLLWMF:6;
    unsigned int PLLKPKI:1;
    unsigned int PHYRST:1;
    unsigned int PLLKP:3;
    unsigned int PLLKI:3;
    unsigned int PLLIVR:4;
    unsigned int reserved_26:2;
    unsigned int OSCCLKEN:1;
    unsigned int reserved_29:3;
} Ifx_HSCT_CONFIGPHY_Bits;


typedef struct _Ifx_HSCT_CTSCTRL_Bits
{
    unsigned int CTS_FRAME:1;
    unsigned int CTS_TXD:1;
    unsigned int CTS_RXD:1;
    unsigned int HSSL_CTS_FBD:1;
    unsigned int reserved_4:28;
} Ifx_HSCT_CTSCTRL_Bits;


typedef struct _Ifx_HSCT_DISABLE_Bits
{
    unsigned int TX_DIS:1;
    unsigned int RX_DIS:1;
    unsigned int RX_HEPD:1;
    unsigned int reserved_3:29;
} Ifx_HSCT_DISABLE_Bits;


typedef struct _Ifx_HSCT_ID_Bits
{
    unsigned int MOD_REV:8;
    unsigned int MOD_TYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_HSCT_ID_Bits;


typedef struct _Ifx_HSCT_IFCTRL_Bits
{
    unsigned int IFCVS:8;
    unsigned int SIFCV:1;
    unsigned int reserved_9:7;
    unsigned int MRXSPEED:2;
    unsigned int MTXSPEED:2;
    unsigned int IFTESTMD:1;
    unsigned int reserved_21:11;
} Ifx_HSCT_IFCTRL_Bits;


typedef struct _Ifx_HSCT_IFSTAT_Bits
{
    unsigned int RX_STAT:3;
    unsigned int TX_STAT:2;
    unsigned int reserved_5:27;
} Ifx_HSCT_IFSTAT_Bits;


typedef struct _Ifx_HSCT_INIT_Bits
{
    unsigned int reserved_0:1;
    unsigned int SYS_CLK_EN:1;
    unsigned int SRCF:1;
    unsigned int IFM:1;
    unsigned int reserved_4:6;
    unsigned int LHLR:1;
    unsigned int reserved_11:5;
    unsigned int TXHD:3;
    unsigned int RXHD:3;
    unsigned int reserved_22:10;
} Ifx_HSCT_INIT_Bits;


typedef struct _Ifx_HSCT_IRQ_Bits
{
    unsigned int reserved_0:1;
    unsigned int HER:1;
    unsigned int PYER:1;
    unsigned int CER:1;
    unsigned int IFCFS:1;
    unsigned int SMER:1;
    unsigned int USMSF:1;
    unsigned int PLER:1;
    unsigned int USM:1;
    unsigned int PAR:1;
    unsigned int TXTE:1;
    unsigned int SFO:1;
    unsigned int SFU:1;
    unsigned int reserved_13:19;
} Ifx_HSCT_IRQ_Bits;


typedef struct _Ifx_HSCT_IRQCLR_Bits
{
    unsigned int reserved_0:1;
    unsigned int HERCLR:1;
    unsigned int PYERCLR:1;
    unsigned int CERCLR:1;
    unsigned int IFCFSCLR:1;
    unsigned int SMERCLR:1;
    unsigned int USMSFCLR:1;
    unsigned int PLERCLR:1;
    unsigned int USMCLR:1;
    unsigned int PARCLR:1;
    unsigned int TXTECLR:1;
    unsigned int SFOCLR:1;
    unsigned int SFUCLR:1;
    unsigned int reserved_13:19;
} Ifx_HSCT_IRQCLR_Bits;


typedef struct _Ifx_HSCT_IRQEN_Bits
{
    unsigned int reserved_0:1;
    unsigned int HEREN:1;
    unsigned int PYEREN:1;
    unsigned int CEREN:1;
    unsigned int IFCFSEN:1;
    unsigned int SMEREN:1;
    unsigned int USMSFEN:1;
    unsigned int PLEREN:1;
    unsigned int USMEN:1;
    unsigned int PAREN:1;
    unsigned int TXTEEN:1;
    unsigned int SFOEN:1;
    unsigned int SFUEN:1;
    unsigned int reserved_13:19;
} Ifx_HSCT_IRQEN_Bits;


typedef struct _Ifx_HSCT_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_HSCT_KRST0_Bits;


typedef struct _Ifx_HSCT_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_HSCT_KRST1_Bits;


typedef struct _Ifx_HSCT_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_HSCT_KRSTCLR_Bits;


typedef struct _Ifx_HSCT_OCS_Bits
{
    unsigned int TGS:2;
    unsigned int TGB:1;
    unsigned int TG_P:1;
    unsigned int reserved_4:20;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_HSCT_OCS_Bits;


typedef struct _Ifx_HSCT_SLEEPCTRL_Bits
{
    unsigned int SLPEN:1;
    unsigned int SLPCLKG:1;
    unsigned int reserved_2:30;
} Ifx_HSCT_SLEEPCTRL_Bits;


typedef struct _Ifx_HSCT_STAT_Bits
{
    unsigned int RX_PSIZE:3;
    unsigned int RX_CHANNEL:4;
    unsigned int RX_SLEEP:1;
    unsigned int TX_SLEEP:1;
    unsigned int reserved_9:3;
    unsigned int TX_PSIZE:3;
    unsigned int reserved_15:1;
    unsigned int TX_CHANNEL_TYPE:4;
    unsigned int reserved_20:4;
    unsigned int LIFCCMDR:8;
} Ifx_HSCT_STAT_Bits;


typedef struct _Ifx_HSCT_STATPHY_Bits
{
    unsigned int PLOCK:1;
    unsigned int RXLSA:1;
    unsigned int TXLSA:1;
    unsigned int reserved_3:29;
} Ifx_HSCT_STATPHY_Bits;


typedef struct _Ifx_HSCT_USMR_Bits
{
    unsigned int USMR:32;
} Ifx_HSCT_USMR_Bits;


typedef struct _Ifx_HSCT_USMS_Bits
{
    unsigned int USMS:32;
} Ifx_HSCT_USMS_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_ACCEN0_Bits B;
} Ifx_HSCT_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_ACCEN1_Bits B;
} Ifx_HSCT_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_CLC_Bits B;
} Ifx_HSCT_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_CONFIGPHY_Bits B;
} Ifx_HSCT_CONFIGPHY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_CTSCTRL_Bits B;
} Ifx_HSCT_CTSCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_DISABLE_Bits B;
} Ifx_HSCT_DISABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_ID_Bits B;
} Ifx_HSCT_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_IFCTRL_Bits B;
} Ifx_HSCT_IFCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_IFSTAT_Bits B;
} Ifx_HSCT_IFSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_INIT_Bits B;
} Ifx_HSCT_INIT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_IRQ_Bits B;
} Ifx_HSCT_IRQ;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_IRQCLR_Bits B;
} Ifx_HSCT_IRQCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_IRQEN_Bits B;
} Ifx_HSCT_IRQEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_KRST0_Bits B;
} Ifx_HSCT_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_KRST1_Bits B;
} Ifx_HSCT_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_KRSTCLR_Bits B;
} Ifx_HSCT_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_OCS_Bits B;
} Ifx_HSCT_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_SLEEPCTRL_Bits B;
} Ifx_HSCT_SLEEPCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_STAT_Bits B;
} Ifx_HSCT_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_STATPHY_Bits B;
} Ifx_HSCT_STATPHY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_USMR_Bits B;
} Ifx_HSCT_USMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_HSCT_USMS_Bits B;
} Ifx_HSCT_USMS;
# 502 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHsct_regdef.h"
typedef volatile struct _Ifx_HSCT
{
    Ifx_HSCT_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_HSCT_ID ID;
    unsigned char reserved_C[4];
    Ifx_HSCT_INIT INIT;
    Ifx_HSCT_IFCTRL IFCTRL;
    Ifx_HSCT_SLEEPCTRL SLEEPCTRL;
    Ifx_HSCT_CTSCTRL CTSCTRL;
    Ifx_HSCT_DISABLE DISABLE;
    Ifx_HSCT_STAT STAT;
    Ifx_HSCT_IFSTAT IFSTAT;
    unsigned char reserved_2C[4];
    Ifx_HSCT_CONFIGPHY CONFIGPHY;
    Ifx_HSCT_STATPHY STATPHY;
    unsigned char reserved_38[8];
    Ifx_HSCT_IRQ IRQ;
    Ifx_HSCT_IRQEN IRQEN;
    Ifx_HSCT_IRQCLR IRQCLR;
    unsigned char reserved_4C[4];
    Ifx_HSCT_USMR USMR;
    Ifx_HSCT_USMS USMS;
    unsigned char reserved_58[65424];
    Ifx_HSCT_OCS OCS;
    Ifx_HSCT_KRSTCLR KRSTCLR;
    Ifx_HSCT_KRST1 KRST1;
    Ifx_HSCT_KRST0 KRST0;
    Ifx_HSCT_ACCEN1 ACCEN1;
    Ifx_HSCT_ACCEN0 ACCEN0;
} Ifx_HSCT;
# 37 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHsct_reg.h" 2
# 44 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxHssl_cfg.h" 2
# 63 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxHssl_cfg.h"
typedef enum
{
    IfxHssl_hsctIndex_none = -1,
    IfxHssl_hsctIndex_0 = 0,
} IfxHssl_hsctIndex;



typedef enum
{
    IfxHssl_hsslIndex_none = -1,
    IfxHssl_hsslIndex_0 = 0,
} IfxHssl_hsslIndex;
# 86 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxHssl_cfg.h"
extern const IfxModule_IndexMap IfxHssl_cfg_hsctIndexMap[1];

extern const IfxModule_IndexMap IfxHssl_cfg_hsslIndexMap[1];
# 43 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h" 2
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
# 44 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h" 1
# 46 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxScu_cfg.h" 1
# 36 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxScu_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_bf.h" 1
# 37 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_bf.h" 1
# 38 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxScu_cfg.h" 2
# 1411 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 47 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS:1;
    unsigned int STM1DIS:1;
    unsigned int STM2DIS:1;
    unsigned int reserved_3:29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int BAUD1DIV:4;
    unsigned int BAUD2DIV:4;
    unsigned int SRIDIV:4;
    unsigned int LPDIV:4;
    unsigned int SPBDIV:4;
    unsigned int FSI2DIV:2;
    unsigned int reserved_22:2;
    unsigned int FSIDIV:2;
    unsigned int reserved_26:2;
    unsigned int CLKSEL:2;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV:4;
    unsigned int ERAYDIV:4;
    unsigned int STMDIV:4;
    unsigned int GTMDIV:4;
    unsigned int ETHDIV:4;
    unsigned int ASCLINFDIV:4;
    unsigned int ASCLINSDIV:4;
    unsigned int INSEL:2;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV:4;
    unsigned int reserved_4:26;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV:6;
    unsigned int PLLSEL:2;
    unsigned int PLLERAYDIV:6;
    unsigned int PLLERAYSEL:2;
    unsigned int SRIDIV:6;
    unsigned int SRISEL:2;
    unsigned int reserved_24:5;
    unsigned int SLCK:1;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV:6;
    unsigned int SPBSEL:2;
    unsigned int GTMDIV:6;
    unsigned int GTMSEL:2;
    unsigned int STMDIV:6;
    unsigned int STMSEL:2;
    unsigned int reserved_24:5;
    unsigned int SLCK:1;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV:4;
    unsigned int reserved_4:26;
    unsigned int UP:1;
    unsigned int LCK:1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV:6;
    unsigned int reserved_6:26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CCUCON7_Bits
{
    unsigned int CPU1DIV:6;
    unsigned int reserved_6:26;
} Ifx_SCU_CCUCON7_Bits;


typedef struct _Ifx_SCU_CCUCON8_Bits
{
    unsigned int CPU2DIV:6;
    unsigned int reserved_6:26;
} Ifx_SCU_CCUCON8_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV:6;
    unsigned int CHTEC:2;
    unsigned int CHID:8;
    unsigned int EEA:1;
    unsigned int UCODE:7;
    unsigned int FSIZE:4;
    unsigned int SP:2;
    unsigned int SEC:1;
    unsigned int reserved_31:1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD:1;
    unsigned int START:1;
    unsigned int reserved_2:2;
    unsigned int CAL:22;
    unsigned int reserved_26:5;
    unsigned int SLCK:1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER:10;
    unsigned int reserved_10:5;
    unsigned int LLU:1;
    unsigned int UPPER:10;
    unsigned int reserved_26:4;
    unsigned int SLCK:1;
    unsigned int UOF:1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT:10;
    unsigned int reserved_10:4;
    unsigned int RDY:1;
    unsigned int BUSY:1;
    unsigned int reserved_16:16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0:4;
    unsigned int EXIS0:3;
    unsigned int reserved_7:1;
    unsigned int FEN0:1;
    unsigned int REN0:1;
    unsigned int LDEN0:1;
    unsigned int EIEN0:1;
    unsigned int INP0:3;
    unsigned int reserved_15:5;
    unsigned int EXIS1:3;
    unsigned int reserved_23:1;
    unsigned int FEN1:1;
    unsigned int REN1:1;
    unsigned int LDEN1:1;
    unsigned int EIEN1:1;
    unsigned int INP1:3;
    unsigned int reserved_31:1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0:1;
    unsigned int INTF1:1;
    unsigned int INTF2:1;
    unsigned int INTF3:1;
    unsigned int INTF4:1;
    unsigned int INTF5:1;
    unsigned int INTF6:1;
    unsigned int INTF7:1;
    unsigned int reserved_8:24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL:1;
    unsigned int MODE:1;
    unsigned int ENON:1;
    unsigned int PSEL:1;
    unsigned int reserved_4:12;
    unsigned int EMSF:1;
    unsigned int SEMSF:1;
    unsigned int reserved_18:6;
    unsigned int EMSFM:2;
    unsigned int SEMSFM:2;
    unsigned int reserved_28:4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0:7;
    unsigned int EDCON:2;
    unsigned int reserved_9:23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI:1;
    unsigned int ARC:1;
    unsigned int reserved_2:30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0:28;
    unsigned int EVR13OFF:1;
    unsigned int BPEVR13OFF:1;
    unsigned int reserved_30:1;
    unsigned int LCK:1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVR33CON_Bits
{
    unsigned int reserved_0:28;
    unsigned int EVR33OFF:1;
    unsigned int BPEVR33OFF:1;
    unsigned int reserved_30:1;
    unsigned int LCK:1;
} Ifx_SCU_EVR33CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V:8;
    unsigned int ADC33V:8;
    unsigned int ADCSWDV:8;
    unsigned int reserved_24:7;
    unsigned int VAL:1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRDVSTAT_Bits
{
    unsigned int DVS13TRIM:8;
    unsigned int reserved_8:8;
    unsigned int DVS33TRIM:8;
    unsigned int reserved_24:7;
    unsigned int VAL:1;
} Ifx_SCU_EVRDVSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD:2;
    unsigned int reserved_2:2;
    unsigned int EVR13UVMOD:2;
    unsigned int reserved_6:2;
    unsigned int EVR33OVMOD:2;
    unsigned int reserved_10:2;
    unsigned int EVR33UVMOD:2;
    unsigned int reserved_14:2;
    unsigned int SWDOVMOD:2;
    unsigned int reserved_18:2;
    unsigned int SWDUVMOD:2;
    unsigned int reserved_22:8;
    unsigned int SLCK:1;
    unsigned int reserved_31:1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL:8;
    unsigned int EVR33OVVAL:8;
    unsigned int SWDOVVAL:8;
    unsigned int reserved_24:6;
    unsigned int SLCK:1;
    unsigned int LCK:1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int RST13TRIM:8;
    unsigned int reserved_8:16;
    unsigned int RST13OFF:1;
    unsigned int BPRST13OFF:1;
    unsigned int RST33OFF:1;
    unsigned int BPRST33OFF:1;
    unsigned int RSTSWDOFF:1;
    unsigned int BPRSTSWDOFF:1;
    unsigned int SLCK:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF1_Bits
{
    unsigned int SD5P:8;
    unsigned int SD5I:8;
    unsigned int SD5D:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF1_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P:8;
    unsigned int SD33I:8;
    unsigned int SD33D:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF3_Bits
{
    unsigned int CT5REG0:8;
    unsigned int CT5REG1:8;
    unsigned int CT5REG2:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF3_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF4_Bits
{
    unsigned int CT5REG3:8;
    unsigned int CT5REG4:8;
    unsigned int reserved_16:15;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF4_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF5_Bits
{
    unsigned int CT33REG0:8;
    unsigned int CT33REG1:8;
    unsigned int CT33REG2:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF5_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF6_Bits
{
    unsigned int CT33REG3:8;
    unsigned int CT33REG4:8;
    unsigned int reserved_16:15;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCOEFF6_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD:16;
    unsigned int SDFREQ:8;
    unsigned int SDSTEP:4;
    unsigned int reserved_28:2;
    unsigned int SDSAMPLE:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int DRVP:8;
    unsigned int SDMINMAXDC:8;
    unsigned int DRVN:8;
    unsigned int SDLUT:6;
    unsigned int reserved_30:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDPWMPRE:8;
    unsigned int SDPID:8;
    unsigned int SDVOKLVL:8;
    unsigned int reserved_24:7;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL4_Bits
{
    unsigned int reserved_0:8;
    unsigned int SYNCDIV:3;
    unsigned int reserved_11:20;
    unsigned int LCK:1;
} Ifx_SCU_EVRSDCTRL4_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13:1;
    unsigned int OV13:1;
    unsigned int EVR33:1;
    unsigned int OV33:1;
    unsigned int OVSWD:1;
    unsigned int UV13:1;
    unsigned int UV33:1;
    unsigned int UVSWD:1;
    unsigned int EXTPASS13:1;
    unsigned int EXTPASS33:1;
    unsigned int BGPROK:1;
    unsigned int reserved_11:21;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRTRIM_Bits
{
    unsigned int EVR13TRIM:8;
    unsigned int SDVOUTSEL:8;
    unsigned int reserved_16:14;
    unsigned int SLCK:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRTRIM_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL:8;
    unsigned int EVR33UVVAL:8;
    unsigned int SWDUVVAL:8;
    unsigned int reserved_24:6;
    unsigned int SLCK:1;
    unsigned int LCK:1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0:1;
    unsigned int reserved_1:1;
    unsigned int SEL0:4;
    unsigned int reserved_6:10;
    unsigned int EN1:1;
    unsigned int NSEL:1;
    unsigned int SEL1:4;
    unsigned int reserved_22:2;
    unsigned int DIV1:8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP:10;
    unsigned int reserved_10:4;
    unsigned int DM:2;
    unsigned int RESULT:10;
    unsigned int reserved_26:5;
    unsigned int DISCLK:1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0:1;
    unsigned int FS1:1;
    unsigned int FS2:1;
    unsigned int FS3:1;
    unsigned int FS4:1;
    unsigned int FS5:1;
    unsigned int FS6:1;
    unsigned int FS7:1;
    unsigned int reserved_8:8;
    unsigned int FC0:1;
    unsigned int FC1:1;
    unsigned int FC2:1;
    unsigned int FC3:1;
    unsigned int FC4:1;
    unsigned int FC5:1;
    unsigned int FC6:1;
    unsigned int FC7:1;
    unsigned int reserved_24:8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00:1;
    unsigned int IPEN01:1;
    unsigned int IPEN02:1;
    unsigned int IPEN03:1;
    unsigned int IPEN04:1;
    unsigned int IPEN05:1;
    unsigned int IPEN06:1;
    unsigned int IPEN07:1;
    unsigned int reserved_8:5;
    unsigned int GEEN0:1;
    unsigned int IGP0:2;
    unsigned int IPEN10:1;
    unsigned int IPEN11:1;
    unsigned int IPEN12:1;
    unsigned int IPEN13:1;
    unsigned int IPEN14:1;
    unsigned int IPEN15:1;
    unsigned int IPEN16:1;
    unsigned int IPEN17:1;
    unsigned int reserved_24:5;
    unsigned int GEEN1:1;
    unsigned int IGP1:2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0:1;
    unsigned int P1:1;
    unsigned int reserved_2:30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0:4;
    unsigned int PC0:4;
    unsigned int reserved_8:4;
    unsigned int PC1:4;
    unsigned int reserved_16:16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ:1;
    unsigned int LBISTREQP:1;
    unsigned int PATTERNS:14;
    unsigned int reserved_16:16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED:23;
    unsigned int reserved_23:1;
    unsigned int SPLITSH:3;
    unsigned int BODY:1;
    unsigned int LBISTFREQU:4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE:24;
    unsigned int reserved_24:7;
    unsigned int LBISTDONE:1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON_Bits
{
    unsigned int reserved_0:16;
    unsigned int LS:1;
    unsigned int reserved_17:14;
    unsigned int LSEN:1;
} Ifx_SCU_LCLCON_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0:1;
    unsigned int LCLT1:1;
    unsigned int reserved_2:30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT:5;
    unsigned int MANUF:11;
    unsigned int reserved_16:16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0:1;
    unsigned int PS1:1;
    unsigned int reserved_2:14;
    unsigned int PCL0:1;
    unsigned int PCL1:1;
    unsigned int reserved_18:14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0:1;
    unsigned int PLLLV:1;
    unsigned int OSCRES:1;
    unsigned int GAINSEL:2;
    unsigned int MODE:2;
    unsigned int SHBY:1;
    unsigned int PLLHV:1;
    unsigned int reserved_9:1;
    unsigned int X1D:1;
    unsigned int X1DEN:1;
    unsigned int reserved_12:4;
    unsigned int OSCVAL:5;
    unsigned int reserved_21:2;
    unsigned int APREN:1;
    unsigned int CAP0EN:1;
    unsigned int CAP1EN:1;
    unsigned int CAP2EN:1;
    unsigned int CAP3EN:1;
    unsigned int reserved_28:4;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0:1;
    unsigned int P1:1;
    unsigned int reserved_2:30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0:1;
    unsigned int CSEL1:1;
    unsigned int CSEL2:1;
    unsigned int reserved_3:13;
    unsigned int OVSTRT:1;
    unsigned int OVSTP:1;
    unsigned int DCINVAL:1;
    unsigned int reserved_19:5;
    unsigned int OVCONF:1;
    unsigned int POVCONF:1;
    unsigned int reserved_26:6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0:1;
    unsigned int OVEN1:1;
    unsigned int OVEN2:1;
    unsigned int reserved_3:29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0:1;
    unsigned int PDIS1:1;
    unsigned int reserved_2:30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0:3;
    unsigned int PL0:1;
    unsigned int PD1:3;
    unsigned int PL1:1;
    unsigned int reserved_8:24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0:1;
    unsigned int PDR1:1;
    unsigned int PDR2:1;
    unsigned int PDR3:1;
    unsigned int PDR4:1;
    unsigned int PDR5:1;
    unsigned int PDR6:1;
    unsigned int PDR7:1;
    unsigned int reserved_8:24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP:1;
    unsigned int VCOPWD:1;
    unsigned int MODEN:1;
    unsigned int reserved_3:1;
    unsigned int SETFINDIS:1;
    unsigned int CLRFINDIS:1;
    unsigned int OSCDISCDIS:1;
    unsigned int reserved_7:2;
    unsigned int NDIV:7;
    unsigned int PLLPWD:1;
    unsigned int reserved_17:1;
    unsigned int RESLD:1;
    unsigned int reserved_19:5;
    unsigned int PDIV:4;
    unsigned int reserved_28:4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV:7;
    unsigned int reserved_7:1;
    unsigned int K3DIV:7;
    unsigned int reserved_15:1;
    unsigned int K1DIV:7;
    unsigned int reserved_23:9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG:16;
    unsigned int reserved_16:16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP:1;
    unsigned int VCOPWD:1;
    unsigned int reserved_2:2;
    unsigned int SETFINDIS:1;
    unsigned int CLRFINDIS:1;
    unsigned int OSCDISCDIS:1;
    unsigned int reserved_7:2;
    unsigned int NDIV:5;
    unsigned int reserved_14:2;
    unsigned int PLLPWD:1;
    unsigned int reserved_17:1;
    unsigned int RESLD:1;
    unsigned int reserved_19:5;
    unsigned int PDIV:4;
    unsigned int reserved_28:4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV:7;
    unsigned int reserved_7:1;
    unsigned int K3DIV:4;
    unsigned int reserved_12:4;
    unsigned int K1DIV:7;
    unsigned int reserved_23:9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST:1;
    unsigned int PWDSTAT:1;
    unsigned int VCOLOCK:1;
    unsigned int FINDIS:1;
    unsigned int K1RDY:1;
    unsigned int K2RDY:1;
    unsigned int reserved_6:26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST:1;
    unsigned int reserved_1:1;
    unsigned int VCOLOCK:1;
    unsigned int FINDIS:1;
    unsigned int K1RDY:1;
    unsigned int K2RDY:1;
    unsigned int reserved_6:1;
    unsigned int MODRUN:1;
    unsigned int reserved_8:24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP:2;
    unsigned int SMUSLP:1;
    unsigned int reserved_3:5;
    unsigned int PMST:3;
    unsigned int reserved_11:21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0:1;
    unsigned int ESR1WKEN:1;
    unsigned int PINAWKEN:1;
    unsigned int PINBWKEN:1;
    unsigned int ESR0DFEN:1;
    unsigned int ESR0EDCON:2;
    unsigned int ESR1DFEN:1;
    unsigned int ESR1EDCON:2;
    unsigned int PINADFEN:1;
    unsigned int PINAEDCON:2;
    unsigned int PINBDFEN:1;
    unsigned int PINBEDCON:2;
    unsigned int reserved_16:1;
    unsigned int STBYRAMSEL:2;
    unsigned int reserved_19:2;
    unsigned int TRISTEN:1;
    unsigned int TRISTREQ:1;
    unsigned int PORSTDF:1;
    unsigned int PWRWKEN:1;
    unsigned int DCDCSYNC:1;
    unsigned int BLNKFIL:3;
    unsigned int ESR0TRIST:1;
    unsigned int reserved_30:1;
    unsigned int LCK:1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0:8;
    unsigned int CPUIDLSEL:3;
    unsigned int reserved_11:1;
    unsigned int IRADIS:1;
    unsigned int reserved_13:11;
    unsigned int CPUSEL:3;
    unsigned int STBYEVEN:1;
    unsigned int STBYEV:3;
    unsigned int reserved_31:1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0:2;
    unsigned int ESR1WKP:1;
    unsigned int ESR1OVRUN:1;
    unsigned int PINAWKP:1;
    unsigned int PINAOVRUN:1;
    unsigned int PINBWKP:1;
    unsigned int PINBOVRUN:1;
    unsigned int PWRWKP:1;
    unsigned int PORSTDF:1;
    unsigned int HWCFGEVR:3;
    unsigned int STBYRAM:2;
    unsigned int TRIST:1;
    unsigned int reserved_16:4;
    unsigned int ESR1WKEN:1;
    unsigned int PINAWKEN:1;
    unsigned int PINBWKEN:1;
    unsigned int PWRWKEN:1;
    unsigned int BLNKFIL:3;
    unsigned int ESR0TRIST:1;
    unsigned int reserved_28:4;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0:2;
    unsigned int ESR1WKPCLR:1;
    unsigned int ESR1OVRUNCLR:1;
    unsigned int PINAWKPCLR:1;
    unsigned int PINAOVRUNCLR:1;
    unsigned int PINBWKPCLR:1;
    unsigned int PINBOVRUNCLR:1;
    unsigned int PWRWKPCLR:1;
    unsigned int reserved_9:23;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0:1;
    unsigned int CLRC:1;
    unsigned int reserved_2:10;
    unsigned int CSS0:1;
    unsigned int CSS1:1;
    unsigned int CSS2:1;
    unsigned int reserved_15:1;
    unsigned int USRINFO:16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0:2;
    unsigned int ESR1:2;
    unsigned int reserved_4:2;
    unsigned int SMU:2;
    unsigned int SW:2;
    unsigned int STM0:2;
    unsigned int STM1:2;
    unsigned int STM2:2;
    unsigned int reserved_16:16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0:1;
    unsigned int ESR1:1;
    unsigned int reserved_2:1;
    unsigned int SMU:1;
    unsigned int SW:1;
    unsigned int STM0:1;
    unsigned int STM1:1;
    unsigned int STM2:1;
    unsigned int reserved_8:8;
    unsigned int PORST:1;
    unsigned int reserved_17:1;
    unsigned int CB0:1;
    unsigned int CB1:1;
    unsigned int CB3:1;
    unsigned int reserved_21:2;
    unsigned int EVR13:1;
    unsigned int EVR33:1;
    unsigned int SWD:1;
    unsigned int reserved_26:2;
    unsigned int STBYR:1;
    unsigned int reserved_29:3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT:1;
    unsigned int reserved_1:31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG:8;
    unsigned int FTM:7;
    unsigned int MODE:1;
    unsigned int reserved_16:1;
    unsigned int LUDIS:1;
    unsigned int reserved_18:1;
    unsigned int TRSTL:1;
    unsigned int SPDEN:1;
    unsigned int reserved_21:3;
    unsigned int RAMINT:1;
    unsigned int reserved_25:7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0:1;
    unsigned int SWRSTREQ:1;
    unsigned int reserved_2:30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0:1;
    unsigned int reserved_1:1;
    unsigned int RAMINTM:2;
    unsigned int SETLUDIS:1;
    unsigned int reserved_5:3;
    unsigned int DATM:1;
    unsigned int reserved_9:23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T:1;
    unsigned int ESR1T:1;
    unsigned int reserved_2:1;
    unsigned int SMUT:1;
    unsigned int reserved_4:28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T:1;
    unsigned int ESR1T:1;
    unsigned int reserved_2:1;
    unsigned int SMUT:1;
    unsigned int reserved_4:28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T:1;
    unsigned int ESR1T:1;
    unsigned int reserved_2:1;
    unsigned int SMUT:1;
    unsigned int reserved_4:28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T:1;
    unsigned int ESR1T:1;
    unsigned int reserved_2:1;
    unsigned int SMUT:1;
    unsigned int reserved_4:28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    volatile unsigned int ENDINIT:1;
    volatile unsigned int LCK:1;
    volatile unsigned int PW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0:2;
    unsigned int IR0:1;
    unsigned int DR:1;
    unsigned int reserved_4:1;
    unsigned int IR1:1;
    unsigned int UR:1;
    unsigned int PAR:1;
    unsigned int TCR:1;
    unsigned int TCTR:7;
    unsigned int reserved_16:16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE:1;
    unsigned int OE:1;
    unsigned int IS0:1;
    unsigned int DS:1;
    unsigned int TO:1;
    unsigned int IS1:1;
    unsigned int US:1;
    unsigned int PAS:1;
    unsigned int TCS:1;
    unsigned int TCT:7;
    unsigned int TIM:16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    volatile unsigned int ENDINIT:1;
    volatile unsigned int LCK:1;
    volatile unsigned int PW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF:1;
    unsigned int reserved_1:1;
    unsigned int IR0:1;
    unsigned int DR:1;
    unsigned int reserved_4:1;
    unsigned int IR1:1;
    unsigned int UR:1;
    unsigned int PAR:1;
    unsigned int TCR:1;
    unsigned int TCTR:7;
    unsigned int reserved_16:16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE:1;
    unsigned int OE:1;
    unsigned int IS0:1;
    unsigned int DS:1;
    unsigned int TO:1;
    unsigned int IS1:1;
    unsigned int US:1;
    unsigned int PAS:1;
    unsigned int TCS:1;
    unsigned int TCT:7;
    unsigned int TIM:16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON7_Bits B;
} Ifx_SCU_CCUCON7;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON8_Bits B;
} Ifx_SCU_CCUCON8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVR33CON_Bits B;
} Ifx_SCU_EVR33CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRDVSTAT_Bits B;
} Ifx_SCU_EVRDVSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF1_Bits B;
} Ifx_SCU_EVRSDCOEFF1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF3_Bits B;
} Ifx_SCU_EVRSDCOEFF3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF4_Bits B;
} Ifx_SCU_EVRSDCOEFF4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF5_Bits B;
} Ifx_SCU_EVRSDCOEFF5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF6_Bits B;
} Ifx_SCU_EVRSDCOEFF6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL4_Bits B;
} Ifx_SCU_EVRSDCTRL4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRTRIM_Bits B;
} Ifx_SCU_EVRTRIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLCON_Bits B;
} Ifx_SCU_LCLCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 1933 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 1959 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    Ifx_SCU_CCUCON7 CCUCON7;
    Ifx_SCU_CCUCON8 CCUCON8;
    unsigned char reserved_8C[16];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    Ifx_SCU_EVRDVSTAT EVRDVSTAT;
    Ifx_SCU_EVR13CON EVR13CON;
    Ifx_SCU_EVR33CON EVR33CON;
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[3];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[3];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    Ifx_SCU_LCLCON LCLCON0;
    Ifx_SCU_LCLCON LCLCON1;
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[8];
    Ifx_SCU_EVRTRIM EVRTRIM;
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    Ifx_SCU_EVRSDCTRL4 EVRSDCTRL4;
    Ifx_SCU_EVRSDCOEFF1 EVRSDCOEFF1;
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    Ifx_SCU_EVRSDCOEFF3 EVRSDCOEFF3;
    Ifx_SCU_EVRSDCOEFF4 EVRSDCOEFF4;
    Ifx_SCU_EVRSDCOEFF5 EVRSDCOEFF5;
    Ifx_SCU_EVRSDCOEFF6 EVRSDCOEFF6;
    unsigned char reserved_1D8[8];
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[436];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_reg.h" 2
# 49 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h" 2

# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.asm.h" 1
# 45 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.asm.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password);






static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password)
{

    uint32 temp = password;
    uint16 res;
    __asm("xor.t  %0,%1,0,%1,2   \n           xor.t  %0,%0,0,%1,12  \n           xor.t  %0,%0,0,%1,13  \n           xor.t  %0,%0,0,%1,14  \n           sh     %1,-1 \n           ins.t  %0,%1,14,%0,0   \n"




                                      : "=&d" (res) : "d" (temp));
    return res;

}
# 51 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h" 2
# 69 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 96 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 109 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, const IfxScuWdt_Config *config);
# 122 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, const IfxScuWdt_Config *config);
# 145 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 158 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 170 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 181 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 197 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 209 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 219 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 229 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 249 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);





static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getCpuWatchdogEndInitInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 270 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 284 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 295 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 305 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 316 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 326 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 336 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 346 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 356 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 365 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);




extern boolean IfxScuWdt_getCpuWatchdogEndInit(void);
# 379 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 389 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 399 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);
# 411 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
extern boolean IfxScuWdt_enableWatchdogWithDebugger(void);





static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = (1 << (0u)) |
                           (0 << (1u)) |
                           (password << (2u)) |
                           (watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = (0 << (0u)) |
                       (1 << (1u)) |
                       (password << (2u)) |
                       (watchdog->CON0.B.REL << (16u));


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).U = (1 << (0u)) |
                          (0 << (1u)) |
                          (password << (2u)) |
                          ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).U = (0 << (0u)) |
                      (1 << (1u)) |
                      (password << (2u)) |
                      ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.REL << (16u));


    while ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getCpuWatchdogEndInitInline(Ifx_SCU_WDTCPU *watchdog)
{
    return (boolean)watchdog->CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)(*(Ifx_SCU*)0xF0036000u).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU*)0xF0036000u).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = (1 << (0u)) |
                           (0 << (1u)) |
                           (password << (2u)) |
                           (watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = (1 << (0u)) |
                       (1 << (1u)) |
                       (password << (2u)) |
                       (watchdog->CON0.B.REL << (16u));


    while (watchdog->CON0.B.ENDINIT == 0)
    {}


}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).U = (1 << (0u)) |
                          (0 << (1u)) |
                          (password << (2u)) |
                          ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).U = (1 << (0u)) |
                      (1 << (1u)) |
                      (password << (2u)) |
                      ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.REL << (16u));


    while ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00360F0u).B.ENDINIT == 0)
    {}
}
# 45 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHssl_bf.h" 1
# 46 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxHsct_bf.h" 1
# 47 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h" 1
# 95 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxSrc_cfg.h" 1
# 49 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_cpu1 = 1,
    IfxSrc_Tos_cpu2 = 2,
    IfxSrc_Tos_dma = 3
} IfxSrc_Tos;
# 96 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN:8;
    unsigned int reserved_8:2;
    unsigned int SRE:1;
    unsigned int TOS:2;
    unsigned int reserved_13:3;
    unsigned int ECC:6;
    unsigned int reserved_22:2;
    unsigned int SRR:1;
    unsigned int CLRR:1;
    unsigned int SETR:1;
    unsigned int IOV:1;
    unsigned int IOVCLR:1;
    unsigned int SWS:1;
    unsigned int SWSCLR:1;
    unsigned int reserved_31:1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 86 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_AGBT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_AGBT;


typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CIF
{
    Ifx_SRC_SRCR MI;
    Ifx_SRC_SRCR MIEP;
    Ifx_SRC_SRCR ISP;
    Ifx_SRC_SRCR MJPEG;
} Ifx_SRC_CIF;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DAM
{
    Ifx_SRC_SRCR SR[6];
} Ifx_SRC_DAM;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[64];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_DSADC
{
    Ifx_SRC_SRCR SRM;
    Ifx_SRC_SRCR SRA;
} Ifx_SRC_DSADC;


typedef volatile struct _Ifx_SRC_EMEM
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_EMEM;


typedef volatile struct _Ifx_SRC_ERAY
{
    Ifx_SRC_SRCR INT[2];
    Ifx_SRC_SRCR TINT[2];
    Ifx_SRC_SRCR NDAT[2];
    Ifx_SRC_SRCR MBSC[2];
    Ifx_SRC_SRCR OBUSY;
    Ifx_SRC_SRCR IBUSY;
    unsigned char reserved_28[40];
} Ifx_SRC_ERAY;


typedef volatile struct _Ifx_SRC_ETH
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_ETH;


typedef volatile struct _Ifx_SRC_FCE
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_FCE;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[16];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    Ifx_SRC_SRCR ARUIRQ[3];
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR BRCIRQ;
    Ifx_SRC_SRCR CMPIRQ;
    Ifx_SRC_SRCR SPEIRQ[2];
    unsigned char reserved_24[8];
    Ifx_SRC_SRCR PSM[1][8];
    unsigned char reserved_4C[88];
    Ifx_SRC_SRCR DPLL[27];
    unsigned char reserved_110[96];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[4][8];
    unsigned char reserved_200[384];
    Ifx_SRC_SRCR MCS[4][8];
    unsigned char reserved_400[384];
    Ifx_SRC_SRCR TOM[3][8];
    unsigned char reserved_5E0[416];
    Ifx_SRC_SRCR ATOM[5][4];
    unsigned char reserved_7D0[304];
    Ifx_SRC_SRCR MCSW0[4];
    unsigned char reserved_910[48];
    Ifx_SRC_SRCR MCSW1[4];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_HSCT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_HSCT;


typedef volatile struct _Ifx_SRC_HSM
{
    Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM;


typedef volatile struct _Ifx_SRC_HSSL
{
    Ifx_SRC_SRCR COK;
    Ifx_SRC_SRCR RDI;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR TRG;
} Ifx_SRC_HSSL;


typedef volatile struct _Ifx_SRC_I2C
{
    Ifx_SRC_SRCR BREQ;
    Ifx_SRC_SRCR LBREQ;
    Ifx_SRC_SRCR SREQ;
    Ifx_SRC_SRCR LSREQ;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR P;
    unsigned char reserved_18[56];
} Ifx_SRC_I2C;


typedef volatile struct _Ifx_SRC_LMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_LMU;


typedef volatile struct _Ifx_SRC_MSC
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    Ifx_SRC_SRCR SR4;
} Ifx_SRC_MSC;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_PSI5
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5;


typedef volatile struct _Ifx_SRC_PSI5S
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5S;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[10];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 382 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GAGBT
{
    Ifx_SRC_AGBT AGBT[1];
} Ifx_SRC_GAGBT;


typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[4];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCIF
{
    Ifx_SRC_CIF CIF[1];
} Ifx_SRC_GCIF;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[3];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDAM
{
    Ifx_SRC_DAM DAM[1];
} Ifx_SRC_GDAM;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GDSADC
{
    Ifx_SRC_DSADC DSADC[6];
} Ifx_SRC_GDSADC;


typedef volatile struct _Ifx_SRC_GEMEM
{
    Ifx_SRC_EMEM EMEM[1];
} Ifx_SRC_GEMEM;


typedef volatile struct _Ifx_SRC_GERAY
{
    Ifx_SRC_ERAY ERAY[1];
} Ifx_SRC_GERAY;


typedef volatile struct _Ifx_SRC_GETH
{
    Ifx_SRC_ETH ETH[1];
} Ifx_SRC_GETH;


typedef volatile struct _Ifx_SRC_GFCE
{
    Ifx_SRC_FCE FCE[1];
} Ifx_SRC_GFCE;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[3];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GHSCT
{
    Ifx_SRC_HSCT HSCT[1];
} Ifx_SRC_GHSCT;


typedef volatile struct _Ifx_SRC_GHSM
{
    Ifx_SRC_HSM HSM[1];
} Ifx_SRC_GHSM;


typedef volatile struct _Ifx_SRC_GHSSL
{
    Ifx_SRC_HSSL HSSL[4];
    Ifx_SRC_SRCR EXI;
} Ifx_SRC_GHSSL;


typedef volatile struct _Ifx_SRC_GI2C
{
    Ifx_SRC_I2C I2C[1];
} Ifx_SRC_GI2C;


typedef volatile struct _Ifx_SRC_GLMU
{
    Ifx_SRC_LMU LMU[1];
} Ifx_SRC_GLMU;


typedef volatile struct _Ifx_SRC_GMSC
{
    Ifx_SRC_MSC MSC[2];
} Ifx_SRC_GMSC;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GPSI5
{
    Ifx_SRC_PSI5 PSI5[1];
} Ifx_SRC_GPSI5;


typedef volatile struct _Ifx_SRC_GPSI5S
{
    Ifx_SRC_PSI5S PSI5S[1];
} Ifx_SRC_GPSI5S;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[4];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[3];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[8];
    unsigned char reserved_80[160];
    Ifx_SRC_VADCCG CG[2];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 599 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    unsigned char reserved_C[20];
    Ifx_SRC_GEMEM EMEM;
    Ifx_SRC_GAGBT AGBT;
    unsigned char reserved_28[24];
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_B0[224];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_1F0[160];
    Ifx_SRC_GHSCT HSCT;
    unsigned char reserved_294[12];
    Ifx_SRC_GHSSL HSSL;
    unsigned char reserved_2E4[28];
    Ifx_SRC_GI2C I2C;
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_378[104];
    Ifx_SRC_GMSC MSC;
    unsigned char reserved_408[24];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    unsigned char reserved_4A8[8];
    Ifx_SRC_GFCE FCE;
    unsigned char reserved_4B4[60];
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_600[752];
    Ifx_SRC_GETH ETH;
    unsigned char reserved_8F4[12];
    Ifx_SRC_GCAN CAN;
    unsigned char reserved_940[64];
    Ifx_SRC_GVADC VADC;
    unsigned char reserved_AC0[144];
    Ifx_SRC_GDSADC DSADC;
    unsigned char reserved_B80[96];
    Ifx_SRC_GERAY ERAY;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[136];
    Ifx_SRC_GHSM HSM;
    unsigned char reserved_CC8[8];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[20];
    Ifx_SRC_GPSI5 PSI5;
    unsigned char reserved_D50[32];
    Ifx_SRC_GDAM DAM;
    unsigned char reserved_D88[24];
    Ifx_SRC_GCIF CIF;
    unsigned char reserved_DB0[48];
    Ifx_SRC_GLMU LMU;
    unsigned char reserved_DE4[12];
    Ifx_SRC_GPSI5S PSI5S;
    unsigned char reserved_E10[496];
    Ifx_SRC_GGPSR GPSR;
    unsigned char reserved_1060[1440];
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1F50[176];
} Ifx_SRC;
# 37 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_reg.h" 2
# 98 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h" 2
# 112 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 121 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 130 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 139 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 148 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 166 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 175 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 184 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 216 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 48 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h" 2
# 57 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
typedef enum
{
    IfxHssl_ChannelId_0,
    IfxHssl_ChannelId_1,
    IfxHssl_ChannelId_2,
    IfxHssl_ChannelId_3
} IfxHssl_ChannelId;




typedef enum
{
    IfxHssl_ClockFrequencyRate_20Mhz = 0,
    IfxHssl_ClockFrequencyRate_10Mhz = 1
} IfxHssl_ClockFrequencyRate;




typedef enum
{
    IfxHssl_Command_noAction = 0,
    IfxHssl_Command_readFrame = 1,
    IfxHssl_Command_writeFrame = 2,
    IfxHssl_Command_triggerFrame = 3
} IfxHssl_Command;



typedef enum
{
    IfxHssl_ControlCommand_ping = 0,
    IfxHssl_ControlCommand_highSpeedClockStart = 2,
    IfxHssl_ControlCommand_highSpeedClockStop = 4,
    IfxHssl_ControlCommand_lowSpeedTransmission = 8,
    IfxHssl_ControlCommand_highSpeedTransmission = 16,
    IfxHssl_ControlCommand_lowSpeedReception = 32,
    IfxHssl_ControlCommand_mediumSpeedReception = 64,
    IfxHssl_ControlCommand_highSpeedReception = 128,
    IfxHssl_ControlCommand_enableReception = 49,
    IfxHssl_ControlCommand_disableReception = 50,
    IfxHssl_ControlCommand_turnOnClockTestMode = 52,
    IfxHssl_ControlCommand_turnOffClockTestMode = 56,
    IfxHssl_ControlCommand_turnOnPayloadLoopback = 255
} IfxHssl_ControlCommand;




typedef enum
{
    IfxHssl_DataLength_8bit = 0,
    IfxHssl_DataLength_16bit = 1,
    IfxHssl_DataLength_32bit = 2
} IfxHssl_DataLength;




typedef enum
{
    IfxHssl_Hsct_InterruptSource_headerError = (1u),
    IfxHssl_Hsct_InterruptSource_payloadError = (2u),
    IfxHssl_Hsct_InterruptSource_commandError = (3u),
    IfxHssl_Hsct_InterruptSource_interfaceControlFrameSend = (4u),
    IfxHssl_Hsct_InterruptSource_speedModeSwitchError = (5u),
    IfxHssl_Hsct_InterruptSource_unsolicitedMessageSendFinished = (6u),
    IfxHssl_Hsct_InterruptSource_pllLockLosterror = (7u),
    IfxHssl_Hsct_InterruptSource_UnsolicitedMessageReceived = (8u),
    IfxHssl_Hsct_InterruptSource_pingAnswerReceived = (9u),
    IfxHssl_Hsct_InterruptSource_txTransferError = (10u),

    IfxHssl_Hsct_InterruptSource_synchronizationFifoOverflow = (11u),

    IfxHssl_Hsct_InterruptSource_synchronizationFifoUnderflow = (12u)

} IfxHssl_Hsct_InterruptSource;




typedef enum
{
    IfxHssl_Hsct_SleepMode_enable = 0,
    IfxHssl_Hsct_SleepMode_disable = 1
} IfxHssl_Hsct_SleepMode;




typedef enum
{
    IfxHssl_Hssl_SleepMode_enable = 0,
    IfxHssl_Hssl_SleepMode_disable = 1
} IfxHssl_Hssl_SleepMode;




typedef enum
{
    IfxHssl_InterfaceMode_master = 0,
    IfxHssl_InterfaceMode_slave = 1
} IfxHssl_InterfaceMode;




typedef enum
{
    IfxHssl_MasterModeRxSpeed_lowSpeed = 0,
    IfxHssl_MasterModeRxSpeed_mediumSpeed = 1,
    IfxHssl_MasterModeRxSpeed_highSpeed = 2
} IfxHssl_MasterModeRxSpeed;




typedef enum
{
    IfxHssl_MasterModeTxSpeed_lowSpeed = 0,
    IfxHssl_MasterModeTxSpeed_highSpeed = 2
} IfxHssl_MasterModeTxSpeed;




typedef enum
{
    IfxHssl_PllReferenceClock_hsctSystemClockInput = 0,
    IfxHssl_PllReferenceClock_oscillatorInput = 1
} IfxHssl_PllReferenceClock;




typedef enum
{
    IfxHssl_StreamingMode_continuous = 0,
    IfxHssl_StreamingMode_single = 1
} IfxHssl_StreamingMode;



typedef enum
{
    IfxHssl_SuspendMode_none = 0,
    IfxHssl_SuspendMode_hard = 1,
    IfxHssl_SuspendMode_soft = 2
} IfxHssl_SuspendMode;






typedef enum
{
    IfxHssl_Hssl_ERRInterruptSource_notAcknowledgeError = (0u),
    IfxHssl_Hssl_ERRInterruptSource_transactionTagError = (4u),
    IfxHssl_Hssl_ERRInterruptSource_timeoutError = (8u),
    IfxHssl_Hssl_ERRInterruptSource_unexpectedError = (12u)
} IfxHssl_Hssl_ERRInterruptSource;




typedef enum
{
    IfxHssl_Hssl_EXIInterruptSource_memoryAccessViolation = (21u),
    IfxHssl_Hssl_EXIInterruptSource_busAccessError = (22u),
    IfxHssl_Hssl_EXIInterruptSource_channelNumberCodeError = (23u),

    IfxHssl_Hssl_EXIInterruptSource_dataLengthError = (24u),
    IfxHssl_Hssl_EXIInterruptSource_crcError = (25u)
} IfxHssl_Hssl_EXIInterruptSource;
# 243 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
typedef struct
{
    Ifx_HSCT *hsct;
    boolean loopBack;
} IfxHssl_Hsct;



typedef struct
{
    Ifx_HSCT *hsct;
    IfxHssl_InterfaceMode interfaceMode;
    boolean highSpeedMode;
    boolean loopBack;
} IfxHssl_Hsct_Config;
# 273 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
static inline __attribute__ ((always_inline)) void IfxHssl_clearHsctInterruptFlag(Ifx_HSCT *hsct, IfxHssl_Hsct_InterruptSource source);






static inline __attribute__ ((always_inline)) void IfxHssl_disableHsctInterruptFlag(Ifx_HSCT *hsct, IfxHssl_Hsct_InterruptSource source);







static inline __attribute__ ((always_inline)) void IfxHssl_enableHsctInterrupt(Ifx_HSCT *hsct, IfxSrc_Tos typeOfService, uint16 priority);






static inline __attribute__ ((always_inline)) void IfxHssl_enableHsctInterruptFlag(Ifx_HSCT *hsct, IfxHssl_Hsct_InterruptSource source);






static inline __attribute__ ((always_inline)) boolean IfxHssl_getHsctInterruptFlagStatus(Ifx_HSCT *hsct, IfxHssl_Hsct_InterruptSource source);






static inline __attribute__ ((always_inline)) void IfxHssl_setHsctSleepMode(Ifx_HSCT *hsct, IfxHssl_Hsct_SleepMode mode);





static inline __attribute__ ((always_inline)) uint32 IfxHssl_getHsctUnsolicitedStatusMessage(Ifx_HSCT *hsct);






static inline __attribute__ ((always_inline)) void IfxHssl_sendHsctUnsolicitedStatusMessage(Ifx_HSCT *hsct, uint32 message);
# 332 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
extern void IfxHssl_disableHsctModule(Ifx_HSCT *hsct);





extern void IfxHssl_enableHsctModule(Ifx_HSCT *hsct);





extern Ifx_HSCT *IfxHssl_getHsctAddress(IfxHssl_hsctIndex hsct);




extern IfxHssl_hsctIndex IfxHssl_getHsctIndex(Ifx_HSCT *hsct);





extern volatile Ifx_SRC_SRCR *IfxHssl_getHsctSrcPointer(Ifx_HSCT *hsct);





extern void IfxHssl_resetHsctKernel(Ifx_HSCT *hsct);
# 378 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
static inline __attribute__ ((always_inline)) void IfxHssl_clearHsslChannelErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_ERRInterruptSource source, IfxHssl_ChannelId channelId);






static inline __attribute__ ((always_inline)) void IfxHssl_clearHsslGlobalErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_EXIInterruptSource source);





static inline __attribute__ ((always_inline)) void IfxHssl_clearInitialiseModeFlag(Ifx_HSSL *hssl);







static inline __attribute__ ((always_inline)) void IfxHssl_disableHsslChannelErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_ERRInterruptSource source, IfxHssl_ChannelId channelId);






static inline __attribute__ ((always_inline)) void IfxHssl_disableHsslGlobalErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_EXIInterruptSource source);





static inline __attribute__ ((always_inline)) void IfxHssl_enableAllErrorFlags(Ifx_HSSL *hssl);
# 421 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslCOKInterrupt(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, IfxSrc_Tos typeOfService, uint16 priority);







static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslChannelErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_ERRInterruptSource source, IfxHssl_ChannelId channelId);
# 438 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslERRInterrupt(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, IfxSrc_Tos typeOfService, uint16 priority);







static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslEXIInterrupt(Ifx_HSSL *hssl, IfxSrc_Tos typeOfService, uint16 priority);






static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslGlobalErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_EXIInterruptSource source);
# 462 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslRDIInterrupt(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, IfxSrc_Tos typeOfService, uint16 priority);
# 471 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslTRGInterrupt(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, IfxSrc_Tos typeOfService, uint16 priority);





static inline __attribute__ ((always_inline)) uint32 IfxHssl_getAllMflagsStatus(Ifx_HSSL *hssl);





static inline __attribute__ ((always_inline)) uint16 IfxHssl_getCurrentCount(Ifx_HSSL *hssl);







static inline __attribute__ ((always_inline)) boolean IfxHssl_getHsslChannelErrorInterruptFlagStatus(Ifx_HSSL *hssl, IfxHssl_Hssl_ERRInterruptSource source, IfxHssl_ChannelId channelId);






static inline __attribute__ ((always_inline)) boolean IfxHssl_getHsslGloabalErrorInterruptFlagStatus(Ifx_HSSL *hssl, IfxHssl_Hssl_EXIInterruptSource source);





static inline __attribute__ ((always_inline)) boolean IfxHssl_getInitialiseModeFlagStatus(Ifx_HSSL *hssl);





static inline __attribute__ ((always_inline)) uint16 IfxHssl_getReloadCount(Ifx_HSSL *hssl);







static inline __attribute__ ((always_inline)) boolean IfxHssl_isModuleSuspended(Ifx_HSSL *hssl);






static inline __attribute__ ((always_inline)) void IfxHssl_setHsslSleepMode(Ifx_HSSL *hssl, IfxHssl_Hssl_SleepMode mode);





static inline __attribute__ ((always_inline)) void IfxHssl_setInitialiseModeFlag(Ifx_HSSL *hssl);






static inline __attribute__ ((always_inline)) void IfxHssl_setReloadCount(Ifx_HSSL *hssl, uint16 reloadValue);







static inline __attribute__ ((always_inline)) void IfxHssl_setSuspendMode(Ifx_HSSL *hssl, IfxHssl_SuspendMode mode);







static inline __attribute__ ((always_inline)) void IfxHssl_setTimeoutReloadValue(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, uint8 timeoutValue);
# 564 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Std/IfxHssl.h"
extern void IfxHssl_disableHsslModule(Ifx_HSSL *hssl);





extern void IfxHssl_enableHsslModule(Ifx_HSSL *hssl);





extern Ifx_HSSL *IfxHssl_getHsslAddress(IfxHssl_hsslIndex hssl);






extern volatile Ifx_SRC_SRCR *IfxHssl_getHsslCOKSrcPointer(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId);






extern volatile Ifx_SRC_SRCR *IfxHssl_getHsslERRSrcPointer(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId);





extern volatile Ifx_SRC_SRCR *IfxHssl_getHsslEXISrcPointer(Ifx_HSSL *hssl);




extern IfxHssl_hsslIndex IfxHssl_getHsslIndex(Ifx_HSSL *hssl);






extern volatile Ifx_SRC_SRCR *IfxHssl_getHsslRDISrcPointer(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId);






extern volatile Ifx_SRC_SRCR *IfxHssl_getHsslTRGSrcPointer(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId);





extern void IfxHssl_resetHsslKernel(Ifx_HSSL *hssl);







static inline __attribute__ ((always_inline)) void IfxHssl_clearHsctInterruptFlag(Ifx_HSCT *hsct, IfxHssl_Hsct_InterruptSource source)
{
    uint32 value = 1 << source;
    hsct->IRQCLR.U = value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_clearHsslChannelErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_ERRInterruptSource source, IfxHssl_ChannelId channelId)
{
    uint32 value = 1 << ((uint32)(channelId + source));
    hssl->MFLAGSCL.U = value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_clearHsslGlobalErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_EXIInterruptSource source)
{
    uint32 value = 1 << source;
    hssl->MFLAGSCL.U = value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_clearInitialiseModeFlag(Ifx_HSSL *hssl)
{
    hssl->MFLAGSCL.B.INIC = 0x1U;
}


static inline __attribute__ ((always_inline)) void IfxHssl_disableHsctInterruptFlag(Ifx_HSCT *hsct, IfxHssl_Hsct_InterruptSource source)
{
    uint32 value = 1 << source;
    hsct->IRQEN.U &= ~value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_disableHsslChannelErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_ERRInterruptSource source, IfxHssl_ChannelId channelId)
{
    uint32 value = 1 << ((uint32)(channelId + source));
    hssl->MFLAGSEN.U &= ~value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_disableHsslGlobalErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_EXIInterruptSource source)
{
    uint32 value = 1 << source;
    hssl->MFLAGSEN.U &= ~value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableAllErrorFlags(Ifx_HSSL *hssl)
{
    hssl->MFLAGSEN.U = 0x23E0FFFFU;
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsctInterrupt(Ifx_HSCT *hsct, IfxSrc_Tos typeOfService, uint16 priority)
{
    volatile Ifx_SRC_SRCR *src;
    src = IfxHssl_getHsctSrcPointer(hsct);
    IfxSrc_init(src, typeOfService, priority);
    IfxSrc_enable(src);
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsctInterruptFlag(Ifx_HSCT *hsct, IfxHssl_Hsct_InterruptSource source)
{
    uint32 value = 1 << source;
    hsct->IRQEN.U |= value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslCOKInterrupt(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, IfxSrc_Tos typeOfService, uint16 priority)
{
    volatile Ifx_SRC_SRCR *src;
    src = IfxHssl_getHsslCOKSrcPointer(hssl, channelId);
    IfxSrc_init(src, typeOfService, priority);
    IfxSrc_enable(src);
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslChannelErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_ERRInterruptSource source, IfxHssl_ChannelId channelId)
{
    uint32 value = 1 << ((uint32)(channelId + source));
    hssl->MFLAGSEN.U |= value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslERRInterrupt(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, IfxSrc_Tos typeOfService, uint16 priority)
{
    volatile Ifx_SRC_SRCR *src;
    src = IfxHssl_getHsslERRSrcPointer(hssl, channelId);
    IfxSrc_init(src, typeOfService, priority);
    IfxSrc_enable(src);
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslEXIInterrupt(Ifx_HSSL *hssl, IfxSrc_Tos typeOfService, uint16 priority)
{
    volatile Ifx_SRC_SRCR *src;
    src = IfxHssl_getHsslEXISrcPointer(hssl);
    IfxSrc_init(src, typeOfService, priority);
    IfxSrc_enable(src);
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslGlobalErrorInterruptFlag(Ifx_HSSL *hssl, IfxHssl_Hssl_EXIInterruptSource source)
{
    uint32 value = 1 << source;
    hssl->MFLAGSEN.U |= value;
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslRDIInterrupt(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, IfxSrc_Tos typeOfService, uint16 priority)
{
    volatile Ifx_SRC_SRCR *src;
    src = IfxHssl_getHsslRDISrcPointer(hssl, channelId);
    IfxSrc_init(src, typeOfService, priority);
    IfxSrc_enable(src);
}


static inline __attribute__ ((always_inline)) void IfxHssl_enableHsslTRGInterrupt(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, IfxSrc_Tos typeOfService, uint16 priority)
{
    volatile Ifx_SRC_SRCR *src;
    src = IfxHssl_getHsslTRGSrcPointer(hssl, channelId);
    IfxSrc_init(src, typeOfService, priority);
    IfxSrc_enable(src);
}


static inline __attribute__ ((always_inline)) uint32 IfxHssl_getAllMflagsStatus(Ifx_HSSL *hssl)
{
    return hssl->MFLAGS.U;
}


static inline __attribute__ ((always_inline)) uint16 IfxHssl_getCurrentCount(Ifx_HSSL *hssl)
{
    return hssl->IS.FC.B.CURCOUNT;
}


static inline __attribute__ ((always_inline)) boolean IfxHssl_getHsctInterruptFlagStatus(Ifx_HSCT *hsct, IfxHssl_Hsct_InterruptSource source)
{
    return (hsct->IRQ.U >> source) & 0x1;
}


static inline __attribute__ ((always_inline)) boolean IfxHssl_getHsslChannelErrorInterruptFlagStatus(Ifx_HSSL *hssl, IfxHssl_Hssl_ERRInterruptSource source, IfxHssl_ChannelId channelId)
{
    return (hssl->MFLAGS.U >> ((uint32)(channelId + source))) & 0x1;
}


static inline __attribute__ ((always_inline)) boolean IfxHssl_getHsslGloabalErrorInterruptFlagStatus(Ifx_HSSL *hssl, IfxHssl_Hssl_EXIInterruptSource source)
{
    return (hssl->MFLAGS.U >> source) & 0x1;
}


static inline __attribute__ ((always_inline)) boolean IfxHssl_getInitialiseModeFlagStatus(Ifx_HSSL *hssl)
{
    return hssl->MFLAGS.B.INI != 0;
}


static inline __attribute__ ((always_inline)) uint16 IfxHssl_getReloadCount(Ifx_HSSL *hssl)
{
    return hssl->IS.FC.B.RELCOUNT;
}


static inline __attribute__ ((always_inline)) boolean IfxHssl_isModuleSuspended(Ifx_HSSL *hssl)
{
    Ifx_HSSL_OCS ocs;


    ocs.U = hssl->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxHssl_setHsctSleepMode(Ifx_HSCT *hsct, IfxHssl_Hsct_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    hsct->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxHssl_setHsslSleepMode(Ifx_HSSL *hssl, IfxHssl_Hssl_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    hssl->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxHssl_setInitialiseModeFlag(Ifx_HSSL *hssl)
{
    hssl->MFLAGSSET.B.INIS = 0x1U;
}


static inline __attribute__ ((always_inline)) void IfxHssl_setReloadCount(Ifx_HSSL *hssl, uint16 reloadValue)
{
    hssl->IS.FC.B.RELCOUNT = reloadValue;
}


static inline __attribute__ ((always_inline)) void IfxHssl_setSuspendMode(Ifx_HSSL *hssl, IfxHssl_SuspendMode mode)
{
    Ifx_HSSL_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;
    hssl->OCS.U = ocs.U;
}


static inline __attribute__ ((always_inline)) void IfxHssl_setTimeoutReloadValue(Ifx_HSSL *hssl, IfxHssl_ChannelId channelId, uint8 timeoutValue)
{
    hssl->I[channelId].ICON.B.TOREL = timeoutValue;
}


static inline __attribute__ ((always_inline)) uint32 IfxHssl_getHsctUnsolicitedStatusMessage(Ifx_HSCT *hsct)
{
    return hsct->USMR.U;
}


static inline __attribute__ ((always_inline)) void IfxHssl_sendHsctUnsolicitedStatusMessage(Ifx_HSCT *hsct, uint32 message)
{
    hsct->USMS.U = message;
}
# 374 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h" 1
# 43 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxPort_cfg.h" 1
# 41 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxPort_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_reg.h" 1
# 84 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int EN16:1;
    unsigned int EN17:1;
    unsigned int EN18:1;
    unsigned int EN19:1;
    unsigned int EN20:1;
    unsigned int EN21:1;
    unsigned int EN22:1;
    unsigned int EN23:1;
    unsigned int EN24:1;
    unsigned int EN25:1;
    unsigned int EN26:1;
    unsigned int EN27:1;
    unsigned int EN28:1;
    unsigned int EN29:1;
    unsigned int EN30:1;
    unsigned int EN31:1;
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
{
    unsigned int EN0:1;
    unsigned int EN1:1;
    unsigned int EN2:1;
    unsigned int EN3:1;
    unsigned int EN4:1;
    unsigned int EN5:1;
    unsigned int EN6:1;
    unsigned int EN7:1;
    unsigned int EN8:1;
    unsigned int EN9:1;
    unsigned int EN10:1;
    unsigned int EN11:1;
    unsigned int EN12:1;
    unsigned int EN13:1;
    unsigned int EN14:1;
    unsigned int EN15:1;
    unsigned int reserved_16:16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0:1;
    unsigned int P1:1;
    unsigned int P2:1;
    unsigned int P3:1;
    unsigned int P4:1;
    unsigned int P5:1;
    unsigned int P6:1;
    unsigned int P7:1;
    unsigned int P8:1;
    unsigned int P9:1;
    unsigned int P10:1;
    unsigned int P11:1;
    unsigned int P12:1;
    unsigned int P13:1;
    unsigned int P14:1;
    unsigned int P15:1;
    unsigned int reserved_16:16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0:3;
    unsigned int PC0:5;
    unsigned int reserved_8:3;
    unsigned int PC1:5;
    unsigned int reserved_16:3;
    unsigned int PC2:5;
    unsigned int reserved_24:3;
    unsigned int PC3:5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0:3;
    unsigned int PC12:5;
    unsigned int reserved_8:3;
    unsigned int PC13:5;
    unsigned int reserved_16:3;
    unsigned int PC14:5;
    unsigned int reserved_24:3;
    unsigned int PC15:5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0:3;
    unsigned int PC4:5;
    unsigned int reserved_8:3;
    unsigned int PC5:5;
    unsigned int reserved_16:3;
    unsigned int PC6:5;
    unsigned int reserved_24:3;
    unsigned int PC7:5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0:3;
    unsigned int PC8:5;
    unsigned int reserved_8:3;
    unsigned int PC9:5;
    unsigned int reserved_16:3;
    unsigned int PC10:5;
    unsigned int reserved_24:3;
    unsigned int PC11:5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_LPCR0_Bits
{
    unsigned int reserved_0:1;
    unsigned int PS1:1;
    unsigned int reserved_2:30;
} Ifx_P_LPCR0_Bits;


typedef struct _Ifx_P_LPCR1_Bits
{
    unsigned int reserved_0:1;
    unsigned int PS1:1;
    unsigned int reserved_2:30;
} Ifx_P_LPCR1_Bits;


typedef struct _Ifx_P_LPCR1_P21_Bits
{
    unsigned int RDIS_CTRL:1;
    unsigned int RX_DIS:1;
    unsigned int TERM:1;
    unsigned int LRXTERM:5;
    unsigned int reserved_8:24;
} Ifx_P_LPCR1_P21_Bits;


typedef struct _Ifx_P_LPCR2_Bits
{
    unsigned int reserved_0:8;
    unsigned int LVDSR:1;
    unsigned int LVDSRL:1;
    unsigned int reserved_10:2;
    unsigned int TDIS_CTRL:1;
    unsigned int TX_DIS:1;
    unsigned int TX_PD:1;
    unsigned int TX_PWDPD:1;
    unsigned int reserved_16:16;
} Ifx_P_LPCR2_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0:16;
    unsigned int PCL0:1;
    unsigned int PCL1:1;
    unsigned int PCL2:1;
    unsigned int PCL3:1;
    unsigned int reserved_20:12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0:28;
    unsigned int PCL12:1;
    unsigned int PCL13:1;
    unsigned int PCL14:1;
    unsigned int PCL15:1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0:20;
    unsigned int PCL4:1;
    unsigned int PCL5:1;
    unsigned int PCL6:1;
    unsigned int PCL7:1;
    unsigned int reserved_24:8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0:24;
    unsigned int PCL8:1;
    unsigned int PCL9:1;
    unsigned int PCL10:1;
    unsigned int PCL11:1;
    unsigned int reserved_28:4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0:16;
    unsigned int PCL0:1;
    unsigned int PCL1:1;
    unsigned int PCL2:1;
    unsigned int PCL3:1;
    unsigned int PCL4:1;
    unsigned int PCL5:1;
    unsigned int PCL6:1;
    unsigned int PCL7:1;
    unsigned int PCL8:1;
    unsigned int PCL9:1;
    unsigned int PCL10:1;
    unsigned int PCL11:1;
    unsigned int PCL12:1;
    unsigned int PCL13:1;
    unsigned int PCL14:1;
    unsigned int PCL15:1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0:1;
    unsigned int PS1:1;
    unsigned int PS2:1;
    unsigned int PS3:1;
    unsigned int PS4:1;
    unsigned int PS5:1;
    unsigned int PS6:1;
    unsigned int PS7:1;
    unsigned int PS8:1;
    unsigned int PS9:1;
    unsigned int PS10:1;
    unsigned int PS11:1;
    unsigned int PS12:1;
    unsigned int PS13:1;
    unsigned int PS14:1;
    unsigned int PS15:1;
    unsigned int PCL0:1;
    unsigned int PCL1:1;
    unsigned int PCL2:1;
    unsigned int PCL3:1;
    unsigned int PCL4:1;
    unsigned int PCL5:1;
    unsigned int PCL6:1;
    unsigned int PCL7:1;
    unsigned int PCL8:1;
    unsigned int PCL9:1;
    unsigned int PCL10:1;
    unsigned int PCL11:1;
    unsigned int PCL12:1;
    unsigned int PCL13:1;
    unsigned int PCL14:1;
    unsigned int PCL15:1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0:1;
    unsigned int PS1:1;
    unsigned int PS2:1;
    unsigned int PS3:1;
    unsigned int reserved_4:28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0:12;
    unsigned int PS12:1;
    unsigned int PS13:1;
    unsigned int PS14:1;
    unsigned int PS15:1;
    unsigned int reserved_16:16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0:4;
    unsigned int PS4:1;
    unsigned int PS5:1;
    unsigned int PS6:1;
    unsigned int PS7:1;
    unsigned int reserved_8:24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0:8;
    unsigned int PS8:1;
    unsigned int PS9:1;
    unsigned int PS10:1;
    unsigned int PS11:1;
    unsigned int reserved_12:20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0:1;
    unsigned int PS1:1;
    unsigned int PS2:1;
    unsigned int PS3:1;
    unsigned int PS4:1;
    unsigned int PS5:1;
    unsigned int PS6:1;
    unsigned int PS7:1;
    unsigned int PS8:1;
    unsigned int PS9:1;
    unsigned int PS10:1;
    unsigned int PS11:1;
    unsigned int PS12:1;
    unsigned int PS13:1;
    unsigned int PS14:1;
    unsigned int PS15:1;
    unsigned int reserved_16:16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0:1;
    unsigned int P1:1;
    unsigned int P2:1;
    unsigned int P3:1;
    unsigned int P4:1;
    unsigned int P5:1;
    unsigned int P6:1;
    unsigned int P7:1;
    unsigned int P8:1;
    unsigned int P9:1;
    unsigned int P10:1;
    unsigned int P11:1;
    unsigned int P12:1;
    unsigned int P13:1;
    unsigned int P14:1;
    unsigned int P15:1;
    unsigned int reserved_16:16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int SEL0:1;
    unsigned int SEL1:1;
    unsigned int SEL2:1;
    unsigned int SEL3:1;
    unsigned int SEL4:1;
    unsigned int SEL5:1;
    unsigned int SEL6:1;
    unsigned int reserved_7:3;
    unsigned int SEL10:1;
    unsigned int SEL11:1;
    unsigned int reserved_12:19;
    unsigned int LCK:1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0:1;
    unsigned int PDIS1:1;
    unsigned int PDIS2:1;
    unsigned int PDIS3:1;
    unsigned int PDIS4:1;
    unsigned int PDIS5:1;
    unsigned int PDIS6:1;
    unsigned int PDIS7:1;
    unsigned int PDIS8:1;
    unsigned int PDIS9:1;
    unsigned int PDIS10:1;
    unsigned int PDIS11:1;
    unsigned int PDIS12:1;
    unsigned int PDIS13:1;
    unsigned int PDIS14:1;
    unsigned int PDIS15:1;
    unsigned int reserved_16:16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0:3;
    unsigned int PL0:1;
    unsigned int PD1:3;
    unsigned int PL1:1;
    unsigned int PD2:3;
    unsigned int PL2:1;
    unsigned int PD3:3;
    unsigned int PL3:1;
    unsigned int PD4:3;
    unsigned int PL4:1;
    unsigned int PD5:3;
    unsigned int PL5:1;
    unsigned int PD6:3;
    unsigned int PL6:1;
    unsigned int PD7:3;
    unsigned int PL7:1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8:3;
    unsigned int PL8:1;
    unsigned int PD9:3;
    unsigned int PL9:1;
    unsigned int PD10:3;
    unsigned int PL10:1;
    unsigned int PD11:3;
    unsigned int PL11:1;
    unsigned int PD12:3;
    unsigned int PL12:1;
    unsigned int PD13:3;
    unsigned int PL13:1;
    unsigned int PD14:3;
    unsigned int PL14:1;
    unsigned int PD15:3;
    unsigned int PL15:1;
} Ifx_P_PDR1_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_LPCR0_Bits B;
} Ifx_P_LPCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_LPCR1_Bits B;
    Ifx_P_LPCR1_P21_Bits B_P21;
} Ifx_P_LPCR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_LPCR2_Bits B;
} Ifx_P_LPCR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 740 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_68[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[8];
    Ifx_P_LPCR0 LPCR0;
    Ifx_P_LPCR1 LPCR1;
    Ifx_P_LPCR2 LPCR2;
    unsigned char reserved_A4[76];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 85 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_reg.h" 2
# 42 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxPort_cfg.h" 2
# 59 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxPort_cfg.h"
typedef enum
{
    IfxPort_Index_00 = 0,
    IfxPort_Index_01 = 1,
    IfxPort_Index_02 = 2,
    IfxPort_Index_10 = 10,
    IfxPort_Index_11 = 11,
    IfxPort_Index_12 = 12,
    IfxPort_Index_13 = 13,
    IfxPort_Index_14 = 14,
    IfxPort_Index_15 = 15,
    IfxPort_Index_20 = 20,
    IfxPort_Index_21 = 21,
    IfxPort_Index_22 = 22,
    IfxPort_Index_23 = 23,
    IfxPort_Index_32 = 32,
    IfxPort_Index_33 = 33,
    IfxPort_Index_34 = 34,
    IfxPort_Index_none = -1
} IfxPort_Index;







typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(16)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(16)];
# 44 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h" 2
# 55 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
typedef enum
{
    IfxPort_ControlledBy_port = 0,
    IfxPort_ControlledBy_hsct = 1
} IfxPort_ControlledBy;



typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_lvdsSpeed1 = 4,
    IfxPort_PadDriver_lvdsSpeed2 = 5,
    IfxPort_PadDriver_lvdsSpeed3 = 6,
    IfxPort_PadDriver_lvdsSpeed4 = 7,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;



typedef enum
{
    IfxPort_PadSupply_5v = 0,
    IfxPort_PadSupply_3v = 1
} IfxPort_PadSupply;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 170 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 208 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 223 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 238 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 252 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 267 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 283 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 298 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 321 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 339 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 355 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 370 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 394 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 413 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 423 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern Ifx_P *IfxPort_getAddress(IfxPort_Index port);





extern IfxPort_Index IfxPort_getIndex(Ifx_P *port);
# 445 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 462 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 478 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 487 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsHigh(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode, IfxPort_ControlledBy enablePortControlled);
# 496 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsMedium(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver lvdsPadDriver, IfxPort_PadSupply padSupply);
# 513 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 524 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 375 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h" 2
# 384 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
typedef enum
{
    IfxHssl_Hssl_FrameRequest_readFrame = 1,
    IfxHssl_Hssl_FrameRequest_writeFrame = 2,
    IfxHssl_Hssl_FrameRequest_triggerFrame = 3,
    IfxHssl_Hssl_FrameRequest_readId = 4,
    IfxHssl_Hssl_FrameRequest_noAction = 5
} IfxHssl_Hssl_FrameRequest;



typedef enum
{
    IfxHssl_Hssl_Status_ok = 0,
    IfxHssl_Hssl_Status_busy = 1,
    IfxHssl_Hssl_Status_error = 2
} IfxHssl_Hssl_Status;
# 412 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
typedef struct
{
    uint32 start;
    uint32 end;
} IfxHssl_Hssl_AccessWindow;





typedef struct
{
    uint8 notAcknowledgeError : 1;
    uint8 transactionTagError : 1;
    uint8 timeoutError : 1;
    uint8 unexpectedError : 1;
    uint8 memoryAccessViolation : 1;
    uint8 busAccessError : 1;
    uint8 channelNumberCodeError : 1;
    uint8 dataLengthError : 1;
    uint8 crcError : 1;
} IfxHssl_Hssl_errorFlags;





typedef struct
{
    Ifx_HSSL *hssl;
    IfxHssl_Hssl_errorFlags errorFlags;
    boolean loopBack;
} IfxHssl_Hssl;



typedef struct
{
    Ifx_HSSL *hssl;
    Ifx_HSCT *hsct;
    IfxHssl_ChannelId channelId;
    IfxHssl_Hssl_FrameRequest currentFrameRequest;
    IfxHssl_StreamingMode streamingMode;
    boolean loopBack;
    boolean streamingModeOn;
} IfxHssl_Hssl_Channel;



typedef struct
{
    Ifx_HSSL *hssl;
    Ifx_HSCT *hsct;
    IfxHssl_ChannelId channelId;
    IfxHssl_StreamingMode streamingMode;
    boolean loopBack;
} IfxHssl_Hssl_ChannelConfig;



typedef struct
{
    Ifx_HSSL *hssl;
    IfxHssl_Hssl_AccessWindow accessWindow0;
    IfxHssl_Hssl_AccessWindow accessWindow1;
    IfxHssl_Hssl_AccessWindow accessWindow2;
    IfxHssl_Hssl_AccessWindow accessWindow3;
    uint16 preDivider;
} IfxHssl_Hssl_Config;
# 499 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern void IfxHssl_Hssl_initHsctModule(IfxHssl_Hsct *hsct, const IfxHssl_Hsct_Config *config);
# 509 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern void IfxHssl_Hssl_initHsctModuleConfig(IfxHssl_Hsct_Config *config, Ifx_HSCT *hsct);
# 519 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern void IfxHssl_Hssl_initHsslModule(IfxHssl_Hssl *hssl, const IfxHssl_Hssl_Config *config);
# 529 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern void IfxHssl_Hssl_initHsslModuleConfig(IfxHssl_Hssl_Config *config, Ifx_HSSL *hssl);
# 548 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern void IfxHssl_Hssl_initChannel(IfxHssl_Hssl_Channel *channel, const IfxHssl_Hssl_ChannelConfig *channelConfig);
# 559 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern void IfxHssl_Hssl_initChannelConfig(IfxHssl_Hssl_ChannelConfig *channelConfig, IfxHssl_Hssl *hssl, IfxHssl_Hsct *hsct);
# 577 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
static inline __attribute__ ((always_inline)) uint32 IfxHssl_Hssl_getReadData(IfxHssl_Hssl_Channel *channel);
# 592 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern IfxHssl_Hssl_Status IfxHssl_Hssl_read(IfxHssl_Hssl_Channel *channel, uint32 address, IfxHssl_DataLength dataLength);
# 606 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern void IfxHssl_Hssl_sendControlCommand(IfxHssl_Hsct *hsct, uint8 command);
# 616 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern IfxHssl_Hssl_Status IfxHssl_Hssl_singleFrameRequest(IfxHssl_Hssl_Channel *channel, IfxHssl_Hssl_FrameRequest frameRequest, uint32 address, uint32 data, IfxHssl_DataLength dataLength);
# 625 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern IfxHssl_Hssl_Status IfxHssl_Hssl_waitAcknowledge(IfxHssl_Hssl_Channel *channel);
# 637 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern IfxHssl_Hssl_Status IfxHssl_Hssl_write(IfxHssl_Hssl_Channel *channel, uint32 address, uint32 data, IfxHssl_DataLength dataLength);
# 652 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern void IfxHssl_Hssl_checkErrors(IfxHssl_Hssl *hssl);





extern void IfxHssl_Hssl_clearErrorFlags(IfxHssl_Hssl *hssl);





extern void IfxHssl_Hssl_delay(IfxHssl_Hsct *hsct);
# 684 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern IfxHssl_Hssl_Status IfxHssl_Hssl_prepareStream(IfxHssl_Hssl_Channel *channel, uint32 slaveTargetAddress, Ifx_SizeT count);
# 697 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.h"
extern IfxHssl_Hssl_Status IfxHssl_Hssl_writeStream(IfxHssl_Hssl *hssl, uint32 *data, Ifx_SizeT count);







static inline __attribute__ ((always_inline)) uint32 IfxHssl_Hssl_getReadData(IfxHssl_Hssl_Channel *channel)
{
    Ifx_HSSL_I *hsslI = (Ifx_HSSL_I *)&channel->hssl->I[channel->channelId];
    return hsslI->IRD.U;
}
# 31 "0_Src/BaseSw/iLLD/TC27D/Tricore/Hssl/Hssl/IfxHssl_Hssl.c" 2





void IfxHssl_Hssl_checkErrors(IfxHssl_Hssl *hssl)
{
    Ifx_HSSL *hsslSFR = hssl->hssl;


    if (hsslSFR->MFLAGS.B.NACK != 0)
    {
        hssl->errorFlags.notAcknowledgeError = 1;
    }

    if (hsslSFR->MFLAGS.B.TTE != 0)
    {
        hssl->errorFlags.transactionTagError = 1;
    }

    if (hsslSFR->MFLAGS.B.TIMEOUT != 0)
    {
        hssl->errorFlags.timeoutError = 1;
    }

    if (hsslSFR->MFLAGS.B.UNEXPECTED != 0)
    {
        hssl->errorFlags.unexpectedError = 1;
    }

    if (hsslSFR->MFLAGS.B.MAV != 0)
    {
        hssl->errorFlags.memoryAccessViolation = 1;
    }

    if (hsslSFR->MFLAGS.B.SRIE != 0)
    {
        hssl->errorFlags.busAccessError = 1;
    }

    if (hsslSFR->MFLAGS.B.PIE1 != 0)
    {
        hssl->errorFlags.channelNumberCodeError = 1;
    }

    if (hsslSFR->MFLAGS.B.PIE2 != 0)
    {
        hssl->errorFlags.dataLengthError = 1;
    }

    if (hsslSFR->MFLAGS.B.CRCE != 0)
    {
        hssl->errorFlags.crcError = 1;
    }
}


void IfxHssl_Hssl_clearErrorFlags(IfxHssl_Hssl *hssl)
{
    hssl->errorFlags.notAcknowledgeError = 0;
    hssl->errorFlags.transactionTagError = 0;
    hssl->errorFlags.timeoutError = 0;
    hssl->errorFlags.unexpectedError = 0;
    hssl->errorFlags.memoryAccessViolation = 0;
    hssl->errorFlags.busAccessError = 0;
    hssl->errorFlags.channelNumberCodeError = 0;
    hssl->errorFlags.dataLengthError = 0;
    hssl->errorFlags.crcError = 0;
}


void IfxHssl_Hssl_delay(IfxHssl_Hsct *hsct)
{
    uint32 i;

    for (i = 0; i < 8000; i++)
    {
        __nop();
    }
}


void IfxHssl_Hssl_initChannel(IfxHssl_Hssl_Channel *channel, const IfxHssl_Hssl_ChannelConfig *channelConfig)
{
    channel->hssl = channelConfig->hssl;
    channel->hsct = channelConfig->hsct;

    channel->channelId = channelConfig->channelId;
    channel->currentFrameRequest = IfxHssl_Hssl_FrameRequest_noAction;

    channel->streamingModeOn = 0;
    channel->streamingMode = channelConfig->streamingMode;
    channel->loopBack = channelConfig->loopBack;
}


void IfxHssl_Hssl_initChannelConfig(IfxHssl_Hssl_ChannelConfig *channelConfig, IfxHssl_Hssl *hssl, IfxHssl_Hsct *hsct)
{
    channelConfig->hssl = hssl->hssl;
    channelConfig->hsct = hsct->hsct;

    channelConfig->channelId = IfxHssl_ChannelId_0;
    channelConfig->streamingMode = IfxHssl_StreamingMode_single;
    channelConfig->loopBack = hsct->loopBack;
    hssl->loopBack = hsct->loopBack;
}


void IfxHssl_Hssl_initHsctModule(IfxHssl_Hsct *hsct, const IfxHssl_Hsct_Config *config)
{
    Ifx_HSCT *hsctSFR = config->hsct;

    hsct->hsct = hsctSFR;
    hsct->loopBack = config->loopBack;


    IfxPort_setPinModeInput(&(*(Ifx_P*)0xF003C100u), 2, IfxPort_InputMode_noPullDevice);
    IfxPort_setPinModeInput(&(*(Ifx_P*)0xF003C100u), 3, IfxPort_InputMode_noPullDevice);
    IfxPort_setPinModeOutput(&(*(Ifx_P*)0xF003C100u), 4, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);
    IfxPort_setPinModeOutput(&(*(Ifx_P*)0xF003C100u), 5, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_general);


    if (config->interfaceMode == IfxHssl_InterfaceMode_master)
    {
        IfxPort_setPinModeOutput(&(*(Ifx_P*)0xF003C000u), 0, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_alt5);
        IfxPort_setPinPadDriver(&(*(Ifx_P*)0xF003C000u), 0, IfxPort_PadDriver_cmosAutomotiveSpeed1);
    }
    else
    {
        IfxPort_setPinModeInput(&(*(Ifx_P*)0xF003C000u), 0, IfxPort_InputMode_pullDown);
    }

    if (config->loopBack == 0)

    {
        uint16 psw = IfxScuWdt_getCpuWatchdogPassword();
        IfxScuWdt_clearCpuEndinit(psw);


        (*(volatile Ifx_P_LPCR1*)0xF003C1A4u).B_P21.RDIS_CTRL = 1;
        (*(volatile Ifx_P_LPCR1*)0xF003C1A4u).B_P21.RX_DIS = 0;

        (*(volatile Ifx_P_LPCR2*)0xF003C1A8u).B.TDIS_CTRL = 1;
        (*(volatile Ifx_P_LPCR2*)0xF003C1A8u).B.TX_DIS = 0;
        (*(volatile Ifx_P_LPCR2*)0xF003C1A8u).B.TX_PD = 0;

        IfxScuWdt_setCpuEndinit(psw);
    }


    IfxHssl_enableHsctModule(hsctSFR);

    hsctSFR->IRQCLR.B.TXTECLR = 1;


    if (config->interfaceMode == IfxHssl_InterfaceMode_slave)
    {
        hsctSFR->INIT.B.IFM = IfxHssl_InterfaceMode_slave;
        hsctSFR->INIT.B.SYS_CLK_EN = 0;
        hsctSFR->INIT.B.SRCF = IfxHssl_ClockFrequencyRate_20Mhz;
        hsctSFR->CONFIGPHY.B.OSCCLKEN = IfxHssl_PllReferenceClock_hsctSystemClockInput;
        hsctSFR->CONFIGPHY.B.PHYRST = 0;
        hsctSFR->CONFIGPHY.B.PLLWMF = 16;
    }


    else
    {
        hsctSFR->INIT.B.IFM = IfxHssl_InterfaceMode_master;
        hsctSFR->INIT.B.SYS_CLK_EN = 1;
        hsctSFR->INIT.B.SRCF = IfxHssl_ClockFrequencyRate_20Mhz;
        hsctSFR->CONFIGPHY.B.OSCCLKEN = IfxHssl_PllReferenceClock_oscillatorInput;
        hsctSFR->CONFIGPHY.B.PHYRST = 0;
        hsctSFR->CONFIGPHY.B.PLLPON = 1;
        hsctSFR->CONFIGPHY.B.PLLWMF = 16;
        hsctSFR->IFCTRL.B.MTXSPEED = IfxHssl_MasterModeTxSpeed_lowSpeed;
        hsctSFR->IFCTRL.B.MRXSPEED = IfxHssl_MasterModeRxSpeed_lowSpeed;


        if (config->highSpeedMode)
        {
            hsctSFR->IFCTRL.B.MTXSPEED = IfxHssl_MasterModeTxSpeed_highSpeed;
            hsctSFR->IFCTRL.B.MRXSPEED = IfxHssl_MasterModeRxSpeed_highSpeed;
        }

        while (hsctSFR->STATPHY.B.PLOCK == 0)
        {}
    }

    hsctSFR->DISABLE.U = 0;
}


void IfxHssl_Hssl_initHsctModuleConfig(IfxHssl_Hsct_Config *config, Ifx_HSCT *hsct)
{
    config->hsct = hsct;


    config->interfaceMode = IfxHssl_InterfaceMode_master;


    config->highSpeedMode = 0;

    config->loopBack = 0;
}


void IfxHssl_Hssl_initHsslModule(IfxHssl_Hssl *hssl, const IfxHssl_Hssl_Config *config)
{
    Ifx_HSSL *hsslSFR = config->hssl;

    hssl->hssl = hsslSFR;


    IfxHssl_enableHsslModule(hsslSFR);
    hsslSFR->CFG.B.PREDIV = config->preDivider;
    hsslSFR->CFG.B.SCM = 0;


    hsslSFR->AW[0].AWSTART.U = config->accessWindow0.start;
    hsslSFR->AW[0].AWEND.U = config->accessWindow0.end;
    hsslSFR->AW[1].AWSTART.U = config->accessWindow1.start;
    hsslSFR->AW[1].AWEND.U = config->accessWindow1.end;
    hsslSFR->AW[2].AWSTART.U = config->accessWindow2.start;
    hsslSFR->AW[2].AWEND.U = config->accessWindow2.end;
    hsslSFR->AW[3].AWSTART.U = config->accessWindow3.start;
    hsslSFR->AW[3].AWEND.U = config->accessWindow3.end;

    hsslSFR->AR.U = 0x000000ff;

    hsslSFR->MFLAGSCL.B.INIC = 1;
    hsslSFR->TIDADD.U = (uint32)(0xF0000464u);

    while (hsslSFR->MFLAGS.B.INI)
    {}
}


void IfxHssl_Hssl_initHsslModuleConfig(IfxHssl_Hssl_Config *config, Ifx_HSSL *hssl)
{
    config->hssl = hssl;


    config->accessWindow0.start = 0x00000000;
    config->accessWindow0.end = 0xffffffff;
    config->accessWindow1.start = 0x00000000;
    config->accessWindow1.end = 0xffffffff;
    config->accessWindow2.start = 0x00000000;
    config->accessWindow2.end = 0xffffffff;
    config->accessWindow3.start = 0x00000000;
    config->accessWindow3.end = 0xffffffff;


    config->preDivider = 256;
}


IfxHssl_Hssl_Status IfxHssl_Hssl_prepareStream(IfxHssl_Hssl_Channel *channel, uint32 slaveTargetAddress, Ifx_SizeT count)
{
    IfxHssl_ChannelId channelId = channel->channelId;


    IfxHssl_Hssl_singleFrameRequest(channel, IfxHssl_Hssl_FrameRequest_writeFrame, (uint32)&channel->hssl->TS.SA[0], slaveTargetAddress, IfxHssl_DataLength_32bit);

    while (IfxHssl_Hssl_waitAcknowledge(channel) != IfxHssl_Hssl_Status_ok)
    {}


    IfxHssl_Hssl_singleFrameRequest(channel, IfxHssl_Hssl_FrameRequest_writeFrame, (uint32)&channel->hssl->TS.FC, count, IfxHssl_DataLength_16bit);

    while (IfxHssl_Hssl_waitAcknowledge(channel) != IfxHssl_Hssl_Status_ok)
    {}


    if (!channel->loopBack)
    {
        channel->channelId = IfxHssl_ChannelId_2;


        IfxHssl_Hssl_singleFrameRequest(channel, IfxHssl_Hssl_FrameRequest_writeFrame, (uint32)&channel->hssl->CFG, 0x00070100, IfxHssl_DataLength_32bit);

        while (IfxHssl_Hssl_waitAcknowledge(channel) != IfxHssl_Hssl_Status_ok)
        {}


        channel->channelId = channelId;


        IfxHssl_Hssl_singleFrameRequest(channel, IfxHssl_Hssl_FrameRequest_writeFrame, (uint32)&channel->hssl->MFLAGSSET, 0x10000000, IfxHssl_DataLength_32bit);

        while (IfxHssl_Hssl_waitAcknowledge(channel) != IfxHssl_Hssl_Status_ok)
        {}
    }

    channel->streamingModeOn = 1;

    return IfxHssl_Hssl_Status_ok;
}


IfxHssl_Hssl_Status IfxHssl_Hssl_read(IfxHssl_Hssl_Channel *channel, uint32 address, IfxHssl_DataLength dataLength)
{
    uint32 data = 0;
    return IfxHssl_Hssl_singleFrameRequest(channel, IfxHssl_Hssl_FrameRequest_readFrame, address, data, dataLength);
}


void IfxHssl_Hssl_sendControlCommand(IfxHssl_Hsct *hsct, uint8 command)
{
    Ifx_HSCT *hsctSFR = hsct->hsct;

    hsctSFR->IFCTRL.B.IFCVS = command;
    hsctSFR->IFCTRL.B.SIFCV = 1;

    IfxHssl_Hssl_delay(hsct);
}


IfxHssl_Hssl_Status IfxHssl_Hssl_singleFrameRequest(IfxHssl_Hssl_Channel *channel, IfxHssl_Hssl_FrameRequest frameRequest, uint32 address, uint32 data, IfxHssl_DataLength dataLength)
{
    Ifx_HSSL_I *hsslI = (Ifx_HSSL_I *)&channel->hssl->I[channel->channelId];

    if (channel->currentFrameRequest != IfxHssl_Hssl_FrameRequest_noAction)
    {
        return IfxHssl_Hssl_Status_busy;
    }

    hsslI->ICON.B.DATLEN = dataLength;
    hsslI->ICON.B.TOREL = 0xff;

    switch (frameRequest)
    {
    case IfxHssl_Hssl_FrameRequest_readFrame:
        hsslI->ICON.B.RWT = IfxHssl_Command_readFrame;
        hsslI->IRWA.U = address;
        break;
    case IfxHssl_Hssl_FrameRequest_writeFrame:
        hsslI->ICON.B.RWT = IfxHssl_Command_writeFrame;
        hsslI->IWD.U = data;
        hsslI->IRWA.U = address;
        break;
    case IfxHssl_Hssl_FrameRequest_triggerFrame:
        hsslI->ICON.B.RWT = IfxHssl_Command_triggerFrame;
        hsslI->IWD.U = data;
        hsslI->IRWA.U = address;
        break;
    case IfxHssl_Hssl_FrameRequest_readId:

        hsslI->ICON.B.IDQ = 1;
        break;
    default:

        return IfxHssl_Hssl_Status_error;
    }

    channel->currentFrameRequest = frameRequest;

    return IfxHssl_Hssl_Status_ok;
}


IfxHssl_Hssl_Status IfxHssl_Hssl_waitAcknowledge(IfxHssl_Hssl_Channel *channel)
{
    uint32 requestType = channel->currentFrameRequest;
    IfxHssl_ChannelId channelId = channel->channelId;

    if ((channelId == IfxHssl_ChannelId_2) && (channel->streamingModeOn))
    {
        while (channel->hssl->MFLAGS.B.ISB)
        {

        }
    }
    else
    {
        if (channel->currentFrameRequest == IfxHssl_Hssl_FrameRequest_writeFrame)
        {
            requestType = 1;
        }


        if ((channel->currentFrameRequest == IfxHssl_Hssl_FrameRequest_readFrame) || (channel->currentFrameRequest == IfxHssl_Hssl_FrameRequest_readId))
        {
            requestType = 2;
        }

        if (channel->currentFrameRequest == IfxHssl_Hssl_FrameRequest_triggerFrame)
        {
            requestType = 3;
        }

        uint32 qFlags = channel->hssl->QFLAGS.U;
        uint32 mFlags = channel->hssl->MFLAGS.U;
        uint32 acknwoledgeFlagsMask = ((requestType << (16 + (channel->channelId * 2))) | (1 << channel->channelId));
        uint32 errorFlagsMask = ((0x03E00000) | (4369 << channel->channelId));

        if (qFlags & acknwoledgeFlagsMask)
        {
            if (mFlags & errorFlagsMask)
            {
                channel->currentFrameRequest = IfxHssl_Hssl_FrameRequest_noAction;
                return IfxHssl_Hssl_Status_error;
            }
            else
            {
                return IfxHssl_Hssl_Status_busy;
            }
        }


        channel->currentFrameRequest = IfxHssl_Hssl_FrameRequest_noAction;
    }

    return IfxHssl_Hssl_Status_ok;
}


IfxHssl_Hssl_Status IfxHssl_Hssl_write(IfxHssl_Hssl_Channel *channel, uint32 address, uint32 data, IfxHssl_DataLength dataLength)
{
    return IfxHssl_Hssl_singleFrameRequest(channel, IfxHssl_Hssl_FrameRequest_writeFrame, address, data, dataLength);
}


IfxHssl_Hssl_Status IfxHssl_Hssl_writeStream(IfxHssl_Hssl *hssl, uint32 *data, Ifx_SizeT count)
{
    Ifx_HSSL *hsslSFR = hssl->hssl;
    Ifx_HSSL_IS *hsslIS = (Ifx_HSSL_IS *)&hsslSFR->IS;
    IfxHssl_StreamingMode streamingMode = IfxHssl_StreamingMode_single;


    hsslIS->SA[0].U = (uint32)data;

    hsslIS->FC.B.RELCOUNT = count;

    hsslSFR->CFG.B.SCM = 1;
    hsslSFR->CFG.B.SMT = streamingMode;
    hsslSFR->CFG.B.SMR = streamingMode;

    hsslSFR->I[IfxHssl_ChannelId_2].ICON.B.TOREL = 0xff;


    if (hssl->loopBack)
    {
        hsslSFR->MFLAGSSET.B.TSES = 1;
    }


    hsslSFR->MFLAGSSET.B.ISBS = 1;


    return IfxHssl_Hssl_Status_ok;
}
