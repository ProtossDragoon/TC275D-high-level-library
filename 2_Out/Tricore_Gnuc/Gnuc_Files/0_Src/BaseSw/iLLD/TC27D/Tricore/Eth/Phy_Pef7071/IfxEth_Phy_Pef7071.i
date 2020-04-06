# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
# 1 "C:\\Users\\user\\Desktop\\programming_PROJECTS\\�Ѿ��_�Ӻ����ý���\\DevBaseEnv_vscode_TC27D//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
# 29 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h" 1
# 37 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 1
# 45 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxEth_cfg.h" 1
# 46 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 2
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
# 47 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_regdef.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_regdef.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/Ifx_TypesReg.h" 1
# 40 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_regdef.h" 2





typedef struct _Ifx_ETH_ACCEN0_Bits
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
} Ifx_ETH_ACCEN0_Bits;


typedef struct _Ifx_ETH_ACCEN1_Bits
{
    unsigned int reserved_0:32;
} Ifx_ETH_ACCEN1_Bits;


typedef struct _Ifx_ETH_AHB_OR_AXI_STATUS_Bits
{
    unsigned int AXWHSTS:1;
    unsigned int AXIRDSTS:1;
    unsigned int reserved_2:30;
} Ifx_ETH_AHB_OR_AXI_STATUS_Bits;


typedef struct _Ifx_ETH_BUS_MODE_Bits
{
    unsigned int SWR:1;
    unsigned int DA:1;
    unsigned int DSL:5;
    unsigned int ATDS:1;
    unsigned int PBL:6;
    unsigned int PR:2;
    unsigned int FB:1;
    unsigned int RPBL:6;
    unsigned int USP:1;
    unsigned int PBLx8:1;
    unsigned int AAL:1;
    unsigned int MB:1;
    unsigned int TXPR:1;
    unsigned int PRWG:2;
    unsigned int reserved_30:2;
} Ifx_ETH_BUS_MODE_Bits;


typedef struct _Ifx_ETH_CLC_Bits
{
    unsigned int DISR:1;
    unsigned int DISS:1;
    unsigned int reserved_2:30;
} Ifx_ETH_CLC_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits
{
    unsigned int CURRBUFAPTR:32;
} Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits
{
    unsigned int CURRDESAPTR:32;
} Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits
{
    unsigned int CURTBUFAPTR:32;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits
{
    unsigned int CURTDESAPTR:32;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits;


typedef struct _Ifx_ETH_DEBUG_Bits
{
    unsigned int RPESTS:1;
    unsigned int RFCFCSTS:2;
    unsigned int reserved_3:1;
    unsigned int RWCSTS:1;
    unsigned int RRCSTS:2;
    unsigned int reserved_7:1;
    unsigned int RXFSTS:2;
    unsigned int reserved_10:6;
    unsigned int TPESTS:1;
    unsigned int TFCSTS:2;
    unsigned int TXPAUSED:1;
    unsigned int TRCSTS:2;
    unsigned int TWCSTS:1;
    unsigned int reserved_23:1;
    unsigned int TXFSTS:1;
    unsigned int TXSTSFSTS:1;
    unsigned int reserved_26:6;
} Ifx_ETH_DEBUG_Bits;


typedef struct _Ifx_ETH_FLOW_CONTROL_Bits
{
    unsigned int FCA_BPA:1;
    unsigned int TFE:1;
    unsigned int RFE:1;
    unsigned int UP:1;
    unsigned int PLT:2;
    unsigned int reserved_6:1;
    unsigned int DZPQ:1;
    unsigned int reserved_8:8;
    unsigned int PT:16;
} Ifx_ETH_FLOW_CONTROL_Bits;


typedef struct _Ifx_ETH_GMII_ADDRESS_Bits
{
    unsigned int GB:1;
    unsigned int GW:1;
    unsigned int CR:4;
    unsigned int GR:5;
    unsigned int PA:5;
    unsigned int reserved_16:16;
} Ifx_ETH_GMII_ADDRESS_Bits;


typedef struct _Ifx_ETH_GMII_DATA_Bits
{
    unsigned int GD:16;
    unsigned int reserved_16:16;
} Ifx_ETH_GMII_DATA_Bits;


typedef struct _Ifx_ETH_GPCTL_Bits
{
    unsigned int ALTI0:2;
    unsigned int ALTI1:2;
    unsigned int ALTI2:2;
    unsigned int ALTI3:2;
    unsigned int ALTI4:2;
    unsigned int ALTI5:2;
    unsigned int ALTI6:2;
    unsigned int ALTI7:2;
    unsigned int ALTI8:2;
    unsigned int ALTI9:2;
    unsigned int ALTI10:2;
    unsigned int reserved_22:2;
    unsigned int EPR:1;
    unsigned int DIV:1;
    unsigned int reserved_26:6;
} Ifx_ETH_GPCTL_Bits;


typedef struct _Ifx_ETH_HASH_TABLE_HIGH_Bits
{
    unsigned int HTH:32;
} Ifx_ETH_HASH_TABLE_HIGH_Bits;


typedef struct _Ifx_ETH_HASH_TABLE_LOW_Bits
{
    unsigned int HTL:32;
} Ifx_ETH_HASH_TABLE_LOW_Bits;


typedef struct _Ifx_ETH_HW_FEATURE_Bits
{
    unsigned int MIISEL:1;
    unsigned int GMIISEL:1;
    unsigned int HDSEL:1;
    unsigned int EXTHASHEN:1;
    unsigned int HASHSEL:1;
    unsigned int ADDMACADRSEL:1;
    unsigned int PCSSEL:1;
    unsigned int L3L4FLTREN:1;
    unsigned int SMASEL:1;
    unsigned int RWKSEL:1;
    unsigned int MGKSEL:1;
    unsigned int MMCSEL:1;
    unsigned int TSVER1SEL:1;
    unsigned int TSVER2SEL:1;
    unsigned int EEESEL:1;
    unsigned int AVSEL:1;
    unsigned int TXCOESEL:1;
    unsigned int RXTYP1COE:1;
    unsigned int RXTYP2COE:1;
    unsigned int RXFIFOSIZE:1;
    unsigned int RXCHCNT:2;
    unsigned int TXCHCNT:2;
    unsigned int ENHDESSEL:1;
    unsigned int INTTSEN:1;
    unsigned int FLEXIPPSEN:1;
    unsigned int SAVLANINS:1;
    unsigned int ACTPHYIF:3;
    unsigned int reserved_31:1;
} Ifx_ETH_HW_FEATURE_Bits;


typedef struct _Ifx_ETH_ID_Bits
{
    unsigned int MODREV:8;
    unsigned int MODTYPE:8;
    unsigned int MODNUMBER:16;
} Ifx_ETH_ID_Bits;


typedef struct _Ifx_ETH_INTERRUPT_ENABLE_Bits
{
    unsigned int TIE:1;
    unsigned int TSE:1;
    unsigned int TUE:1;
    unsigned int TJE:1;
    unsigned int OVE:1;
    unsigned int UNE:1;
    unsigned int RIE:1;
    unsigned int RUE:1;
    unsigned int RSE:1;
    unsigned int RWE:1;
    unsigned int ETE:1;
    unsigned int reserved_11:2;
    unsigned int FBE:1;
    unsigned int ERE:1;
    unsigned int AIE:1;
    unsigned int NIE:1;
    unsigned int reserved_17:15;
} Ifx_ETH_INTERRUPT_ENABLE_Bits;


typedef struct _Ifx_ETH_INTERRUPT_MASK_Bits
{
    unsigned int RGSMIIIM:1;
    unsigned int PCSLCHGIM:1;
    unsigned int PCSANCIM:1;
    unsigned int PMTIM:1;
    unsigned int reserved_4:5;
    unsigned int TSIM:1;
    unsigned int LPIIM:1;
    unsigned int reserved_11:21;
} Ifx_ETH_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_INTERRUPT_STATUS_Bits
{
    unsigned int RGSMIIIS:1;
    unsigned int PCSLCHGIS:1;
    unsigned int PCSANCIS:1;
    unsigned int PMTIS:1;
    unsigned int MMCIS:1;
    unsigned int MMCRXIS:1;
    unsigned int MMCTXIS:1;
    unsigned int MMCRXIPIS:1;
    unsigned int reserved_8:1;
    unsigned int TSIS:1;
    unsigned int LPIIS:1;
    unsigned int reserved_11:21;
} Ifx_ETH_INTERRUPT_STATUS_Bits;


typedef struct _Ifx_ETH_KRST0_Bits
{
    unsigned int RST:1;
    unsigned int RSTSTAT:1;
    unsigned int reserved_2:30;
} Ifx_ETH_KRST0_Bits;


typedef struct _Ifx_ETH_KRST1_Bits
{
    unsigned int RST:1;
    unsigned int reserved_1:31;
} Ifx_ETH_KRST1_Bits;


typedef struct _Ifx_ETH_KRSTCLR_Bits
{
    unsigned int CLR:1;
    unsigned int reserved_1:31;
} Ifx_ETH_KRSTCLR_Bits;


typedef struct _Ifx_ETH_MAC_ADDRESS_HIGH_Bits
{
    unsigned int ADDRHI:16;
    unsigned int reserved_16:8;
    unsigned int MBC:6;
    unsigned int SA:1;
    unsigned int AE:1;
} Ifx_ETH_MAC_ADDRESS_HIGH_Bits;


typedef struct _Ifx_ETH_MAC_ADDRESS_LOW_Bits
{
    unsigned int ADDRLO:32;
} Ifx_ETH_MAC_ADDRESS_LOW_Bits;


typedef struct _Ifx_ETH_MAC_CONFIGURATION_Bits
{
    unsigned int PRELEN:2;
    unsigned int RE:1;
    unsigned int TE:1;
    unsigned int DC:1;
    unsigned int BL:2;
    unsigned int ACS:1;
    unsigned int LUD:1;
    unsigned int DR:1;
    unsigned int IPC:1;
    unsigned int DM:1;
    unsigned int LM:1;
    unsigned int DO:1;
    unsigned int FES:1;
    unsigned int PS:1;
    unsigned int DCRS:1;
    unsigned int IFG:3;
    unsigned int JE:1;
    unsigned int BE:1;
    unsigned int JD:1;
    unsigned int WD:1;
    unsigned int TC:1;
    unsigned int CST:1;
    unsigned int SFTERR:1;
    unsigned int TWOKPE:1;
    unsigned int SARC:3;
    unsigned int reserved_31:1;
} Ifx_ETH_MAC_CONFIGURATION_Bits;


typedef struct _Ifx_ETH_MAC_FRAME_FILTER_Bits
{
    unsigned int PR:1;
    unsigned int HUC:1;
    unsigned int HMC:1;
    unsigned int DAIF:1;
    unsigned int PM:1;
    unsigned int DBF:1;
    unsigned int PCF:2;
    unsigned int SAIF:1;
    unsigned int SAF:1;
    unsigned int HPF:1;
    unsigned int reserved_11:5;
    unsigned int VTFE:1;
    unsigned int reserved_17:3;
    unsigned int IPFE:1;
    unsigned int DNTU:1;
    unsigned int reserved_22:9;
    unsigned int RA:1;
} Ifx_ETH_MAC_FRAME_FILTER_Bits;


typedef struct _Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits
{
    unsigned int MISFRMCNT:16;
    unsigned int MISCNTOVF:1;
    unsigned int OVFFRMCNT:11;
    unsigned int OVFCNTOVF:1;
    unsigned int reserved_29:3;
} Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits;


typedef struct _Ifx_ETH_MMC_CONTROL_Bits
{
    unsigned int CNTRST:1;
    unsigned int CNTSTOPRO:1;
    unsigned int RSTONRD:1;
    unsigned int CNTFREEZ:1;
    unsigned int CNTPRST:1;
    unsigned int CNTPRSTLVL:1;
    unsigned int reserved_6:2;
    unsigned int UCDBC:1;
    unsigned int reserved_9:23;
} Ifx_ETH_MMC_CONTROL_Bits;


typedef struct _Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits
{
    unsigned int RXIPV4GFIS:1;
    unsigned int RXIPV4HERFIS:1;
    unsigned int RXIPV4NOPAYFIS:1;
    unsigned int RXIPV4FRAGFIS:1;
    unsigned int RXIPV4UDSBLFIS:1;
    unsigned int RXIPV6GFIS:1;
    unsigned int RXIPV6HERFIS:1;
    unsigned int RXIPV6NOPAYFIS:1;
    unsigned int RXUDPGFIS:1;
    unsigned int RXUDPERFIS:1;
    unsigned int RXTCPGFIS:1;
    unsigned int RXTCPERFIS:1;
    unsigned int RXICMPGFIS:1;
    unsigned int RXICMPERFIS:1;
    unsigned int reserved_14:2;
    unsigned int RXIPV4GOIS:1;
    unsigned int RXIPV4HEROIS:1;
    unsigned int RXIPV4NOPAYOIS:1;
    unsigned int RXIPV4FRAGOIS:1;
    unsigned int RXIPV4UDSBLOIS:1;
    unsigned int RXIPV6GOIS:1;
    unsigned int RXIPV6HEROIS:1;
    unsigned int RXIPV6NOPAYOIS:1;
    unsigned int RXUDPGOIS:1;
    unsigned int RXUDPEROIS:1;
    unsigned int RXTCPGOIS:1;
    unsigned int RXTCPEROIS:1;
    unsigned int RXICMPGOIS:1;
    unsigned int RXICMPEROIS:1;
    unsigned int reserved_30:2;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits
{
    unsigned int RXIPV4GFIM:1;
    unsigned int RXIPV4HERFIM:1;
    unsigned int RXIPV4NOPAYFIM:1;
    unsigned int RXIPV4FRAGFIM:1;
    unsigned int RXIPV4UDSBLFIM:1;
    unsigned int RXIPV6GFIM:1;
    unsigned int RXIPV6HERFIM:1;
    unsigned int RXIPV6NOPAYFIM:1;
    unsigned int RXUDPGFIM:1;
    unsigned int RXUDPERFIM:1;
    unsigned int RXTCPGFIM:1;
    unsigned int RXTCPERFIM:1;
    unsigned int RXICMPGFIM:1;
    unsigned int RXICMPERFIM:1;
    unsigned int reserved_14:2;
    unsigned int RXIPV4GOIM:1;
    unsigned int RXIPV4HEROIM:1;
    unsigned int RXIPV4NOPAYOIM:1;
    unsigned int RXIPV4FRAGOIM:1;
    unsigned int RXIPV4UDSBLOIM:1;
    unsigned int RXIPV6GOIM:1;
    unsigned int RXIPV6HEROIM:1;
    unsigned int RXIPV6NOPAYOIM:1;
    unsigned int RXUDPGOIM:1;
    unsigned int RXUDPEROIM:1;
    unsigned int RXTCPGOIM:1;
    unsigned int RXTCPEROIM:1;
    unsigned int RXICMPGOIM:1;
    unsigned int RXICMPEROIM:1;
    unsigned int reserved_30:2;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits
{
    unsigned int RXGBFRMIS:1;
    unsigned int RXGBOCTIS:1;
    unsigned int RXGOCTIS:1;
    unsigned int RXBCGFIS:1;
    unsigned int RXMCGFIS:1;
    unsigned int RXCRCERFIS:1;
    unsigned int RXALGNERFIS:1;
    unsigned int RXRUNTFIS:1;
    unsigned int RXJABERFIS:1;
    unsigned int RXUSIZEGFIS:1;
    unsigned int RXOSIZEGFIS:1;
    unsigned int RX64OCTGBFIS:1;
    unsigned int RX65T127OCTGBFIS:1;
    unsigned int RX128T255OCTGBFIS:1;
    unsigned int RX256T511OCTGBFIS:1;
    unsigned int RX512T1023OCTGBFIS:1;
    unsigned int RX1024TMAXOCTGBFIS:1;
    unsigned int RXUCGFIS:1;
    unsigned int RXLENERFIS:1;
    unsigned int RXORANGEFIS:1;
    unsigned int RXPAUSFIS:1;
    unsigned int RXFOVFIS:1;
    unsigned int RXVLANGBFIS:1;
    unsigned int RXWDOGFIS:1;
    unsigned int RXRCVERRFIS:1;
    unsigned int RXCTRLFIS:1;
    unsigned int reserved_26:6;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits
{
    unsigned int RXGBFRMIM:1;
    unsigned int RXGBOCTIM:1;
    unsigned int RXGOCTIM:1;
    unsigned int RXBCGFIM:1;
    unsigned int RXMCGFIM:1;
    unsigned int RXCRCERFIM:1;
    unsigned int RXALGNERFIM:1;
    unsigned int RXRUNTFIM:1;
    unsigned int RXJABERFIM:1;
    unsigned int RXUSIZEGFIM:1;
    unsigned int RXOSIZEGFIM:1;
    unsigned int RX64OCTGBFIM:1;
    unsigned int RX65T127OCTGBFIM:1;
    unsigned int RX128T255OCTGBFIM:1;
    unsigned int RX256T511OCTGBFIM:1;
    unsigned int RX512T1023OCTGBFIM:1;
    unsigned int RX1024TMAXOCTGBFIM:1;
    unsigned int RXUCGFIM:1;
    unsigned int RXLENERFIM:1;
    unsigned int RXORANGEFIM:1;
    unsigned int RXPAUSFIM:1;
    unsigned int RXFOVFIM:1;
    unsigned int RXVLANGBFIM:1;
    unsigned int RXWDOGFIM:1;
    unsigned int RXRCVERRFIM:1;
    unsigned int RXCTRLFIM:1;
    unsigned int reserved_26:6;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits
{
    unsigned int TXGBOCTIS:1;
    unsigned int TXGBFRMIS:1;
    unsigned int TXBCGFIS:1;
    unsigned int TXMCGFIS:1;
    unsigned int TX64OCTGBFIS:1;
    unsigned int TX65T127OCTGBFIS:1;
    unsigned int TX128T255OCTGBFIS:1;
    unsigned int TX256T511OCTGBFIS:1;
    unsigned int TX512T1023OCTGBFIS:1;
    unsigned int TX1024TMAXOCTGBFIS:1;
    unsigned int TXUCGBFIS:1;
    unsigned int TXMCGBFIS:1;
    unsigned int TXBCGBFIS:1;
    unsigned int TXUFLOWERFIS:1;
    unsigned int TXSCOLGFIS:1;
    unsigned int TXMCOLGFIS:1;
    unsigned int TXDEFFIS:1;
    unsigned int TXLATCOLFIS:1;
    unsigned int TXEXCOLFIS:1;
    unsigned int TXCARERFIS:1;
    unsigned int TXGOCTIS:1;
    unsigned int TXGFRMIS:1;
    unsigned int TXEXDEFFIS:1;
    unsigned int TXPAUSFIS:1;
    unsigned int TXVLANGFIS:1;
    unsigned int TXOSIZEGFIS:1;
    unsigned int reserved_26:6;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits
{
    unsigned int TXGBOCTIM:1;
    unsigned int TXGBFRMIM:1;
    unsigned int TXBCGFIM:1;
    unsigned int TXMCGFIM:1;
    unsigned int TX64OCTGBFIM:1;
    unsigned int TX65T127OCTGBFIM:1;
    unsigned int TX128T255OCTGBFIM:1;
    unsigned int TX256T511OCTGBFIM:1;
    unsigned int TX512T1023OCTGBFIM:1;
    unsigned int TX1024TMAXOCTGBFIM:1;
    unsigned int TXUCGBFIM:1;
    unsigned int TXMCGBFIM:1;
    unsigned int TXBCGBFIM:1;
    unsigned int TXUFLOWERFIM:1;
    unsigned int TXSCOLGFIM:1;
    unsigned int TXMCOLGFIM:1;
    unsigned int TXDEFFIM:1;
    unsigned int TXLATCOLFIM:1;
    unsigned int TXEXCOLFIM:1;
    unsigned int TXCARERFIM:1;
    unsigned int TXGOCTIM:1;
    unsigned int TXGFRMIM:1;
    unsigned int TXEXDEFFIM:1;
    unsigned int TXPAUSFIM:1;
    unsigned int TXVLANGFIM:1;
    unsigned int TXOSIZEGFIM:1;
    unsigned int reserved_26:6;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_OPERATION_MODE_Bits
{
    unsigned int reserved_0:1;
    unsigned int SR:1;
    unsigned int OSF:1;
    unsigned int RTC:2;
    unsigned int reserved_5:1;
    unsigned int FUF:1;
    unsigned int FEF:1;
    unsigned int EFC:1;
    unsigned int RFA:2;
    unsigned int RFD:2;
    unsigned int ST:1;
    unsigned int TTC:3;
    unsigned int reserved_17:3;
    unsigned int FTF:1;
    unsigned int TSF:1;
    unsigned int RFD_2:1;
    unsigned int RFA_2:1;
    unsigned int DFF:1;
    unsigned int RSF:1;
    unsigned int DT:1;
    unsigned int reserved_27:5;
} Ifx_ETH_OPERATION_MODE_Bits;


typedef struct _Ifx_ETH_PMT_CONTROL_STATUS_Bits
{
    unsigned int PWRDWN:1;
    unsigned int MGKPKTEN:1;
    unsigned int RWKPKTEN:1;
    unsigned int reserved_3:2;
    unsigned int MGKPRCVD:1;
    unsigned int RWKPRCVD:1;
    unsigned int reserved_7:2;
    unsigned int GLBLUCAST:1;
    unsigned int reserved_10:21;
    unsigned int RWKFILTRST:1;
} Ifx_ETH_PMT_CONTROL_STATUS_Bits;


typedef struct _Ifx_ETH_PPS_CONTROL_Bits
{
    unsigned int PPSCTRL_PPSCMD:4;
    unsigned int PPSEN0:1;
    unsigned int TRGTMODSEL0:2;
    unsigned int reserved_7:1;
    unsigned int PPSCMD1:3;
    unsigned int reserved_11:2;
    unsigned int TRGTMODSEL1:2;
    unsigned int reserved_15:1;
    unsigned int PPSCMD2:3;
    unsigned int reserved_19:2;
    unsigned int TRGTMODSEL2:2;
    unsigned int reserved_23:1;
    unsigned int PPSCMD3:3;
    unsigned int reserved_27:2;
    unsigned int TRGTMODSEL3:2;
    unsigned int reserved_31:1;
} Ifx_ETH_PPS_CONTROL_Bits;


typedef struct _Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits
{
    unsigned int reserved_0:2;
    unsigned int RDESLA:30;
} Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits;


typedef struct _Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits
{
    unsigned int RIWT:8;
    unsigned int reserved_8:24;
} Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits;


typedef struct _Ifx_ETH_RECEIVE_POLL_DEMAND_Bits
{
    unsigned int RPD:32;
} Ifx_ETH_RECEIVE_POLL_DEMAND_Bits;


typedef struct _Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits
{
    unsigned int WKUPFRMFTR:32;
} Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits;



typedef struct _Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX1024_MAXOCTGB:32;
} Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX128_255OCTGB:32;
} Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX256_511OCTGB:32;
} Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX512_1023OCTGB:32;
} Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX64OCTGB:32;
} Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX65_127OCTGB:32;
} Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits
{
    unsigned int RXALGNERR:32;
} Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits
{
    unsigned int RXBCASTG:32;
} Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits
{
    unsigned int RXCTRLG:32;
} Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits
{
    unsigned int RXCRCERR:32;
} Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits
{
    unsigned int RXFIFOOVFL:32;
} Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits
{
    unsigned int RXFRMGB:32;
} Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits
{
    unsigned int RXJABERR:32;
} Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits
{
    unsigned int RXLENERR:32;
} Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits
{
    unsigned int RXMCASTG:32;
} Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits
{
    unsigned int RXOCTGB:32;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits
{
    unsigned int RXOCTG:32;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits
{
    unsigned int RXOUTOFRNG:32;
} Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits
{
    unsigned int RXOVERSZG:32;
} Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_PAUSE_FRAMES_Bits
{
    unsigned int RXPAUSEFRM:32;
} Ifx_ETH_RX_PAUSE_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits
{
    unsigned int RXRCVERR:32;
} Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits
{
    unsigned int RXRUNTERR:32;
} Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits
{
    unsigned int RXUNDERSZG:32;
} Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits
{
    unsigned int RXUCASTG:32;
} Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits
{
    unsigned int RXVLANFRGB:32;
} Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits
{
    unsigned int RXWDGERR:32;
} Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_ERROR_FRAMES_Bits
{
    unsigned int RXICMPERRFRM:32;
} Ifx_ETH_RXICMP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_ERROR_OCTETS_Bits
{
    unsigned int RXICMPERROCT:32;
} Ifx_ETH_RXICMP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXICMP_GOOD_FRAMES_Bits
{
    unsigned int RXICMPGDFRM:32;
} Ifx_ETH_RXICMP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_GOOD_OCTETS_Bits
{
    unsigned int RXICMPGDOCT:32;
} Ifx_ETH_RXICMP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits
{
    unsigned int RXIPV4FRAGFRM:32;
} Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits
{
    unsigned int RXIPV4FRAGOCT:32;
} Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits
{
    unsigned int RXIPV4GDFRM:32;
} Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits
{
    unsigned int RXIPV4GDOCT:32;
} Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits
{
    unsigned int RXIPV4HDRERRFRM:32;
} Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits
{
    unsigned int RXIPV4HDRERROCT:32;
} Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits
{
    unsigned int RXIPV4NOPAYFRM:32;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits
{
    unsigned int RXIPV4NOPAYOCT:32;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits
{
    unsigned int RXIPV4UDSBLOCT:32;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits;



typedef struct _Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits
{
    unsigned int RXIPV4UDSBLFRM:32;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits
{
    unsigned int RXIPV6GDFRM:32;
} Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits
{
    unsigned int RXIPV6GDOCT:32;
} Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits
{
    unsigned int RXIPV6HDRERRFRM:32;
} Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits
{
    unsigned int RXIPV6HDRERROCT:32;
} Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits
{
    unsigned int RXIPV6NOPAYFRM:32;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits
{
    unsigned int RXIPV6NOPAYOCT:32;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXTCP_ERROR_FRAMES_Bits
{
    unsigned int RXTCPERRFRM:32;
} Ifx_ETH_RXTCP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXTCP_ERROR_OCTETS_Bits
{
    unsigned int RXTCPERROCT:32;
} Ifx_ETH_RXTCP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXTCP_GOOD_FRAMES_Bits
{
    unsigned int RXTCPGDFRM:32;
} Ifx_ETH_RXTCP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXTCP_GOOD_OCTETS_Bits
{
    unsigned int RXTCPGDOCT:32;
} Ifx_ETH_RXTCP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXUDP_ERROR_FRAMES_Bits
{
    unsigned int RXUDPERRFRM:32;
} Ifx_ETH_RXUDP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXUDP_ERROR_OCTETS_Bits
{
    unsigned int RXUDPERROCT:32;
} Ifx_ETH_RXUDP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXUDP_GOOD_FRAMES_Bits
{
    unsigned int RXUDPGDFRM:32;
} Ifx_ETH_RXUDP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXUDP_GOOD_OCTETS_Bits
{
    unsigned int RXUDPGDOCT:32;
} Ifx_ETH_RXUDP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_STATUS_Bits
{
    unsigned int TI:1;
    unsigned int TPS:1;
    unsigned int TU:1;
    unsigned int TJT:1;
    unsigned int OVF:1;
    unsigned int UNF:1;
    unsigned int RI:1;
    unsigned int RU:1;
    unsigned int RPS:1;
    unsigned int RWT:1;
    unsigned int ETI:1;
    unsigned int reserved_11:2;
    unsigned int FBI:1;
    unsigned int ERI:1;
    unsigned int AIS:1;
    unsigned int NIS:1;
    unsigned int RS:3;
    unsigned int TS:3;
    unsigned int EB:3;
    unsigned int GLI:1;
    unsigned int GMI:1;
    unsigned int GPI:1;
    unsigned int TTI:1;
    unsigned int GLPII:1;
    unsigned int reserved_31:1;
} Ifx_ETH_STATUS_Bits;


typedef struct _Ifx_ETH_SUB_SECOND_INCREMENT_Bits
{
    unsigned int SSINC:8;
    unsigned int reserved_8:24;
} Ifx_ETH_SUB_SECOND_INCREMENT_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits
{
    unsigned int TSHWR:16;
    unsigned int reserved_16:16;
} Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits
{
    unsigned int TSSS:31;
    unsigned int reserved_31:1;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits
{
    unsigned int TSSS:31;
    unsigned int ADDSUB:1;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_SECONDS_Bits
{
    unsigned int TSS:32;
} Ifx_ETH_SYSTEM_TIME_SECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits
{
    unsigned int TSS:32;
} Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits;


typedef struct _Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits
{
    unsigned int TTSLO:31;
    unsigned int TRGTBUSY:1;
} Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits;


typedef struct _Ifx_ETH_TARGET_TIME_SECONDS_Bits
{
    unsigned int TSTR:32;
} Ifx_ETH_TARGET_TIME_SECONDS_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_ADDEND_Bits
{
    unsigned int TSAR:32;
} Ifx_ETH_TIMESTAMP_ADDEND_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_CONTROL_Bits
{
    unsigned int TSENA:1;
    unsigned int TSCFUPDT:1;
    unsigned int TSINIT:1;
    unsigned int TSUPDT:1;
    unsigned int TSTRIG:1;
    unsigned int TSADDREG:1;
    unsigned int reserved_6:2;
    unsigned int TSENALL:1;
    unsigned int TSCTRLSSR:1;
    unsigned int TSVER2ENA:1;
    unsigned int TSIPENA:1;
    unsigned int TSIPV6ENA:1;
    unsigned int TSIPV4ENA:1;
    unsigned int TSEVNTENA:1;
    unsigned int TSMSTRENA:1;
    unsigned int SNAPTYPSEL:2;
    unsigned int TSENMACADDR:1;
    unsigned int reserved_19:5;
    unsigned int ATSFC:1;
    unsigned int ATSEN0:1;
    unsigned int ATSEN1:1;
    unsigned int ATSEN2:1;
    unsigned int ATSEN3:1;
    unsigned int reserved_29:3;
} Ifx_ETH_TIMESTAMP_CONTROL_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_STATUS_Bits
{
    unsigned int TSSOVF:1;
    unsigned int TSTARGT:1;
    unsigned int AUXTSTRIG:1;
    unsigned int TSTRGTERR:1;
    unsigned int TSTARGT1:1;
    unsigned int TSTRGTERR1:1;
    unsigned int TSTARGT2:1;
    unsigned int TSTRGTERR2:1;
    unsigned int TSTARGT3:1;
    unsigned int TSTRGTERR3:1;
    unsigned int reserved_10:6;
    unsigned int ATSSTN:4;
    unsigned int reserved_20:4;
    unsigned int ATSSTM:1;
    unsigned int ATSNS:5;
    unsigned int reserved_30:2;
} Ifx_ETH_TIMESTAMP_STATUS_Bits;


typedef struct _Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits
{
    unsigned int reserved_0:2;
    unsigned int TDESLA:30;
} Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits;


typedef struct _Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits
{
    unsigned int TPD:32;
} Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits;



typedef struct _Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX1024_MAXOCTGB:32;
} Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX128_255OCTGB:32;
} Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX256_511OCTGB:32;
} Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX512_1023OCTGB:32;
} Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX64OCTGB:32;
} Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX65_127OCTGB:32;
} Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXBCASTGB:32;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits
{
    unsigned int TXBCASTG:32;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits
{
    unsigned int TXCARR:32;
} Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_DEFERRED_FRAMES_Bits
{
    unsigned int TXDEFRD:32;
} Ifx_ETH_TX_DEFERRED_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits
{
    unsigned int TXEXSCOL:32;
} Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits
{
    unsigned int TXEXSDEF:32;
} Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits;


typedef struct _Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits
{
    unsigned int TXFRMGB:32;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits
{
    unsigned int TXFRMG:32;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits
{
    unsigned int TXLATECOL:32;
} Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXMCASTGB:32;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits
{
    unsigned int TXMCASTG:32;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits;



typedef struct _Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits
{
    unsigned int TXMULTCOLG:32;
} Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits
{
    unsigned int TXOCTGB:32;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits
{
    unsigned int TXOCTG:32;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits
{
    unsigned int TXOSIZG:32;
} Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_TX_PAUSE_FRAMES_Bits
{
    unsigned int TXPAUSE:32;
} Ifx_ETH_TX_PAUSE_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits
{
    unsigned int TXSNGLCOLG:32;
} Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits
{
    unsigned int TXUNDRFLW:32;
} Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXUCASTGB:32;
} Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits
{
    unsigned int TXVLANG:32;
} Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_VERSION_Bits
{
    unsigned int SNPSVER:8;
    unsigned int USERVER:8;
    unsigned int reserved_16:16;
} Ifx_ETH_VERSION_Bits;


typedef struct _Ifx_ETH_VLAN_TAG_Bits
{
    unsigned int VL:16;
    unsigned int ETV:1;
    unsigned int VTIM:1;
    unsigned int ESVL:1;
    unsigned int VTHM:1;
    unsigned int reserved_20:12;
} Ifx_ETH_VLAN_TAG_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_ACCEN0_Bits B;
} Ifx_ETH_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_ACCEN1_Bits B;
} Ifx_ETH_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_AHB_OR_AXI_STATUS_Bits B;
} Ifx_ETH_AHB_OR_AXI_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_BUS_MODE_Bits B;
} Ifx_ETH_BUS_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CLC_Bits B;
} Ifx_ETH_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits B;
} Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits B;
} Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits B;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits B;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_DEBUG_Bits B;
} Ifx_ETH_DEBUG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_FLOW_CONTROL_Bits B;
} Ifx_ETH_FLOW_CONTROL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_GMII_ADDRESS_Bits B;
} Ifx_ETH_GMII_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_GMII_DATA_Bits B;
} Ifx_ETH_GMII_DATA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_GPCTL_Bits B;
} Ifx_ETH_GPCTL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_HASH_TABLE_HIGH_Bits B;
} Ifx_ETH_HASH_TABLE_HIGH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_HASH_TABLE_LOW_Bits B;
} Ifx_ETH_HASH_TABLE_LOW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_HW_FEATURE_Bits B;
} Ifx_ETH_HW_FEATURE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_ID_Bits B;
} Ifx_ETH_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_INTERRUPT_ENABLE_Bits B;
} Ifx_ETH_INTERRUPT_ENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_INTERRUPT_MASK_Bits B;
} Ifx_ETH_INTERRUPT_MASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_INTERRUPT_STATUS_Bits B;
} Ifx_ETH_INTERRUPT_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_KRST0_Bits B;
} Ifx_ETH_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_KRST1_Bits B;
} Ifx_ETH_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_KRSTCLR_Bits B;
} Ifx_ETH_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MAC_ADDRESS_HIGH_Bits B;
} Ifx_ETH_MAC_ADDRESS_HIGH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MAC_ADDRESS_LOW_Bits B;
} Ifx_ETH_MAC_ADDRESS_LOW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MAC_CONFIGURATION_Bits B;
} Ifx_ETH_MAC_CONFIGURATION;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MAC_FRAME_FILTER_Bits B;
} Ifx_ETH_MAC_FRAME_FILTER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits B;
} Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_CONTROL_Bits B;
} Ifx_ETH_MMC_CONTROL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits B;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits B;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits B;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_OPERATION_MODE_Bits B;
} Ifx_ETH_OPERATION_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_PMT_CONTROL_STATUS_Bits B;
} Ifx_ETH_PMT_CONTROL_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_PPS_CONTROL_Bits B;
} Ifx_ETH_PPS_CONTROL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits B;
} Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits B;
} Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RECEIVE_POLL_DEMAND_Bits B;
} Ifx_ETH_RECEIVE_POLL_DEMAND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits B;
} Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_BROADCAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_CONTROL_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_CRC_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits B;
} Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_JABBER_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_LENGTH_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_MULTICAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits B;
} Ifx_ETH_RX_OCTET_COUNT_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits B;
} Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_PAUSE_FRAMES_Bits B;
} Ifx_ETH_RX_PAUSE_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_RECEIVE_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_RUNT_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_UNICAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXICMP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXICMP_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXICMP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXICMP_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXICMP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXICMP_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXICMP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXICMP_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXTCP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXTCP_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXTCP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXTCP_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXTCP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXTCP_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXTCP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXTCP_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXUDP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXUDP_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXUDP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXUDP_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXUDP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXUDP_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXUDP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXUDP_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_STATUS_Bits B;
} Ifx_ETH_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SUB_SECOND_INCREMENT_Bits B;
} Ifx_ETH_SUB_SECOND_INCREMENT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits B;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_SECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_SECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits B;
} Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits B;
} Ifx_ETH_TARGET_TIME_NANOSECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TARGET_TIME_SECONDS_Bits B;
} Ifx_ETH_TARGET_TIME_SECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TIMESTAMP_ADDEND_Bits B;
} Ifx_ETH_TIMESTAMP_ADDEND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TIMESTAMP_CONTROL_Bits B;
} Ifx_ETH_TIMESTAMP_CONTROL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TIMESTAMP_STATUS_Bits B;
} Ifx_ETH_TIMESTAMP_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits B;
} Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits B;
} Ifx_ETH_TRANSMIT_POLL_DEMAND;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits B;
} Ifx_ETH_TX_CARRIER_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_DEFERRED_FRAMES_Bits B;
} Ifx_ETH_TX_DEFERRED_FRAMES;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits B;
} Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits B;
} Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits B;
} Ifx_ETH_TX_FRAME_COUNT_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits B;
} Ifx_ETH_TX_LATE_COLLISION_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits B;
} Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits B;
} Ifx_ETH_TX_OCTET_COUNT_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_OSIZE_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_PAUSE_FRAMES_Bits B;
} Ifx_ETH_TX_PAUSE_FRAMES;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits B;
} Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits B;
} Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_VLAN_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_VERSION_Bits B;
} Ifx_ETH_VERSION;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_VLAN_TAG_Bits B;
} Ifx_ETH_VLAN_TAG;
# 2534 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_regdef.h"
typedef volatile struct _Ifx_ETH_MAC_ADDRESS
{
    Ifx_ETH_MAC_ADDRESS_HIGH HIGH;
    Ifx_ETH_MAC_ADDRESS_LOW LOW;
} Ifx_ETH_MAC_ADDRESS;
# 2551 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_regdef.h"
typedef volatile struct _Ifx_ETH
{
    Ifx_ETH_CLC CLC;
    Ifx_ETH_ID ID;
    Ifx_ETH_GPCTL GPCTL;
    Ifx_ETH_ACCEN0 ACCEN0;
    Ifx_ETH_ACCEN1 ACCEN1;
    Ifx_ETH_KRST0 KRST0;
    Ifx_ETH_KRST1 KRST1;
    Ifx_ETH_KRSTCLR KRSTCLR;
    unsigned char reserved_20[4064];
    Ifx_ETH_MAC_CONFIGURATION MAC_CONFIGURATION;
    Ifx_ETH_MAC_FRAME_FILTER MAC_FRAME_FILTER;
    Ifx_ETH_HASH_TABLE_HIGH HASH_TABLE_HIGH;
    Ifx_ETH_HASH_TABLE_LOW HASH_TABLE_LOW;
    Ifx_ETH_GMII_ADDRESS GMII_ADDRESS;
    Ifx_ETH_GMII_DATA GMII_DATA;
    Ifx_ETH_FLOW_CONTROL FLOW_CONTROL;
    Ifx_ETH_VLAN_TAG VLAN_TAG;
    Ifx_ETH_VERSION VERSION;
    Ifx_ETH_DEBUG DEBUG;
    Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER REMOTE_WAKE_UP_FRAME_FILTER;
    Ifx_ETH_PMT_CONTROL_STATUS PMT_CONTROL_STATUS;
    unsigned char reserved_1030[8];
    Ifx_ETH_INTERRUPT_STATUS INTERRUPT_STATUS;
    Ifx_ETH_INTERRUPT_MASK INTERRUPT_MASK;
    Ifx_ETH_MAC_ADDRESS MAC_ADDRESS_G0[16];
    unsigned char reserved_10C0[64];
    Ifx_ETH_MMC_CONTROL MMC_CONTROL;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT MMC_RECEIVE_INTERRUPT;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT MMC_TRANSMIT_INTERRUPT;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK MMC_RECEIVE_INTERRUPT_MASK;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK MMC_TRANSMIT_INTERRUPT_MASK;
    Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD TX_OCTET_COUNT_GOOD_BAD;
    Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD TX_FRAME_COUNT_GOOD_BAD;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD TX_BROADCAST_FRAMES_GOOD;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD TX_MULTICAST_FRAMES_GOOD;
    Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD TX_64OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD TX_65TO127OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD TX_128TO255OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD TX_256TO511OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD TX_512TO1023OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD TX_UNICAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD TX_MULTICAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD TX_BROADCAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES TX_UNDERFLOW_ERROR_FRAMES;
    Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES TX_SINGLE_COLLISION_GOOD_FRAMES;
    Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES TX_MULTIPLE_COLLISION_GOOD_FRAMES;
    Ifx_ETH_TX_DEFERRED_FRAMES TX_DEFERRED_FRAMES;
    Ifx_ETH_TX_LATE_COLLISION_FRAMES TX_LATE_COLLISION_FRAMES;
    Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES TX_EXCESSIVE_COLLISION_FRAMES;
    Ifx_ETH_TX_CARRIER_ERROR_FRAMES TX_CARRIER_ERROR_FRAMES;
    Ifx_ETH_TX_OCTET_COUNT_GOOD TX_OCTET_COUNT_GOOD;
    Ifx_ETH_TX_FRAME_COUNT_GOOD TX_FRAME_COUNT_GOOD;
    Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR TX_EXCESSIVE_DEFERRAL_ERROR;
    Ifx_ETH_TX_PAUSE_FRAMES TX_PAUSE_FRAMES;
    Ifx_ETH_TX_VLAN_FRAMES_GOOD TX_VLAN_FRAMES_GOOD;
    Ifx_ETH_TX_OSIZE_FRAMES_GOOD TX_OSIZE_FRAMES_GOOD;
    unsigned char reserved_117C[4];
    Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD RX_FRAMES_COUNT_GOOD_BAD;
    Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD RX_OCTET_COUNT_GOOD_BAD;
    Ifx_ETH_RX_OCTET_COUNT_GOOD RX_OCTET_COUNT_GOOD;
    Ifx_ETH_RX_BROADCAST_FRAMES_GOOD RX_BROADCAST_FRAMES_GOOD;
    Ifx_ETH_RX_MULTICAST_FRAMES_GOOD RX_MULTICAST_FRAMES_GOOD;
    Ifx_ETH_RX_CRC_ERROR_FRAMES RX_CRC_ERROR_FRAMES;
    Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES RX_ALIGNMENT_ERROR_FRAMES;
    Ifx_ETH_RX_RUNT_ERROR_FRAMES RX_RUNT_ERROR_FRAMES;
    Ifx_ETH_RX_JABBER_ERROR_FRAMES RX_JABBER_ERROR_FRAMES;
    Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD RX_UNDERSIZE_FRAMES_GOOD;
    Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD RX_OVERSIZE_FRAMES_GOOD;
    Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD RX_64OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD RX_65TO127OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD RX_128TO255OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD RX_256TO511OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD RX_512TO1023OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_UNICAST_FRAMES_GOOD RX_UNICAST_FRAMES_GOOD;
    Ifx_ETH_RX_LENGTH_ERROR_FRAMES RX_LENGTH_ERROR_FRAMES;
    Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES RX_OUT_OF_RANGE_TYPE_FRAMES;
    Ifx_ETH_RX_PAUSE_FRAMES RX_PAUSE_FRAMES;
    Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES RX_FIFO_OVERFLOW_FRAMES;
    Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD RX_VLAN_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES RX_WATCHDOG_ERROR_FRAMES;
    Ifx_ETH_RX_RECEIVE_ERROR_FRAMES RX_RECEIVE_ERROR_FRAMES;
    Ifx_ETH_RX_CONTROL_FRAMES_GOOD RX_CONTROL_FRAMES_GOOD;
    unsigned char reserved_11E8[24];
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK MMC_IPC_RECEIVE_INTERRUPT_MASK;
    unsigned char reserved_1204[4];
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT MMC_IPC_RECEIVE_INTERRUPT;
    unsigned char reserved_120C[4];
    Ifx_ETH_RXIPV4_GOOD_FRAMES RXIPV4_GOOD_FRAMES;
    Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES RXIPV4_HEADER_ERROR_FRAMES;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES RXIPV4_NO_PAYLOAD_FRAMES;
    Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES RXIPV4_FRAGMENTED_FRAMES;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES;
    Ifx_ETH_RXIPV6_GOOD_FRAMES RXIPV6_GOOD_FRAMES;
    Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES RXIPV6_HEADER_ERROR_FRAMES;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES RXIPV6_NO_PAYLOAD_FRAMES;
    Ifx_ETH_RXUDP_GOOD_FRAMES RXUDP_GOOD_FRAMES;
    Ifx_ETH_RXUDP_ERROR_FRAMES RXUDP_ERROR_FRAMES;
    Ifx_ETH_RXTCP_GOOD_FRAMES RXTCP_GOOD_FRAMES;
    Ifx_ETH_RXTCP_ERROR_FRAMES RXTCP_ERROR_FRAMES;
    Ifx_ETH_RXICMP_GOOD_FRAMES RXICMP_GOOD_FRAMES;
    Ifx_ETH_RXICMP_ERROR_FRAMES RXICMP_ERROR_FRAMES;
    unsigned char reserved_1248[8];
    Ifx_ETH_RXIPV4_GOOD_OCTETS RXIPV4_GOOD_OCTETS;
    Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS RXIPV4_HEADER_ERROR_OCTETS;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS RXIPV4_NO_PAYLOAD_OCTETS;
    Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS RXIPV4_FRAGMENTED_OCTETS;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS;
    Ifx_ETH_RXIPV6_GOOD_OCTETS RXIPV6_GOOD_OCTETS;
    Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS RXIPV6_HEADER_ERROR_OCTETS;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS RXIPV6_NO_PAYLOAD_OCTETS;
    Ifx_ETH_RXUDP_GOOD_OCTETS RXUDP_GOOD_OCTETS;
    Ifx_ETH_RXUDP_ERROR_OCTETS RXUDP_ERROR_OCTETS;
    Ifx_ETH_RXTCP_GOOD_OCTETS RXTCP_GOOD_OCTETS;
    Ifx_ETH_RXTCP_ERROR_OCTETS RXTCP_ERROR_OCTETS;
    Ifx_ETH_RXICMP_GOOD_OCTETS RXICMP_GOOD_OCTETS;
    Ifx_ETH_RXICMP_ERROR_OCTETS RXICMP_ERROR_OCTETS;
    unsigned char reserved_1288[1144];
    Ifx_ETH_TIMESTAMP_CONTROL TIMESTAMP_CONTROL;
    Ifx_ETH_SUB_SECOND_INCREMENT SUB_SECOND_INCREMENT;
    Ifx_ETH_SYSTEM_TIME_SECONDS SYSTEM_TIME_SECONDS;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS SYSTEM_TIME_NANOSECONDS;
    Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE SYSTEM_TIME_SECONDS_UPDATE;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE SYSTEM_TIME_NANOSECONDS_UPDATE;
    Ifx_ETH_TIMESTAMP_ADDEND TIMESTAMP_ADDEND;
    Ifx_ETH_TARGET_TIME_SECONDS TARGET_TIME_SECONDS;
    Ifx_ETH_TARGET_TIME_NANOSECONDS TARGET_TIME_NANOSECONDS;
    Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS SYSTEM_TIME_HIGHER_WORD_SECONDS;
    Ifx_ETH_TIMESTAMP_STATUS TIMESTAMP_STATUS;
    Ifx_ETH_PPS_CONTROL PPS_CONTROL;
    unsigned char reserved_1730[208];
    Ifx_ETH_MAC_ADDRESS MAC_ADDRESS_G1[16];
    unsigned char reserved_1880[1920];
    Ifx_ETH_BUS_MODE BUS_MODE;
    Ifx_ETH_TRANSMIT_POLL_DEMAND TRANSMIT_POLL_DEMAND;
    Ifx_ETH_RECEIVE_POLL_DEMAND RECEIVE_POLL_DEMAND;
    Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS RECEIVE_DESCRIPTOR_LIST_ADDRESS;
    Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS TRANSMIT_DESCRIPTOR_LIST_ADDRESS;
    Ifx_ETH_STATUS STATUS;
    Ifx_ETH_OPERATION_MODE OPERATION_MODE;
    Ifx_ETH_INTERRUPT_ENABLE INTERRUPT_ENABLE;
    Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER;
    Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER RECEIVE_INTERRUPT_WATCHDOG_TIMER;
    unsigned char reserved_2028[4];
    Ifx_ETH_AHB_OR_AXI_STATUS AHB_OR_AXI_STATUS;
    unsigned char reserved_2030[24];
    Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR CURRENT_HOST_TRANSMIT_DESCRIPTOR;
    Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR CURRENT_HOST_RECEIVE_DESCRIPTOR;
    Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS;
    Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS CURRENT_HOST_RECEIVE_BUFFER_ADDRESS;
    Ifx_ETH_HW_FEATURE HW_FEATURE;
    unsigned char reserved_205C[164];
} Ifx_ETH;
# 37 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_reg.h" 2
# 48 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_bf.h" 1
# 49 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 2
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxEth_PinMap.h" 1
# 33 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxEth_PinMap.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h" 1
# 43 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxPort_cfg.h" 1
# 40 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxPort_cfg.h"
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
# 41 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxPort_cfg.h" 2
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
# 45 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h" 2
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
# 34 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxEth_PinMap.h" 2





typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Crs_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Crsdv_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxdv_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Refclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Txclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxd_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Col_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Mdc_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel inSelect;
    IfxPort_OutputIdx outSelect;
} IfxEth_Mdio_InOut;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txd_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txen_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txer_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxer_In;

extern IfxEth_Col_In IfxEth_COL_P11_15_IN;
extern IfxEth_Crs_In IfxEth_CRSA_P11_14_IN;
extern IfxEth_Crs_In IfxEth_CRSB_P11_11_IN;
extern IfxEth_Crsdv_In IfxEth_CRSDVA_P11_11_IN;
extern IfxEth_Crsdv_In IfxEth_CRSDVB_P11_14_IN;
extern IfxEth_Mdc_Out IfxEth_MDC_P02_8_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P12_0_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P21_0_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P21_2_OUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOA_P00_0_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOC_P12_1_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOD_P21_3_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIO_P21_1_INOUT;
extern IfxEth_Refclk_In IfxEth_REFCLK_P11_12_IN;
extern IfxEth_Rxclk_In IfxEth_RXCLKB_P11_4_IN;
extern IfxEth_Rxclk_In IfxEth_RXCLKC_P12_0_IN;
extern IfxEth_Rxd_In IfxEth_RXD0_P11_10_IN;
extern IfxEth_Rxd_In IfxEth_RXD1_P11_9_IN;
extern IfxEth_Rxd_In IfxEth_RXD2_P11_8_IN;
extern IfxEth_Rxd_In IfxEth_RXD3_P11_7_IN;
extern IfxEth_Rxdv_In IfxEth_RXDVA_P11_11_IN;
extern IfxEth_Rxdv_In IfxEth_RXDVB_P11_14_IN;
extern IfxEth_Rxer_In IfxEth_RXERA_P11_13_IN;
extern IfxEth_Rxer_In IfxEth_RXERB_P21_7_IN;
extern IfxEth_Txclk_In IfxEth_TXCLKA_P11_5_IN;
extern IfxEth_Txclk_In IfxEth_TXCLKB_P11_12_IN;
extern IfxEth_Txd_Out IfxEth_TXD0_P11_3_OUT;
extern IfxEth_Txd_Out IfxEth_TXD1_P11_2_OUT;
extern IfxEth_Txd_Out IfxEth_TXD2_P11_1_OUT;
extern IfxEth_Txd_Out IfxEth_TXD3_P11_0_OUT;
extern IfxEth_Txen_Out IfxEth_TXEN_P11_6_OUT;
extern IfxEth_Txer_Out IfxEth_TXER_P11_4_OUT;
# 203 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxEth_PinMap.h"
extern const IfxEth_Col_In *IfxEth_Col_In_pinTable[1][1];


extern const IfxEth_Crs_In *IfxEth_Crs_In_pinTable[1][2];


extern const IfxEth_Crsdv_In *IfxEth_Crsdv_In_pinTable[1][2];


extern const IfxEth_Mdc_Out *IfxEth_Mdc_Out_pinTable[1][4];


extern const IfxEth_Mdio_InOut *IfxEth_Mdio_InOut_pinTable[1][7];


extern const IfxEth_Refclk_In *IfxEth_Refclk_In_pinTable[1][1];


extern const IfxEth_Rxclk_In *IfxEth_Rxclk_In_pinTable[1][3];


extern const IfxEth_Rxd_In *IfxEth_Rxd_In_pinTable[1][1];


extern const IfxEth_Rxdv_In *IfxEth_Rxdv_In_pinTable[1][2];


extern const IfxEth_Rxer_In *IfxEth_Rxer_In_pinTable[1][2];


extern const IfxEth_Txclk_In *IfxEth_Txclk_In_pinTable[1][2];


extern const IfxEth_Txd_Out *IfxEth_Txd_Out_pinTable[1][4];


extern const IfxEth_Txen_Out *IfxEth_Txen_Out_pinTable[1][1];


extern const IfxEth_Txer_Out *IfxEth_Txer_Out_pinTable[1][1];
# 50 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 2
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
# 51 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 2

# 1 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 1
# 53 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 2
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



# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h" 1
# 107 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
# 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
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
# 39 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxScu_PinMap.h"
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
# 54 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h" 2
# 87 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
typedef enum
{
    IfxEth_ChecksumMode_bypass = 0,
    IfxEth_ChecksumMode_ipv4 = 1,
    IfxEth_ChecksumMode_tcpUdpIcmpSegment = 2,
    IfxEth_ChecksumMode_tcpUdpIcmpFull = 3
} IfxEth_ChecksumMode;

typedef enum
{
    IfxEth_DescriptorMode_chain,
    IfxEth_DescriptorMode_ring
} IfxEth_DescriptorMode;



typedef enum
{
    IfxEth_PhyInterfaceMode_mii,
    IfxEth_PhyInterfaceMode_rmii
} IfxEth_PhyInterfaceMode;



typedef enum
{
    IfxEth_ReceiveProcessState_reset,
    IfxEth_ReceiveProcessState_fetching,
    IfxEth_ReceiveProcessState_none,
    IfxEth_ReceiveProcessState_waiting,
    IfxEth_ReceiveProcessState_suspended,
    IfxEth_ReceiveProcessState_closing,
    IfxEth_ReceiveProcessState_timestampWrite,
    IfxEth_ReceiveProcessState_transfering
} IfxEth_ReceiveProcessState;



typedef enum
{
    IfxEth_RingModeBufferUsed_buffer1,
    IfxEth_RingModeBufferUsed_buffer2,
    IfxEth_RingModeBufferUsed_bothBuffers
} IfxEth_RingModeBufferUsed;



typedef enum
{
    IfxEth_TransmitProcessState_reset,
    IfxEth_TransmitProcessState_fetching,
    IfxEth_TransmitProcessState_waiting,
    IfxEth_TransmitProcessState_reading,
    IfxEth_TransmitProcessState_timestampWrite,
    IfxEth_TransmitProcessState_none,
    IfxEth_TransmitProcessState_suspended,
    IfxEth_TransmitProcessState_closing
} IfxEth_TransmitProcessState;
# 156 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
typedef struct
{
    uint32 ext : 1;
    uint32 CE : 1;
    uint32 DBE : 1;
    uint32 RE : 1;
    uint32 RWT : 1;
    uint32 FT : 1;
    uint32 LC : 1;
    uint32 IPC : 1;
    uint32 LS : 1;
    uint32 FS : 1;
    uint32 VLAN : 1;
    uint32 OE : 1;
    uint32 LE : 1;
    uint32 SAF : 1;
    uint32 DE : 1;
    uint32 ES : 1;
    uint32 FL : 14;
    uint32 AFM : 1;
    uint32 OWN : 1;
} IfxEth_AltRxDescr0_Bits;



typedef struct
{
    uint32 RBS1 : 13;
    uint32 resv1 : 1;
    uint32 RCH : 1;
    uint32 RER : 1;
    uint32 RBS2 : 13;
    uint32 resv : 2;
    uint32 DIC : 1;
} IfxEth_AltRxDescr1_Bits;



typedef struct
{
    uint32 DB : 1;
    uint32 UF : 1;
    uint32 ED : 1;
    uint32 CC : 4;
    uint32 VLAN : 1;
    uint32 EC : 1;
    uint32 LC : 1;
    uint32 NC : 1;
    uint32 LOC : 1;
    uint32 PCE : 1;
    uint32 FF : 1;
    uint32 JT : 1;
    uint32 ES : 1;
    uint32 IHE : 1;
    uint32 TTSS : 1;
    uint32 resv : 2;
    uint32 TCH : 1;
    uint32 TER : 1;
    uint32 CIC : 2;
    uint32 resv1 : 1;
    uint32 TTSE : 1;
    uint32 DP : 1;
    uint32 DC : 1;
    uint32 FS : 1;
    uint32 LS : 1;
    uint32 IC : 1;
    uint32 OWN : 1;
} IfxEth_AltTxDescr0_Bits;



typedef struct
{
    uint32 TBS1 : 13;
    uint32 resv1 : 3;
    uint32 TBS2 : 13;
    uint32 resv2 : 3;
} IfxEth_AltTxDescr1_Bits;







typedef union
{
    IfxEth_AltRxDescr0_Bits A;
    uint32 U;
} IfxEth_RxDescr0;



typedef union
{
    IfxEth_AltRxDescr1_Bits A;
    uint32 U;
} IfxEth_RxDescr1;



typedef union
{
    uint32 U;
} IfxEth_RxDescr2;



typedef union
{
    uint32 U;
} IfxEth_RxDescr3;



typedef union
{
    IfxEth_AltTxDescr0_Bits A;
    uint32 U;
} IfxEth_TxDescr0;



typedef union
{
    IfxEth_AltTxDescr1_Bits A;
    uint32 U;
} IfxEth_TxDescr1;



typedef union
{
    uint32 U;
} IfxEth_TxDescr2;



typedef union
{
    uint32 U;
} IfxEth_TxDescr3;







typedef struct
{
    IfxEth_RingModeBufferUsed rxBufferUsed;
    uint32 rxBuffer1StartAddress;
    uint32 rxBuffer2StartAddress;
    uint16 rxBuffer1Size;
    uint16 rxBuffer2Size;
} IfxEth_RingModeRxBuffersConfig;



typedef struct
{
    IfxEth_RingModeBufferUsed txBufferUsed;
    uint32 txBuffer1StartAddress;
    uint32 txBuffer2StartAddress;
    uint16 txBuffer1Size;
    uint16 txBuffer2Size;
} IfxEth_RingModeTxBuffersConfig;



typedef struct
{
    IfxEth_RxDescr0 RDES0;
    IfxEth_RxDescr1 RDES1;
    IfxEth_RxDescr2 RDES2;
    IfxEth_RxDescr3 RDES3;
} IfxEth_RxDescr;



typedef struct
{
    IfxEth_TxDescr0 TDES0;
    IfxEth_TxDescr1 TDES1;
    IfxEth_TxDescr2 TDES2;
    IfxEth_TxDescr3 TDES3;
} IfxEth_TxDescr;







typedef struct
{
    IfxEth_Crs_In *crs;
    IfxEth_Col_In *col;
    IfxEth_Txclk_In *txClk;
    IfxEth_Rxclk_In *rxClk;
    IfxEth_Rxdv_In *rxDv;
    IfxEth_Rxer_In *rxEr;
    IfxEth_Rxd_In *rxd0;
    IfxEth_Rxd_In *rxd1;
    IfxEth_Rxd_In *rxd2;
    IfxEth_Rxd_In *rxd3;
    IfxEth_Txen_Out *txEn;
    IfxEth_Txer_Out *txEr;
    IfxEth_Txd_Out *txd0;
    IfxEth_Txd_Out *txd1;
    IfxEth_Txd_Out *txd2;
    IfxEth_Txd_Out *txd3;
} IfxEth_MiiPins;



typedef struct
{
    IfxEth_RingModeTxBuffersConfig txConfig;
    IfxEth_RingModeRxBuffersConfig rxConfig;
} IfxEth_RingModeBuffersConfig;



typedef struct
{
    IfxEth_Crsdv_In *crsDiv;
    IfxEth_Refclk_In *refClk;
    IfxEth_Rxd_In *rxd0;
    IfxEth_Rxd_In *rxd1;
    IfxEth_Mdc_Out *mdc;
    IfxEth_Mdio_InOut *mdio;
    IfxEth_Txd_Out *txd0;
    IfxEth_Txd_Out *txd1;
    IfxEth_Txen_Out *txEn;
} IfxEth_RmiiPins;





typedef union
{
    IfxEth_RxDescr items[8];
    uint32 U[8][4];
} IfxEth_RxDescrList;

typedef union
{
    IfxEth_TxDescr items[16];
    uint32 U[16][4];
} IfxEth_TxDescrList;







typedef struct
{
    uint8 macAddress[6];
    uint32 (*phyInit)(void);
    boolean (*phyLink)(void);
    IfxEth_PhyInterfaceMode phyInterfaceMode;
    const IfxEth_RmiiPins *rmiiPins;
    const IfxEth_MiiPins *miiPins;
    Ifx_Priority isrPriority;
    IfxSrc_Tos isrProvider;
    Ifx_ETH *ethSfr;
    IfxEth_RxDescrList *rxDescr;
    IfxEth_TxDescrList *txDescr;
    IfxEth_DescriptorMode descriptorMode;
    IfxEth_RingModeBuffersConfig ringModeBuffersConfig;
} IfxEth_Config;







typedef struct
{
    Ifx_ETH_STATUS status;
    uint32 rxCount;
    uint32 txCount;
    uint32 error;
    sint32 isrRxCount;
    sint32 isrTxCount;
    sint32 txDiff;
    sint32 rxDiff;
    sint32 isrCount;
    IfxEth_Config config;
    IfxEth_RxDescrList *rxDescr;
    IfxEth_TxDescrList *txDescr;
    IfxEth_RxDescr *pRxDescr;
    IfxEth_TxDescr *pTxDescr;
    Ifx_ETH *ethSfr;
    IfxEth_DescriptorMode descriptorMode;
    IfxEth_RingModeBufferUsed txBufferUsed;
    IfxEth_RingModeBufferUsed rxBufferUsed;
} IfxEth;



typedef struct
{
    uint32 PCE : 1;
    uint32 CE : 1;
    uint32 DBE : 1;
    uint32 RE : 1;
    uint32 RWT : 1;
    uint32 FT : 1;
    uint32 LC : 1;
    uint32 IPC : 1;
    uint32 LS : 1;
    uint32 FS : 1;
    uint32 VLAN : 1;
    uint32 OE : 1;
    uint32 LE : 1;
    uint32 SAF : 1;
    uint32 DE : 1;
    uint32 ES : 1;
    uint32 FL : 14;
    uint32 AFM : 1;
    uint32 OWN : 1;
} IfxEth_RxDescr0_Bits;



typedef struct
{
    uint32 RBS1 : 11;
    uint32 RBS2 : 11;
    uint32 resv : 2;
    uint32 RCH : 1;
    uint32 RER : 1;
    uint32 resv2 : 5;
    uint32 DIC : 1;
} IfxEth_RxDescr1_Bits;



typedef struct
{
    uint32 DB : 1;
    uint32 UF : 1;
    uint32 ED : 1;
    uint32 CC : 4;
    uint32 VLAN : 1;
    uint32 EC : 1;
    uint32 LC : 1;
    uint32 NC : 1;
    uint32 LOC : 1;
    uint32 PCE : 1;
    uint32 FF : 1;
    uint32 JT : 1;
    uint32 ES : 1;
    uint32 IHE : 1;
    uint32 TTSS : 1;
    uint32 resv : 13;
    uint32 OWN : 1;
} IfxEth_TxDescr0_Bits;



typedef struct
{
    uint32 TBS1 : 11;
    uint32 TBS2 : 11;
    uint32 TTSE : 1;
    uint32 DP : 1;
    uint32 TCH : 1;
    uint32 TER : 1;
    uint32 DC : 1;
    uint32 CIC : 2;
    uint32 FS : 1;
    uint32 LS : 1;
    uint32 IC : 1;
} IfxEth_TxDescr1_Bits;
# 553 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_setBuffer(IfxEth_RxDescr *descr, void *buffer);





static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_TxDescr_getNext(IfxEth_TxDescr *descr);




static inline __attribute__ ((always_inline)) boolean IfxEth_TxDescr_isAvailable(IfxEth_TxDescr *descr);






static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setBuffer(IfxEth_TxDescr *descr, void *buffer);





static inline __attribute__ ((always_inline)) void IfxEth_applySoftwareReset(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_clearEriInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_clearRxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_clearTuInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_clearTxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_disableTimeStampCoarseUpdate(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_disableTimeStampForIpv4Frames(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_enableMmcCounter(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStamp(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampCoarseUpdate(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampForAllFrames(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampForEthFrames(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampForIpv4Frames(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampForVer2Format(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_getTimeStampInitialiseStatus(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_getTimeStampUpdateStatus(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_initialiseTimeStamp(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isSoftwareResetDone(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_setAddToTimeUpdate(IfxEth *eth);






static inline __attribute__ ((always_inline)) void IfxEth_setBinaryRolloverControl(IfxEth *eth, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxEth_setLoopbackMode(IfxEth *eth, boolean loopbackMode);






static inline __attribute__ ((always_inline)) void IfxEth_setNanoSecondsUpdateValue(IfxEth *eth, uint8 value);






static inline __attribute__ ((always_inline)) void IfxEth_setPhyInterfaceMode(IfxEth *eth, IfxEth_PhyInterfaceMode mode);






static inline __attribute__ ((always_inline)) void IfxEth_setReceiveDescriptorAddress(Ifx_ETH *eth, void *address);






static inline __attribute__ ((always_inline)) void IfxEth_setSecondsUpdateValue(IfxEth *eth, uint8 value);






static inline __attribute__ ((always_inline)) void IfxEth_setSubSecondIncrementValue(IfxEth *eth, uint8 value);





static inline __attribute__ ((always_inline)) void IfxEth_setSubtractToTimeUpdate(IfxEth *eth);






static inline __attribute__ ((always_inline)) void IfxEth_setTransmitDescriptorAddress(Ifx_ETH *eth, void *address);





static inline __attribute__ ((always_inline)) void IfxEth_updateTimeStamp(IfxEth *eth);






static inline __attribute__ ((always_inline)) void *IfxEth_waitTransmitBuffer(IfxEth *eth);
# 770 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_freeReceiveBuffer(IfxEth *eth);
# 779 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_sendTransmitBuffer(IfxEth *eth, uint16 len);
# 789 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_sendTransmitBuffersRingMode(IfxEth *eth, uint16 buffer1Length, uint16 buffer2Length);






extern void IfxEth_setMacAddress(IfxEth *eth, const uint8 *macAddress);





extern void IfxEth_startReceiver(IfxEth *eth);





extern void IfxEth_stopReceiver(IfxEth *eth);
# 818 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_writeHeader(IfxEth *eth, uint8 *txBuffer, uint8 *destinationAddress, uint8 *sourceAddress, uint32 packetSize);
# 833 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_RxDescr_getNext(IfxEth_RxDescr *descr);





static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_release(IfxEth_RxDescr *descr);





static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_release(IfxEth_TxDescr *descr);




static inline __attribute__ ((always_inline)) void IfxEth_clearMacConfiguration(void);




static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getActualRxDescriptor(IfxEth *eth);



static inline __attribute__ ((always_inline)) uint32 IfxEth_getActualRxIndex(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getActualTxDescriptor(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getBaseRxDescriptor(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getBaseTxDescriptor(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_getLoopbackMode(IfxEth *eth);




static inline __attribute__ ((always_inline)) void *IfxEth_getMacAddressPointer(IfxEth *eth);





static inline __attribute__ ((always_inline)) IfxEth_ReceiveProcessState IfxEth_getReceiveProcessState(IfxEth *eth);





static inline __attribute__ ((always_inline)) uint16 IfxEth_getRxDataLength(IfxEth *eth);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEth_getSrcPointer(IfxEth *eth);





static inline __attribute__ ((always_inline)) IfxEth_TransmitProcessState IfxEth_getTransmitProcessState(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isEriInterrupt(IfxEth *eth);






static inline __attribute__ ((always_inline)) boolean IfxEth_isLinkActive(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isNisInterrupt(IfxEth *eth);




static inline __attribute__ ((always_inline)) boolean IfxEth_isRxChecksumError(IfxEth *eth);






static inline __attribute__ ((always_inline)) boolean IfxEth_isRxDataAvailable(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isRxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isTuInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) boolean IfxEth_isTxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_readAllFlags(IfxEth *eth);
# 973 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_disableModule(void);




extern void IfxEth_enableModule(void);







extern void *IfxEth_getReceiveBuffer(IfxEth *eth);






extern void *IfxEth_getTransmitBuffer(IfxEth *eth);






extern void IfxEth_readMacAddress(IfxEth *eth, uint8 *macAddress);




extern void IfxEth_resetModule(void);






extern void IfxEth_setAndSendTransmitBuffer(IfxEth *eth, void *buffer, uint16 len);






extern void IfxEth_setupChecksumEngine(IfxEth *eth, IfxEth_ChecksumMode mode);





extern void IfxEth_shuffleRxDescriptor(IfxEth *eth);





extern void IfxEth_shuffleTxDescriptor(IfxEth *eth);





extern void IfxEth_startTransmitter(IfxEth *eth);





extern void IfxEth_stopTransmitter(IfxEth *eth);





extern void IfxEth_wakeupReceiver(IfxEth *eth);





extern void IfxEth_wakeupTransmitter(IfxEth *eth);
# 1073 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setup(IfxEth_TxDescr *descr, uint16 length, boolean firstSegment, boolean lastSegment);
# 1082 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_setReceiveBuffer1RingMode(IfxEth *eth, IfxEth_RxDescr *descr, uint32 address, uint16 size);
# 1091 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_setReceiveBuffer2RingMode(IfxEth *eth, IfxEth_RxDescr *descr, uint32 address, uint16 size);
# 1100 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_setTransmitBuffer1RingMode(IfxEth *eth, IfxEth_TxDescr *descr, uint32 address, uint16 size);
# 1109 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_setTransmitBuffer2RingMode(IfxEth *eth, IfxEth_TxDescr *descr, uint32 address, uint16 size);
# 1120 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_init(IfxEth *eth, const IfxEth_Config *config);






extern void IfxEth_initConfig(IfxEth_Config *config, Ifx_ETH *ethSfr);





extern void IfxEth_initReceiveDescriptors(IfxEth *eth);






extern void IfxEth_initReceiveDescriptorsRingMode(IfxEth *eth, const IfxEth_RingModeRxBuffersConfig *config);





extern void IfxEth_initTransmitDescriptors(IfxEth *eth);






extern void IfxEth_initTransmitDescriptorsRingMode(IfxEth *eth, const IfxEth_RingModeTxBuffersConfig *config);






extern void IfxEth_setupMiiInputPins(IfxEth *eth, const IfxEth_MiiPins *miiPins);






extern void IfxEth_setupMiiOutputPins(IfxEth *eth, const IfxEth_MiiPins *miiPins);






extern void IfxEth_setupRmiiInputPins(IfxEth *eth, const IfxEth_RmiiPins *rmiiPins);






extern void IfxEth_setupRmiiOutputPins(IfxEth *eth, const IfxEth_RmiiPins *rmiiPins);
# 1191 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Std/IfxEth.h"
extern uint8 IfxEth_rxBuffer[8][1536];

extern IfxEth_RxDescrList IfxEth_rxDescr;



extern uint8 IfxEth_txBuffer[16][1536];

extern IfxEth_TxDescrList IfxEth_txDescr;





static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_RxDescr_getNext(IfxEth_RxDescr *descr)
{
    return (IfxEth_RxDescr *)(descr->RDES3.U);
}


static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_release(IfxEth_RxDescr *descr)
{
    descr->RDES0.A.OWN = 1U;
}


static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_setBuffer(IfxEth_RxDescr *descr, void *buffer)
{
    descr->RDES2.U = (uint32)((((((unsigned)(buffer) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(buffer) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(buffer))));
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_TxDescr_getNext(IfxEth_TxDescr *descr)
{
    return (IfxEth_TxDescr *)(descr->TDES3.U);
}


static inline __attribute__ ((always_inline)) boolean IfxEth_TxDescr_isAvailable(IfxEth_TxDescr *descr)
{
    return (descr->TDES0.A.OWN == 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_release(IfxEth_TxDescr *descr)
{
    descr->TDES0.A.OWN = 1U;
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setBuffer(IfxEth_TxDescr *descr, void *buffer)
{
    descr->TDES2.U = (uint32)((((((unsigned)(buffer) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(buffer) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(buffer))));
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setup(IfxEth_TxDescr *descr, uint16 length, boolean firstSegment, boolean lastSegment)
{
    IfxEth_TxDescr0 tdes0;

    tdes0.U = descr->TDES0.U;
    tdes0.A.FS = firstSegment;
    tdes0.A.LS = lastSegment;
    descr->TDES0.U = tdes0.U;
    descr->TDES1.U = length;
}


static inline __attribute__ ((always_inline)) void IfxEth_applySoftwareReset(IfxEth *eth)
{
    (void)eth;
    (*(volatile Ifx_ETH_BUS_MODE*)0xF001F000u).B.SWR = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_clearEriInterrupt(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).STATUS.U = (uint32)((1 << (16u)) | (1 << (14u)));
}


static inline __attribute__ ((always_inline)) void IfxEth_clearMacConfiguration(void)
{
    (*(Ifx_ETH*)0xF001D000u).MAC_CONFIGURATION.U = 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_clearRxInterrupt(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).STATUS.U = (uint32)((1 << (16u)) | (1 << (6u)));
}


static inline __attribute__ ((always_inline)) void IfxEth_clearTuInterrupt(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).STATUS.U = (uint32)((1 << (16u)) | (1 << (2u)));
}


static inline __attribute__ ((always_inline)) void IfxEth_clearTxInterrupt(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).STATUS.U = (uint32)((1 << (16u)) | (1 << (0u)));
}


static inline __attribute__ ((always_inline)) void IfxEth_disableTimeStampCoarseUpdate(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSCFUPDT = 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_disableTimeStampForIpv4Frames(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSIPV4ENA = 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_enableMmcCounter(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).MMC_CONTROL.B.CNTFREEZ = 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStamp(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSENA = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampCoarseUpdate(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSCFUPDT = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampForAllFrames(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSENALL = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampForEthFrames(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSIPENA = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampForIpv4Frames(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSIPV4ENA = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_enableTimeStampForVer2Format(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSVER2ENA = 1;
}


static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getActualRxDescriptor(IfxEth *eth)
{
    return eth->pRxDescr;
}


static inline __attribute__ ((always_inline)) uint32 IfxEth_getActualRxIndex(IfxEth *eth)
{
    uint32 offset = (uint32)eth->pRxDescr - (uint32)IfxEth_getBaseRxDescriptor(eth);
    return offset / sizeof(IfxEth_RxDescr);
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getActualTxDescriptor(IfxEth *eth)
{
    return eth->pTxDescr;
}


static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getBaseRxDescriptor(IfxEth *eth)
{
    return eth->rxDescr->items;
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getBaseTxDescriptor(IfxEth *eth)
{
    return eth->txDescr->items;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_getLoopbackMode(IfxEth *eth)
{
    (void)eth;
    return ((*(volatile Ifx_ETH_MAC_CONFIGURATION*)0xF001E000u).B.LM != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void *IfxEth_getMacAddressPointer(IfxEth *eth)
{
    return (void *)eth->config.macAddress;
}


static inline __attribute__ ((always_inline)) IfxEth_ReceiveProcessState IfxEth_getReceiveProcessState(IfxEth *eth)
{
    (void)eth;
    return (IfxEth_ReceiveProcessState)(*(Ifx_ETH*)0xF001D000u).STATUS.B.RS;
}


static inline __attribute__ ((always_inline)) uint16 IfxEth_getRxDataLength(IfxEth *eth)
{
    uint16 length = 0;

    if (IfxEth_isRxDataAvailable(eth) != 0)
    {
        length = (uint16)IfxEth_getActualRxDescriptor(eth)->RDES0.A.FL;
    }

    return length;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEth_getSrcPointer(IfxEth *eth)
{
    (void)eth;
    return &(*(Ifx_SRC*)0xF0038000u).ETH.ETH[0].SR;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_getTimeStampInitialiseStatus(IfxEth *eth)
{
    (void)eth;
    return (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSINIT;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_getTimeStampUpdateStatus(IfxEth *eth)
{
    (void)eth;
    return (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSUPDT;
}


static inline __attribute__ ((always_inline)) IfxEth_TransmitProcessState IfxEth_getTransmitProcessState(IfxEth *eth)
{
    (void)eth;
    return (IfxEth_TransmitProcessState)(*(Ifx_ETH*)0xF001D000u).STATUS.B.TS;
}


static inline __attribute__ ((always_inline)) void IfxEth_initialiseTimeStamp(IfxEth *eth)
{
    (void)eth;

    if ((*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSINIT == 0)
    {
        (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSINIT = 1;
    }
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isEriInterrupt(IfxEth *eth)
{
    (void)eth;

    return (*(Ifx_ETH*)0xF001D000u).STATUS.B.ERI != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isLinkActive(IfxEth *eth)
{
    return eth->config.phyLink() != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isNisInterrupt(IfxEth *eth)
{
    (void)eth;

    return (*(Ifx_ETH*)0xF001D000u).STATUS.B.NIS != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isRxChecksumError(IfxEth *eth)
{
    IfxEth_RxDescr *descr = IfxEth_getActualRxDescriptor(eth);
    boolean error = (descr->RDES0.A.IPC != 0);
    descr->RDES0.A.IPC = 0;

    return error;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isRxDataAvailable(IfxEth *eth)
{

    return IfxEth_getActualRxDescriptor(eth)->RDES0.A.OWN == 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isRxInterrupt(IfxEth *eth)
{
    (void)eth;

    return (*(Ifx_ETH*)0xF001D000u).STATUS.B.RI != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isSoftwareResetDone(IfxEth *eth)
{
    (void)eth;
    return (*(volatile Ifx_ETH_BUS_MODE*)0xF001F000u).B.SWR == 0 ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isTuInterrupt(IfxEth *eth)
{
    (void)eth;

    return (*(Ifx_ETH*)0xF001D000u).STATUS.B.TU != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxEth_isTxInterrupt(IfxEth *eth)
{
    (void)eth;

    return (*(Ifx_ETH*)0xF001D000u).STATUS.B.TI != 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_readAllFlags(IfxEth *eth)
{
    eth->status.U = (*(volatile Ifx_ETH_STATUS*)0xF001F014u).U;
}


static inline __attribute__ ((always_inline)) void IfxEth_setAddToTimeUpdate(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).SYSTEM_TIME_NANOSECONDS_UPDATE.B.ADDSUB = 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_setBinaryRolloverControl(IfxEth *eth, boolean enabled)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSCTRLSSR = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_setLoopbackMode(IfxEth *eth, boolean loopbackMode)
{
    (void)eth;
    (*(volatile Ifx_ETH_MAC_CONFIGURATION*)0xF001E000u).B.LM = loopbackMode ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_setNanoSecondsUpdateValue(IfxEth *eth, uint8 value)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).SYSTEM_TIME_NANOSECONDS_UPDATE.B.TSSS = value;
}


static inline __attribute__ ((always_inline)) void IfxEth_setPhyInterfaceMode(IfxEth *eth, IfxEth_PhyInterfaceMode mode)
{
    (void)eth;
    (*(volatile Ifx_ETH_GPCTL*)0xF001D008u).B.EPR = mode;
}


static inline __attribute__ ((always_inline)) void IfxEth_setReceiveBuffer1RingMode(IfxEth *eth, IfxEth_RxDescr *descr, uint32 address, uint16 size)
{
    descr->RDES2.U = (uint32)((((((unsigned)(address) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(address) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(address))));
    descr->RDES1.A.RBS1 = size;
}


static inline __attribute__ ((always_inline)) void IfxEth_setReceiveBuffer2RingMode(IfxEth *eth, IfxEth_RxDescr *descr, uint32 address, uint16 size)
{
    descr->RDES3.U = (uint32)((((((unsigned)(address) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(address) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(address))));
    descr->RDES1.A.RBS2 = size;
}


static inline __attribute__ ((always_inline)) void IfxEth_setReceiveDescriptorAddress(Ifx_ETH *eth, void *address)
{
    eth->RECEIVE_DESCRIPTOR_LIST_ADDRESS.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxEth_setSecondsUpdateValue(IfxEth *eth, uint8 value)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).SYSTEM_TIME_SECONDS_UPDATE.B.TSS = value;
}


static inline __attribute__ ((always_inline)) void IfxEth_setSubSecondIncrementValue(IfxEth *eth, uint8 value)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).SUB_SECOND_INCREMENT.B.SSINC = value;
}


static inline __attribute__ ((always_inline)) void IfxEth_setSubtractToTimeUpdate(IfxEth *eth)
{
    (void)eth;
    (*(Ifx_ETH*)0xF001D000u).SYSTEM_TIME_NANOSECONDS_UPDATE.B.ADDSUB = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_setTransmitBuffer1RingMode(IfxEth *eth, IfxEth_TxDescr *descr, uint32 address, uint16 size)
{
    descr->TDES2.U = (uint32)((((((unsigned)(address) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(address) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(address))));
    descr->TDES1.A.TBS1 = size;
}


static inline __attribute__ ((always_inline)) void IfxEth_setTransmitBuffer2RingMode(IfxEth *eth, IfxEth_TxDescr *descr, uint32 address, uint16 size)
{
    descr->TDES3.U = (uint32)((((((unsigned)(address) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(address) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(address))));
    descr->TDES1.A.TBS2 = size;
}


static inline __attribute__ ((always_inline)) void IfxEth_setTransmitDescriptorAddress(Ifx_ETH *eth, void *address)
{
    eth->TRANSMIT_DESCRIPTOR_LIST_ADDRESS.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxEth_updateTimeStamp(IfxEth *eth)
{
    (void)eth;

    if ((*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSUPDT == 0)
    {
        (*(Ifx_ETH*)0xF001D000u).TIMESTAMP_CONTROL.B.TSUPDT = 1;
    }
}


static inline __attribute__ ((always_inline)) void *IfxEth_waitTransmitBuffer(IfxEth *eth)
{
    void *tx;

    do
    {
        tx = IfxEth_getTransmitBuffer(eth);
    } while (tx == ((void *)0));

    return tx;
}
# 38 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h" 2
# 48 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h"
extern uint32 IfxEth_Phy_Pef7071_init(void);




extern boolean IfxEth_Phy_Pef7071_link(void);




extern void IfxEth_Phy_Pef7071_read_mdio_reg(uint32 layeraddr, uint32 regaddr, uint32 *pdata);




extern void IfxEth_Phy_Pef7071_write_mdio_reg(uint32 layeraddr, uint32 regaddr, uint32 data);







extern uint32 IfxEth_Phy_Pef7071_iPhyInitDone;
# 30 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c" 2
# 105 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
uint32 IfxEth_Phy_Pef7071_iPhyInitDone = 0;





uint32 IfxEth_Phy_Pef7071_init(void)
{
    while ((*(volatile Ifx_ETH_GMII_ADDRESS*)0xF001E010u).B.GB) {};
# 124 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
    IfxEth_Phy_Pef7071_write_mdio_reg(0, 0x00, 0x8000);
    uint32 value;

    do
    {
        IfxEth_Phy_Pef7071_read_mdio_reg(0, 0x00, &value);
    } while (value & 0x8000);


    IfxEth_Phy_Pef7071_write_mdio_reg(0, 0x17, 0xF702);
    IfxEth_Phy_Pef7071_write_mdio_reg(0, 0x09, 0x0000);
    IfxEth_Phy_Pef7071_write_mdio_reg(0, 0x04, 0x0101);
    IfxEth_Phy_Pef7071_write_mdio_reg(0, 0x00, 0x1200);






    IfxEth_Phy_Pef7071_iPhyInitDone = 1;

    return 1;
}


boolean IfxEth_Phy_Pef7071_link(void)
{
    boolean linkEstablished = 0;

    if (IfxEth_Phy_Pef7071_iPhyInitDone)
    {
        uint32 value;
        IfxEth_Phy_Pef7071_read_mdio_reg(0, 0x01, &value);
        linkEstablished = ((value & (1 << 2)) != 0) ? 1 : 0;
    }

    return linkEstablished;
}


void IfxEth_Phy_Pef7071_read_mdio_reg(uint32 layeraddr, uint32 regaddr, uint32 *pdata)
{

    (*(volatile Ifx_ETH_GMII_ADDRESS*)0xF001E010u).U = (layeraddr << 11) | (regaddr << 6) | (0 << 2) | (0 << 1) | (1 << 0);

    while ((*(volatile Ifx_ETH_GMII_ADDRESS*)0xF001E010u).B.GB) {};


    *pdata = (*(volatile Ifx_ETH_GMII_DATA*)0xF001E014u).U;
}


void IfxEth_Phy_Pef7071_write_mdio_reg(uint32 layeraddr, uint32 regaddr, uint32 data)
{

    (*(volatile Ifx_ETH_GMII_DATA*)0xF001E014u).U = data;


    (*(volatile Ifx_ETH_GMII_ADDRESS*)0xF001E010u).U = (layeraddr << 11) | (regaddr << 6) | (0 << 2) | (1 << 1) | (1 << 0);

    while ((*(volatile Ifx_ETH_GMII_ADDRESS*)0xF001E010u).B.GB) {};
}
