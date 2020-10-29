#ifndef OSCILLOSCOPE
#define OSCILLOSCOPE 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include <stdio.h>
#include <Cpu/Std/IfxCpu.h>
#include <Vadc/Adc/IfxVadc_Adc.h>
#include "Configuration.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define ASC_TX_BUFFER_SIZE 64
#define ASC_RX_BUFFER_SIZE 64

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct {
    IfxVadc_Adc adc;
    IfxVadc_Adc_Config adcConfig;
    IfxVadc_Adc_Group adcGroup;
    IfxVadc_Adc_GroupConfig adcGroupConfig;    
    IfxVadc_Adc_Channel adcChannel[1];
    IfxVadc_Adc_ChannelConfig adcChannelConfig[1];
} _JHL_OscilloscopeConfig;

typedef struct {
    _JHL_OscilloscopeConfig _config;
} JHL_OscilloscopeConfig;

typedef struct
{  
    JHL_OscilloscopeConfig config;
} JHL_Oscilloscope;

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN JHL_Oscilloscope g_Oscilloscope;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void JHL_OscilloscopeConfig_init(JHL_OscilloscopeConfig *config);
void JHL_Oscilloscope_init(JHL_Oscilloscope *osc);
uint32 JHL_Oscilloscope_scan();

#endif