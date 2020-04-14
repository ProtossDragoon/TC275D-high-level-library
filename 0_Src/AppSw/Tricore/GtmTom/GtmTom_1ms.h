#include "Cpu0_Main.h"
#include "SysSe/Bsp/Bsp.h"
#include "IfxScuWdt.h"
#include "Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h"

extern Ifx_GTM *gtm;
void initTom();
void enableGtmClock();
void StartTomPwmWith1msPeriodHalfDuty();