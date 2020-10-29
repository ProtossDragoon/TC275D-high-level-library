#ifndef SIMPLESYNCPWMHBRIDGE_H
#define SIMPLESYNCPWMHBRIDGE_H 1
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <IfxGtm_Tom_Pwm.h>
#include <IfxGtm_Tom_Timer.h>
#include <IfxGtm_Tom_PwmHl.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/
typedef enum {
    JHL_clkFrequency100Hz = 1000000,
    JHL_clkFrequency1000Hz = 100000,
    JHL_clkFrequency10000Hz = 10000,
    JHL_clkFrequency100000Hz = 1000,
    JHL_clkFrequency1000000Hz = 100, // 1MHz
    JHL_clkFrequency10000000Hz = 10,
    JHL_clkFrequency100000000Hz = 1,            
} JHL_clkFrequencyHz;

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
    struct
    {
        float32           gtmFreq;
        float32           gtmGclkFreq;
        Ifx_TickTime      stateDeadline;
    } info;
    struct
    {
        IfxGtm_Tom_Timer timer;        /**< \brief Timer driver */
        IfxGtm_Tom_PwmHl pwm;
    } drivers;
    struct
    {
        uint32 slotTimer;
    }isrCounter;

    Ifx_TimerValue cxDutyTick[2];
}App_GtmTomPwmHl;


typedef struct
{
    IfxStdIf_Timer_Config base;                 /**< \brief Standard interface timer configuration */
    Ifx_GTM              *gtm;                  /**< \brief Pointer to GTM module */
    IfxGtm_Tom            tom;                  /**< \brief Index of the TOM object used */
    IfxGtm_Tom_Ch         timerChannel;         /**< \brief TOM channel used for the timer */
    IfxGtm_Tom_ToutMap   *triggerOut;           /**< \brief TOM channel used for the trigger output, can be identical to the timer channel */
    IfxGtm_Tom_Ch_ClkSrc  clock;                /**< \brief Timer input clock */
    IfxGtm_IrqMode        irqModeTimer;         /**< \brief Interrupt mode for the timer */
    IfxGtm_IrqMode        irqModeTrigger;       /**< \brief Interrupt mode for the trigger */
} _JHL_Revised_IfxGtm_Tom_Timer_Config;

typedef struct
{
    IfxGtm_Tom_Timer        timer;
    IfxGtm_Tom_PwmHl        pwm;
    Ifx_GTM                 *targetGtm;
} _JHL_SyncPWMConfig;

typedef struct
{
    // main clock
    JHL_clkFrequencyHz      clkFrequencyHz;
    IfxGtm_Tom              targetTom;
    IfxGtm_Tom_ToutMap      *chMainOutmap;
    IfxGtm_Tom_ToutMap      *chCcxOutmap;
    IfxGtm_Tom_ToutMap      *chCoutxOutmap;
    uint16                  timerDutyTick;               /* CM1 */
    uint16                  timerResetAndTriggerTick;    /* CM0 */
    Ifx_TimerValue          cxDutyTick;                  /*     */
    _JHL_SyncPWMConfig      _config;
} JHL_SyncPWMConfig;

typedef struct
{
    JHL_SyncPWMConfig config;
} JHL_SyncPWM;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN JHL_SyncPWM g_SyncPWM;
IFX_EXTERN App_GtmTomPwmHl g_GtmTomPwmHl;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void JHL_SimpleSyncPWM_HbridgeConfig_init(JHL_SyncPWMConfig *config);
void JHL_SimpleSyncPWM_Hbridge_init(JHL_SyncPWM *syncPwm);
void JHL_SimpleSyncPWM_Hbridge_run(JHL_SyncPWM *syncPwm);
boolean _JHL_IfxGtm_Tom_Timer_init(IfxGtm_Tom_Timer *driver, const _JHL_Revised_IfxGtm_Tom_Timer_Config *config);
boolean _JHL_Revised_IfxGtm_Tom_Timer_setPeriod(IfxGtm_Tom_Timer *driver, Ifx_TimerValue period);

#endif
