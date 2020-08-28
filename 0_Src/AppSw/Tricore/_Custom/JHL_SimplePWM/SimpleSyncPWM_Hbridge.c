/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "SimpleSyncPWM_Hbridge.h"
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
JHL_SyncPWM g_SyncPWM;
App_GtmTomPwmHl g_GtmTomPwmHl;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void JHL_SimpleSyncPWM_HbridgeConfig_init(JHL_SyncPWMConfig *config)
{   
    config->_config.targetGtm = &MODULE_GTM;
    config->clkFrequencyHz = JHL_clkFrequency10000Hz;

    config->timerDutyTick = 50;
    config->timerResetAndTriggerTick = 100;
    config->targetTom = IfxGtm_Tom_0;
    config->chMainOutmap = &IfxGtm_TOM0_0_TOUT77_P15_6_OUT;
}

void JHL_SimpleSyncPWM_Hbridge_init(JHL_SyncPWM *syncPwm)
{
    /* disable interrupts */
    boolean  interruptState = IfxCpu_disableInterrupts();

    /** - GTM clocks */
    IfxGtm_enable(syncPwm->config._config.targetGtm);

    /* Set the global clock frequencies */
    // IfxGtm_Cmu_setGclkFrequency(gtm, 10000); 
    // set frequency to x Hz << 주의!! 작은 값을 입력하면 너무 느릴 수 있습니다!!
    // 아래는 수동으로 넣어주는 코드. O(1) 시간에 완료되어 버림.
    syncPwm->config._config.targetGtm->CMU.GCLK_NUM.B.GCLK_NUM = syncPwm->config.clkFrequencyHz;   // NUMERATOR : 분자 (분수의 나눗셈)
    syncPwm->config._config.targetGtm->CMU.GCLK_NUM.B.GCLK_NUM = syncPwm->config.clkFrequencyHz;   /* write twice to be sure */
    syncPwm->config._config.targetGtm->CMU.GCLK_DEN.B.GCLK_DEN = 1;                            // DENUMERATOR : 분모

    /*************************************************/
    /* TOM0_CH[0] 을 "TIMER 담당 채널" 로 설정하자!! */
    /************************************************/
    _JHL_Revised_IfxGtm_Tom_Timer_Config timerConfig;
    IfxGtm_Tom_Timer_initConfig(&timerConfig, &MODULE_GTM);
    timerConfig.base.frequency = 1; // 이거 정정필요.
    timerConfig.base.minResolution = (1.0 / timerConfig.base.frequency) / 1000;
    timerConfig.tom = syncPwm->config.targetTom;
    timerConfig.base.trigger.enabled = TRUE;
    timerConfig.base.trigger.outputEnabled = TRUE;
    timerConfig.base.trigger.risingEdgeAtPeriod = TRUE;
    timerConfig.base.trigger.triggerPoint = syncPwm->config.timerDutyTick;
    timerConfig.timerChannel = IfxGtm_Tom_Ch_0;
    timerConfig.triggerOut = syncPwm->config.chMainOutmap;
    // IfxGtm_Tom_Timer_init(&g_GtmTomPwmHl.drivers.timer, &timerConfig);
    _JHL_IfxGtm_Tom_Timer_init(&g_GtmTomPwmHl.drivers.timer, &timerConfig);

    /**************************************************************************/
    /* TOM0_CH[x~7] 을 가지고 H-bridge 을 위한 PWM 을 만드는 Setting 을 하자. */
    /*************************************************************************/
    IfxGtm_Tom_PwmHl_Config pwmHlConfig;
    IfxGtm_Tom_PwmHl_initConfig(&pwmHlConfig);

    IfxGtm_Tom_ToutMapP ccx[1], coutx[1];
    ccx[0] = syncPwm->config.chCcxOutmap;       // 0번 쌍 : TOM0_CH[3] >> P10.3. 
                                            // 이 설정이 어떻게 돌아가냐면, IfxGtm_TOM0_3_TOUT105_P10_3_OUT 은 IfxGtm_Tom_ToutMapP 구조체 변수의 포인터임!
                                            // 해당 구조체는, [어떤 채널과 연결된] [어떤 핀을] [push_pull] 로 설정해 버려야 하는지 정보를 담고 있음.
    coutx[0] = syncPwm->config.chCoutxOutmap;   // 0번 쌍 : TOM0_CH[4] >> P33.0
    
    pwmHlConfig.timer = &g_GtmTomPwmHl.drivers.timer; // H-bridge 를 위한 Timer 을 아까 만들어 둔 것 가져오기.
    pwmHlConfig.tom = timerConfig.tom;  // H-bridge 를 위한 Tom (여기서는 TOM0, 즉 IfxGtm_Tom_0)
    pwmHlConfig.base.deadtime = 2e-6;   // deadtime 설정이 가능합니다. short 가 나지 않도록 방지해주는, 두 상태 사이의 시간입니다.
    pwmHlConfig.base.minPulse = 1e-6;   // minpulse 은 그냥 내생각에 pulse 가 0이 되어버리면 문제생길수도 있으니 최소한 이정도 보장해주는 역할인듯 함.
    pwmHlConfig.base.channelCount = 1;  // ccx 나 coutx 에 channel 이 몇 개 들어가는지 궁금한듯.
    pwmHlConfig.base.emergencyEnabled = FALSE;
    pwmHlConfig.base.ccxActiveState = Ifx_ActiveState_high; 
    pwmHlConfig.base.coutxActiveState = Ifx_ActiveState_high;
    pwmHlConfig.ccx = ccx;
    pwmHlConfig.coutx = coutx;

    pwmHlConfig.base.outputMode = IfxPort_OutputMode_pushPull;
    pwmHlConfig.base.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;

    IfxGtm_Tom_PwmHl_init(&g_SyncPWM.config._config.pwm, &pwmHlConfig);
    IfxGtm_Tom_Timer_run(&g_SyncPWM.config._config.timer);

    g_GtmTomPwmHl.cxDutyTick[0] = syncPwm->config.cxDutyTick;

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    // FXCLK: used by TOM and CLK0: used by ATOM
    // FXCLK and CLK0~5 enable - mask 을 이용해서 동시에! 
    // 하지만, CLK0~5 가 정상적으로 작동하지 않는 문제를 발견했으므로 SKIP!
    IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_FXCLK 
//    | IFXGTM_CMU_CLKEN_CLK0
//    | IFXGTM_CMU_CLKEN_CLK1
//    | IFXGTM_CMU_CLKEN_CLK2
//    | IFXGTM_CMU_CLKEN_CLK3
//    | IFXGTM_CMU_CLKEN_CLK4
//    | IFXGTM_CMU_CLKEN_CLK5
    );

}

void _JHL_SimpleSyncPWM_Hbridge_init(JHL_SyncPWM *syncPwm)
{
    /* disable interrupts */
    boolean  interruptState = IfxCpu_disableInterrupts();

    // 이 GtmTomPwmHl_init 함수에서 info. 에 넣어주는애들은
    // 영향을 미치지는 않지만 그냥 값을 저장하고 읽을 수 있도록 마련해 두는 것 뿐.
    // 크게 신경쓰지 않아도 됨.

    /** - GTM clocks */
    Ifx_GTM *gtm = &MODULE_GTM;
    g_GtmTomPwmHl.info.gtmFreq = IfxGtm_Cmu_getModuleFrequency(gtm);
    IfxGtm_enable(gtm);

    /* Set the global clock frequencies */
    // 이런 코드가 필요해요! if target_frequencyHz < 1000000 : return error
    // 아예 매크로 상수를 정해 둘 필요가 있음.
    // IfxGtm_Cmu_setGclkFrequency(gtm, 10000); // set frequency to x Hz << 주의!! 작은 값을 입력하면 너무 느릴 수 있습니다!!
    // 아래는 수동으로 넣어주는 코드    
    gtm->CMU.GCLK_NUM.B.GCLK_NUM = 10000;   // NUMERATOR : 분자 (분수의 나눗셈)
    gtm->CMU.GCLK_NUM.B.GCLK_NUM = 10000;   /* write twice to be sure */
    gtm->CMU.GCLK_DEN.B.GCLK_DEN = 1;       // DENUMERATOR : 분모
        
    g_GtmTomPwmHl.info.gtmGclkFreq = IfxGtm_Cmu_getGclkFrequency(gtm);

    // 작동하지 않는 구라코드.
    // IfxGtm_Cmu_setClkFrequency(gtm, IfxGtm_Cmu_Clk_0, g_GtmTomPwmHl.info.gtmGclkFreq);
    // g_GtmTomPwmHl.info.gtmCmuClk0Freq = IfxGtm_Cmu_getClkFrequency(gtm, IfxGtm_Cmu_Clk_0, TRUE);

    /** - Initialise the GTM part */
    // GtmTomPwmHl_initTimer();
    {           
        /*************************************************/
        /* TOM0_CH[0] 을 "TIMER 담당 채널" 로 설정하자!! */
        /************************************************/
        // Create Timer Output Module(TOM) config for timer
        IfxGtm_Tom_Timer_Config timerConfig;
        IfxGtm_Tom_Timer_initConfig(&timerConfig, &MODULE_GTM);


        // timerConfig.base.isrPriority = ISR_PRIORITY(INTERRUPT_TIMER);
        // timerConfig.base.isrProvider = ISR_PROVIDER(INTERRUPT_TIMER);
        timerConfig.base.frequency = 1; // x 진동 (frequency) 마다 timer (timer 이란, main counter) 이 초기화. 즉 주기가 x hz.
        timerConfig.base.minResolution = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0;
        

        // TOM 0번을 사용함.
        timerConfig.tom = IfxGtm_Tom_0;


        // Trigger output 을 enable 해야 다음 모든 채널에 전달이 될 것임.
        // 모든 Channel 의 Trigger output 을 enable 해야 함.
        timerConfig.base.trigger.enabled = TRUE;
        timerConfig.base.trigger.outputEnabled = TRUE;
        timerConfig.base.trigger.risingEdgeAtPeriod = TRUE; // trigger 이 rising edge 에 작동하도록 만듬.
        timerConfig.base.trigger.triggerPoint = 5000;       // 그냥 TOM0_CH[0] 의 CM1 에 해당하는 친구. 이새끼는 또 단위가 Tick 이누..

        // TOM 0번의 채널 0번을 "Timer 채널" 로 설정함. 궁극적으로 이게 이 채널에서 하고자 하는 것.
        timerConfig.timerChannel = IfxGtm_Tom_Ch_0;

        // TOM 0번의 채널 0번을 "Timer 채널" 로 설정하는데, 이 채널의 ouput 을 사용. 
        // 다양한 값들을 True 로 놓음으로써 이 채널을 trigger 로도 쓸 준비를 하고 있잖음? Set p15.6 as TOM output. 
        timerConfig.triggerOut = &IfxGtm_TOM0_0_TOUT77_P15_6_OUT; 

        // Okay! 초기화 시작.
        IfxGtm_Tom_Timer_init(&g_GtmTomPwmHl.drivers.timer, &timerConfig);


        /**************************************************************************/
        /* TOM0_CH[0~7] 을 가지고 H-bridge 을 위한 PWM 을 만드는 Setting 을 하자. */
        /*************************************************************************/
        IfxGtm_Tom_PwmHl_Config pwmHlConfig;
        IfxGtm_Tom_PwmHl_initConfig(&pwmHlConfig);

        // H-bridge 4개의 소자에 들어갈 output pin 할당
        IfxGtm_Tom_ToutMapP ccx[2], coutx[2];
        ccx[0] = &IfxGtm_TOM0_3_TOUT105_P10_3_OUT;  // 0번 쌍 : TOM0_CH[3] >> P10.3. 
                                                    // 이 설정이 어떻게 돌아가냐면, IfxGtm_TOM0_3_TOUT105_P10_3_OUT 은 IfxGtm_Tom_ToutMapP 구조체 변수의 포인터임!
                                                    // 해당 구조체는, [어떤 채널과 연결된] [어떤 핀을] [push_pull] 로 설정해 버려야 하는지 정보를 담고 있음.
        coutx[0] = &IfxGtm_TOM0_4_TOUT22_P33_0_OUT; // 0번 쌍 : TOM0_CH[4] >> P33.0
        ccx[1] = &IfxGtm_TOM0_2_TOUT107_P10_5_OUT;  // 1번 쌍 : TOM0_CH[2] >> P10.5
        coutx[1] = &IfxGtm_TOM0_5_TOUT23_P33_1_OUT; // 1번 쌍 : TOM0_CH[5] >> P33.1

        // Set TOM config for H-bridge
        pwmHlConfig.timer = &g_GtmTomPwmHl.drivers.timer; // H-bridge 를 위한 Timer 을 아까 만들어 둔 것 가져오기.
        pwmHlConfig.tom = timerConfig.tom;  // H-bridge 를 위한 Tom (여기서는 TOM0, 즉 IfxGtm_Tom_0)
        pwmHlConfig.base.deadtime = 2e-6;   // deadtime 설정이 가능합니다. short 가 나지 않도록 방지해주는, 두 상태 사이의 시간입니다.
        pwmHlConfig.base.minPulse = 1e-6;   // minpulse 은 그냥 내생각에 pulse 가 0이 되어버리면 문제생길수도 있으니 최소한 이정도 보장해주는 역할인듯 함.
        pwmHlConfig.base.channelCount = 2;  // ccx 나 coutx 에 channel 이 몇 개 들어가는지 궁금한듯.
        pwmHlConfig.base.emergencyEnabled = FALSE;
        pwmHlConfig.base.ccxActiveState = Ifx_ActiveState_high; 
        pwmHlConfig.base.coutxActiveState = Ifx_ActiveState_high;
        pwmHlConfig.ccx = ccx;
        pwmHlConfig.coutx = coutx;

        // 이 아래는 몰라도 되는 부분일듯.
        pwmHlConfig.base.outputMode = IfxPort_OutputMode_pushPull;
        pwmHlConfig.base.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
        IfxGtm_Tom_PwmHl_init(&g_GtmTomPwmHl.drivers.pwm, &pwmHlConfig);
        IfxGtm_Tom_Timer_run(&g_GtmTomPwmHl.drivers.timer);
    }

    /* Set duty cycle */
    g_GtmTomPwmHl.cxDutyTick[0] = 7000; 
    g_GtmTomPwmHl.cxDutyTick[1] = 3500;

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    // FXCLK: used by TOM and CLK0: used by ATOM
    // FXCLK and CLK0~5 enable - mask 을 이용해서 동시에! 
    // 하지만, CLK0~5 가 정상적으로 작동하지 않는 문제를 발견했으므로 SKIP!
    IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_FXCLK 
//    | IFXGTM_CMU_CLKEN_CLK0
//    | IFXGTM_CMU_CLKEN_CLK1
//    | IFXGTM_CMU_CLKEN_CLK2
//    | IFXGTM_CMU_CLKEN_CLK3
//    | IFXGTM_CMU_CLKEN_CLK4
//    | IFXGTM_CMU_CLKEN_CLK5
    );
}

void _JHL_SimpleSyncPWM_Hbridge_run(void)
{
    IfxGtm_Tom_PwmHl *pwmHl = &g_GtmTomPwmHl.drivers.pwm;
    IfxGtm_Tom_Timer *timer = &g_GtmTomPwmHl.drivers.timer;

    /* Set PWM duty */
    {
        /* Set duty cycle, center aligned */
        IfxGtm_Tom_PwmHl_setMode(pwmHl, Ifx_Pwm_Mode_centerAligned);
        IfxGtm_Tom_Timer_disableUpdate(timer);
        IfxGtm_Tom_PwmHl_setOnTime(pwmHl, g_GtmTomPwmHl.cxDutyTick);
        IfxGtm_Tom_Timer_applyUpdate(timer);
    }
}

void JHL_SimpleSyncPWM_Hbridge_run(JHL_SyncPWM *syncPwm)
{
    IfxGtm_Tom_PwmHl *pwmHl = &(syncPwm->config._config.pwm);
    IfxGtm_Tom_Timer *timer = &(syncPwm->config._config.timer);

    /* Set PWM duty */
    {
        /* Set duty cycle, center aligned */
        IfxGtm_Tom_PwmHl_setMode(pwmHl, Ifx_Pwm_Mode_centerAligned);
        IfxGtm_Tom_Timer_disableUpdate(timer);
        IfxGtm_Tom_PwmHl_setOnTime(pwmHl, g_SyncPWM.config.cxDutyTick);
        IfxGtm_Tom_Timer_applyUpdate(timer);
    }
}



boolean _JHL_IfxGtm_Tom_Timer_init(IfxGtm_Tom_Timer *driver, const _JHL_Revised_IfxGtm_Tom_Timer_Config *config)
{
    boolean                result = TRUE;
    IfxGtm_Tom_Timer_Base *base   = &driver->base;
    uint16                 maskShift;

    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, config->base.countDir == IfxStdIf_Timer_CountDir_up);    /* only this mode is supported */

    driver->gtm          = config->gtm;
    driver->tomIndex     = config->tom;
    driver->tom          = &config->gtm->TOM[config->tom];
    driver->timerChannel = config->timerChannel;

    base->triggerEnabled = config->base.trigger.enabled;

    if (base->triggerEnabled)
    {
        if (config->triggerOut != NULL_PTR)
        {
            driver->triggerChannel = config->triggerOut->channel;
        }
        else
        {
            result = FALSE;
            IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, result); /* triggerOut is required */
        }
    }
    else
    {
        driver->triggerChannel = driver->timerChannel; // Set to timer channel to disable its use
    }

    if (config->timerChannel <= 7)
    {
        driver->tgc[0] = IfxGtm_Tom_Ch_getTgcPointer(driver->tom, 0);
        driver->tgc[1] = IfxGtm_Tom_Ch_getTgcPointer(driver->tom, 1);
    }
    else
    {
        driver->tgc[0] = IfxGtm_Tom_Ch_getTgcPointer(driver->tom, 1);
        driver->tgc[1] = NULL_PTR; /* NOTE currently no concatenation between TOMs */
    }

    driver->channelsMask[0]                  = 0;
    driver->tgcGlobalControlApplyUpdate[0]   = 0;
    driver->tgcGlobalControlDisableUpdate[0] = 0;

    driver->channelsMask[1]                  = 0;
    driver->tgcGlobalControlApplyUpdate[1]   = 0;
    driver->tgcGlobalControlDisableUpdate[1] = 0;

    /* Initialize the timer part */
    /* FIXME add IfxGtm_Tom_Ch_configurePwmMode() and use it */
    IfxGtm_Tom_Ch_setClockSource(driver->tom, driver->timerChannel, config->clock);
    IfxGtm_Tom_Ch_setTriggerOutput(driver->tom, driver->timerChannel, IfxGtm_Tom_Ch_OutputTrigger_generate);

    IfxGtm_Tom_Timer_updateInputFrequency(driver);

    if ((config->base.minResolution > 0) && ((1.0 / base->clockFreq) > config->base.minResolution))
    {
        result = FALSE;
        IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, FALSE);
    }
    else
    {}

    if (!_JHL_Revised_IfxGtm_Tom_Timer_setPeriod(driver, config->base.frequency))
    {
        printf("setting failed");
        return;
    }

    driver->offset = IfxStdIf_Timer_sToTick(driver->base.clockFreq, 1.0 / config->base.frequency * config->base.startOffset);

    IfxGtm_Tom_Ch_setCounterValue(driver->tom, driver->timerChannel, driver->offset);

    /* Initialize the trigger part */
    maskShift = (config->timerChannel <= 7) ? 0 : 8;
    IfxGtm_Tom_Timer_addToChannelMask(driver, driver->timerChannel);

    if (base->triggerEnabled)
    {
        IfxGtm_Tom_Ch triggerChannel     = driver->triggerChannel;
        uint16        triggerChannelMask = 1 << (triggerChannel - maskShift);
        /* TO DO: enable the trigger to be not in the same TGC group as the timer */

        IfxGtm_Tom_Ch_setSignalLevel(driver->tom, triggerChannel, config->base.trigger.risingEdgeAtPeriod ? Ifx_ActiveState_high : Ifx_ActiveState_low);
        IfxGtm_Tom_Ch_setCounterValue(driver->tom, triggerChannel, driver->offset);

        if (triggerChannel != driver->timerChannel)
        {
            /* FIXME add IfxGtm_Tom_Ch_configurePwmMode() and use it */
            IfxGtm_Tom_Ch_setResetSource(driver->tom, triggerChannel, IfxGtm_Tom_Ch_ResetEvent_onTrigger);
            IfxGtm_Tom_Ch_setClockSource(driver->tom, triggerChannel, config->clock);
            IfxGtm_Tom_Ch_setTriggerOutput(driver->tom, triggerChannel, IfxGtm_Tom_Ch_OutputTrigger_forward);
            IfxGtm_Tom_Tgc_enableChannels(driver->tgc[0], triggerChannelMask, 0, FALSE);
            IfxGtm_Tom_Timer_addToChannelMask(driver, driver->triggerChannel);
        }
        else
        {}

        /* Signal must go out of the GTM even if the port outpout is not enabled */
        IfxGtm_Tom_Tgc_enableChannelsOutput(driver->tgc[0], triggerChannelMask, 0, FALSE);

        if (config->base.trigger.outputEnabled)
        {
            /* Initialize the port */
            IfxGtm_PinMap_setTomTout(config->triggerOut, config->base.trigger.outputMode, config->base.trigger.outputDriver);
        }
        else
        {}

        IfxGtm_Tom_Timer_setTrigger(driver, config->base.trigger.triggerPoint);
    }
    else
    {}

    /* Interrupt configuration */
    {
        volatile Ifx_SRC_SRCR *src;
        boolean                timerHasIrq   = config->base.isrPriority > 0;
        boolean                triggerHasIrq = (config->base.trigger.isrPriority > 0) && base->triggerEnabled;

        if (driver->triggerChannel == driver->timerChannel)
        {
            IfxGtm_Tom_Ch_setNotification(driver->tom, driver->timerChannel, timerHasIrq ? config->irqModeTimer : config->irqModeTrigger, timerHasIrq, triggerHasIrq);
            src = IfxGtm_Tom_Ch_getSrcPointer(driver->gtm, config->tom, driver->timerChannel);
            IfxSrc_init(src, timerHasIrq ? config->base.isrProvider : config->base.trigger.isrProvider, timerHasIrq ? config->base.isrPriority : config->base.trigger.isrPriority);
            /* FIXME ADD warning on interrupt setting in case timer and trigger uses the same channels or different channels, and in case only timer or trigger or both generates interrupts */
            IfxSrc_enable(src);
        }
        else
        {
            IfxGtm_IrqMode irqMode = IfxGtm_IrqMode_pulseNotify;

            if (timerHasIrq)
            {
                IfxGtm_Tom_Ch_setNotification(driver->tom, driver->timerChannel, irqMode, TRUE, FALSE);
                src = IfxGtm_Tom_Ch_getSrcPointer(driver->gtm, config->tom, driver->timerChannel);
                IfxSrc_init(src, config->base.isrProvider, config->base.isrPriority);
                IfxSrc_enable(src);
            }

            if (triggerHasIrq)
            {
                IfxGtm_Tom_Ch_setNotification(driver->tom, driver->triggerChannel, irqMode, FALSE, TRUE);
                src = IfxGtm_Tom_Ch_getSrcPointer(driver->gtm, config->tom, driver->triggerChannel);
                IfxSrc_init(src, config->base.trigger.isrProvider, config->base.trigger.isrPriority);
                IfxSrc_enable(src);
            }
        }
    }

    /* Transfer the shadow registers */
    IfxGtm_Tom_Tgc_setChannelsForceUpdate(driver->tgc[0], driver->channelsMask[0], 0, 0, 0);
    IfxGtm_Tom_Tgc_trigger(driver->tgc[0]);
    IfxGtm_Tom_Tgc_setChannelsForceUpdate(driver->tgc[0], 0, driver->channelsMask[0], 0, 0);

    return result;
}


boolean _JHL_Revised_IfxGtm_Tom_Timer_setPeriod(IfxGtm_Tom_Timer *driver, Ifx_TimerValue period)
{
    if (period >= 65536)
    {
        printf("Important Error! Period value must be smaller than 2^16\n");
        return FALSE;
    }

    driver->base.period = period;

    IfxGtm_Tom_Ch_setCompareZeroShadow(driver->tom, driver->timerChannel, period);

    if (driver->triggerChannel != driver->timerChannel)
    {
        IfxGtm_Tom_Ch_setCompareZeroShadow(driver->tom, driver->triggerChannel, period);
    }

    /*  FIXME should return false if value does not fit in register */
    return TRUE;
}
