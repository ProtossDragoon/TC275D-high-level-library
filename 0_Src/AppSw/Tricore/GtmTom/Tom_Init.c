#include "GtmTom_1ms.h"

void initTom()
{
    IfxGtm_Tom_Pwm_Config tomConfig;    // configuration structure
    IfxGtm_Tom_Pwm_Driver tomHandle;    // handle

    // init
    IfxGtm_Tom_Pwm_initConfig(&tomConfig, gtm);

    // configuration
    tomConfig.tomChannel  = IfxGtm_Tom_Ch_0;
    tomConfig.clock       = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk1;
    tomConfig.period      = 100000;
    tomConfig.dutyCycle   = 50000;
    tomConfig.interrupt.ccu0Enabled = TRUE;
    
    tomConfig.pin.outputPin = &IfxGtm_ATOM0_0_TOUT0_P02_0_OUT;

    tomConfig.synchronousUpdateEnabled = TRUE;

    // set with handle + configuration
    IfxGtm_Tom_Pwm_init(&tomHandle, &tomConfig);
}
