# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.c"
# 1 "C:\\Users\\user\\Desktop\\programming_PROJECTS\\�Ѿ��_�Ӻ����ý���\\DevBaseEnv_vscode_TC27D//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.c"
# 29 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.c"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h" 1
# 53 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxMsc_cfg.h" 1
# 41 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxMsc_cfg.h"
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
# 42 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxMsc_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxMsc_reg.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxMsc_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxMsc_regdef.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxMsc_regdef.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/Ifx_TypesReg.h" 1
# 40 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxMsc_regdef.h" 2





typedef struct _Ifx_MSC_ABC_Bits
{
    unsigned int LOW:4;
    unsigned int HIGH:4;
    unsigned int OIP:2;
    unsigned int OASR:1;
    unsigned int reserved_11:1;
    unsigned int OVF:1;
    unsigned int OFM:2;
    unsigned int OIE:1;
    unsigned int NDA:3;
    unsigned int UIP:2;
    unsigned int UASR:1;
    unsigned int reserved_22:1;
    unsigned int UNF:1;
    unsigned int UFM:2;
    unsigned int UIE:1;
    unsigned int CLKSEL:3;
    unsigned int reserved_30:1;
    unsigned int ABB:1;
} Ifx_MSC_ABC_Bits;


typedef struct _Ifx_MSC_ACCEN0_Bits
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
} Ifx_MSC_ACCEN0_Bits;


typedef struct _Ifx_MSC_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_MSC_ACCEN1_Bits;


typedef struct _Ifx_MSC_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_MSC_CLC_Bits;


typedef struct _Ifx_MSC_DC_Bits
{
    unsigned int DCL:16;
    unsigned int DCH:16;
} Ifx_MSC_DC_Bits;


typedef struct _Ifx_MSC_DD_Bits
{
    unsigned int DDL:16;
    unsigned int DDH:16;
} Ifx_MSC_DD_Bits;


typedef struct _Ifx_MSC_DDE_Bits
{
    unsigned int DDLE:16;
    unsigned int DDHE:16;
} Ifx_MSC_DDE_Bits;


typedef struct _Ifx_MSC_DDM_Bits
{
    unsigned int DDLM:16;
    unsigned int DDHM:16;
} Ifx_MSC_DDM_Bits;


typedef struct _Ifx_MSC_DSC_Bits
{
    unsigned int TM:1;
    unsigned int CP:1;
    unsigned int DP:1;
    unsigned int NDBL:5;
    unsigned int NDBH:5;
    unsigned int ENSELL:1;
    unsigned int ENSELH:1;
    unsigned int DSDIS:1;
    unsigned int NBC:6;
    unsigned int reserved_22:2;
    unsigned int PPD:5;
    unsigned int reserved_29:3;
} Ifx_MSC_DSC_Bits;


typedef struct _Ifx_MSC_DSCE_Bits
{
    unsigned int NDBHE:1;
    unsigned int NDBLE:1;
    unsigned int reserved_2:12;
    unsigned int EXEN:1;
    unsigned int CCF:1;
    unsigned int INJENP0:1;
    unsigned int INJPOSP0:6;
    unsigned int reserved_23:1;
    unsigned int INJENP1:1;
    unsigned int INJPOSP1:6;
    unsigned int CDCM:1;
} Ifx_MSC_DSCE_Bits;


typedef struct _Ifx_MSC_DSDSH_Bits
{
    unsigned int SH0:2;
    unsigned int SH1:2;
    unsigned int SH2:2;
    unsigned int SH3:2;
    unsigned int SH4:2;
    unsigned int SH5:2;
    unsigned int SH6:2;
    unsigned int SH7:2;
    unsigned int SH8:2;
    unsigned int SH9:2;
    unsigned int SH10:2;
    unsigned int SH11:2;
    unsigned int SH12:2;
    unsigned int SH13:2;
    unsigned int SH14:2;
    unsigned int SH15:2;
} Ifx_MSC_DSDSH_Bits;


typedef struct _Ifx_MSC_DSDSHE_Bits
{
    unsigned int SH16:2;
    unsigned int SH17:2;
    unsigned int SH18:2;
    unsigned int SH19:2;
    unsigned int SH20:2;
    unsigned int SH21:2;
    unsigned int SH22:2;
    unsigned int SH23:2;
    unsigned int SH24:2;
    unsigned int SH25:2;
    unsigned int SH26:2;
    unsigned int SH27:2;
    unsigned int SH28:2;
    unsigned int SH29:2;
    unsigned int SH30:2;
    unsigned int SH31:2;
} Ifx_MSC_DSDSHE_Bits;


typedef struct _Ifx_MSC_DSDSL_Bits
{
    unsigned int SL0:2;
    unsigned int SL1:2;
    unsigned int SL2:2;
    unsigned int SL3:2;
    unsigned int SL4:2;
    unsigned int SL5:2;
    unsigned int SL6:2;
    unsigned int SL7:2;
    unsigned int SL8:2;
    unsigned int SL9:2;
    unsigned int SL10:2;
    unsigned int SL11:2;
    unsigned int SL12:2;
    unsigned int SL13:2;
    unsigned int SL14:2;
    unsigned int SL15:2;
} Ifx_MSC_DSDSL_Bits;


typedef struct _Ifx_MSC_DSDSLE_Bits
{
    unsigned int SL16:2;
    unsigned int SL17:2;
    unsigned int SL18:2;
    unsigned int SL19:2;
    unsigned int SL20:2;
    unsigned int SL21:2;
    unsigned int SL22:2;
    unsigned int SL23:2;
    unsigned int SL24:2;
    unsigned int SL25:2;
    unsigned int SL26:2;
    unsigned int SL27:2;
    unsigned int SL28:2;
    unsigned int SL29:2;
    unsigned int SL30:2;
    unsigned int SL31:2;
} Ifx_MSC_DSDSLE_Bits;


typedef struct _Ifx_MSC_DSS_Bits
{
    unsigned int PFC:4;
    unsigned int reserved_4:4;
    unsigned int NPTF:4;
    unsigned int reserved_12:4;
    unsigned int DC:8;
    unsigned int DFA:1;
    unsigned int CFA:1;
    unsigned int reserved_26:6;
} Ifx_MSC_DSS_Bits;


typedef struct _Ifx_MSC_DSTE_Bits
{
    unsigned int PPDE:2;
    unsigned int PPCE:6;
    unsigned int NDD:4;
    unsigned int reserved_12:20;
} Ifx_MSC_DSTE_Bits;


typedef struct _Ifx_MSC_ESR_Bits
{
    unsigned int ENL0:1;
    unsigned int ENL1:1;
    unsigned int ENL2:1;
    unsigned int ENL3:1;
    unsigned int ENL4:1;
    unsigned int ENL5:1;
    unsigned int ENL6:1;
    unsigned int ENL7:1;
    unsigned int ENL8:1;
    unsigned int ENL9:1;
    unsigned int ENL10:1;
    unsigned int ENL11:1;
    unsigned int ENL12:1;
    unsigned int ENL13:1;
    unsigned int ENL14:1;
    unsigned int ENL15:1;
    unsigned int ENH0:1;
    unsigned int ENH1:1;
    unsigned int ENH2:1;
    unsigned int ENH3:1;
    unsigned int ENH4:1;
    unsigned int ENH5:1;
    unsigned int ENH6:1;
    unsigned int ENH7:1;
    unsigned int ENH8:1;
    unsigned int ENH9:1;
    unsigned int ENH10:1;
    unsigned int ENH11:1;
    unsigned int ENH12:1;
    unsigned int ENH13:1;
    unsigned int ENH14:1;
    unsigned int ENH15:1;
} Ifx_MSC_ESR_Bits;


typedef struct _Ifx_MSC_ESRE_Bits
{
    unsigned int ENL16:1;
    unsigned int ENL17:1;
    unsigned int ENL18:1;
    unsigned int ENL19:1;
    unsigned int ENL20:1;
    unsigned int ENL21:1;
    unsigned int ENL22:1;
    unsigned int ENL23:1;
    unsigned int ENL24:1;
    unsigned int ENL25:1;
    unsigned int ENL26:1;
    unsigned int ENL27:1;
    unsigned int ENL28:1;
    unsigned int ENL29:1;
    unsigned int ENL30:1;
    unsigned int ENL31:1;
    unsigned int ENH16:1;
    unsigned int ENH17:1;
    unsigned int ENH18:1;
    unsigned int ENH19:1;
    unsigned int ENH20:1;
    unsigned int ENH21:1;
    unsigned int ENH22:1;
    unsigned int ENH23:1;
    unsigned int ENH24:1;
    unsigned int ENH25:1;
    unsigned int ENH26:1;
    unsigned int ENH27:1;
    unsigned int ENH28:1;
    unsigned int ENH29:1;
    unsigned int ENH30:1;
    unsigned int ENH31:1;
} Ifx_MSC_ESRE_Bits;


typedef struct _Ifx_MSC_FDR_Bits
{
    unsigned int STEP:10;
    unsigned int reserved_10:4;
    unsigned int DM:2;
    unsigned int RESULT:10;
    unsigned int reserved_26:4;
    unsigned int ENHW:1;
    unsigned int DISCLK:1;
} Ifx_MSC_FDR_Bits;


typedef struct _Ifx_MSC_ICR_Bits
{
    unsigned int EDIP:2;
    unsigned int EDIE:2;
    unsigned int ECIP:2;
    unsigned int reserved_6:1;
    unsigned int ECIE:1;
    unsigned int TFIP:2;
    unsigned int reserved_10:1;
    unsigned int TFIE:1;
    unsigned int RDIP:2;
    unsigned int RDIE:2;
    unsigned int reserved_16:16;
} Ifx_MSC_ICR_Bits;


typedef struct _Ifx_MSC_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_MSC_ID_Bits;


typedef struct _Ifx_MSC_ISC_Bits
{
    unsigned int CDEDI:1;
    unsigned int CDECI:1;
    unsigned int CDTFI:1;
    unsigned int CURDI:1;
    unsigned int CDP:1;
    unsigned int CCP:1;
    unsigned int CDDIS:1;
    unsigned int reserved_7:9;
    unsigned int SDEDI:1;
    unsigned int SDECI:1;
    unsigned int SDTFI:1;
    unsigned int SURDI:1;
    unsigned int SDP:1;
    unsigned int SCP:1;
    unsigned int SDDIS:1;
    unsigned int reserved_23:9;
} Ifx_MSC_ISC_Bits;


typedef struct _Ifx_MSC_ISR_Bits
{
    unsigned int DEDI:1;
    unsigned int DECI:1;
    unsigned int DTFI:1;
    unsigned int URDI:1;
    unsigned int reserved_4:28;
} Ifx_MSC_ISR_Bits;


typedef struct _Ifx_MSC_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_MSC_KRST0_Bits;


typedef struct _Ifx_MSC_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_MSC_KRST1_Bits;


typedef struct _Ifx_MSC_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_MSC_KRSTCLR_Bits;


typedef struct _Ifx_MSC_OCR_Bits
{
    unsigned int CLP:1;
    unsigned int SLP:1;
    unsigned int CSLP:1;
    unsigned int ILP:1;
    unsigned int reserved_4:4;
    unsigned int CLKCTRL:1;
    unsigned int CSL:2;
    unsigned int CSH:2;
    unsigned int CSC:2;
    unsigned int reserved_15:1;
    unsigned int SDISEL:3;
    unsigned int reserved_19:13;
} Ifx_MSC_OCR_Bits;


typedef struct _Ifx_MSC_OCS_Bits
{
    unsigned int reserved_0:24;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_MSC_OCS_Bits;


typedef struct _Ifx_MSC_UD_Bits
{
    unsigned int DATA:8;
    unsigned int reserved_8:8;
    unsigned int V:1;
    unsigned int P:1;
    unsigned int C:1;
    unsigned int LABF:2;
    unsigned int IPF:1;
    unsigned int PERR:1;
    unsigned int reserved_23:9;
} Ifx_MSC_UD_Bits;


typedef struct _Ifx_MSC_USCE_Bits
{
    unsigned int USTOPRE:4;
    unsigned int USTOVAL:4;
    unsigned int USTOEN:1;
    unsigned int USTF:1;
    unsigned int USTC:1;
    unsigned int USTS:1;
    unsigned int reserved_12:1;
    unsigned int UTASR:1;
    unsigned int USTOIP:2;
    unsigned int reserved_16:16;
} Ifx_MSC_USCE_Bits;


typedef struct _Ifx_MSC_USR_Bits
{
    unsigned int UFT:1;
    unsigned int URR:3;
    unsigned int PCTR:1;
    unsigned int SRDC:1;
    unsigned int reserved_6:10;
    unsigned int UC:5;
    unsigned int reserved_21:11;
} Ifx_MSC_USR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ABC_Bits B;
} Ifx_MSC_ABC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ACCEN0_Bits B;
} Ifx_MSC_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ACCEN1_Bits B;
} Ifx_MSC_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_CLC_Bits B;
} Ifx_MSC_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DC_Bits B;
} Ifx_MSC_DC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DD_Bits B;
} Ifx_MSC_DD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DDE_Bits B;
} Ifx_MSC_DDE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DDM_Bits B;
} Ifx_MSC_DDM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DSC_Bits B;
} Ifx_MSC_DSC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DSCE_Bits B;
} Ifx_MSC_DSCE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DSDSH_Bits B;
} Ifx_MSC_DSDSH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DSDSHE_Bits B;
} Ifx_MSC_DSDSHE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DSDSL_Bits B;
} Ifx_MSC_DSDSL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DSDSLE_Bits B;
} Ifx_MSC_DSDSLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DSS_Bits B;
} Ifx_MSC_DSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_DSTE_Bits B;
} Ifx_MSC_DSTE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ESR_Bits B;
} Ifx_MSC_ESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ESRE_Bits B;
} Ifx_MSC_ESRE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_FDR_Bits B;
} Ifx_MSC_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ICR_Bits B;
} Ifx_MSC_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ID_Bits B;
} Ifx_MSC_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ISC_Bits B;
} Ifx_MSC_ISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_ISR_Bits B;
} Ifx_MSC_ISR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_KRST0_Bits B;
} Ifx_MSC_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_KRST1_Bits B;
} Ifx_MSC_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_KRSTCLR_Bits B;
} Ifx_MSC_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_OCR_Bits B;
} Ifx_MSC_OCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_OCS_Bits B;
} Ifx_MSC_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_UD_Bits B;
} Ifx_MSC_UD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_USCE_Bits B;
} Ifx_MSC_USCE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MSC_USR_Bits B;
} Ifx_MSC_USR;
# 780 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxMsc_regdef.h"
typedef volatile struct _Ifx_MSC
{
    Ifx_MSC_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_MSC_ID ID;
    Ifx_MSC_FDR FDR;
    Ifx_MSC_USR USR;
    Ifx_MSC_DSC DSC;
    Ifx_MSC_DSS DSS;
    Ifx_MSC_DD DD;
    Ifx_MSC_DC DC;
    Ifx_MSC_DSDSL DSDSL;
    Ifx_MSC_DSDSH DSDSH;
    Ifx_MSC_ESR ESR;
    Ifx_MSC_UD UD[4];
    Ifx_MSC_ICR ICR;
    Ifx_MSC_ISR ISR;
    Ifx_MSC_ISC ISC;
    Ifx_MSC_OCR OCR;
    unsigned char reserved_50[8];
    Ifx_MSC_DSCE DSCE;
    Ifx_MSC_USCE USCE;
    Ifx_MSC_DSDSLE DSDSLE;
    Ifx_MSC_DSDSHE DSDSHE;
    Ifx_MSC_ESRE ESRE;
    Ifx_MSC_DDE DDE;
    Ifx_MSC_DDM DDM;
    Ifx_MSC_DSTE DSTE;
    unsigned char reserved_78[8];
    Ifx_MSC_ABC ABC;
    unsigned char reserved_84[100];
    Ifx_MSC_OCS OCS;
    Ifx_MSC_KRSTCLR KRSTCLR;
    Ifx_MSC_KRST1 KRST1;
    Ifx_MSC_KRST0 KRST0;
    Ifx_MSC_ACCEN1 ACCEN1;
    Ifx_MSC_ACCEN0 ACCEN0;
} Ifx_MSC;
# 40 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxMsc_reg.h" 2
# 43 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxMsc_cfg.h" 2
# 60 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxMsc_cfg.h"
typedef enum
{
    IfxMsc_Index_none = -1,
    IfxMsc_Index_0 = 0,
    IfxMsc_Index_1
} IfxMsc_Index;







extern const IfxModule_IndexMap IfxMsc_cfg_indexMap[2];
# 54 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h" 1
# 105 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
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
# 106 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h" 1
# 48 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
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
# 52 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h" 2
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
# 107 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
# 50 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h" 1
# 40 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_reg.h" 1
# 54 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_regdef.h"
typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR:32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS:1;
    volatile unsigned int BIV:31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int BTV:31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM:1;
    volatile unsigned int CE:1;
    volatile unsigned int M1:3;
    volatile unsigned int M2:3;
    volatile unsigned int M3:3;
    volatile unsigned int reserved_11:21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int RM:1;
    volatile unsigned int SP:1;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID:3;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int LOWBND:29;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int UPPBND:29;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MOD_REV:8;
    volatile unsigned int MOD_32B:8;
    volatile unsigned int MOD:16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE:8;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID:3;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA:32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int SBE:1;
    volatile unsigned int reserved_4:5;
    volatile unsigned int CWE:1;
    volatile unsigned int CFE:1;
    volatile unsigned int reserved_11:3;
    volatile unsigned int SOE:1;
    volatile unsigned int SME:1;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE:1;
    volatile unsigned int HALT:2;
    volatile unsigned int SIH:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int reserved_5:1;
    volatile unsigned int PREVSUSP:1;
    volatile unsigned int PEVT:1;
    volatile unsigned int EVTSRC:5;
    volatile unsigned int reserved_13:19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int DCBYP:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE:16;
    volatile unsigned int DSCRATCH_SZE:16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0:6;
    volatile unsigned int DCXValue:26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS:32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA:32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED:1;
    volatile unsigned int IE_T:1;
    volatile unsigned int IE_C:1;
    volatile unsigned int IE_S:1;
    volatile unsigned int IE_BI:1;
    volatile unsigned int E_INFO:6;
    volatile unsigned int IE_DUAL:1;
    volatile unsigned int IE_SP:1;
    volatile unsigned int IE_BS:1;
    volatile unsigned int reserved_14:18;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int DMSValue:31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int LOWBND:29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int UPPBND:29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE:1;
    volatile unsigned int GAE:1;
    volatile unsigned int LBE:1;
    volatile unsigned int reserved_3:3;
    volatile unsigned int CRE:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int DTME:1;
    volatile unsigned int LOE:1;
    volatile unsigned int SDE:1;
    volatile unsigned int SCE:1;
    volatile unsigned int CAC:1;
    volatile unsigned int MPE:1;
    volatile unsigned int CLE:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int ALN:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO:16;
    volatile unsigned int FCXS:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST:1;
    volatile unsigned int TCL:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int RM:2;
    volatile unsigned int reserved_10:8;
    volatile unsigned int FXE:1;
    volatile unsigned int FUE:1;
    volatile unsigned int FZE:1;
    volatile unsigned int FVE:1;
    volatile unsigned int FIE:1;
    volatile unsigned int reserved_23:3;
    volatile unsigned int FX:1;
    volatile unsigned int FU:1;
    volatile unsigned int FZ:1;
    volatile unsigned int FV:1;
    volatile unsigned int FI:1;
    volatile unsigned int reserved_31:1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC:8;
    volatile unsigned int FMT:1;
    volatile unsigned int reserved_9:7;
    volatile unsigned int DREG:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC:32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1:32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2:32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3:32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN:10;
    volatile unsigned int reserved_10:5;
    volatile unsigned int IE:1;
    volatile unsigned int PIPN:10;
    volatile unsigned int reserved_26:6;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP:32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO:16;
    volatile unsigned int LCXS:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int CountValue:31;
    volatile unsigned int SOvf:1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int PC:31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int PCBYP:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV:1;
    volatile unsigned int PBINV:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE:16;
    volatile unsigned int PSCRATCH_SZE:16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO:16;
    volatile unsigned int PCXS:4;
    volatile unsigned int UL:1;
    volatile unsigned int PIE:1;
    volatile unsigned int PCPN:10;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA:32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED:1;
    volatile unsigned int IE_T:1;
    volatile unsigned int IE_C:1;
    volatile unsigned int IE_S:1;
    volatile unsigned int IE_BI:1;
    volatile unsigned int E_INFO:6;
    volatile unsigned int IE_DUAL:1;
    volatile unsigned int IE_SP:1;
    volatile unsigned int IE_BS:1;
    volatile unsigned int reserved_14:18;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int reserved_0:13;
    volatile unsigned int DAC:3;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int reserved_0:14;
    volatile unsigned int CAC:2;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE:1;
    volatile unsigned int reserved_1:1;
    volatile unsigned int FBE:1;
    volatile unsigned int reserved_3:9;
    volatile unsigned int FPE:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int FME:1;
    volatile unsigned int reserved_15:17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC:7;
    volatile unsigned int CDE:1;
    volatile unsigned int GW:1;
    volatile unsigned int IS:1;
    volatile unsigned int IO:2;
    volatile unsigned int PRS:2;
    volatile unsigned int S:1;
    volatile unsigned int reserved_15:12;
    volatile unsigned int SAV:1;
    volatile unsigned int AV:1;
    volatile unsigned int SV:1;
    volatile unsigned int V:1;
    volatile unsigned int C:1;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP:8;
    volatile unsigned int ADTYPE:2;
    volatile unsigned int reserved_10:21;
    volatile unsigned int AE:1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int PC:1;
    volatile unsigned int reserved_1:1;
    volatile unsigned int PT:1;
    volatile unsigned int reserved_3:5;
    volatile unsigned int DC:1;
    volatile unsigned int reserved_9:1;
    volatile unsigned int DT:1;
    volatile unsigned int reserved_11:13;
    volatile unsigned int IODT:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENA_Bits
{
    volatile unsigned int EN:32;
} Ifx_CPU_SPROT_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENB_Bits
{
    volatile unsigned int reserved_0:32;
} Ifx_CPU_SPROT_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENA_Bits
{
    volatile unsigned int EN:32;
} Ifx_CPU_SPROT_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENB_Bits
{
    volatile unsigned int reserved_0:32;
} Ifx_CPU_SPROT_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_LA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_SPROT_RGN_LA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_UA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_SPROT_RGN_UA_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF:1;
    volatile unsigned int PROTEN:1;
    volatile unsigned int TPROTEN:1;
    volatile unsigned int IS:1;
    volatile unsigned int IT:1;
    volatile unsigned int RES:11;
    volatile unsigned int U1_IED:1;
    volatile unsigned int U1_IOS:1;
    volatile unsigned int reserved_18:14;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI:5;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0:1;
    volatile unsigned int TEXP1:1;
    volatile unsigned int TEXP2:1;
    volatile unsigned int reserved_3:13;
    volatile unsigned int TTRAP:1;
    volatile unsigned int reserved_17:15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int Timer:32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR:32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:4;
    volatile unsigned int TYP:1;
    volatile unsigned int RNG:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int ASI_EN:1;
    volatile unsigned int ASI:5;
    volatile unsigned int reserved_21:6;
    volatile unsigned int AST:1;
    volatile unsigned int ALD:1;
    volatile unsigned int reserved_29:3;
} Ifx_CPU_TR_EVT_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0:1;
    volatile unsigned int T1:1;
    volatile unsigned int T2:1;
    volatile unsigned int T3:1;
    volatile unsigned int T4:1;
    volatile unsigned int T5:1;
    volatile unsigned int T6:1;
    volatile unsigned int T7:1;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_TRIG_ACC_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENA_Bits B;
} Ifx_CPU_SPROT_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENB_Bits B;
} Ifx_CPU_SPROT_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENA_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENB_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_LA_Bits B;
} Ifx_CPU_SPROT_RGN_LA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_UA_Bits B;
} Ifx_CPU_SPROT_RGN_UA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;
# 1274 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
    Ifx_CPU_CPR_L L;
    Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;


typedef volatile struct _Ifx_CPU_DPR
{
    Ifx_CPU_DPR_L L;
    Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;


typedef volatile struct _Ifx_CPU_SPROT_RGN
{
    Ifx_CPU_SPROT_RGN_LA LA;
    Ifx_CPU_SPROT_RGN_UA UA;
    Ifx_CPU_SPROT_RGN_ACCENA ACCENA;
    Ifx_CPU_SPROT_RGN_ACCENB ACCENB;
} Ifx_CPU_SPROT_RGN;


typedef volatile struct _Ifx_CPU_TPS
{
    Ifx_CPU_TPS_CON CON;
    Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;


typedef volatile struct _Ifx_CPU_TR
{
    Ifx_CPU_TR_EVT EVT;
    Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 1321 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
    unsigned char reserved_0[4144];
    Ifx_CPU_SEGEN SEGEN;
    unsigned char reserved_1034[28624];
    Ifx_CPU_TASK_ASI TASK_ASI;
    unsigned char reserved_8008[248];
    Ifx_CPU_PMA0 PMA0;
    Ifx_CPU_PMA1 PMA1;
    Ifx_CPU_PMA2 PMA2;
    unsigned char reserved_810C[3828];
    Ifx_CPU_DCON2 DCON2;
    unsigned char reserved_9004[8];
    Ifx_CPU_SMACON SMACON;
    Ifx_CPU_DSTR DSTR;
    unsigned char reserved_9014[4];
    Ifx_CPU_DATR DATR;
    Ifx_CPU_DEADD DEADD;
    Ifx_CPU_DIEAR DIEAR;
    Ifx_CPU_DIETR DIETR;
    unsigned char reserved_9028[24];
    Ifx_CPU_DCON0 DCON0;
    unsigned char reserved_9044[444];
    Ifx_CPU_PSTR PSTR;
    Ifx_CPU_PCON1 PCON1;
    Ifx_CPU_PCON2 PCON2;
    Ifx_CPU_PCON0 PCON0;
    Ifx_CPU_PIEAR PIEAR;
    Ifx_CPU_PIETR PIETR;
    unsigned char reserved_9218[488];
    Ifx_CPU_COMPAT COMPAT;
    unsigned char reserved_9404[3068];
    Ifx_CPU_FPU_TRAP_CON FPU_TRAP_CON;
    Ifx_CPU_FPU_TRAP_PC FPU_TRAP_PC;
    Ifx_CPU_FPU_TRAP_OPC FPU_TRAP_OPC;
    unsigned char reserved_A00C[4];
    Ifx_CPU_FPU_TRAP_SRC1 FPU_TRAP_SRC1;
    Ifx_CPU_FPU_TRAP_SRC2 FPU_TRAP_SRC2;
    Ifx_CPU_FPU_TRAP_SRC3 FPU_TRAP_SRC3;
    unsigned char reserved_A01C[8164];
    Ifx_CPU_DPR DPR[16];
    unsigned char reserved_C080[3968];
    Ifx_CPU_CPR CPR[8];
    unsigned char reserved_D040[4032];
    Ifx_CPU_CPXE CPXE[4];
    Ifx_CPU_DPRE DPRE[4];
    Ifx_CPU_DPWE DPWE[4];
    unsigned char reserved_E030[976];
    Ifx_CPU_TPS TPS;
    unsigned char reserved_E410[3056];
    Ifx_CPU_TR TR[8];
    unsigned char reserved_F040[3008];
    Ifx_CPU_CCTRL CCTRL;
    Ifx_CPU_CCNT CCNT;
    Ifx_CPU_ICNT ICNT;
    Ifx_CPU_M1CNT M1CNT;
    Ifx_CPU_M2CNT M2CNT;
    Ifx_CPU_M3CNT M3CNT;
    unsigned char reserved_FC18[232];
    Ifx_CPU_DBGSR DBGSR;
    unsigned char reserved_FD04[4];
    Ifx_CPU_EXEVT EXEVT;
    Ifx_CPU_CREVT CREVT;
    Ifx_CPU_SWEVT SWEVT;
    unsigned char reserved_FD14[28];
    Ifx_CPU_TRIG_ACC TRIG_ACC;
    unsigned char reserved_FD34[12];
    Ifx_CPU_DMS DMS;
    Ifx_CPU_DCX DCX;
    Ifx_CPU_DBGTCR DBGTCR;
    unsigned char reserved_FD4C[180];
    Ifx_CPU_PCXI PCXI;
    Ifx_CPU_PSW PSW;
    Ifx_CPU_PC PC;
    unsigned char reserved_FE0C[8];
    Ifx_CPU_SYSCON SYSCON;
    Ifx_CPU_CPU_ID CPU_ID;
    Ifx_CPU_CORE_ID CORE_ID;
    Ifx_CPU_BIV BIV;
    Ifx_CPU_BTV BTV;
    Ifx_CPU_ISP ISP;
    Ifx_CPU_ICR ICR;
    unsigned char reserved_FE30[8];
    Ifx_CPU_FCX FCX;
    Ifx_CPU_LCX LCX;
    unsigned char reserved_FE40[16];
    Ifx_CPU_CUS_ID CUS_ID;
    unsigned char reserved_FE54[172];
    Ifx_CPU_D D[16];
    unsigned char reserved_FF40[64];
    Ifx_CPU_A A[16];
    unsigned char reserved_FFC0[64];
} Ifx_CPU;


typedef volatile struct _Ifx_CPU_SPROT
{
    unsigned char reserved_0[57344];
    Ifx_CPU_SPROT_RGN RGN[8];
    unsigned char reserved_E080[128];
    Ifx_CPU_SPROT_ACCENA ACCENA;
    Ifx_CPU_SPROT_ACCENB ACCENB;
    unsigned char reserved_E108[7928];
} Ifx_CPU_SPROT;
# 55 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_reg.h" 2
# 41 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h" 2
# 99 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
typedef enum
{
    IfxCpu_DBGST_HALT_run = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;



typedef enum
{
    IfxCpu_Id_0 = 0,
    IfxCpu_Id_1 = 1,
    IfxCpu_Id_2 = 2,
    IfxCpu_Id_none
} IfxCpu_Id;



typedef enum
{
    IfxCpu_Index_0 = 0,
    IfxCpu_Index_1 = 1,
    IfxCpu_Index_2 = 2,
    IfxCpu_Index_none
} IfxCpu_Index;



typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest = 2,
    IfxCpu_PMCSR_PMST_idleMode = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;



typedef enum
{
    IfxCpu_ResourceCpu_0 = IfxCpu_Index_0,
    IfxCpu_ResourceCpu_1 = IfxCpu_Index_1,
    IfxCpu_ResourceCpu_2 = IfxCpu_Index_2,
    IfxCpu_ResourceCpu_none = IfxCpu_Index_none
} IfxCpu_ResourceCpu;





extern const IfxModule_IndexMap IfxCpu_cfg_indexMap[(3)];
# 51 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 2
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
# 52 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxStm_reg.h" 1
# 42 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxStm_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxStm_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
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
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    unsigned int STMCAP63_32:32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    unsigned int STMCAP63_32:32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:1;
    unsigned int EDIS:1;
    unsigned int reserved_4:28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    unsigned int MSIZE0:5;
    unsigned int reserved_5:3;
    unsigned int MSTART0:5;
    unsigned int reserved_13:3;
    unsigned int MSIZE1:5;
    unsigned int reserved_21:3;
    unsigned int MSTART1:5;
    unsigned int reserved_29:3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    unsigned int CMPVAL:32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    unsigned int CMP0EN:1;
    unsigned int CMP0IR:1;
    unsigned int CMP0OS:1;
    unsigned int reserved_3:1;
    unsigned int CMP1EN:1;
    unsigned int CMP1IR:1;
    unsigned int CMP1OS:1;
    unsigned int reserved_7:25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    unsigned int CMP0IRR:1;
    unsigned int CMP0IRS:1;
    unsigned int CMP1IRR:1;
    unsigned int CMP1IRS:1;
    unsigned int reserved_4:28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    unsigned int reserved_0:24;
    unsigned int SUS:4;
    unsigned int SUS_P:1;
    unsigned int SUSSTA:1;
    unsigned int reserved_30:2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    unsigned int STM31_0:32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    unsigned int STM31_0:32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    unsigned int STM35_4:32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    unsigned int STM39_8:32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    unsigned int STM43_12:32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    unsigned int STM47_16:32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    unsigned int STM51_20:32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    unsigned int STM63_32:32;
} Ifx_STM_TIM6_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 429 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
    Ifx_STM_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_STM_ID ID;
    unsigned char reserved_C[4];
    Ifx_STM_TIM0 TIM0;
    Ifx_STM_TIM1 TIM1;
    Ifx_STM_TIM2 TIM2;
    Ifx_STM_TIM3 TIM3;
    Ifx_STM_TIM4 TIM4;
    Ifx_STM_TIM5 TIM5;
    Ifx_STM_TIM6 TIM6;
    Ifx_STM_CAP CAP;
    Ifx_STM_CMP CMP[2];
    Ifx_STM_CMCON CMCON;
    Ifx_STM_ICR ICR;
    Ifx_STM_ISCR ISCR;
    unsigned char reserved_44[12];
    Ifx_STM_TIM0SV TIM0SV;
    Ifx_STM_CAPSV CAPSV;
    unsigned char reserved_58[144];
    Ifx_STM_OCS OCS;
    Ifx_STM_KRSTCLR KRSTCLR;
    Ifx_STM_KRST1 KRST1;
    Ifx_STM_KRST0 KRST0;
    Ifx_STM_ACCEN1 ACCEN1;
    Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 43 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxStm_reg.h" 2
# 54 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 1
# 56 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h" 1
# 58 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 2
# 94 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
typedef unsigned int IfxCpu_spinLock;



typedef unsigned int IfxCpu_mutexLock;



typedef unsigned int IfxCpu_syncEvent;
# 112 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
typedef enum
{
    IfxCpu_CoreMode_halt,
    IfxCpu_CoreMode_run,
    IfxCpu_CoreMode_idle,
    IfxCpu_CoreMode_sleep,
    IfxCpu_CoreMode_stby,
    IfxCpu_CoreMode_unknown
} IfxCpu_CoreMode;



typedef enum
{
    IfxCpu_CounterMode_normal = 0,
    IfxCpu_CounterMode_task = 1
} IfxCpu_CounterMode;
# 140 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
typedef struct
{
    uint32 counter;
    boolean overlfow;
} IfxCpu_Counter;







typedef struct
{
    IfxCpu_Counter instruction;
    IfxCpu_Counter clock;
    IfxCpu_Counter counter1;
    IfxCpu_Counter counter2;
    IfxCpu_Counter counter3;
} IfxCpu_Perf;
# 174 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu);






static inline __attribute__ ((always_inline)) IfxCpu_Id IfxCpu_getCoreId(void);





static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void);
# 197 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd);




static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId);




static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void);
# 217 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern IfxCpu_CoreMode IfxCpu_getCoreMode(Ifx_CPU *cpu);





extern IfxCpu_ResourceCpu IfxCpu_getIndex(Ifx_CPU *cpu);
# 232 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setCoreMode(Ifx_CPU *cpu, IfxCpu_CoreMode mode);
# 241 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setProgramCounter(Ifx_CPU *cpu, uint32 programCounter);
# 250 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_startCore(Ifx_CPU *cpu, uint32 programCounter);
# 267 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void);
# 277 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void);





static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void);




static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void);
# 297 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled);
# 315 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable);
# 324 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable);




static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void);





static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address);
# 346 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable);
# 357 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable);
# 374 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void);
# 387 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void);







static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void);
# 408 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void);





static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint16 address);






static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint16 address);







static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode);
# 440 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable);







static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void);
# 457 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count);
# 466 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count);







static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count);
# 501 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_acquireMutex(IfxCpu_mutexLock *lock);
# 519 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_releaseMutex(IfxCpu_mutexLock *lock);







extern void IfxCpu_resetSpinLock(IfxCpu_spinLock *lock);
# 546 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setSpinLock(IfxCpu_spinLock *lock, uint32 timeoutCount);
# 561 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern uint32 IfxCpu_getRandomValue(uint32 *seed);







extern uint32 IfxCpu_getRandomValueWithinRange(uint32 *seed, uint32 min, uint32 max);
# 612 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_waitEvent(IfxCpu_syncEvent *event, uint32 timeoutMilliSec);
# 621 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_emitEvent(IfxCpu_syncEvent *event);







static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void)
{
    Ifx_CPU_ICR reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE2C" : "=d" (__res) :: "memory"); __res; }));
    return reg.B.IE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void)
{
    boolean enabled;
    enabled = IfxCpu_areInterruptsEnabled();
    __asm__ volatile ("disable" : : : "memory");
    __nop();
    return enabled;
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void)
{
    __asm__ volatile ("enable" : : : "memory");
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex]);



    checkRestrictionMask = ((uint16)1 << (7 - coreIndex)) | ((uint16)1 << 0xC);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8100" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8100" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex]);



    checkRestrictionMask = ((uint16)1 << (7 - coreIndex)) | ((uint16)1 << 0xD);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8104" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8104" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void)
{
    __asm__ volatile ("disable" : : : "memory");
    __nop();
}


static inline __attribute__ ((always_inline)) Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu)
{
    Ifx_CPU *module;

    if (cpu < IfxCpu_ResourceCpu_none)
    {
        module = (Ifx_CPU *)IfxCpu_cfg_indexMap[cpu].module;
    }
    else
    {
        module = ((void *)0);
    }

    return module;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC04);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC04);
}


static inline __attribute__ ((always_inline)) IfxCpu_Id IfxCpu_getCoreId(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_Id)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC08);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC08);
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint16 address)
{
    Ifx_CPU_CCNT ccnt;

    if (address == 0xFC04)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC08)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC0C)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC10)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC14)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    }

    return ccnt.B.CountValue;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint16 address)
{
    Ifx_CPU_CCNT ccnt;

    if (address == 0xFC04)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC08)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC0C)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC10)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC14)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    }

    return ccnt.B.SOvf;
}


static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd)
{
    uint32 k;
    uint32 nxt_cxi_val = 0;
    uint32 *prvCsa = 0U;
    uint32 *nxtCsa = csaBegin;
    uint32 numOfCsa = (((uint32)csaEnd - (uint32)csaBegin) / 64U);

    for (k = 0; k < numOfCsa; k++)
    {
        nxt_cxi_val = ((uint32)nxtCsa & (0XFU << 28)) >> 12 | ((uint32)nxtCsa & (0XFFFFU << 6)) >> 6;

        if (k == 0)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        if (k == (numOfCsa - 3U))
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }

        prvCsa = (uint32 *)nxtCsa;
        nxtCsa += 16;
    }

    *prvCsa = 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void)
{
    uint16 cpuWdtPassword = IfxScuWdt_getCpuWatchdogPassword();
    {
        IfxScuWdt_clearCpuEndinit(cpuWdtPassword);
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x9204" : "=d" (__res) :: "memory"); __res; }));
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinit(cpuWdtPassword);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address)
{
    uint8 segment = (uint32)address >> 24;
    return ((segment == (8)) || (segment == (9))) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));

    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC08" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC0C" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC10" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC14" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = 1;
    cctrl.B.CM = mode;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled)
{
    if (enabled != 0)
    {
        __asm__ volatile ("enable" : : : "memory");
    }
}


static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable)
{
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    cctrl.B.CE = enable;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable)
{
    if (enable)
    {
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = 0;
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
    }

    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU*)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId)
{
    Ifx_CPU_PSW psw;
    ((void)0);
    psw.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    psw.B.S = safetyId;
    do { unsigned __newval = (unsigned) ((uint32)psw.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void)
{
    IfxCpu_Perf result;


    __stopPerfCounters();

    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    result.clock.counter = ccnt.B.CountValue;
    result.clock.overlfow = ccnt.B.SOvf;

    Ifx_CPU_ICNT icnt;
    icnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    result.instruction.counter = icnt.B.CountValue;
    result.instruction.overlfow = icnt.B.SOvf;

    Ifx_CPU_M1CNT m1cnt;
    m1cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    result.counter1.counter = m1cnt.B.CountValue;
    result.counter1.overlfow = m1cnt.B.SOvf;

    Ifx_CPU_M2CNT m2cnt;
    m2cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    result.counter2.counter = m2cnt.B.CountValue;
    result.counter2.overlfow = m2cnt.B.SOvf;

    Ifx_CPU_M3CNT m3cnt;
    m3cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    result.counter3.counter = m3cnt.B.CountValue;
    result.counter3.overlfow = m3cnt.B.SOvf;

    return result;
}


static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void)
{
    (*(Ifx_SCU*)0xF0036000u).SWRSTCON.B.SWRSTREQ = 1;


    while (1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC04, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC08, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count)
{
    Ifx_CPU_CCTRL cctrl;
    boolean enableBit;

    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    enableBit = cctrl.B.CE;
    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    count &= ~(1U << 31);
    do { unsigned __newval = (unsigned) (count); __asm__ volatile ("mtcr LO:" "address" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = enableBit;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}
# 108 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h" 2


# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_regdef.h"
typedef struct _Ifx_FLASH_ACCEN0_Bits
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
} Ifx_FLASH_ACCEN0_Bits;


typedef struct _Ifx_FLASH_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_FLASH_ACCEN1_Bits;


typedef struct _Ifx_FLASH_CBAB_CFG_Bits
{
    unsigned int SEL:6;
    unsigned int reserved_6:2;
    unsigned int CLR:1;
    unsigned int DIS:1;
    unsigned int reserved_10:22;
} Ifx_FLASH_CBAB_CFG_Bits;


typedef struct _Ifx_FLASH_CBAB_STAT_Bits
{
    unsigned int VLD0:1;
    unsigned int VLD1:1;
    unsigned int VLD2:1;
    unsigned int VLD3:1;
    unsigned int VLD4:1;
    unsigned int VLD5:1;
    unsigned int VLD6:1;
    unsigned int VLD7:1;
    unsigned int VLD8:1;
    unsigned int VLD9:1;
    unsigned int reserved_10:22;
} Ifx_FLASH_CBAB_STAT_Bits;


typedef struct _Ifx_FLASH_CBAB_TOP_Bits
{
    unsigned int reserved_0:5;
    unsigned int ADDR:19;
    unsigned int ERR:6;
    unsigned int VLD:1;
    unsigned int CLR:1;
} Ifx_FLASH_CBAB_TOP_Bits;


typedef struct _Ifx_FLASH_COMM0_Bits
{
    unsigned int STATUS:8;
    unsigned int reserved_8:24;
} Ifx_FLASH_COMM0_Bits;


typedef struct _Ifx_FLASH_COMM1_Bits
{
    unsigned int STATUS:8;
    unsigned int DATA:8;
    unsigned int reserved_16:16;
} Ifx_FLASH_COMM1_Bits;


typedef struct _Ifx_FLASH_COMM2_Bits
{
    unsigned int STATUS:8;
    unsigned int DATA:8;
    unsigned int reserved_16:16;
} Ifx_FLASH_COMM2_Bits;


typedef struct _Ifx_FLASH_ECCRD_Bits
{
    unsigned int RCODE:22;
    unsigned int reserved_22:8;
    unsigned int EDCERRINJ:1;
    unsigned int ECCORDIS:1;
} Ifx_FLASH_ECCRD_Bits;


typedef struct _Ifx_FLASH_ECCRP_Bits
{
    unsigned int RCODE:22;
    unsigned int reserved_22:8;
    unsigned int EDCERRINJ:1;
    unsigned int ECCORDIS:1;
} Ifx_FLASH_ECCRP_Bits;


typedef struct _Ifx_FLASH_ECCW_Bits
{
    unsigned int WCODE:22;
    unsigned int reserved_22:8;
    unsigned int DECENCDIS:1;
    unsigned int PECENCDIS:1;
} Ifx_FLASH_ECCW_Bits;


typedef struct _Ifx_FLASH_FCON_Bits
{
    unsigned int WSPFLASH:4;
    unsigned int WSECPF:2;
    unsigned int WSDFLASH:6;
    unsigned int WSECDF:3;
    unsigned int IDLE:1;
    unsigned int ESLDIS:1;
    unsigned int SLEEP:1;
    unsigned int NSAFECC:1;
    unsigned int STALL:1;
    unsigned int RES21:2;
    unsigned int RES23:2;
    unsigned int VOPERM:1;
    unsigned int SQERM:1;
    unsigned int PROERM:1;
    unsigned int reserved_27:3;
    unsigned int PR5V:1;
    unsigned int EOBM:1;
} Ifx_FLASH_FCON_Bits;


typedef struct _Ifx_FLASH_FPRO_Bits
{
    unsigned int PROINP:1;
    unsigned int PRODISP:1;
    unsigned int PROIND:1;
    unsigned int PRODISD:1;
    unsigned int PROINHSMCOTP:1;
    unsigned int RES5:1;
    unsigned int PROINOTP:1;
    unsigned int RES7:1;
    unsigned int PROINDBG:1;
    unsigned int PRODISDBG:1;
    unsigned int PROINHSM:1;
    unsigned int reserved_11:5;
    unsigned int DCFP:1;
    unsigned int DDFP:1;
    unsigned int DDFPX:1;
    unsigned int reserved_19:1;
    unsigned int DDFD:1;
    unsigned int reserved_21:1;
    unsigned int ENPE:2;
    unsigned int reserved_24:8;
} Ifx_FLASH_FPRO_Bits;


typedef struct _Ifx_FLASH_FSR_Bits
{
    unsigned int FABUSY:1;
    unsigned int D0BUSY:1;
    unsigned int D1BUSY:1;
    unsigned int P0BUSY:1;
    unsigned int P1BUSY:1;
    unsigned int RES5:1;
    unsigned int RES6:1;
    unsigned int PROG:1;
    unsigned int ERASE:1;
    unsigned int PFPAGE:1;
    unsigned int DFPAGE:1;
    unsigned int OPER:1;
    unsigned int SQER:1;
    unsigned int PROER:1;
    unsigned int PFSBER:1;
    unsigned int PFDBER:1;
    unsigned int PFMBER:1;
    unsigned int RES17:1;
    unsigned int DFSBER:1;
    unsigned int DFDBER:1;
    unsigned int DFTBER:1;
    unsigned int DFMBER:1;
    unsigned int SRIADDERR:1;
    unsigned int reserved_23:2;
    unsigned int PVER:1;
    unsigned int EVER:1;
    unsigned int SPND:1;
    unsigned int SLM:1;
    unsigned int reserved_29:1;
    unsigned int ORIER:1;
    unsigned int reserved_31:1;
} Ifx_FLASH_FSR_Bits;


typedef struct _Ifx_FLASH_HSMFCON_Bits
{
    unsigned int LCKHSMUCB:2;
    unsigned int reserved_2:22;
    unsigned int VOPERM:1;
    unsigned int SQERM:1;
    unsigned int reserved_26:5;
    unsigned int EOBM:1;
} Ifx_FLASH_HSMFCON_Bits;


typedef struct _Ifx_FLASH_HSMFSR_Bits
{
    unsigned int reserved_0:2;
    unsigned int D1BUSY:1;
    unsigned int reserved_3:4;
    unsigned int PROG:1;
    unsigned int ERASE:1;
    unsigned int reserved_9:1;
    unsigned int DFPAGE:1;
    unsigned int OPER:1;
    unsigned int SQER:1;
    unsigned int reserved_13:12;
    unsigned int PVER:1;
    unsigned int EVER:1;
    unsigned int SPND:1;
    unsigned int reserved_28:4;
} Ifx_FLASH_HSMFSR_Bits;


typedef struct _Ifx_FLASH_HSMMARD_Bits
{
    unsigned int reserved_0:1;
    unsigned int SELD1:1;
    unsigned int reserved_2:1;
    unsigned int SPND:1;
    unsigned int SPNDERR:1;
    unsigned int reserved_5:27;
} Ifx_FLASH_HSMMARD_Bits;


typedef struct _Ifx_FLASH_HSMRRAD_Bits
{
    unsigned int reserved_0:3;
    unsigned int ADD:29;
} Ifx_FLASH_HSMRRAD_Bits;


typedef struct _Ifx_FLASH_HSMRRCT_Bits
{
    unsigned int STRT:1;
    unsigned int STP:1;
    unsigned int BUSY:1;
    unsigned int DONE:1;
    unsigned int ERR:1;
    unsigned int reserved_5:3;
    unsigned int EOBM:1;
    unsigned int reserved_9:7;
    unsigned int CNT:16;
} Ifx_FLASH_HSMRRCT_Bits;


typedef struct _Ifx_FLASH_HSMRRD0_Bits
{
    unsigned int DATA:32;
} Ifx_FLASH_HSMRRD0_Bits;


typedef struct _Ifx_FLASH_HSMRRD1_Bits
{
    unsigned int DATA:32;
} Ifx_FLASH_HSMRRD1_Bits;


typedef struct _Ifx_FLASH_ID_Bits
{
    unsigned int MOD_REV:8;
    unsigned int MOD_TYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_FLASH_ID_Bits;


typedef struct _Ifx_FLASH_MARD_Bits
{
    unsigned int HMARGIN:1;
    unsigned int SELD0:1;
    unsigned int reserved_2:1;
    unsigned int SPND:1;
    unsigned int SPNDERR:1;
    unsigned int reserved_5:10;
    unsigned int TRAPDIS:1;
    unsigned int reserved_16:16;
} Ifx_FLASH_MARD_Bits;


typedef struct _Ifx_FLASH_MARP_Bits
{
    unsigned int SELP0:1;
    unsigned int SELP1:1;
    unsigned int RES2:1;
    unsigned int RES3:1;
    unsigned int reserved_4:11;
    unsigned int TRAPDIS:1;
    unsigned int reserved_16:16;
} Ifx_FLASH_MARP_Bits;


typedef struct _Ifx_FLASH_PROCOND_Bits
{
    unsigned int L:1;
    unsigned int NSAFECC:1;
    unsigned int RAMIN:2;
    unsigned int RAMINSEL:4;
    unsigned int OSCCFG:1;
    unsigned int MODE:2;
    unsigned int APREN:1;
    unsigned int CAP0EN:1;
    unsigned int CAP1EN:1;
    unsigned int CAP2EN:1;
    unsigned int CAP3EN:1;
    unsigned int ESR0CNT:12;
    unsigned int RES29:2;
    unsigned int RES30:1;
    unsigned int RPRO:1;
} Ifx_FLASH_PROCOND_Bits;


typedef struct _Ifx_FLASH_PROCONDBG_Bits
{
    unsigned int OCDSDIS:1;
    unsigned int DBGIFLCK:1;
    unsigned int EDM:2;
    unsigned int reserved_4:28;
} Ifx_FLASH_PROCONDBG_Bits;


typedef struct _Ifx_FLASH_PROCONHSM_Bits
{
    unsigned int HSMDBGDIS:1;
    unsigned int DBGIFLCK:1;
    unsigned int TSTIFLCK:1;
    unsigned int HSMTSTDIS:1;
    unsigned int RES15:12;
    unsigned int reserved_16:16;
} Ifx_FLASH_PROCONHSM_Bits;


typedef struct _Ifx_FLASH_PROCONHSMCOTP_Bits
{
    unsigned int HSMBOOTEN:1;
    unsigned int SSWWAIT:1;
    unsigned int HSMDX:1;
    unsigned int HSM6X:1;
    unsigned int HSM16X:1;
    unsigned int HSM17X:1;
    unsigned int S6ROM:1;
    unsigned int HSMENPINS:2;
    unsigned int HSMENRES:2;
    unsigned int DESTDBG:2;
    unsigned int BLKFLAN:1;
    unsigned int reserved_14:2;
    unsigned int S16ROM:1;
    unsigned int S17ROM:1;
    unsigned int reserved_18:14;
} Ifx_FLASH_PROCONHSMCOTP_Bits;


typedef struct _Ifx_FLASH_PROCONOTP_Bits
{
    unsigned int S0ROM:1;
    unsigned int S1ROM:1;
    unsigned int S2ROM:1;
    unsigned int S3ROM:1;
    unsigned int S4ROM:1;
    unsigned int S5ROM:1;
    unsigned int S6ROM:1;
    unsigned int S7ROM:1;
    unsigned int S8ROM:1;
    unsigned int S9ROM:1;
    unsigned int S10ROM:1;
    unsigned int S11ROM:1;
    unsigned int S12ROM:1;
    unsigned int S13ROM:1;
    unsigned int S14ROM:1;
    unsigned int S15ROM:1;
    unsigned int S16ROM:1;
    unsigned int S17ROM:1;
    unsigned int S18ROM:1;
    unsigned int S19ROM:1;
    unsigned int S20ROM:1;
    unsigned int S21ROM:1;
    unsigned int S22ROM:1;
    unsigned int S23ROM:1;
    unsigned int S24ROM:1;
    unsigned int S25ROM:1;
    unsigned int S26ROM:1;
    unsigned int reserved_27:2;
    unsigned int BML:2;
    unsigned int TP:1;
} Ifx_FLASH_PROCONOTP_Bits;


typedef struct _Ifx_FLASH_PROCONP_Bits
{
    unsigned int S0L:1;
    unsigned int S1L:1;
    unsigned int S2L:1;
    unsigned int S3L:1;
    unsigned int S4L:1;
    unsigned int S5L:1;
    unsigned int S6L:1;
    unsigned int S7L:1;
    unsigned int S8L:1;
    unsigned int S9L:1;
    unsigned int S10L:1;
    unsigned int S11L:1;
    unsigned int S12L:1;
    unsigned int S13L:1;
    unsigned int S14L:1;
    unsigned int S15L:1;
    unsigned int S16L:1;
    unsigned int S17L:1;
    unsigned int S18L:1;
    unsigned int S19L:1;
    unsigned int S20L:1;
    unsigned int S21L:1;
    unsigned int S22L:1;
    unsigned int S23L:1;
    unsigned int S24L:1;
    unsigned int S25L:1;
    unsigned int S26L:1;
    unsigned int reserved_27:4;
    unsigned int RPRO:1;
} Ifx_FLASH_PROCONP_Bits;


typedef struct _Ifx_FLASH_PROCONWOP_Bits
{
    unsigned int S0WOP:1;
    unsigned int S1WOP:1;
    unsigned int S2WOP:1;
    unsigned int S3WOP:1;
    unsigned int S4WOP:1;
    unsigned int S5WOP:1;
    unsigned int S6WOP:1;
    unsigned int S7WOP:1;
    unsigned int S8WOP:1;
    unsigned int S9WOP:1;
    unsigned int S10WOP:1;
    unsigned int S11WOP:1;
    unsigned int S12WOP:1;
    unsigned int S13WOP:1;
    unsigned int S14WOP:1;
    unsigned int S15WOP:1;
    unsigned int S16WOP:1;
    unsigned int S17WOP:1;
    unsigned int S18WOP:1;
    unsigned int S19WOP:1;
    unsigned int S20WOP:1;
    unsigned int S21WOP:1;
    unsigned int S22WOP:1;
    unsigned int S23WOP:1;
    unsigned int S24WOP:1;
    unsigned int S25WOP:1;
    unsigned int S26WOP:1;
    unsigned int reserved_27:4;
    unsigned int DATM:1;
} Ifx_FLASH_PROCONWOP_Bits;


typedef struct _Ifx_FLASH_RDB_CFG0_Bits
{
    unsigned int TAG:6;
    unsigned int reserved_6:26;
} Ifx_FLASH_RDB_CFG0_Bits;


typedef struct _Ifx_FLASH_RDB_CFG1_Bits
{
    unsigned int TAG:6;
    unsigned int reserved_6:26;
} Ifx_FLASH_RDB_CFG1_Bits;


typedef struct _Ifx_FLASH_RDB_CFG2_Bits
{
    unsigned int TAG:6;
    unsigned int reserved_6:26;
} Ifx_FLASH_RDB_CFG2_Bits;


typedef struct _Ifx_FLASH_RRAD_Bits
{
    unsigned int reserved_0:3;
    unsigned int ADD:29;
} Ifx_FLASH_RRAD_Bits;


typedef struct _Ifx_FLASH_RRCT_Bits
{
    unsigned int STRT:1;
    unsigned int STP:1;
    unsigned int BUSY:1;
    unsigned int DONE:1;
    unsigned int ERR:1;
    unsigned int reserved_5:3;
    unsigned int EOBM:1;
    unsigned int reserved_9:7;
    unsigned int CNT:16;
} Ifx_FLASH_RRCT_Bits;


typedef struct _Ifx_FLASH_RRD0_Bits
{
    unsigned int DATA:32;
} Ifx_FLASH_RRD0_Bits;


typedef struct _Ifx_FLASH_RRD1_Bits
{
    unsigned int DATA:32;
} Ifx_FLASH_RRD1_Bits;


typedef struct _Ifx_FLASH_UBAB_CFG_Bits
{
    unsigned int SEL:6;
    unsigned int reserved_6:2;
    unsigned int CLR:1;
    unsigned int DIS:1;
    unsigned int reserved_10:22;
} Ifx_FLASH_UBAB_CFG_Bits;


typedef struct _Ifx_FLASH_UBAB_STAT_Bits
{
    unsigned int VLD0:1;
    unsigned int reserved_1:31;
} Ifx_FLASH_UBAB_STAT_Bits;


typedef struct _Ifx_FLASH_UBAB_TOP_Bits
{
    unsigned int reserved_0:5;
    unsigned int ADDR:19;
    unsigned int ERR:6;
    unsigned int VLD:1;
    unsigned int CLR:1;
} Ifx_FLASH_UBAB_TOP_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN0_Bits B;
} Ifx_FLASH_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN1_Bits B;
} Ifx_FLASH_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_CFG_Bits B;
} Ifx_FLASH_CBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_STAT_Bits B;
} Ifx_FLASH_CBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_TOP_Bits B;
} Ifx_FLASH_CBAB_TOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM0_Bits B;
} Ifx_FLASH_COMM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM1_Bits B;
} Ifx_FLASH_COMM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM2_Bits B;
} Ifx_FLASH_COMM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRD_Bits B;
} Ifx_FLASH_ECCRD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRP_Bits B;
} Ifx_FLASH_ECCRP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCW_Bits B;
} Ifx_FLASH_ECCW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FCON_Bits B;
} Ifx_FLASH_FCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FPRO_Bits B;
} Ifx_FLASH_FPRO;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FSR_Bits B;
} Ifx_FLASH_FSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMFCON_Bits B;
} Ifx_FLASH_HSMFCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMFSR_Bits B;
} Ifx_FLASH_HSMFSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMMARD_Bits B;
} Ifx_FLASH_HSMMARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRAD_Bits B;
} Ifx_FLASH_HSMRRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRCT_Bits B;
} Ifx_FLASH_HSMRRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRD0_Bits B;
} Ifx_FLASH_HSMRRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRD1_Bits B;
} Ifx_FLASH_HSMRRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ID_Bits B;
} Ifx_FLASH_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARD_Bits B;
} Ifx_FLASH_MARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARP_Bits B;
} Ifx_FLASH_MARP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCOND_Bits B;
} Ifx_FLASH_PROCOND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONDBG_Bits B;
} Ifx_FLASH_PROCONDBG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSM_Bits B;
} Ifx_FLASH_PROCONHSM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSMCOTP_Bits B;
} Ifx_FLASH_PROCONHSMCOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONOTP_Bits B;
} Ifx_FLASH_PROCONOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONP_Bits B;
} Ifx_FLASH_PROCONP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONWOP_Bits B;
} Ifx_FLASH_PROCONWOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG0_Bits B;
} Ifx_FLASH_RDB_CFG0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG1_Bits B;
} Ifx_FLASH_RDB_CFG1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG2_Bits B;
} Ifx_FLASH_RDB_CFG2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRAD_Bits B;
} Ifx_FLASH_RRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRCT_Bits B;
} Ifx_FLASH_RRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD0_Bits B;
} Ifx_FLASH_RRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD1_Bits B;
} Ifx_FLASH_RRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_CFG_Bits B;
} Ifx_FLASH_UBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_STAT_Bits B;
} Ifx_FLASH_UBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_TOP_Bits B;
} Ifx_FLASH_UBAB_TOP;
# 949 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH_CBAB
{
    Ifx_FLASH_CBAB_CFG CFG;
    Ifx_FLASH_CBAB_STAT STAT;
    Ifx_FLASH_CBAB_TOP TOP;
} Ifx_FLASH_CBAB;


typedef volatile struct _Ifx_FLASH_RDB
{
    Ifx_FLASH_RDB_CFG0 CFG0;
    Ifx_FLASH_RDB_CFG1 CFG1;
    Ifx_FLASH_RDB_CFG2 CFG2;
} Ifx_FLASH_RDB;


typedef volatile struct _Ifx_FLASH_UBAB
{
    Ifx_FLASH_UBAB_CFG CFG;
    Ifx_FLASH_UBAB_STAT STAT;
    Ifx_FLASH_UBAB_TOP TOP;
} Ifx_FLASH_UBAB;
# 983 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH
{
    Ifx_FLASH_COMM0 COMM0;
    Ifx_FLASH_COMM1 COMM1;
    Ifx_FLASH_COMM2 COMM2;
    unsigned char reserved_C[4092];
    Ifx_FLASH_ID ID;
    unsigned char reserved_100C[4];
    Ifx_FLASH_FSR FSR;
    Ifx_FLASH_FCON FCON;
    unsigned char reserved_1018[4];
    Ifx_FLASH_FPRO FPRO;
    Ifx_FLASH_PROCONP PROCONP[2];
    unsigned char reserved_1028[8];
    Ifx_FLASH_PROCOND PROCOND;
    Ifx_FLASH_PROCONHSMCOTP PROCONHSMCOTP;
    Ifx_FLASH_PROCONOTP PROCONOTP[2];
    unsigned char reserved_1040[8];
    Ifx_FLASH_PROCONWOP PROCONWOP[2];
    unsigned char reserved_1050[8];
    Ifx_FLASH_PROCONDBG PROCONDBG;
    Ifx_FLASH_PROCONHSM PROCONHSM;
    Ifx_FLASH_RDB RDBCFG[2];
    unsigned char reserved_1078[24];
    Ifx_FLASH_ECCW ECCW;
    Ifx_FLASH_ECCRP ECCRP[2];
    unsigned char reserved_109C[8];
    Ifx_FLASH_ECCRD ECCRD;
    Ifx_FLASH_MARP MARP;
    Ifx_FLASH_MARD MARD;
    unsigned char reserved_10B0[4];
    Ifx_FLASH_CBAB CBAB[2];
    unsigned char reserved_10CC[24];
    Ifx_FLASH_UBAB UBAB[2];
    unsigned char reserved_10FC[68];
    Ifx_FLASH_RRCT RRCT;
    Ifx_FLASH_RRD0 RRD0;
    Ifx_FLASH_RRD1 RRD1;
    Ifx_FLASH_RRAD RRAD;
    unsigned char reserved_1150[176];
    Ifx_FLASH_HSMFSR HSMFSR;
    Ifx_FLASH_HSMFCON HSMFCON;
    Ifx_FLASH_HSMMARD HSMMARD;
    Ifx_FLASH_HSMRRCT HSMRRCT;
    Ifx_FLASH_HSMRRD0 HSMRRD0;
    Ifx_FLASH_HSMRRD1 HSMRRD1;
    Ifx_FLASH_HSMRRAD HSMRRAD;
    unsigned char reserved_121C[476];
    Ifx_FLASH_ACCEN1 ACCEN1;
    Ifx_FLASH_ACCEN0 ACCEN0;
} Ifx_FLASH;
# 37 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_reg.h" 2
# 111 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxScu_PinMap.h" 1
# 33 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxScu_PinMap.h"
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
# 34 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxScu_PinMap.h" 2





typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Evrwup_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
} IfxScu_Hwcfg_In;


typedef const struct
{
    Ifx_SCU* module;
    uint8 channelId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Req_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Dcdcsync_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Emgstop_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Wdtlck_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Extclk_Out;

extern IfxScu_Dcdcsync_Out IfxScu_DCDCSYNC_P32_2_OUT;
extern IfxScu_Dcdcsync_Out IfxScu_DCDCSYNC_P33_13_OUT;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPA_P33_8_IN;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPB_P21_2_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPA_P14_1_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPB_P15_1_IN;
extern IfxScu_Extclk_Out IfxScu_EXTCLK0_P23_1_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P11_12_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P32_4_OUT;
extern IfxScu_Hwcfg_In IfxScu_HWCFG0DCLDO_P14_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG1EVR33_P14_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG2EVR13_P14_2_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG3_BMI_P14_3_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG4_P10_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG5_P10_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG6_P14_4_IN;
extern IfxScu_Req_In IfxScu_REQ0_P15_4_IN;
extern IfxScu_Req_In IfxScu_REQ10_P14_3_IN;
extern IfxScu_Req_In IfxScu_REQ11_P20_9_IN;
extern IfxScu_Req_In IfxScu_REQ12_P11_10_IN;
extern IfxScu_Req_In IfxScu_REQ13_P15_5_IN;
extern IfxScu_Req_In IfxScu_REQ14_P02_1_IN;
extern IfxScu_Req_In IfxScu_REQ15_P14_1_IN;
extern IfxScu_Req_In IfxScu_REQ16_P15_1_IN;
extern IfxScu_Req_In IfxScu_REQ1_P15_8_IN;
extern IfxScu_Req_In IfxScu_REQ2_P10_2_IN;
extern IfxScu_Req_In IfxScu_REQ3_P10_3_IN;
extern IfxScu_Req_In IfxScu_REQ4_P10_7_IN;
extern IfxScu_Req_In IfxScu_REQ5_P10_8_IN;
extern IfxScu_Req_In IfxScu_REQ6_P02_0_IN;
extern IfxScu_Req_In IfxScu_REQ7_P00_4_IN;
extern IfxScu_Req_In IfxScu_REQ8_P33_7_IN;
extern IfxScu_Req_In IfxScu_REQ9_P20_0_IN;
extern IfxScu_Wdtlck_Out IfxScu_WDT0LCK_P20_8_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDT1LCK_P20_7_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDT2LCK_P20_6_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDTSLCK_P20_9_OUT;
# 145 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxScu_PinMap.h"
extern const IfxScu_Dcdcsync_Out *IfxScu_Dcdcsync_Out_pinTable[1][2];


extern const IfxScu_Emgstop_In *IfxScu_Emgstop_In_pinTable[1][2];


extern const IfxScu_Evrwup_In *IfxScu_Evrwup_In_pinTable[1][2];


extern const IfxScu_Extclk_Out *IfxScu_Extclk_Out_pinTable[1][3];


extern const IfxScu_Hwcfg_In *IfxScu_Hwcfg_In_pinTable[1][7];


extern const IfxScu_Req_In *IfxScu_Req_In_pinTable[1][8][4];


extern const IfxScu_Wdtlck_Out *IfxScu_Wdtlck_Out_pinTable[1][4];
# 112 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h" 2
# 128 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
typedef void (*IfxScuCcu_PllStepsFunctionHook)(void);
# 138 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
typedef enum
{
    IfxScuCcu_K1divider_1 = 0,
    IfxScuCcu_K1divider_2,
    IfxScuCcu_K1divider_3,
    IfxScuCcu_K1divider_4,
    IfxScuCcu_K1divider_5,
    IfxScuCcu_K1divider_6,
    IfxScuCcu_K1divider_7,
    IfxScuCcu_K1divider_8,
    IfxScuCcu_K1divider_9,
    IfxScuCcu_K1divider_10,
    IfxScuCcu_K1divider_11,
    IfxScuCcu_K1divider_12,
    IfxScuCcu_K1divider_13,
    IfxScuCcu_K1divider_14,
    IfxScuCcu_K1divider_15,
    IfxScuCcu_K1divider_16,
    IfxScuCcu_K1divider_17,
    IfxScuCcu_K1divider_18,
    IfxScuCcu_K1divider_19,
    IfxScuCcu_K1divider_20,
    IfxScuCcu_K1divider_21,
    IfxScuCcu_K1divider_22,
    IfxScuCcu_K1divider_23,
    IfxScuCcu_K1divider_24,
    IfxScuCcu_K1divider_25,
    IfxScuCcu_K1divider_26,
    IfxScuCcu_K1divider_27,
    IfxScuCcu_K1divider_28,
    IfxScuCcu_K1divider_29,
    IfxScuCcu_K1divider_30,
    IfxScuCcu_K1divider_31,
    IfxScuCcu_K1divider_32,
    IfxScuCcu_K1divider_33,
    IfxScuCcu_K1divider_34,
    IfxScuCcu_K1divider_35,
    IfxScuCcu_K1divider_36,
    IfxScuCcu_K1divider_37,
    IfxScuCcu_K1divider_38,
    IfxScuCcu_K1divider_39,
    IfxScuCcu_K1divider_40,
    IfxScuCcu_K1divider_41,
    IfxScuCcu_K1divider_42,
    IfxScuCcu_K1divider_43,
    IfxScuCcu_K1divider_44,
    IfxScuCcu_K1divider_45,
    IfxScuCcu_K1divider_46,
    IfxScuCcu_K1divider_47,
    IfxScuCcu_K1divider_48,
    IfxScuCcu_K1divider_49,
    IfxScuCcu_K1divider_50,
    IfxScuCcu_K1divider_51,
    IfxScuCcu_K1divider_52,
    IfxScuCcu_K1divider_53,
    IfxScuCcu_K1divider_54,
    IfxScuCcu_K1divider_55,
    IfxScuCcu_K1divider_56,
    IfxScuCcu_K1divider_57,
    IfxScuCcu_K1divider_58,
    IfxScuCcu_K1divider_59,
    IfxScuCcu_K1divider_60,
    IfxScuCcu_K1divider_61,
    IfxScuCcu_K1divider_62,
    IfxScuCcu_K1divider_63,
    IfxScuCcu_K1divider_64,
    IfxScuCcu_K1divider_65,
    IfxScuCcu_K1divider_66,
    IfxScuCcu_K1divider_67,
    IfxScuCcu_K1divider_68,
    IfxScuCcu_K1divider_69,
    IfxScuCcu_K1divider_70,
    IfxScuCcu_K1divider_71,
    IfxScuCcu_K1divider_72,
    IfxScuCcu_K1divider_73,
    IfxScuCcu_K1divider_74,
    IfxScuCcu_K1divider_75,
    IfxScuCcu_K1divider_76,
    IfxScuCcu_K1divider_77,
    IfxScuCcu_K1divider_78,
    IfxScuCcu_K1divider_79,
    IfxScuCcu_K1divider_80,
    IfxScuCcu_K1divider_81,
    IfxScuCcu_K1divider_82,
    IfxScuCcu_K1divider_83,
    IfxScuCcu_K1divider_84,
    IfxScuCcu_K1divider_85,
    IfxScuCcu_K1divider_86,
    IfxScuCcu_K1divider_87,
    IfxScuCcu_K1divider_88,
    IfxScuCcu_K1divider_89,
    IfxScuCcu_K1divider_90,
    IfxScuCcu_K1divider_91,
    IfxScuCcu_K1divider_92,
    IfxScuCcu_K1divider_93,
    IfxScuCcu_K1divider_94,
    IfxScuCcu_K1divider_95,
    IfxScuCcu_K1divider_96,
    IfxScuCcu_K1divider_97,
    IfxScuCcu_K1divider_98,
    IfxScuCcu_K1divider_99,
    IfxScuCcu_K1divider_100,
    IfxScuCcu_K1divider_101,
    IfxScuCcu_K1divider_102,
    IfxScuCcu_K1divider_103,
    IfxScuCcu_K1divider_104,
    IfxScuCcu_K1divider_105,
    IfxScuCcu_K1divider_106,
    IfxScuCcu_K1divider_107,
    IfxScuCcu_K1divider_108,
    IfxScuCcu_K1divider_109,
    IfxScuCcu_K1divider_110,
    IfxScuCcu_K1divider_111,
    IfxScuCcu_K1divider_112,
    IfxScuCcu_K1divider_113,
    IfxScuCcu_K1divider_114,
    IfxScuCcu_K1divider_115,
    IfxScuCcu_K1divider_116,
    IfxScuCcu_K1divider_117,
    IfxScuCcu_K1divider_118,
    IfxScuCcu_K1divider_119,
    IfxScuCcu_K1divider_120,
    IfxScuCcu_K1divider_121,
    IfxScuCcu_K1divider_122,
    IfxScuCcu_K1divider_123,
    IfxScuCcu_K1divider_124,
    IfxScuCcu_K1divider_125,
    IfxScuCcu_K1divider_126,
    IfxScuCcu_K1divider_127,
    IfxScuCcu_K1divider_128
} IfxScuCcu_K1divider;



typedef enum
{
    IfxScuCcu_K2divider_1 = 0,
    IfxScuCcu_K2divider_2,
    IfxScuCcu_K2divider_3,
    IfxScuCcu_K2divider_4,
    IfxScuCcu_K2divider_5,
    IfxScuCcu_K2divider_6,
    IfxScuCcu_K2divider_7,
    IfxScuCcu_K2divider_8,
    IfxScuCcu_K2divider_9,
    IfxScuCcu_K2divider_10,
    IfxScuCcu_K2divider_11,
    IfxScuCcu_K2divider_12,
    IfxScuCcu_K2divider_13,
    IfxScuCcu_K2divider_14,
    IfxScuCcu_K2divider_15,
    IfxScuCcu_K2divider_16,
    IfxScuCcu_K2divider_17,
    IfxScuCcu_K2divider_18,
    IfxScuCcu_K2divider_19,
    IfxScuCcu_K2divider_20,
    IfxScuCcu_K2divider_21,
    IfxScuCcu_K2divider_22,
    IfxScuCcu_K2divider_23,
    IfxScuCcu_K2divider_24,
    IfxScuCcu_K2divider_25,
    IfxScuCcu_K2divider_26,
    IfxScuCcu_K2divider_27,
    IfxScuCcu_K2divider_28,
    IfxScuCcu_K2divider_29,
    IfxScuCcu_K2divider_30,
    IfxScuCcu_K2divider_31,
    IfxScuCcu_K2divider_32,
    IfxScuCcu_K2divider_33,
    IfxScuCcu_K2divider_34,
    IfxScuCcu_K2divider_35,
    IfxScuCcu_K2divider_36,
    IfxScuCcu_K2divider_37,
    IfxScuCcu_K2divider_38,
    IfxScuCcu_K2divider_39,
    IfxScuCcu_K2divider_40,
    IfxScuCcu_K2divider_41,
    IfxScuCcu_K2divider_42,
    IfxScuCcu_K2divider_43,
    IfxScuCcu_K2divider_44,
    IfxScuCcu_K2divider_45,
    IfxScuCcu_K2divider_46,
    IfxScuCcu_K2divider_47,
    IfxScuCcu_K2divider_48,
    IfxScuCcu_K2divider_49,
    IfxScuCcu_K2divider_50,
    IfxScuCcu_K2divider_51,
    IfxScuCcu_K2divider_52,
    IfxScuCcu_K2divider_53,
    IfxScuCcu_K2divider_54,
    IfxScuCcu_K2divider_55,
    IfxScuCcu_K2divider_56,
    IfxScuCcu_K2divider_57,
    IfxScuCcu_K2divider_58,
    IfxScuCcu_K2divider_59,
    IfxScuCcu_K2divider_60,
    IfxScuCcu_K2divider_61,
    IfxScuCcu_K2divider_62,
    IfxScuCcu_K2divider_63,
    IfxScuCcu_K2divider_64,
    IfxScuCcu_K2divider_65,
    IfxScuCcu_K2divider_66,
    IfxScuCcu_K2divider_67,
    IfxScuCcu_K2divider_68,
    IfxScuCcu_K2divider_69,
    IfxScuCcu_K2divider_70,
    IfxScuCcu_K2divider_71,
    IfxScuCcu_K2divider_72,
    IfxScuCcu_K2divider_73,
    IfxScuCcu_K2divider_74,
    IfxScuCcu_K2divider_75,
    IfxScuCcu_K2divider_76,
    IfxScuCcu_K2divider_77,
    IfxScuCcu_K2divider_78,
    IfxScuCcu_K2divider_79,
    IfxScuCcu_K2divider_80,
    IfxScuCcu_K2divider_81,
    IfxScuCcu_K2divider_82,
    IfxScuCcu_K2divider_83,
    IfxScuCcu_K2divider_84,
    IfxScuCcu_K2divider_85,
    IfxScuCcu_K2divider_86,
    IfxScuCcu_K2divider_87,
    IfxScuCcu_K2divider_88,
    IfxScuCcu_K2divider_89,
    IfxScuCcu_K2divider_90,
    IfxScuCcu_K2divider_91,
    IfxScuCcu_K2divider_92,
    IfxScuCcu_K2divider_93,
    IfxScuCcu_K2divider_94,
    IfxScuCcu_K2divider_95,
    IfxScuCcu_K2divider_96,
    IfxScuCcu_K2divider_97,
    IfxScuCcu_K2divider_98,
    IfxScuCcu_K2divider_99,
    IfxScuCcu_K2divider_100,
    IfxScuCcu_K2divider_101,
    IfxScuCcu_K2divider_102,
    IfxScuCcu_K2divider_103,
    IfxScuCcu_K2divider_104,
    IfxScuCcu_K2divider_105,
    IfxScuCcu_K2divider_106,
    IfxScuCcu_K2divider_107,
    IfxScuCcu_K2divider_108,
    IfxScuCcu_K2divider_109,
    IfxScuCcu_K2divider_110,
    IfxScuCcu_K2divider_111,
    IfxScuCcu_K2divider_112,
    IfxScuCcu_K2divider_113,
    IfxScuCcu_K2divider_114,
    IfxScuCcu_K2divider_115,
    IfxScuCcu_K2divider_116,
    IfxScuCcu_K2divider_117,
    IfxScuCcu_K2divider_118,
    IfxScuCcu_K2divider_119,
    IfxScuCcu_K2divider_120,
    IfxScuCcu_K2divider_121,
    IfxScuCcu_K2divider_122,
    IfxScuCcu_K2divider_123,
    IfxScuCcu_K2divider_124,
    IfxScuCcu_K2divider_125,
    IfxScuCcu_K2divider_126,
    IfxScuCcu_K2divider_127,
    IfxScuCcu_K2divider_128
} IfxScuCcu_K2divider;



typedef enum
{
    IfxScuCcu_K3divider_1 = 0,
    IfxScuCcu_K3divider_2,
    IfxScuCcu_K3divider_3,
    IfxScuCcu_K3divider_4,
    IfxScuCcu_K3divider_5,
    IfxScuCcu_K3divider_6,
    IfxScuCcu_K3divider_7,
    IfxScuCcu_K3divider_8,
    IfxScuCcu_K3divider_9,
    IfxScuCcu_K3divider_10,
    IfxScuCcu_K3divider_11,
    IfxScuCcu_K3divider_12,
    IfxScuCcu_K3divider_13,
    IfxScuCcu_K3divider_14,
    IfxScuCcu_K3divider_15,
    IfxScuCcu_K3divider_16,
    IfxScuCcu_K3divider_17,
    IfxScuCcu_K3divider_18,
    IfxScuCcu_K3divider_19,
    IfxScuCcu_K3divider_20,
    IfxScuCcu_K3divider_21,
    IfxScuCcu_K3divider_22,
    IfxScuCcu_K3divider_23,
    IfxScuCcu_K3divider_24,
    IfxScuCcu_K3divider_25,
    IfxScuCcu_K3divider_26,
    IfxScuCcu_K3divider_27,
    IfxScuCcu_K3divider_28,
    IfxScuCcu_K3divider_29,
    IfxScuCcu_K3divider_30,
    IfxScuCcu_K3divider_31,
    IfxScuCcu_K3divider_32,
    IfxScuCcu_K3divider_33,
    IfxScuCcu_K3divider_34,
    IfxScuCcu_K3divider_35,
    IfxScuCcu_K3divider_36,
    IfxScuCcu_K3divider_37,
    IfxScuCcu_K3divider_38,
    IfxScuCcu_K3divider_39,
    IfxScuCcu_K3divider_40,
    IfxScuCcu_K3divider_41,
    IfxScuCcu_K3divider_42,
    IfxScuCcu_K3divider_43,
    IfxScuCcu_K3divider_44,
    IfxScuCcu_K3divider_45,
    IfxScuCcu_K3divider_46,
    IfxScuCcu_K3divider_47,
    IfxScuCcu_K3divider_48,
    IfxScuCcu_K3divider_49,
    IfxScuCcu_K3divider_50,
    IfxScuCcu_K3divider_51,
    IfxScuCcu_K3divider_52,
    IfxScuCcu_K3divider_53,
    IfxScuCcu_K3divider_54,
    IfxScuCcu_K3divider_55,
    IfxScuCcu_K3divider_56,
    IfxScuCcu_K3divider_57,
    IfxScuCcu_K3divider_58,
    IfxScuCcu_K3divider_59,
    IfxScuCcu_K3divider_60,
    IfxScuCcu_K3divider_61,
    IfxScuCcu_K3divider_62,
    IfxScuCcu_K3divider_63,
    IfxScuCcu_K3divider_64,
    IfxScuCcu_K3divider_65,
    IfxScuCcu_K3divider_66,
    IfxScuCcu_K3divider_67,
    IfxScuCcu_K3divider_68,
    IfxScuCcu_K3divider_69,
    IfxScuCcu_K3divider_70,
    IfxScuCcu_K3divider_71,
    IfxScuCcu_K3divider_72,
    IfxScuCcu_K3divider_73,
    IfxScuCcu_K3divider_74,
    IfxScuCcu_K3divider_75,
    IfxScuCcu_K3divider_76,
    IfxScuCcu_K3divider_77,
    IfxScuCcu_K3divider_78,
    IfxScuCcu_K3divider_79,
    IfxScuCcu_K3divider_80,
    IfxScuCcu_K3divider_81,
    IfxScuCcu_K3divider_82,
    IfxScuCcu_K3divider_83,
    IfxScuCcu_K3divider_84,
    IfxScuCcu_K3divider_85,
    IfxScuCcu_K3divider_86,
    IfxScuCcu_K3divider_87,
    IfxScuCcu_K3divider_88,
    IfxScuCcu_K3divider_89,
    IfxScuCcu_K3divider_90,
    IfxScuCcu_K3divider_91,
    IfxScuCcu_K3divider_92,
    IfxScuCcu_K3divider_93,
    IfxScuCcu_K3divider_94,
    IfxScuCcu_K3divider_95,
    IfxScuCcu_K3divider_96,
    IfxScuCcu_K3divider_97,
    IfxScuCcu_K3divider_98,
    IfxScuCcu_K3divider_99,
    IfxScuCcu_K3divider_100,
    IfxScuCcu_K3divider_101,
    IfxScuCcu_K3divider_102,
    IfxScuCcu_K3divider_103,
    IfxScuCcu_K3divider_104,
    IfxScuCcu_K3divider_105,
    IfxScuCcu_K3divider_106,
    IfxScuCcu_K3divider_107,
    IfxScuCcu_K3divider_108,
    IfxScuCcu_K3divider_109,
    IfxScuCcu_K3divider_110,
    IfxScuCcu_K3divider_111,
    IfxScuCcu_K3divider_112,
    IfxScuCcu_K3divider_113,
    IfxScuCcu_K3divider_114,
    IfxScuCcu_K3divider_115,
    IfxScuCcu_K3divider_116,
    IfxScuCcu_K3divider_117,
    IfxScuCcu_K3divider_118,
    IfxScuCcu_K3divider_119,
    IfxScuCcu_K3divider_120,
    IfxScuCcu_K3divider_121,
    IfxScuCcu_K3divider_122,
    IfxScuCcu_K3divider_123,
    IfxScuCcu_K3divider_124,
    IfxScuCcu_K3divider_125,
    IfxScuCcu_K3divider_126,
    IfxScuCcu_K3divider_127,
    IfxScuCcu_K3divider_128
} IfxScuCcu_K3divider;



typedef enum
{
    IfxScuCcu_Ndivider_1 = 0,
    IfxScuCcu_Ndivider_2,
    IfxScuCcu_Ndivider_3,
    IfxScuCcu_Ndivider_4,
    IfxScuCcu_Ndivider_5,
    IfxScuCcu_Ndivider_6,
    IfxScuCcu_Ndivider_7,
    IfxScuCcu_Ndivider_8,
    IfxScuCcu_Ndivider_9,
    IfxScuCcu_Ndivider_10,
    IfxScuCcu_Ndivider_11,
    IfxScuCcu_Ndivider_12,
    IfxScuCcu_Ndivider_13,
    IfxScuCcu_Ndivider_14,
    IfxScuCcu_Ndivider_15,
    IfxScuCcu_Ndivider_16,
    IfxScuCcu_Ndivider_17,
    IfxScuCcu_Ndivider_18,
    IfxScuCcu_Ndivider_19,
    IfxScuCcu_Ndivider_20,
    IfxScuCcu_Ndivider_21,
    IfxScuCcu_Ndivider_22,
    IfxScuCcu_Ndivider_23,
    IfxScuCcu_Ndivider_24,
    IfxScuCcu_Ndivider_25,
    IfxScuCcu_Ndivider_26,
    IfxScuCcu_Ndivider_27,
    IfxScuCcu_Ndivider_28,
    IfxScuCcu_Ndivider_29,
    IfxScuCcu_Ndivider_30,
    IfxScuCcu_Ndivider_31,
    IfxScuCcu_Ndivider_32,
    IfxScuCcu_Ndivider_33,
    IfxScuCcu_Ndivider_34,
    IfxScuCcu_Ndivider_35,
    IfxScuCcu_Ndivider_36,
    IfxScuCcu_Ndivider_37,
    IfxScuCcu_Ndivider_38,
    IfxScuCcu_Ndivider_39,
    IfxScuCcu_Ndivider_40,
    IfxScuCcu_Ndivider_41,
    IfxScuCcu_Ndivider_42,
    IfxScuCcu_Ndivider_43,
    IfxScuCcu_Ndivider_44,
    IfxScuCcu_Ndivider_45,
    IfxScuCcu_Ndivider_46,
    IfxScuCcu_Ndivider_47,
    IfxScuCcu_Ndivider_48,
    IfxScuCcu_Ndivider_49,
    IfxScuCcu_Ndivider_50,
    IfxScuCcu_Ndivider_51,
    IfxScuCcu_Ndivider_52,
    IfxScuCcu_Ndivider_53,
    IfxScuCcu_Ndivider_54,
    IfxScuCcu_Ndivider_55,
    IfxScuCcu_Ndivider_56,
    IfxScuCcu_Ndivider_57,
    IfxScuCcu_Ndivider_58,
    IfxScuCcu_Ndivider_59,
    IfxScuCcu_Ndivider_60,
    IfxScuCcu_Ndivider_61,
    IfxScuCcu_Ndivider_62,
    IfxScuCcu_Ndivider_63,
    IfxScuCcu_Ndivider_64,
    IfxScuCcu_Ndivider_65,
    IfxScuCcu_Ndivider_66,
    IfxScuCcu_Ndivider_67,
    IfxScuCcu_Ndivider_68,
    IfxScuCcu_Ndivider_69,
    IfxScuCcu_Ndivider_70,
    IfxScuCcu_Ndivider_71,
    IfxScuCcu_Ndivider_72,
    IfxScuCcu_Ndivider_73,
    IfxScuCcu_Ndivider_74,
    IfxScuCcu_Ndivider_75,
    IfxScuCcu_Ndivider_76,
    IfxScuCcu_Ndivider_77,
    IfxScuCcu_Ndivider_78,
    IfxScuCcu_Ndivider_79,
    IfxScuCcu_Ndivider_80,
    IfxScuCcu_Ndivider_81,
    IfxScuCcu_Ndivider_82,
    IfxScuCcu_Ndivider_83,
    IfxScuCcu_Ndivider_84,
    IfxScuCcu_Ndivider_85,
    IfxScuCcu_Ndivider_86,
    IfxScuCcu_Ndivider_87,
    IfxScuCcu_Ndivider_88,
    IfxScuCcu_Ndivider_89,
    IfxScuCcu_Ndivider_90,
    IfxScuCcu_Ndivider_91,
    IfxScuCcu_Ndivider_92,
    IfxScuCcu_Ndivider_93,
    IfxScuCcu_Ndivider_94,
    IfxScuCcu_Ndivider_95,
    IfxScuCcu_Ndivider_96,
    IfxScuCcu_Ndivider_97,
    IfxScuCcu_Ndivider_98,
    IfxScuCcu_Ndivider_99,
    IfxScuCcu_Ndivider_100,
    IfxScuCcu_Ndivider_101,
    IfxScuCcu_Ndivider_102,
    IfxScuCcu_Ndivider_103,
    IfxScuCcu_Ndivider_104,
    IfxScuCcu_Ndivider_105,
    IfxScuCcu_Ndivider_106,
    IfxScuCcu_Ndivider_107,
    IfxScuCcu_Ndivider_108,
    IfxScuCcu_Ndivider_109,
    IfxScuCcu_Ndivider_110,
    IfxScuCcu_Ndivider_111,
    IfxScuCcu_Ndivider_112,
    IfxScuCcu_Ndivider_113,
    IfxScuCcu_Ndivider_114,
    IfxScuCcu_Ndivider_115,
    IfxScuCcu_Ndivider_116,
    IfxScuCcu_Ndivider_117,
    IfxScuCcu_Ndivider_118,
    IfxScuCcu_Ndivider_119,
    IfxScuCcu_Ndivider_120,
    IfxScuCcu_Ndivider_121,
    IfxScuCcu_Ndivider_122,
    IfxScuCcu_Ndivider_123,
    IfxScuCcu_Ndivider_124,
    IfxScuCcu_Ndivider_125,
    IfxScuCcu_Ndivider_126,
    IfxScuCcu_Ndivider_127,
    IfxScuCcu_Ndivider_128
} IfxScuCcu_Ndivider;



typedef enum
{
    IfxScuCcu_Pdivider_1 = 0,
    IfxScuCcu_Pdivider_2,
    IfxScuCcu_Pdivider_3,
    IfxScuCcu_Pdivider_4,
    IfxScuCcu_Pdivider_5,
    IfxScuCcu_Pdivider_6,
    IfxScuCcu_Pdivider_7,
    IfxScuCcu_Pdivider_8,
    IfxScuCcu_Pdivider_9,
    IfxScuCcu_Pdivider_10,
    IfxScuCcu_Pdivider_11,
    IfxScuCcu_Pdivider_12,
    IfxScuCcu_Pdivider_13,
    IfxScuCcu_Pdivider_14,
    IfxScuCcu_Pdivider_15,
    IfxScuCcu_Pdivider_16
} IfxScuCcu_Pdivider;
# 704 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_CcuconRegConfig;




typedef struct
{
    uint8 pDivider;
    uint8 nDivider;
    uint8 k2Initial;
    float32 waitTime;
} IfxScuCcu_InitialStepConfig;



typedef struct
{
    uint8 k2Step;
    float32 waitTime;
    IfxScuCcu_PllStepsFunctionHook hookFunction;
} IfxScuCcu_PllStepsConfig;







typedef struct
{
    IfxScuCcu_CcuconRegConfig ccucon0;
    IfxScuCcu_CcuconRegConfig ccucon1;
    IfxScuCcu_CcuconRegConfig ccucon2;
    IfxScuCcu_CcuconRegConfig ccucon5;
    IfxScuCcu_CcuconRegConfig ccucon6;
    IfxScuCcu_CcuconRegConfig ccucon7;
    IfxScuCcu_CcuconRegConfig ccucon8;
} IfxScuCcu_ClockDistributionConfig;



typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_FlashWaitstateConfig;




typedef struct
{
    uint8 numOfPllDividerSteps;
    IfxScuCcu_PllStepsConfig *pllDividerStep;
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_SysPllConfig;







typedef struct
{
    IfxScuCcu_SysPllConfig sysPll;
    IfxScuCcu_ClockDistributionConfig clockDistribution;
    IfxScuCcu_FlashWaitstateConfig flashFconWaitStateConfig;
    uint32 xtalFrequency;
} IfxScuCcu_Config;



typedef struct
{
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_ErayPllConfig;
# 799 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2ErayFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void);




static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getCanFrequency(void);
# 838 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_getBaud1Frequency(void);





extern float32 IfxScuCcu_getBaud2Frequency(void);





extern float32 IfxScuCcu_getBbbFrequency(void);





extern float32 IfxScuCcu_getCpuFrequency(const IfxCpu_ResourceCpu cpu);





extern float32 IfxScuCcu_getFsi2Frequency(void);





extern float32 IfxScuCcu_getFsiFrequency(void);





extern float32 IfxScuCcu_getMaxFrequency(void);





extern float32 IfxScuCcu_getModuleFrequency(void);





extern float32 IfxScuCcu_getOsc0Frequency(void);





extern float32 IfxScuCcu_getOscFrequency(void);





extern float32 IfxScuCcu_getPllErayFrequency(void);





extern float32 IfxScuCcu_getPllErayVcoFrequency(void);





extern float32 IfxScuCcu_getPllFrequency(void);





extern float32 IfxScuCcu_getPllVcoFrequency(void);





extern float32 IfxScuCcu_getSourceFrequency(void);





extern float32 IfxScuCcu_getSpbFrequency(void);





extern float32 IfxScuCcu_getSriFrequency(void);







extern float32 IfxScuCcu_setCpuFrequency(IfxCpu_ResourceCpu cpu, float32 cpuFreq);






extern float32 IfxScuCcu_setPll2ErayFrequency(float32 pll2ErayFreq);






extern float32 IfxScuCcu_setPll2Frequency(float32 pll2Freq);






extern float32 IfxScuCcu_setSpbFrequency(float32 spbFreq);






extern float32 IfxScuCcu_setSriFrequency(float32 sriFreq);
# 986 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_calculateSysPllDividers(IfxScuCcu_Config *cfg, uint32 fPll);
# 995 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_init(const IfxScuCcu_Config *cfg);





extern void IfxScuCcu_initConfig(IfxScuCcu_Config *cfg);
# 1010 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_initErayPll(const IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_initErayPllConfig(IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_switchToBackupClock(const IfxScuCcu_Config *cfg);
# 1035 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void);
# 1046 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_setGtmFrequency(float32 gtmFreq);
# 1055 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
extern const IfxScuCcu_Config IfxScuCcu_defaultClockConfig;




extern const IfxScuCcu_ErayPllConfig IfxScuCcu_defaultErayPllConfig;





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void)
{
    return (100000000.0);
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.GTMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2ErayFrequency(void)
{
    float32 pll2ErayFrequency;

    pll2ErayFrequency = IfxScuCcu_getPllErayVcoFrequency() / ((*(volatile Ifx_SCU_PLLERAYCON1*)0xF003602Cu).B.K3DIV + 1);

    return pll2ErayFrequency;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void)
{
    float32 pll2Frequency;
    pll2Frequency = IfxScuCcu_getPllVcoFrequency() / ((*(volatile Ifx_SCU_PLLCON1*)0xF003601Cu).B.K3DIV + 1);

    return pll2Frequency;
}


static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void)
{
    return (IfxScu_CCUCON0_CLKSEL)(*(volatile Ifx_SCU_CCUCON0*)0xF0036030u).B.CLKSEL;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.STMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getCanFrequency(void)
{
    float32 canFrequency;
    float32 sourceFrequency;

    sourceFrequency = IfxScuCcu_getSourceFrequency();

    if ((*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.CANDIV == 0)
    {
        canFrequency = 0.0;
    }
    else
    {
        canFrequency = sourceFrequency / (*(volatile Ifx_SCU_CCUCON1*)0xF0036034u).B.CANDIV;
    }

    return canFrequency;
}
# 55 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h" 2

# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxMsc_PinMap.h" 1
# 39 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxMsc_PinMap.h"
typedef const struct
{
    Ifx_MSC* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxMsc_Inj_In;


typedef const struct
{
    Ifx_MSC* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxMsc_Sdi_In;


typedef const struct
{
    Ifx_MSC* module;
    uint8 target;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxMsc_En_Out;


typedef const struct
{
    Ifx_MSC* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxMsc_Fclp_Out;


typedef const struct
{
    Ifx_MSC* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxMsc_Fcln_Out;


typedef const struct
{
    Ifx_MSC* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxMsc_Sop_Out;


typedef const struct
{
    Ifx_MSC* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxMsc_Son_Out;

extern IfxMsc_En_Out IfxMsc0_EN0_P10_2_OUT;
extern IfxMsc_En_Out IfxMsc0_EN0_P10_3_OUT;
extern IfxMsc_En_Out IfxMsc0_EN0_P10_4_OUT;
extern IfxMsc_En_Out IfxMsc0_EN0_P11_11_OUT;
extern IfxMsc_En_Out IfxMsc0_EN0_P14_10_OUT;
extern IfxMsc_En_Out IfxMsc0_EN0_P15_5_OUT;
extern IfxMsc_En_Out IfxMsc0_EN1_P10_1_OUT;
extern IfxMsc_En_Out IfxMsc0_EN1_P11_2_OUT;
extern IfxMsc_En_Out IfxMsc0_EN1_P13_0_OUT;
extern IfxMsc_En_Out IfxMsc0_EN1_P14_9_OUT;
extern IfxMsc_En_Out IfxMsc0_EN1_P15_3_OUT;
extern IfxMsc_En_Out IfxMsc0_END2_P10_2_OUT;
extern IfxMsc_En_Out IfxMsc0_END2_P10_3_OUT;
extern IfxMsc_En_Out IfxMsc0_END2_P10_4_OUT;
extern IfxMsc_En_Out IfxMsc0_END2_P11_11_OUT;
extern IfxMsc_En_Out IfxMsc0_END2_P14_10_OUT;
extern IfxMsc_En_Out IfxMsc0_END2_P15_5_OUT;
extern IfxMsc_En_Out IfxMsc0_END3_P10_1_OUT;
extern IfxMsc_En_Out IfxMsc0_END3_P11_2_OUT;
extern IfxMsc_En_Out IfxMsc0_END3_P13_0_OUT;
extern IfxMsc_En_Out IfxMsc0_END3_P14_9_OUT;
extern IfxMsc_En_Out IfxMsc0_END3_P15_3_OUT;
extern IfxMsc_En_Out IfxMsc1_EN0_P23_4_OUT;
extern IfxMsc_En_Out IfxMsc1_EN0_P32_4_OUT;
extern IfxMsc_En_Out IfxMsc1_EN1_P23_5_OUT;
extern IfxMsc_En_Out IfxMsc1_END2_P23_4_OUT;
extern IfxMsc_En_Out IfxMsc1_END2_P32_4_OUT;
extern IfxMsc_En_Out IfxMsc1_END3_P23_5_OUT;
extern IfxMsc_Fcln_Out IfxMsc0_FCLND_P13_0_OUT;
extern IfxMsc_Fcln_Out IfxMsc0_FCLN_P13_0_OUT;
extern IfxMsc_Fcln_Out IfxMsc1_FCLND_P22_0_OUT;
extern IfxMsc_Fcln_Out IfxMsc1_FCLN_P22_0_OUT;
extern IfxMsc_Fclp_Out IfxMsc0_FCLP_P11_6_OUT;
extern IfxMsc_Fclp_Out IfxMsc0_FCLP_P13_1_OUT;
extern IfxMsc_Fclp_Out IfxMsc0_FCLP_P13_2_OUT;
extern IfxMsc_Fclp_Out IfxMsc1_FCLP_P22_1_OUT;
extern IfxMsc_Inj_In IfxMsc0_INJ0_P00_0_IN;
extern IfxMsc_Inj_In IfxMsc0_INJ1_P10_5_IN;
extern IfxMsc_Inj_In IfxMsc1_INJ0_P23_3_IN;
extern IfxMsc_Inj_In IfxMsc1_INJ1_P33_13_IN;
extern IfxMsc_Sdi_In IfxMsc0_SDI0_P11_10_IN;
extern IfxMsc_Sdi_In IfxMsc0_SDI1_P10_2_IN;
extern IfxMsc_Sdi_In IfxMsc0_SDI2_P14_3_IN;
extern IfxMsc_Sdi_In IfxMsc0_SDI3_P11_3_IN;
extern IfxMsc_Sdi_In IfxMsc1_SDI0_P23_1_IN;
extern IfxMsc_Sdi_In IfxMsc1_SDI1_P02_3_IN;
extern IfxMsc_Sdi_In IfxMsc1_SDI2_P32_4_IN;
extern IfxMsc_Son_Out IfxMsc0_SOND_P13_2_OUT;
extern IfxMsc_Son_Out IfxMsc0_SON_P13_2_OUT;
extern IfxMsc_Son_Out IfxMsc1_SOND_P22_2_OUT;
extern IfxMsc_Son_Out IfxMsc1_SON_P22_2_OUT;
extern IfxMsc_Sop_Out IfxMsc0_SOP_P11_9_OUT;
extern IfxMsc_Sop_Out IfxMsc0_SOP_P13_3_OUT;
extern IfxMsc_Sop_Out IfxMsc1_SOP_P22_3_OUT;
# 163 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxMsc_PinMap.h"
extern const IfxMsc_En_Out *IfxMsc_En_Out_pinTable[2][4][6];


extern const IfxMsc_Fcln_Out *IfxMsc_Fcln_Out_pinTable[2][2];


extern const IfxMsc_Fclp_Out *IfxMsc_Fclp_Out_pinTable[2][3];


extern const IfxMsc_Inj_In *IfxMsc_Inj_In_pinTable[2][2];


extern const IfxMsc_Sdi_In *IfxMsc_Sdi_In_pinTable[2][4];


extern const IfxMsc_Son_Out *IfxMsc_Son_Out_pinTable[2][2];


extern const IfxMsc_Sop_Out *IfxMsc_Sop_Out_pinTable[2][2];
# 57 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h" 2
# 68 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
typedef enum
{
    IfxMsc_ActivePhaseSelection_none = 0,
    IfxMsc_ActivePhaseSelection_lowLevel = 1
} IfxMsc_ActivePhaseSelection;




typedef enum
{
    IfxMsc_AsynchronousBlock_bypassed = 0,
    IfxMsc_AsynchronousBlock_noBypassed = 1
} IfxMsc_AsynchronousBlock;




typedef enum
{
    IfxMsc_ChipSelectActiveState_high = 0,
    IfxMsc_ChipSelectActiveState_low = 1
} IfxMsc_ChipSelectActiveState;




typedef enum
{
    IfxMsc_ClockSelect_noClock = 0,
    IfxMsc_ClockSelect_fspb = 1,
    IfxMsc_ClockSelect_fsri = 2,
    IfxMsc_ClockSelect_feray = 4
} IfxMsc_ClockSelect;




typedef enum
{
    IfxMsc_CommandDataCommandRepetitionMode_disabled = 0,
    IfxMsc_CommandDataCommandRepetitionMode_enabled = 1
} IfxMsc_CommandDataCommandRepetitionMode;




typedef enum
{
    IfxMsc_CommandFrameInterrupt_disabled = 0,
    IfxMsc_CommandFrameInterrupt_enabled = 1
} IfxMsc_CommandFrameInterrupt;




typedef enum
{
    IfxMsc_CommandFrameInterruptNode_SR0 = 0,
    IfxMsc_CommandFrameInterruptNode_SR1,
    IfxMsc_CommandFrameInterruptNode_SR2,
    IfxMsc_CommandFrameInterruptNode_SR3
} IfxMsc_CommandFrameInterruptNode;




typedef enum
{
    IfxMsc_CommandFrameLength_0 = 0,
    IfxMsc_CommandFrameLength_1 = 1,
    IfxMsc_CommandFrameLength_2 = 2,
    IfxMsc_CommandFrameLength_3,
    IfxMsc_CommandFrameLength_4,
    IfxMsc_CommandFrameLength_5,
    IfxMsc_CommandFrameLength_6,
    IfxMsc_CommandFrameLength_7,
    IfxMsc_CommandFrameLength_8,
    IfxMsc_CommandFrameLength_9,
    IfxMsc_CommandFrameLength_10,
    IfxMsc_CommandFrameLength_11,
    IfxMsc_CommandFrameLength_12,
    IfxMsc_CommandFrameLength_13,
    IfxMsc_CommandFrameLength_14,
    IfxMsc_CommandFrameLength_15,
    IfxMsc_CommandFrameLength_16,
    IfxMsc_CommandFrameLength_17 = 17,
    IfxMsc_CommandFrameLength_18 = 18,
    IfxMsc_CommandFrameLength_19,
    IfxMsc_CommandFrameLength_20,
    IfxMsc_CommandFrameLength_21,
    IfxMsc_CommandFrameLength_22,
    IfxMsc_CommandFrameLength_23,
    IfxMsc_CommandFrameLength_24,
    IfxMsc_CommandFrameLength_25,
    IfxMsc_CommandFrameLength_26,
    IfxMsc_CommandFrameLength_27,
    IfxMsc_CommandFrameLength_28,
    IfxMsc_CommandFrameLength_29,
    IfxMsc_CommandFrameLength_30,
    IfxMsc_CommandFrameLength_31,
    IfxMsc_CommandFrameLength_32
} IfxMsc_CommandFrameLength;




typedef enum
{
    IfxMsc_ControlFrameExtensionPassivePhaseLength_0 = 0,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_1,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_2,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_3,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_4,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_5,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_6,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_7,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_8,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_9,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_10,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_11,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_12,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_13,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_14,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_15,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_16,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_17,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_18,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_19,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_20,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_21,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_22,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_23,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_24,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_25,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_26,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_27,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_28,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_29,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_30,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_31,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_32,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_33,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_34,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_35,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_36,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_37,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_38,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_39,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_40,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_41,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_42,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_43,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_44,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_45,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_46,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_47,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_48,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_49,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_50,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_51,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_52,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_53,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_54,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_55,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_56,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_57,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_58,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_59,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_60,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_61,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_62,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_63,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_64,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_65,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_66,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_67,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_68,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_69,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_70,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_71,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_72,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_73,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_74,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_75,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_76,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_77,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_78,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_79,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_80,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_81,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_82,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_83,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_84,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_85,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_86,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_87,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_88,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_89,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_90,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_91,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_92,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_93,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_94,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_95,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_96,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_97,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_98,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_99,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_100,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_101,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_102,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_103,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_104,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_105,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_106,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_107,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_108,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_109,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_110,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_111,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_112,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_113,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_114,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_115,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_116,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_117,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_118,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_119,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_120,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_121,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_122,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_123,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_124,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_125,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_126,
    IfxMsc_ControlFrameExtensionPassivePhaseLength_127
} IfxMsc_ControlFrameExtensionPassivePhaseLength;




typedef enum
{
    IfxMsc_DataFrameExtensionPassivePhaseLength_0 = 0,
    IfxMsc_DataFrameExtensionPassivePhaseLength_1,
    IfxMsc_DataFrameExtensionPassivePhaseLength_2,
    IfxMsc_DataFrameExtensionPassivePhaseLength_3
} IfxMsc_DataFrameExtensionPassivePhaseLength;




typedef enum
{
    IfxMsc_DataFrameInterrupt_disabled = 0,
    IfxMsc_DataFrameInterrupt_atLastDataBit = 1,
    IfxMsc_DataFrameInterrupt_atFirstDataBit = 2
} IfxMsc_DataFrameInterrupt;




typedef enum
{
    IfxMsc_DataFrameInterruptNode_SR0 = 0,
    IfxMsc_DataFrameInterruptNode_SR1,
    IfxMsc_DataFrameInterruptNode_SR2,
    IfxMsc_DataFrameInterruptNode_SR3
} IfxMsc_DataFrameInterruptNode;




typedef enum
{
    IfxMsc_DataFrameLength_0 = 0,
    IfxMsc_DataFrameLength_1 = 1,
    IfxMsc_DataFrameLength_2 = 2,
    IfxMsc_DataFrameLength_3,
    IfxMsc_DataFrameLength_4,
    IfxMsc_DataFrameLength_5,
    IfxMsc_DataFrameLength_6,
    IfxMsc_DataFrameLength_7,
    IfxMsc_DataFrameLength_8,
    IfxMsc_DataFrameLength_9,
    IfxMsc_DataFrameLength_10,
    IfxMsc_DataFrameLength_11,
    IfxMsc_DataFrameLength_12,
    IfxMsc_DataFrameLength_13,
    IfxMsc_DataFrameLength_14,
    IfxMsc_DataFrameLength_15,
    IfxMsc_DataFrameLength_16
} IfxMsc_DataFrameLength;




typedef enum
{
    IfxMsc_DataFramePassivePhaseLength_2 = 2,
    IfxMsc_DataFramePassivePhaseLength_3,
    IfxMsc_DataFramePassivePhaseLength_4,
    IfxMsc_DataFramePassivePhaseLength_5,
    IfxMsc_DataFramePassivePhaseLength_6,
    IfxMsc_DataFramePassivePhaseLength_7,
    IfxMsc_DataFramePassivePhaseLength_8,
    IfxMsc_DataFramePassivePhaseLength_9,
    IfxMsc_DataFramePassivePhaseLength_10,
    IfxMsc_DataFramePassivePhaseLength_11,
    IfxMsc_DataFramePassivePhaseLength_12,
    IfxMsc_DataFramePassivePhaseLength_13,
    IfxMsc_DataFramePassivePhaseLength_14,
    IfxMsc_DataFramePassivePhaseLength_15,
    IfxMsc_DataFramePassivePhaseLength_16,
    IfxMsc_DataFramePassivePhaseLength_17,
    IfxMsc_DataFramePassivePhaseLength_18,
    IfxMsc_DataFramePassivePhaseLength_19,
    IfxMsc_DataFramePassivePhaseLength_20,
    IfxMsc_DataFramePassivePhaseLength_21,
    IfxMsc_DataFramePassivePhaseLength_22,
    IfxMsc_DataFramePassivePhaseLength_23,
    IfxMsc_DataFramePassivePhaseLength_24,
    IfxMsc_DataFramePassivePhaseLength_25,
    IfxMsc_DataFramePassivePhaseLength_26,
    IfxMsc_DataFramePassivePhaseLength_27,
    IfxMsc_DataFramePassivePhaseLength_28,
    IfxMsc_DataFramePassivePhaseLength_29,
    IfxMsc_DataFramePassivePhaseLength_30,
    IfxMsc_DataFramePassivePhaseLength_31,
    IfxMsc_DataFramePassivePhaseLength_32
} IfxMsc_DataFramePassivePhaseLength;



typedef enum
{
    IfxMsc_DividerMode_normal = 1,
    IfxMsc_DividerMode_fractional = 2
} IfxMsc_DividerMode;




typedef enum
{
    IfxMsc_EmergencyStop_disabled = 0,
    IfxMsc_EmergencyStop_enabled = 1
} IfxMsc_EmergencyStop;




typedef enum
{
    IfxMsc_Extension_disabled = 0,
    IfxMsc_Extension_enabled = 1
} IfxMsc_Extension;




typedef enum
{
    IfxMsc_ExternalBitInjectionPosition_0 = 0,
    IfxMsc_ExternalBitInjectionPosition_1,
    IfxMsc_ExternalBitInjectionPosition_2,
    IfxMsc_ExternalBitInjectionPosition_3,
    IfxMsc_ExternalBitInjectionPosition_4,
    IfxMsc_ExternalBitInjectionPosition_5,
    IfxMsc_ExternalBitInjectionPosition_6,
    IfxMsc_ExternalBitInjectionPosition_7,
    IfxMsc_ExternalBitInjectionPosition_8,
    IfxMsc_ExternalBitInjectionPosition_9,
    IfxMsc_ExternalBitInjectionPosition_10,
    IfxMsc_ExternalBitInjectionPosition_11,
    IfxMsc_ExternalBitInjectionPosition_12,
    IfxMsc_ExternalBitInjectionPosition_13,
    IfxMsc_ExternalBitInjectionPosition_14,
    IfxMsc_ExternalBitInjectionPosition_15,
    IfxMsc_ExternalBitInjectionPosition_16,
    IfxMsc_ExternalBitInjectionPosition_17,
    IfxMsc_ExternalBitInjectionPosition_18,
    IfxMsc_ExternalBitInjectionPosition_19,
    IfxMsc_ExternalBitInjectionPosition_20,
    IfxMsc_ExternalBitInjectionPosition_21,
    IfxMsc_ExternalBitInjectionPosition_22,
    IfxMsc_ExternalBitInjectionPosition_23,
    IfxMsc_ExternalBitInjectionPosition_24,
    IfxMsc_ExternalBitInjectionPosition_25,
    IfxMsc_ExternalBitInjectionPosition_26,
    IfxMsc_ExternalBitInjectionPosition_27,
    IfxMsc_ExternalBitInjectionPosition_28,
    IfxMsc_ExternalBitInjectionPosition_29,
    IfxMsc_ExternalBitInjectionPosition_30,
    IfxMsc_ExternalBitInjectionPosition_31,
    IfxMsc_ExternalBitInjectionPosition_32,
    IfxMsc_ExternalBitInjectionPosition_33,
    IfxMsc_ExternalBitInjectionPosition_34,
    IfxMsc_ExternalBitInjectionPosition_35,
    IfxMsc_ExternalBitInjectionPosition_36,
    IfxMsc_ExternalBitInjectionPosition_37,
    IfxMsc_ExternalBitInjectionPosition_38,
    IfxMsc_ExternalBitInjectionPosition_39,
    IfxMsc_ExternalBitInjectionPosition_40,
    IfxMsc_ExternalBitInjectionPosition_41,
    IfxMsc_ExternalBitInjectionPosition_42,
    IfxMsc_ExternalBitInjectionPosition_43,
    IfxMsc_ExternalBitInjectionPosition_44,
    IfxMsc_ExternalBitInjectionPosition_45,
    IfxMsc_ExternalBitInjectionPosition_46,
    IfxMsc_ExternalBitInjectionPosition_47,
    IfxMsc_ExternalBitInjectionPosition_48,
    IfxMsc_ExternalBitInjectionPosition_49,
    IfxMsc_ExternalBitInjectionPosition_50,
    IfxMsc_ExternalBitInjectionPosition_51,
    IfxMsc_ExternalBitInjectionPosition_52,
    IfxMsc_ExternalBitInjectionPosition_53,
    IfxMsc_ExternalBitInjectionPosition_54,
    IfxMsc_ExternalBitInjectionPosition_55,
    IfxMsc_ExternalBitInjectionPosition_56,
    IfxMsc_ExternalBitInjectionPosition_57,
    IfxMsc_ExternalBitInjectionPosition_58,
    IfxMsc_ExternalBitInjectionPosition_59,
    IfxMsc_ExternalBitInjectionPosition_60,
    IfxMsc_ExternalBitInjectionPosition_61,
    IfxMsc_ExternalBitInjectionPosition_62,
    IfxMsc_ExternalBitInjectionPosition_63
} IfxMsc_ExternalBitInjectionPosition;




typedef enum
{
    IfxMsc_ExternalSignalInjection_disabled = 0,
    IfxMsc_ExternalSignalInjection_enabled = 1
} IfxMsc_ExternalSignalInjection;




typedef enum
{
    IfxMsc_FclClockControlEnabled_activePhaseOnly = 0,
    IfxMsc_FclClockControlEnabled_always = 1
} IfxMsc_FclClockControlEnabled;




typedef enum
{
    IfxMsc_FclLinePolarity_nonInverted = 0,
    IfxMsc_FclLinePolarity_inverted = 1
} IfxMsc_FclLinePolarity;



typedef enum
{
    IfxMsc_HardwareClock_disabled = 0,
    IfxMsc_HardwareClock_enabled = 1
} IfxMsc_HardwareClock;



typedef enum
{
    IfxMsc_InterruptServiceRequest_0 = 0,
    IfxMsc_InterruptServiceRequest_1,
    IfxMsc_InterruptServiceRequest_2,
    IfxMsc_InterruptServiceRequest_3,
    IfxMsc_InterruptServiceRequest_4
} IfxMsc_InterruptServiceRequest;




typedef enum
{
    IfxMsc_ModuleSuspendRequestBit_noSuspend = 0,
    IfxMsc_ModuleSuspendRequestBit_hardSuspend = 1,
    IfxMsc_ModuleSuspendRequestBit_softSuspend = 2
} IfxMsc_ModuleSuspendRequestBit;




typedef enum
{
    IfxMsc_MsbBitDataExtension_notPresent = 0,
    IfxMsc_MsbBitDataExtension_present = 1
} IfxMsc_MsbBitDataExtension;




typedef enum
{
    IfxMsc_NDividerAbra_1 = 0,
    IfxMsc_NDividerAbra_2,
    IfxMsc_NDividerAbra_3,
    IfxMsc_NDividerAbra_4,
    IfxMsc_NDividerAbra_5,
    IfxMsc_NDividerAbra_6,
    IfxMsc_NDividerAbra_7,
    IfxMsc_NDividerAbra_8
} IfxMsc_NDividerAbra;




typedef enum
{
    IfxMsc_NDividerDownstream_1 = 0,
    IfxMsc_NDividerDownstream_2,
    IfxMsc_NDividerDownstream_3,
    IfxMsc_NDividerDownstream_4,
    IfxMsc_NDividerDownstream_5,
    IfxMsc_NDividerDownstream_6,
    IfxMsc_NDividerDownstream_7,
    IfxMsc_NDividerDownstream_8,
    IfxMsc_NDividerDownstream_9,
    IfxMsc_NDividerDownstream_10,
    IfxMsc_NDividerDownstream_11,
    IfxMsc_NDividerDownstream_12,
    IfxMsc_NDividerDownstream_13,
    IfxMsc_NDividerDownstream_14,
    IfxMsc_NDividerDownstream_15,
    IfxMsc_NDividerDownstream_16
} IfxMsc_NDividerDownstream;




typedef enum
{
    IfxMsc_OverflowInterrupt_disabled = 0,
    IfxMsc_OverflowInterrupt_enabled = 1
} IfxMsc_OverflowInterrupt;




typedef enum
{
    IfxMsc_OverflowInterruptNode_SR0 = 0,
    IfxMsc_OverflowInterruptNode_SR1,
    IfxMsc_OverflowInterruptNode_SR2,
    IfxMsc_OverflowInterruptNode_SR3,
    IfxMsc_OverflowInterruptNode_SR4
} IfxMsc_OverflowInterruptNode;




typedef enum
{
    IfxMsc_Parity_even = 0,
    IfxMsc_Parity_odd = 1
} IfxMsc_Parity;




typedef enum
{
    IfxMsc_PassiveTimeFrameCount_0 = 0,
    IfxMsc_PassiveTimeFrameCount_1 = 1,
    IfxMsc_PassiveTimeFrameCount_2,
    IfxMsc_PassiveTimeFrameCount_3,
    IfxMsc_PassiveTimeFrameCount_4,
    IfxMsc_PassiveTimeFrameCount_5,
    IfxMsc_PassiveTimeFrameCount_6,
    IfxMsc_PassiveTimeFrameCount_7,
    IfxMsc_PassiveTimeFrameCount_8,
    IfxMsc_PassiveTimeFrameCount_9,
    IfxMsc_PassiveTimeFrameCount_10,
    IfxMsc_PassiveTimeFrameCount_11,
    IfxMsc_PassiveTimeFrameCount_12,
    IfxMsc_PassiveTimeFrameCount_13,
    IfxMsc_PassiveTimeFrameCount_14,
    IfxMsc_PassiveTimeFrameCount_15
} IfxMsc_PassiveTimeFrameCount;




typedef enum
{
    IfxMsc_ReceiveDataInterrupt_disabled = 0,
    IfxMsc_ReceiveDataInterrupt_onDataReceive = 1,
    IfxMsc_ReceiveDataInterrupt_onRdieSet = 2,
    IfxMsc_ReceiveDataInterrupt_onDataReceiveInUd3 = 3
} IfxMsc_ReceiveDataInterrupt;




typedef enum
{
    IfxMsc_ReceiveDataInterruptNode_SR0 = 0,
    IfxMsc_ReceiveDataInterruptNode_SR1,
    IfxMsc_ReceiveDataInterruptNode_SR2,
    IfxMsc_ReceiveDataInterruptNode_SR3
} IfxMsc_ReceiveDataInterruptNode;




typedef enum
{
    IfxMsc_SdiLinePolarity_likeSi = 0,
    IfxMsc_SdiLinePolarity_invertedSi = 1
} IfxMsc_SdiLinePolarity;




typedef enum
{
    IfxMsc_SerialDataInput_0 = 0,
    IfxMsc_SerialDataInput_1,
    IfxMsc_SerialDataInput_2,
    IfxMsc_SerialDataInput_3,
    IfxMsc_SerialDataInput_4,
    IfxMsc_SerialDataInput_5,
    IfxMsc_SerialDataInput_6,
    IfxMsc_SerialDataInput_7
} IfxMsc_SerialDataInput;




typedef enum
{
    IfxMsc_ServiceRequestDelay_noDelay = 0,
    IfxMsc_ServiceRequestDelay_1bit = 1
} IfxMsc_ServiceRequestDelay;




typedef enum
{
    IfxMsc_ShiftClockPhaseDuration_1 = 0,
    IfxMsc_ShiftClockPhaseDuration_2,
    IfxMsc_ShiftClockPhaseDuration_3,
    IfxMsc_ShiftClockPhaseDuration_4,
    IfxMsc_ShiftClockPhaseDuration_5,
    IfxMsc_ShiftClockPhaseDuration_6,
    IfxMsc_ShiftClockPhaseDuration_7,
    IfxMsc_ShiftClockPhaseDuration_8,
    IfxMsc_ShiftClockPhaseDuration_9,
    IfxMsc_ShiftClockPhaseDuration_10,
    IfxMsc_ShiftClockPhaseDuration_11,
    IfxMsc_ShiftClockPhaseDuration_12,
    IfxMsc_ShiftClockPhaseDuration_13,
    IfxMsc_ShiftClockPhaseDuration_14,
    IfxMsc_ShiftClockPhaseDuration_15,
    IfxMsc_ShiftClockPhaseDuration_16
} IfxMsc_ShiftClockPhaseDuration;




typedef enum
{
    IfxMsc_SleepMode_enable = 0,
    IfxMsc_SleepMode_disable = 1
} IfxMsc_SleepMode;




typedef enum
{
    IfxMsc_SoLinePolarity_nonInverted = 0,
    IfxMsc_SoLinePolarity_inverted = 1
} IfxMsc_SoLinePolarity;




typedef enum
{
    IfxMsc_Source_downstreamDataRegister = 0,
    IfxMsc_Source_alternateInputLine = 2,
    IfxMsc_Source_alternateInputLineInverted = 3
} IfxMsc_Source;



typedef enum
{
    IfxMsc_SuspendMode_none = 0,
    IfxMsc_SuspendMode_hard = 1,
    IfxMsc_SuspendMode_soft = 2
} IfxMsc_SuspendMode;



typedef enum
{
    IfxMsc_Target_en0 = 0,
    IfxMsc_Target_en1,
    IfxMsc_Target_en2,
    IfxMsc_Target_en3
} IfxMsc_Target;




typedef enum
{
    IfxMsc_TimeFrameInterrupt_disabled = 0,
    IfxMsc_TimeFrameInterrupt_enabled = 1
} IfxMsc_TimeFrameInterrupt;




typedef enum
{
    IfxMsc_TimeFrameInterruptNode_SR0 = 0,
    IfxMsc_TimeFrameInterruptNode_SR1,
    IfxMsc_TimeFrameInterruptNode_SR2,
    IfxMsc_TimeFrameInterruptNode_SR3
} IfxMsc_TimeFrameInterruptNode;




typedef enum
{
    IfxMsc_TransmissionMode_triggered = 0,
    IfxMsc_TransmissionMode_dataRepetition = 1
} IfxMsc_TransmissionMode;




typedef enum
{
    IfxMsc_UnderflowInterrupt_disabled = 0,
    IfxMsc_UnderflowInterrupt_enabled = 1
} IfxMsc_UnderflowInterrupt;




typedef enum
{
    IfxMsc_UnderflowInterruptNode_SR0 = 0,
    IfxMsc_UnderflowInterruptNode_SR1,
    IfxMsc_UnderflowInterruptNode_SR2,
    IfxMsc_UnderflowInterruptNode_SR3,
    IfxMsc_UnderflowInterruptNode_SR4
} IfxMsc_UnderflowInterruptNode;




typedef enum
{
    IfxMsc_UpstreamChannelFrameType_12bit = 0,
    IfxMsc_UpstreamChannelFrameType_16bit = 1
} IfxMsc_UpstreamChannelFrameType;




typedef enum
{
    IfxMsc_UpstreamChannelReceivingRate_disabled = 0,
    IfxMsc_UpstreamChannelReceivingRate_4 = 1,
    IfxMsc_UpstreamChannelReceivingRate_8 = 2,
    IfxMsc_UpstreamChannelReceivingRate_16 = 3,
    IfxMsc_UpstreamChannelReceivingRate_32 = 4,
    IfxMsc_UpstreamChannelReceivingRate_64 = 5,
    IfxMsc_UpstreamChannelReceivingRate_128 = 6,
    IfxMsc_UpstreamChannelReceivingRate_256 = 7
} IfxMsc_UpstreamChannelReceivingRate;




typedef enum
{
    IfxMsc_UpstreamTimeoutInterrupt_disabled = 0,
    IfxMsc_UpstreamTimeoutInterrupt_enabled = 1
} IfxMsc_UpstreamTimeoutInterrupt;




typedef enum
{
    IfxMsc_UpstreamTimeoutInterruptNode_SR0 = 0,
    IfxMsc_UpstreamTimeoutInterruptNode_SR1,
    IfxMsc_UpstreamTimeoutInterruptNode_SR2,
    IfxMsc_UpstreamTimeoutInterruptNode_SR3,
    IfxMsc_UpstreamTimeoutInterruptNode_SR4
} IfxMsc_UpstreamTimeoutInterruptNode;




typedef enum
{
    IfxMsc_UpstreamTimeoutPrescaler_1 = 0,
    IfxMsc_UpstreamTimeoutPrescaler_2 = 1,
    IfxMsc_UpstreamTimeoutPrescaler_4 = 2,
    IfxMsc_UpstreamTimeoutPrescaler_8 = 3,
    IfxMsc_UpstreamTimeoutPrescaler_16 = 4,
    IfxMsc_UpstreamTimeoutPrescaler_32 = 5,
    IfxMsc_UpstreamTimeoutPrescaler_64 = 6,
    IfxMsc_UpstreamTimeoutPrescaler_128 = 7,
    IfxMsc_UpstreamTimeoutPrescaler_256 = 8,
    IfxMsc_UpstreamTimeoutPrescaler_512 = 9,
    IfxMsc_UpstreamTimeoutPrescaler_1024 = 10,
    IfxMsc_UpstreamTimeoutPrescaler_2048 = 11,
    IfxMsc_UpstreamTimeoutPrescaler_4096 = 12,
    IfxMsc_UpstreamTimeoutPrescaler_8192 = 13,
    IfxMsc_UpstreamTimeoutPrescaler_16384 = 14,
    IfxMsc_UpstreamTimeoutPrescaler_32768 = 15
} IfxMsc_UpstreamTimeoutPrescaler;




typedef enum
{
    IfxMsc_UpstreamTimeoutValue_1 = 0,
    IfxMsc_UpstreamTimeoutValue_2,
    IfxMsc_UpstreamTimeoutValue_3,
    IfxMsc_UpstreamTimeoutValue_4,
    IfxMsc_UpstreamTimeoutValue_5,
    IfxMsc_UpstreamTimeoutValue_6,
    IfxMsc_UpstreamTimeoutValue_7,
    IfxMsc_UpstreamTimeoutValue_8,
    IfxMsc_UpstreamTimeoutValue_9,
    IfxMsc_UpstreamTimeoutValue_10,
    IfxMsc_UpstreamTimeoutValue_11,
    IfxMsc_UpstreamTimeoutValue_12,
    IfxMsc_UpstreamTimeoutValue_13,
    IfxMsc_UpstreamTimeoutValue_14,
    IfxMsc_UpstreamTimeoutValue_15,
    IfxMsc_UpstreamTimeoutValue_16
} IfxMsc_UpstreamTimeoutValue;
# 933 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
static inline __attribute__ ((always_inline)) void IfxMsc_clearAbraOverflowFlag(Ifx_MSC *msc);





static inline __attribute__ ((always_inline)) void IfxMsc_clearAbraUnderflowFlag(Ifx_MSC *msc);





static inline __attribute__ ((always_inline)) void IfxMsc_clearUpstreamTimeout(Ifx_MSC *msc);






static inline __attribute__ ((always_inline)) void IfxMsc_clearUpstreamValidFlag(Ifx_MSC *msc, uint8 upstreamIdx);






static inline __attribute__ ((always_inline)) boolean IfxMsc_getUpstreamValidFlag(Ifx_MSC *msc, uint8 upstreamIdx);
# 975 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
static inline __attribute__ ((always_inline)) void IfxMsc_setCommandTarget(Ifx_MSC *msc, IfxMsc_Target enX);
# 991 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
static inline __attribute__ ((always_inline)) void IfxMsc_setDataHighTarget(Ifx_MSC *msc, IfxMsc_Target enX);






static inline __attribute__ ((always_inline)) void IfxMsc_setDataLowTarget(Ifx_MSC *msc, IfxMsc_Target enX);
# 1014 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
static inline __attribute__ ((always_inline)) uint16 IfxMsc_getData(Ifx_MSC *msc, uint8 upstreamIdx);





static inline __attribute__ ((always_inline)) IfxMsc_Target IfxMsc_getDataHighTarget(Ifx_MSC *msc);





static inline __attribute__ ((always_inline)) IfxMsc_Target IfxMsc_getDataLowTarget(Ifx_MSC *msc);
# 1041 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
extern void IfxMsc_disableModule(Ifx_MSC *msc);





extern void IfxMsc_enableModule(Ifx_MSC *msc);
# 1062 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
extern void IfxMsc_clearReset(Ifx_MSC *msc);





extern void IfxMsc_resetModule(Ifx_MSC *msc);
# 1083 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
extern uint32 IfxMsc_downstreamAbraBaudCalculator(uint32 baud);






extern uint64 IfxMsc_upstreamFractionalBaudCalculator(Ifx_MSC *msc, uint32 baud);






extern uint32 IfxMsc_upstreamNormalBaudCalculator(Ifx_MSC *msc, uint32 baud);
# 1114 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
static inline __attribute__ ((always_inline)) void IfxMsc_initEnPin(const IfxMsc_En_Out *en, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxMsc_initFclnPin(const IfxMsc_Fcln_Out *fcln, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxMsc_initFclpPin(const IfxMsc_Fclp_Out *fclp, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxMsc_initInjPin(const IfxMsc_Inj_In *inj, IfxPort_InputMode pinMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxMsc_initSdiPin(const IfxMsc_Sdi_In *sdi, IfxPort_InputMode pinMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxMsc_initSonPin(const IfxMsc_Son_Out *son, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxMsc_initSopPin(const IfxMsc_Sop_Out *sop, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver);
# 1177 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
extern Ifx_MSC *IfxMsc_getAddress(IfxMsc_Index msc);





extern IfxMsc_Index IfxMsc_getIndex(Ifx_MSC *msc);
# 1195 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
static inline __attribute__ ((always_inline)) void IfxMsc_clearRecieveDataInterruptFlag(Ifx_MSC *msc);






static inline __attribute__ ((always_inline)) void IfxMsc_clearValidbit(Ifx_MSC *msc, uint8 upstreamIdx);





static inline __attribute__ ((always_inline)) void IfxMsc_disableUpstreamTimeoutInterrupt(Ifx_MSC *msc);





static inline __attribute__ ((always_inline)) void IfxMsc_enableUpstreamTimeoutInterrupt(Ifx_MSC *msc);





static inline __attribute__ ((always_inline)) boolean IfxMsc_getAsyncClockBypass(Ifx_MSC *msc);





static inline __attribute__ ((always_inline)) boolean IfxMsc_getDownStreamExtension(Ifx_MSC *msc);





static inline __attribute__ ((always_inline)) boolean IfxMsc_getRecieveDataInterruptFlag(Ifx_MSC *msc);






static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxMsc_getSrcPointer(Ifx_MSC *msc, IfxMsc_InterruptServiceRequest intRequest);






static inline __attribute__ ((always_inline)) uint32 IfxMsc_getUpstreamData(Ifx_MSC *msc, uint8 upstreamIdx);






static inline __attribute__ ((always_inline)) boolean IfxMsc_getUpstreamParityErrorFlag(Ifx_MSC *msc, uint8 upstreamIdx);





static inline __attribute__ ((always_inline)) boolean IfxMsc_getUpstreamTimeoutFlag(Ifx_MSC *msc);







static inline __attribute__ ((always_inline)) boolean IfxMsc_isModuleSuspended(Ifx_MSC *msc);






static inline __attribute__ ((always_inline)) void IfxMsc_setAsyncClockBypass(Ifx_MSC *msc, boolean value);






static inline __attribute__ ((always_inline)) void IfxMsc_setDownStreamData(Ifx_MSC *msc, uint32 data);






static inline __attribute__ ((always_inline)) void IfxMsc_setDownStreamExtension(Ifx_MSC *msc, boolean value);






static inline __attribute__ ((always_inline)) void IfxMsc_setDownStreamExtensionData(Ifx_MSC *msc, uint32 data);






static inline __attribute__ ((always_inline)) void IfxMsc_setFractionalDividerStep(Ifx_MSC *msc, uint16 value);






static inline __attribute__ ((always_inline)) void IfxMsc_setNdividerDownstream(Ifx_MSC *msc, IfxMsc_NDividerDownstream divisionRatio);






static inline __attribute__ ((always_inline)) void IfxMsc_setSerialDataInputSelect(Ifx_MSC *msc, IfxMsc_SerialDataInput select);






static inline __attribute__ ((always_inline)) void IfxMsc_setSleepMode(Ifx_MSC *msc, IfxMsc_SleepMode mode);







static inline __attribute__ ((always_inline)) void IfxMsc_setSuspendMode(Ifx_MSC *msc, IfxMsc_SuspendMode mode);






static inline __attribute__ ((always_inline)) void IfxMsc_setTransmissionMode(Ifx_MSC *msc, IfxMsc_TransmissionMode mode);






static inline __attribute__ ((always_inline)) void IfxMsc_setUpstreamChannelRecieveRate(Ifx_MSC *msc, IfxMsc_UpstreamChannelReceivingRate recieveRate);






static inline __attribute__ ((always_inline)) void IfxMsc_setUpstreamTimeout(Ifx_MSC *msc, IfxMsc_UpstreamTimeoutValue timeoutVal);






static inline __attribute__ ((always_inline)) void IfxMsc_setUpstreamTimeoutPrescalar(Ifx_MSC *msc, IfxMsc_UpstreamTimeoutPrescaler prescalar);
# 1369 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.h"
extern void IfxMsc_clearDataFrameInterruptFlag(Ifx_MSC *msc);






extern uint64 IfxMsc_downstreamFractionalBaudCalculator(Ifx_MSC *msc, uint32 baud);






extern uint32 IfxMsc_downstreamNormalBaudCalculator(Ifx_MSC *msc, uint32 baud);





extern boolean IfxMsc_getActiveDataFrameStatus(Ifx_MSC *msc);





extern boolean IfxMsc_getDataFrameInterruptFlag(Ifx_MSC *msc);





static inline __attribute__ ((always_inline)) void IfxMsc_clearAbraOverflowFlag(Ifx_MSC *msc)
{

    msc->ABC.B.OFM = 2;
}


static inline __attribute__ ((always_inline)) void IfxMsc_clearAbraUnderflowFlag(Ifx_MSC *msc)
{

    msc->ABC.B.UFM = 2;
}


static inline __attribute__ ((always_inline)) void IfxMsc_clearRecieveDataInterruptFlag(Ifx_MSC *msc)
{
    msc->ISC.B.CURDI = 0x01U;
}


static inline __attribute__ ((always_inline)) void IfxMsc_clearUpstreamTimeout(Ifx_MSC *msc)
{

    msc->USCE.B.USTC = 1;
}


static inline __attribute__ ((always_inline)) void IfxMsc_clearUpstreamValidFlag(Ifx_MSC *msc, uint8 upstreamIdx)
{
    msc->UD[upstreamIdx].B.C = 1;
}


static inline __attribute__ ((always_inline)) void IfxMsc_clearValidbit(Ifx_MSC *msc, uint8 upstreamIdx)
{
    msc->UD[upstreamIdx].B.C = 0x01U;
}


static inline __attribute__ ((always_inline)) void IfxMsc_disableUpstreamTimeoutInterrupt(Ifx_MSC *msc)
{
    msc->USCE.B.USTOEN = 0x0U;
}


static inline __attribute__ ((always_inline)) void IfxMsc_enableUpstreamTimeoutInterrupt(Ifx_MSC *msc)
{
    msc->USCE.B.USTOEN = 0x1U;
}


static inline __attribute__ ((always_inline)) boolean IfxMsc_getAsyncClockBypass(Ifx_MSC *msc)
{
    return msc->ABC.B.ABB;
}


static inline __attribute__ ((always_inline)) uint16 IfxMsc_getData(Ifx_MSC *msc, uint8 upstreamIdx)
{
    uint16 data = 0;

    data = msc->UD[upstreamIdx].B.DATA;

    return data;
}


static inline __attribute__ ((always_inline)) IfxMsc_Target IfxMsc_getDataHighTarget(Ifx_MSC *msc)
{

    return (IfxMsc_Target)msc->OCR.B.CSH;
}


static inline __attribute__ ((always_inline)) IfxMsc_Target IfxMsc_getDataLowTarget(Ifx_MSC *msc)
{

    return (IfxMsc_Target)msc->OCR.B.CSL;
}


static inline __attribute__ ((always_inline)) boolean IfxMsc_getDownStreamExtension(Ifx_MSC *msc)
{
    return msc->DSCE.B.EXEN;
}


static inline __attribute__ ((always_inline)) boolean IfxMsc_getRecieveDataInterruptFlag(Ifx_MSC *msc)
{
    return msc->ISR.B.URDI;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxMsc_getSrcPointer(Ifx_MSC *msc, IfxMsc_InterruptServiceRequest intRequest)
{
    IfxMsc_Index mscIndex;
    volatile Ifx_SRC_SRCR *src;
    mscIndex = IfxMsc_getIndex(msc);

    switch (intRequest)
    {
    case IfxMsc_InterruptServiceRequest_0:
        src = &(*(Ifx_SRC*)0xF0038000u).MSC.MSC[mscIndex].SR0;
        break;
    case IfxMsc_InterruptServiceRequest_1:
        src = &(*(Ifx_SRC*)0xF0038000u).MSC.MSC[mscIndex].SR1;
        break;
    case IfxMsc_InterruptServiceRequest_2:
        src = &(*(Ifx_SRC*)0xF0038000u).MSC.MSC[mscIndex].SR2;
        break;
    case IfxMsc_InterruptServiceRequest_3:
        src = &(*(Ifx_SRC*)0xF0038000u).MSC.MSC[mscIndex].SR3;
        break;
    case IfxMsc_InterruptServiceRequest_4:
        src = &(*(Ifx_SRC*)0xF0038000u).MSC.MSC[mscIndex].SR4;
        break;
    default:
        break;
    }

    return src;
}


static inline __attribute__ ((always_inline)) uint32 IfxMsc_getUpstreamData(Ifx_MSC *msc, uint8 upstreamIdx)
{
    return msc->UD[upstreamIdx].U;
}


static inline __attribute__ ((always_inline)) boolean IfxMsc_getUpstreamParityErrorFlag(Ifx_MSC *msc, uint8 upstreamIdx)
{
    return msc->UD[upstreamIdx].B.PERR;
}


static inline __attribute__ ((always_inline)) boolean IfxMsc_getUpstreamTimeoutFlag(Ifx_MSC *msc)
{
    return msc->USCE.B.USTF;
}


static inline __attribute__ ((always_inline)) boolean IfxMsc_getUpstreamValidFlag(Ifx_MSC *msc, uint8 upstreamIdx)
{
    boolean flag = 0;

    flag = msc->UD[upstreamIdx].B.V;

    return flag;
}


static inline __attribute__ ((always_inline)) void IfxMsc_initEnPin(const IfxMsc_En_Out *en, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver)
{
    if (en->pin.port != ((void *)0))
    {
        IfxPort_setPinModeOutput(en->pin.port, en->pin.pinIndex, pinMode, en->select);
        IfxPort_setPinPadDriver(en->pin.port, en->pin.pinIndex, padDriver);
    }
}


static inline __attribute__ ((always_inline)) void IfxMsc_initFclnPin(const IfxMsc_Fcln_Out *fcln, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver)
{
    if (fcln->pin.port != ((void *)0))
    {
        IfxPort_setPinModeOutput(fcln->pin.port, fcln->pin.pinIndex, pinMode, fcln->select);
        IfxPort_setPinPadDriver(fcln->pin.port, fcln->pin.pinIndex, padDriver);
    }
}


static inline __attribute__ ((always_inline)) void IfxMsc_initFclpPin(const IfxMsc_Fclp_Out *fclp, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver)
{
    if (fclp->pin.port != ((void *)0))
    {
        IfxPort_setPinModeOutput(fclp->pin.port, fclp->pin.pinIndex, pinMode, fclp->select);
        IfxPort_setPinPadDriver(fclp->pin.port, fclp->pin.pinIndex, padDriver);
    }
}


static inline __attribute__ ((always_inline)) void IfxMsc_initInjPin(const IfxMsc_Inj_In *inj, IfxPort_InputMode pinMode, IfxPort_PadDriver padDriver)
{
    if (inj->pin.port != ((void *)0))
    {
        IfxPort_setPinModeInput(inj->pin.port, inj->pin.pinIndex, pinMode);
        IfxPort_setPinPadDriver(inj->pin.port, inj->pin.pinIndex, padDriver);
    }
}


static inline __attribute__ ((always_inline)) void IfxMsc_initSdiPin(const IfxMsc_Sdi_In *sdi, IfxPort_InputMode pinMode, IfxPort_PadDriver padDriver)
{
    if (sdi->pin.port != ((void *)0))
    {
        IfxPort_setPinModeInput(sdi->pin.port, sdi->pin.pinIndex, pinMode);
        IfxPort_setPinPadDriver(sdi->pin.port, sdi->pin.pinIndex, padDriver);
        sdi->module->OCR.B.SDISEL = sdi->select;
    }
}


static inline __attribute__ ((always_inline)) void IfxMsc_initSonPin(const IfxMsc_Son_Out *son, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver)
{
    if (son->pin.port != ((void *)0))
    {
        IfxPort_setPinModeOutput(son->pin.port, son->pin.pinIndex, pinMode, son->select);
        IfxPort_setPinPadDriver(son->pin.port, son->pin.pinIndex, padDriver);
    }
}


static inline __attribute__ ((always_inline)) void IfxMsc_initSopPin(const IfxMsc_Sop_Out *sop, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver)
{
    if (sop->pin.port != ((void *)0))
    {
        IfxPort_setPinModeOutput(sop->pin.port, sop->pin.pinIndex, pinMode, sop->select);
        IfxPort_setPinPadDriver(sop->pin.port, sop->pin.pinIndex, padDriver);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxMsc_isModuleSuspended(Ifx_MSC *msc)
{
    Ifx_MSC_OCS ocs;


    ocs.U = msc->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setAsyncClockBypass(Ifx_MSC *msc, boolean value)
{
    msc->ABC.B.ABB = value;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setCommandTarget(Ifx_MSC *msc, IfxMsc_Target enX)
{

    msc->OCR.B.CSC = enX;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setDataHighTarget(Ifx_MSC *msc, IfxMsc_Target enX)
{

    msc->OCR.B.CSH = enX;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setDataLowTarget(Ifx_MSC *msc, IfxMsc_Target enX)
{

    msc->OCR.B.CSL = enX;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setDownStreamData(Ifx_MSC *msc, uint32 data)
{
    msc->DD.U = data;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setDownStreamExtension(Ifx_MSC *msc, boolean value)
{
    msc->DSCE.B.EXEN = value;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setDownStreamExtensionData(Ifx_MSC *msc, uint32 data)
{
    msc->DDE.U = data;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setFractionalDividerStep(Ifx_MSC *msc, uint16 value)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);

    msc->FDR.B.DISCLK = 1;

    while (msc->FDR.B.DISCLK != 1)
    {}


    msc->FDR.B.STEP = value;
    msc->FDR.B.DISCLK = 0;

    while (msc->FDR.B.DISCLK != 0)
    {}

    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxMsc_setNdividerDownstream(Ifx_MSC *msc, IfxMsc_NDividerDownstream divisionRatio)
{
    msc->DSTE.B.NDD = divisionRatio;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setSerialDataInputSelect(Ifx_MSC *msc, IfxMsc_SerialDataInput select)
{
    msc->OCR.B.SDISEL = select;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setSleepMode(Ifx_MSC *msc, IfxMsc_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    msc->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxMsc_setSuspendMode(Ifx_MSC *msc, IfxMsc_SuspendMode mode)
{
    Ifx_MSC_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;
    msc->OCS.U = ocs.U;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setTransmissionMode(Ifx_MSC *msc, IfxMsc_TransmissionMode mode)
{
    msc->DSC.B.TM = mode;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setUpstreamChannelRecieveRate(Ifx_MSC *msc, IfxMsc_UpstreamChannelReceivingRate recieveRate)
{
    msc->USR.B.URR = recieveRate;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setUpstreamTimeout(Ifx_MSC *msc, IfxMsc_UpstreamTimeoutValue timeoutVal)
{
    msc->USCE.B.USTOVAL = timeoutVal;
}


static inline __attribute__ ((always_inline)) void IfxMsc_setUpstreamTimeoutPrescalar(Ifx_MSC *msc, IfxMsc_UpstreamTimeoutPrescaler prescalar)
{
    msc->USCE.B.USTOPRE = prescalar;
}
# 30 "0_Src/BaseSw/iLLD/TC27D/Tricore/Msc/Std/IfxMsc.c" 2





void IfxMsc_clearDataFrameInterruptFlag(Ifx_MSC *msc)
{

    msc->ISC.B.CDEDI = 1;
}


void IfxMsc_clearReset(Ifx_MSC *msc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(passwd);

    if (msc->KRST0.B.RSTSTAT == 1)
    {
        msc->KRSTCLR.B.CLR = 1;
    }

    IfxScuWdt_setCpuEndinit(passwd);
}


void IfxMsc_disableModule(Ifx_MSC *msc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);

    msc->CLC.B.DISR = 1;
    IfxScuWdt_setCpuEndinit(passwd);
}


uint32 IfxMsc_downstreamAbraBaudCalculator(uint32 baud)
{
    uint32 fsys = IfxScuCcu_getSpbFrequency();
    uint32 ndd = 0;



    ndd = fsys / (2 * baud);

    return ndd - 1;
}


uint64 IfxMsc_downstreamFractionalBaudCalculator(Ifx_MSC *msc, uint32 baud)
{
    float32 fsys = IfxScuCcu_getSpbFrequency();
    uint64 step = 0;

    step = (uint64)((uint64)(2 * baud * 1024)) / fsys;

    return step;
}


uint32 IfxMsc_downstreamNormalBaudCalculator(Ifx_MSC *msc, uint32 baud)
{
    float32 fsys = IfxScuCcu_getSpbFrequency();
    uint32 step = 0;



    step = 1024 - (fsys / (2 * baud));

    return step;
}


void IfxMsc_enableModule(Ifx_MSC *msc)
{

    msc->CLC.U = 0;
}


boolean IfxMsc_getActiveDataFrameStatus(Ifx_MSC *msc)
{
    return msc->DSS.B.DFA;
}


Ifx_MSC *IfxMsc_getAddress(IfxMsc_Index msc)
{
    Ifx_MSC *module;

    if (msc < 2)
    {
        module = (Ifx_MSC *)IfxMsc_cfg_indexMap[msc].module;
    }
    else
    {
        module = ((void *)0);
    }

    return module;
}


boolean IfxMsc_getDataFrameInterruptFlag(Ifx_MSC *msc)
{
    boolean flag = 0;

    flag = msc->ISR.B.DEDI;

    return flag;
}


IfxMsc_Index IfxMsc_getIndex(Ifx_MSC *msc)
{
    uint32 index;
    IfxMsc_Index result;

    result = IfxMsc_Index_none;

    for (index = 0; index < 2; index++)
    {
        if (IfxMsc_cfg_indexMap[index].module == msc)
        {
            result = (IfxMsc_Index)IfxMsc_cfg_indexMap[index].index;
            break;
        }
    }

    return result;
}


void IfxMsc_resetModule(Ifx_MSC *msc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(passwd);


    msc->KRST1.B.RST = 1;
    msc->KRST0.B.RST = 1;

    while (msc->KRST0.B.RSTSTAT == 0)

    {}




    IfxScuWdt_setCpuEndinit(passwd);
}


uint64 IfxMsc_upstreamFractionalBaudCalculator(Ifx_MSC *msc, uint32 baud)
{
    float32 fsys = IfxScuCcu_getSpbFrequency();
    uint64 step = 0;
    uint32 df = 1;



    if (msc->USR.B.URR != 0)
    {
        df = 1 << (msc->USR.B.URR + 1);
    }
    else
    {
        df = 0;
    }

    step = (uint64)((uint64)((df * baud) * 1024)) / fsys;

    return step;
}


uint32 IfxMsc_upstreamNormalBaudCalculator(Ifx_MSC *msc, uint32 baud)
{
    float32 fsys = IfxScuCcu_getSpbFrequency();
    uint32 step = 0;
    uint32 df = 1;



    if (msc->USR.B.URR != 0)
    {
        df = 1 << (msc->USR.B.URR + 1);
    }
    else
    {
        df = 0;
    }

    step = 1024 - (fsys / (df * baud));

    return step;
}
