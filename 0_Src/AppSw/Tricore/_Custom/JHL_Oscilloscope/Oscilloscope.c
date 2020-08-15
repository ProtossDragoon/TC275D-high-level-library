/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "Oscilloscope.h"
#include <Cpu/Std/IfxCpu.h>

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
JHL_Oscilloscope g_Oscilloscope;

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void JHL_OscilloscopeConfig_init(JHL_OscilloscopeConfig *config) 
{
    /* initialize vadc module configuration */
    IfxVadc_Adc_initModuleConfig(&config->_config.adcConfig, &MODULE_VADC);
    /* initialize vadc module */    
    IfxVadc_Adc_initModule(&config->_config.adc, &config->_config.adcConfig);
    /* initialize vadc group config */
    IfxVadc_Adc_initGroupConfig(&config->_config.adcGroupConfig, &config->_config.adc);

    /* with group 4 */
    config->_config.adcGroupConfig.groupId = IfxVadc_GroupId_4;
    config->_config.adcGroupConfig.master = IfxVadc_GroupId_4;

    /* enable background scan source */
    config->_config.adcGroupConfig.arbiter.requestSlotBackgroundScanEnabled = TRUE;
    /* enable background auto scan */
    config->_config.adcGroupConfig.backgroundScanRequest.autoBackgroundScanEnabled = TRUE;
    /* enable all gates in "always" mode */
    config->_config.adcGroupConfig.backgroundScanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always; // 이게 뭔지는 모름.
    /* initialize the vadc group */
    IfxVadc_Adc_initGroup(&config->_config.adcGroup, &config->_config.adcGroupConfig);


    for (uint32 channelNumIndex = 0; channelNumIndex < 1; ++channelNumIndex)
    {
        /* initialize vadc channel configuration */
        IfxVadc_Adc_initChannelConfig(&config->_config.adcChannelConfig[channelNumIndex], &config->_config.adcGroup);

        config->_config.adcChannelConfig[channelNumIndex].channelId = (IfxVadc_ChannelId)(7 + channelNumIndex);
        config->_config.adcChannelConfig[channelNumIndex].resultRegister = (IfxVadc_ChannelResult)(7 + channelNumIndex); // use register #5 and 6 for results
        config->_config.adcChannelConfig[channelNumIndex].backgroundChannel = TRUE;

        /* initialize the vadc channel */
        IfxVadc_Adc_initChannel(&config->_config.adcChannel[channelNumIndex], &config->_config.adcChannelConfig[channelNumIndex]);

        /* add to background scan */
        unsigned channels = (1 << config->_config.adcChannelConfig[channelNumIndex].channelId);
        unsigned mask = channels;
        IfxVadc_Adc_setBackgroundScan(&config->_config.adc, &config->_config.adcGroup, channels, mask);
    }

    IfxVadc_Adc_startBackgroundScan(&config->_config.adc);
}

void JHL_Oscilloscope_init(JHL_Oscilloscope *osc)
{

}

uint32 JHL_Oscilloscope_scan()
{   
    /* check results */
    for (uint32 channelNumIndex = 0; channelNumIndex < 1; ++channelNumIndex)
    {
        unsigned group = g_Oscilloscope.config._config.
                        adcChannel[channelNumIndex].group->groupId;
        unsigned channel = g_Oscilloscope.config._config.
                        adcChannel[channelNumIndex].channel;

        /* wait for valid result */
        Ifx_VADC_RES conversionResult;

        do
        {
            conversionResult = IfxVadc_Adc_getResult(&g_Oscilloscope.config._config.adcChannel[channelNumIndex]);
        } while (!conversionResult.B.VF);

        /* print result, check with expected value */
        {
            uint32 actual = conversionResult.B.RESULT;
            return actual;
        }
    }
}


