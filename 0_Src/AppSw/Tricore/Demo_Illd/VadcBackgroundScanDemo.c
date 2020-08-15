/**
 * \file VadcBackgroundScanDemo.c
 * \brief Demo VadcBackgroundScanDemo
 *
 * \version iLLD_Demos_1_0_1_8_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include "VadcBackgroundScanDemo.h"
#include <Cpu/Std/IfxCpu.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
App_VadcBackgroundScan g_VadcBackgroundScan; /**< \brief Demo information */
IfxVadc_Adc_ChannelConfig adcChannelConfig[2];
IfxVadc_Adc_Channel adcChannel[2];

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void VadcBackgroundScanDemo_init(void)
{
    /* VADC Configuration */

    // 어차피 우리는 background scan 을 사용할 것이기 때문에,
    // 모든 그룹의 모든 채널에 scan 권한이 있음
    // VADC 의 ADC 모듈을 초기화하고
    // ADC 모듈의 그룹 0번을 초기화하고 :: group backgroundscan 을 허용시켜 줌.
    // 채널 0, 1 번을 초기화하고 :: channel backgroundscan 을 허용시켜 줌.
    // 우리가 사용할 핀은 P32.3 이자 SAR4.7 이므로 :: 해당 pin 의 general purpose input

    /* create configuration */
    IfxVadc_Adc_Config adcConfig;
    IfxVadc_Adc_initModuleConfig(&adcConfig, &MODULE_VADC);

    /* initialize module */
    IfxVadc_Adc_initModule(&g_VadcBackgroundScan.vadc, &adcConfig);

    /* create group config */
    IfxVadc_Adc_GroupConfig adcGroupConfig;
    IfxVadc_Adc_initGroupConfig(&adcGroupConfig, &g_VadcBackgroundScan.vadc);

    /* with group 0 */
    adcGroupConfig.groupId = IfxVadc_GroupId_4;
    adcGroupConfig.master  = adcGroupConfig.groupId;

    /* enable background scan source */
    adcGroupConfig.arbiter.requestSlotBackgroundScanEnabled = TRUE;

    /* enable background auto scan */
    adcGroupConfig.backgroundScanRequest.autoBackgroundScanEnabled = TRUE;

    /* enable all gates in "always" mode (no edge detection) */
    adcGroupConfig.backgroundScanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

    /* initialize the group */
    IfxVadc_Adc_initGroup(&g_VadcBackgroundScan.adcGroup, &adcGroupConfig);

    printf("Add Background Scan of 2 channels\n");

    {
        for (uint32 channelNumIndex = 7; channelNumIndex < 8; ++channelNumIndex)
        {
            IfxVadc_Adc_initChannelConfig(&adcChannelConfig[channelNumIndex], &g_VadcBackgroundScan.adcGroup);

            adcChannelConfig[channelNumIndex].channelId         = (IfxVadc_ChannelId)(0 + channelNumIndex);
            adcChannelConfig[channelNumIndex].resultRegister    = (IfxVadc_ChannelResult)(0 + channelNumIndex); // use register #5 and 6 for results
            adcChannelConfig[channelNumIndex].backgroundChannel = TRUE;

            /* initialize the channel */
            IfxVadc_Adc_initChannel(&adcChannel[channelNumIndex], &adcChannelConfig[channelNumIndex]);

            /* add to background scan */
            unsigned channels = (1 << adcChannelConfig[channelNumIndex].channelId);
            unsigned mask     = channels;
            IfxVadc_Adc_setBackgroundScan(&g_VadcBackgroundScan.vadc, &g_VadcBackgroundScan.adcGroup, channels, mask);
        }

        /* start scan */
        IfxVadc_Adc_startBackgroundScan(&g_VadcBackgroundScan.vadc);
    }
    
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
void VadcBackgroundScanDemo_run(void)
{
    printf("VadcBackgroundScanDemo_run() called\n");
   
    /* check results */
    for (uint32 channelNumIndex = 7; channelNumIndex < 8; ++channelNumIndex)
    {
        unsigned group = adcChannel[channelNumIndex].group->groupId;
        unsigned channel = adcChannel[channelNumIndex].channel;

        /* wait for valid result */
        Ifx_VADC_RES conversionResult;

        do
        {
            conversionResult = IfxVadc_Adc_getResult(&adcChannel[channelNumIndex]);
        } while (!conversionResult.B.VF);

        /* print result, check with expected value */
        {
            uint32 actual = conversionResult.B.RESULT;

            /* FIXME result verification pending ?? */
            printf("Group %d Channel %d result : %lu\n", group, channel, actual);
        }
    }
}
