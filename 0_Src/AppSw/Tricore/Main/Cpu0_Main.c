/**
 * \file Cpu0_Main.c
 * \brief System initialisation and main program implementation.
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

#include "Cpu0_Main.h"
#include "SysSe/Bsp/Bsp.h"
#include "IfxScuWdt.h"
#include "StmDemo.h"

// JHL Custom Module
#include "TinyScheduler.h"
#include "LEDBlinker.h"
#include "SimplePWM.h"
#include "SimpleSyncPWM_Hbridge.h"

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
App_Cpu0 g_AppCpu0; /**< \brief CPU 0 global data */

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief Main entry point after CPU boot-up.
 *
 *  It initialise the system and enter the endless loop that handles the demo
 */
int core0_main(void)
{
    /*
     * !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdog in the demo if it is required and also service the watchdog periodically
     * */
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

    /* Initialise the application state */
    g_AppCpu0.info.pllFreq = IfxScuCcu_getPllFrequency();
    g_AppCpu0.info.cpuFreq = IfxScuCcu_getCpuFrequency(IfxCpu_getCoreIndex());
    g_AppCpu0.info.sysFreq = IfxScuCcu_getSpbFrequency();
    g_AppCpu0.info.stmFreq = IfxStm_getFrequency(&MODULE_STM0);

    /* Enable the global interrupts of this CPU */
    IfxCpu_enableInterrupts();

    /* Demo init */
    JHL_tinySchedulerConfig_init(&(g_Scheduler.config));
    JHL_tinyScheduler_init(&(g_Scheduler.config));
    JHL_LEDBlinkerConfig_init(&(g_LED.config));
    JHL_LEDBlinker_init(&(g_LED.config));

    /*
    JHL_SimplePWM_Config_init(&(g_PWM.config));
    g_PWM.config.frequencyHz = 50000;
    g_PWM.config.period = 5000;
    g_PWM.config.dutyCycle = 2500;
    g_PWM.config.tom = IfxGtm_Tom_0;
    g_PWM.config.tomChannel = IfxGtm_Tom_Ch_2;
    g_PWM.config.tomChannelClkSrc = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0;      // Fxclk
    g_PWM.config.outputPin = &IfxGtm_TOM0_2_TOUT104_P10_2_OUT;           // output to LED
    JHL_SimplePWM_init(&(g_PWM));
    */

    JHL_SimpleSyncPWM_HbridgeConfig_init(&g_SyncPWM.config);
    JHL_SimpleSyncPWM_Hbridge_init(&g_SyncPWM);
    JHL_SimpleSyncPWM_Hbridge_run(&g_SyncPWM);
    
    /* background endless loop */
    while (TRUE)
    {    
        JHL_Scheduler_main();
        REGRESSION_RUN_STOP_PASS;
    }

    return 0;
}


/** \} */
