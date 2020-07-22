/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>

#include "LEDBlinker.h"

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
JHL_LED g_LED;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief High level LED Blink Function. 
 * 
 * init LEDConfigure
 */
void JHL_LEDBlinkerConfig_init(JHL_LEDConfig *config)
{
#if BOARD == SHIELD_BUDDY
    config->port = &MODULE_P10;
    config->pinindex = 2;
    config->portmode = IfxPort_Mode_outputPushPullGeneral;    
#endif
}


/** \brief High level LED Blink Function. 
 * 
 * init LED
 */
void JHL_LEDBlinker_init(JHL_LEDConfig *config)
{
#if BOARD == SHIELD_BUDDY
    IfxPort_setPinMode(config->port, config->pinindex, config->portmode);
#endif
    g_LED.on = 0;
}


/** \brief High level LED Blink Function.
 *
 * Turn On LED
 * This function is called from main, background loop.
 */
void JHL_turnOnLed_Task(void)
{
    if (g_LED.on == 0) {
        g_LED.on ^= 1;
    }
    IfxPort_setPinState(g_LED.config.port, g_LED.config.pinindex, IfxPort_State_high);
}


/** \brief High level LED Blink Function.
 *
 * Turn Off LED
 * This function is called from main, background loop.
 */
void JHL_turnOffLed_Task(void)
{
    if (g_LED.on == 1) {
        g_LED.on ^= 1;
    }
    IfxPort_setPinState(g_LED.config.port, g_LED.config.pinindex, IfxPort_State_low);
}


/** \brief High level LED Blink Function.
 *
 * Toggle LED
 * This function is called from main, background loop.
 */
void JHL_toggleLEDLight_Task(void)
{
    g_LED.on ^= 1;
    if (g_LED.on) {
        IfxPort_setPinState(g_LED.config.port, g_LED.config.pinindex, IfxPort_State_high);
    }
    else {
        IfxPort_setPinState(g_LED.config.port, g_LED.config.pinindex, IfxPort_State_low);        
    }
}


/** \brief High level LED Blink Function.
 *
 * LED Blink Twice. (Litle bit fast)
 * This function is called from main, background loop.
 */
void JHL_toggleLEDLightTwice_Task(void)
{
    JHL_turnOnLed_Task();
    wait(TimeConst_100ms);
    JHL_turnOffLed_Task();
    wait(TimeConst_100ms);
    JHL_turnOnLed_Task();
    wait(TimeConst_100ms);    
    JHL_turnOffLed_Task();
}
