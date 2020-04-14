#include "GtmTom_1ms.h"

// enable GTM clock
void enableGtmClock()
{
    // Get Default System Clock - GTM clock Frequency
    float32 frequency = IfxGtm_Cmu_getModuleFrequency(gtm);
    // default frequency : 100Mhz
    
    // Enables the GTM
    IfxGtm_enable(gtm); 
    
    // Set the global clock frequency to the max
    IfxGtm_Cmu_setGclkFrequency(gtm, frequency);
    // set f_GTM : 100Mhz


    // ??

    // Set the CMU CLK0
    IfxGtm_Cmu_setClkFrequency(gtm, IfxGtm_Cmu_Clk_0, frequency);
    
    // FXCLK: used by TOM and CLK0: used by ATOM
    IfxGtm_Cmu_enableClocks(gtm, IFXGTM_CMU_CLKEN_FXCLK | IFXGTM_CMU_CLKEN_CLK1);
}
