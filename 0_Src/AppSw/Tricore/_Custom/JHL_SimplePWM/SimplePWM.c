/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "SimplePWM.h"
#include <stdio.h>

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
JHL_PWM g_PWM;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void JHL_SimplePWM_Config_init(JHL_PWMConfig* config)
{
    // enable GTM clock : 처음에 시스템 전체에 부여받은 global clock 을 가져옴.
    float32 frequency = IfxGtm_Cmu_getModuleFrequency(&MODULE_GTM);
    config->frequencyHz = frequency;
    
    config->period           = 2000;
    config->dutyCycle        = 1000;
    config->tom              = IfxGtm_Tom_0;
    config->tomChannel       = IfxGtm_Tom_Ch_2;
    // Fxclk Divider 0 에 들어가는 source clock 을 자동으로 Fxclk 0 으로 설정
    config->tomChannelClkSrc = IfxGtm_Cmu_Clk_0;
    config->outputPin        = &IfxGtm_TOM0_2_TOUT104_P10_2_OUT;
}

void JHL_SimplePWM_init(JHL_PWM* pwm)
{
    float32 originalFrequency = IfxGtm_Cmu_getModuleFrequency(&MODULE_GTM);

    // Enables the GTM
    IfxGtm_enable(&MODULE_GTM);

    // Set the CMU's global clock frequency to the max
    IfxGtm_Cmu_setGclkFrequency(&MODULE_GTM, originalFrequency);

    // 선택한 Clk 이 global clk 또는 clk 6,7 인지 확인. 
    // 사실 이러면 안되는데, 구현의 편의    gtm->CMU.FXCLK.CTRL.B.FXCLK_SEL = pwm->config.tomChannelClkSrc + 1; 을 위해
    if (pwm->config.tomChannelClkSrc == IfxGtm_Cmu_Clk_0||
        pwm->config.tomChannelClkSrc == IfxGtm_Cmu_Clk_6||
        pwm->config.tomChannelClkSrc == IfxGtm_Cmu_Clk_7)
    {
        printf("clk global, 6, 7 is not support!");
        return;
    }

    // Set the CMU's clock source divider k
    IfxGtm_Cmu_setClkFrequency(&MODULE_GTM, pwm->config.tomChannelClkSrc, pwm->config.frequencyHz);

    // 어쨌든 ARuix 가 API 만들어놓지 않아서 고생하는중
    // (&MODULE_GTM)->CMU.FXCLK.CTRL.B.FXCLK_SEL = pwm->config.tomChannelClkSrc + 1;
    Ifx_GTM* gtm = &MODULE_GTM;
    gtm->CMU.FXCLK.CTRL.B.FXCLK_SEL = pwm->config.tomChannelClkSrc + 1;
    // (&MODULE_GTM)->CMU.FXCLK.CTRL.B.FXCLK_SEL

    // initialise TOM
    IfxGtm_Tom_Pwm_Config tomConfig;
    IfxGtm_Tom_Pwm_Driver tomHandle;
    IfxGtm_Tom_Pwm_initConfig(&tomConfig, &MODULE_GTM);
    tomConfig.gtm                       = &MODULE_GTM;
    tomConfig.tom                       = pwm->config.tom;
    tomConfig.tomChannel                = pwm->config.tomChannel;
    tomConfig.clock                     = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0;
    tomConfig.signalLevel               = TRUE;
    tomConfig.synchronousUpdateEnabled  = TRUE;    
    tomConfig.period                    = pwm->config.period; 
    tomConfig.dutyCycle                 = pwm->config.dutyCycle;
    tomConfig.interrupt.ccu0Enabled     = TRUE;    
    tomConfig.pin.outputPin             = pwm->config.outputPin;
    IfxGtm_Tom_Pwm_init(&tomHandle, &tomConfig);

    // FXCLK: used by TOM and CLK0: used by ATOM
    // FXCLK and CLK0~5 enable - mask 을 이용해서 동시에! 
    IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_FXCLK 
    | IFXGTM_CMU_CLKEN_CLK0
    | IFXGTM_CMU_CLKEN_CLK1
    | IFXGTM_CMU_CLKEN_CLK2
    | IFXGTM_CMU_CLKEN_CLK3
    | IFXGTM_CMU_CLKEN_CLK4
    | IFXGTM_CMU_CLKEN_CLK5
    );
}

