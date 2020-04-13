#include "Gtm/Tom/Pwm/IfxGtm_Tom_Pwm.h"

Ifx_GTM *gtm = &MODULE_GTM;


// enable GTM clock
{
    float32 frequency = IfxGtm_Cmu_getModuleFrequency(gtm);
    // Enables the GTM
    IfxGtm_enable(gtm);
    // Set the global clock frequency to the max
    IfxGtm_Cmu_setGclkFrequency(gtm, frequency);
    // Set the CMU CLK0
    IfxGtm_Cmu_setClkFrequency(gtm, IfxGtm_Cmu_Clk_0, frequency);
    // FXCLK: used by TOM and CLK0: used by ATOM
    IfxGtm_Cmu_enableClocks(gtm, IFXGTM_CMU_CLKEN_FXCLK | IFXGTM_CMU_CLKEN_CLK0);
}