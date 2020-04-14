#include"GtmTom_1ms.h"

void StartTomPwmWith1msPeriodHalfDuty()
{
    enableGtmClock();
    initTom();
//    IfxGtm_Tom_Pwm_start(gtm, TRUE);
}