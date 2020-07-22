/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>

#include "TinyScheduler.h"

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
JHL_Scheduler g_Scheduler;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
IFX_INTERRUPT(tinyScheduler_CPU0_Handler, 0, ISR_PRIORITY_JHLSCHEDULER);
// 이 함수의 두 번째 인자에는 반드시 absolute value (진짜 숫자 그 자체) 가 들어가야 합니다.

/* multicore 을 할 수 있을까 고민하다가
 * 과연 1개의 stm 이 timer interrupt flag 를 cpu1 과 cpu2 에 동시에 보낼 수 있을까?
 * 두 core 가 동일한 모듈을 동시에 읽을 수 있을까?
 * stm 에서 든 flag 를 cpu 1 이 clear 하고, cpu 2 가 clear 하면 어떻게 되는가?
 * 그렇다면 stm 을 여러 개 쓸 수 있는가?
 * stm 을 여러 개 쓴다면, 둘의 시간 동기화는 어떻게 할 수 있는가?
 * 이러한 궁금증에 도달했고, 이는 아직 해결할 단계가 아니라고 판단했음.
 * 따라서 interrupt 는 하나만 심어 주기로 결정.
 */


void tinyScheduler_CPU0_Handler(void)
{
    IfxStm_clearCompareFlag(g_Scheduler.config.stmSfr, g_Scheduler.config.stmConfig.comparator);
	IfxStm_increaseCompare(g_Scheduler.config.stmSfr, g_Scheduler.config.stmConfig.comparator, g_Scheduler.config.stmConfig.ticks);
    IfxCpu_enableInterrupts();
    g_Scheduler.counter++;
    if (g_Scheduler.config.tickLimit == g_Scheduler.counter)
    {
        g_Scheduler.counter = 0;
    }
}


/** \brief High level Scheduler Function.
 * OS 의 역할을 수행하는 Scheduler Config 을 초기화하는 함수.
 * param
 * g_Scheduler.config
 * return
 * None
 */
void JHL_tinySchedulerConfig_init(JHL_SchedulerConfig *config) {

    initTime();

    config->tickLimit = 10000; // default : 10 seconds

    /* config 의 stm 변수에 module0 register 할당 */
    config->stmSfr = &MODULE_STM0;

    config->timeStandard = TimeConst_1ms;
}


/** \brief High level Scheduler Function.
 * OS 의 역할을 수행하는 Scheduler 을 초기화하는 함수.
 * param
 * g_Scheduler.config
 * return
 * None
 */
void JHL_tinyScheduler_init(JHL_SchedulerConfig *config) {

    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    /* stm configuration 변수 초기화 */
    IfxStm_initCompareConfig(&(config->stmConfig));

    /* Set STM interrupt priority */
    config->stmConfig.triggerPriority = ISR_PRIORITY_JHLSCHEDULER;
    config->stmConfig.typeOfService = ISR_PROVIDER_JHLSCHEDULER_CPU0;
    config->stmConfig.ticks = config->timeStandard;

    /* configuration 정보로 Compare 기능 초기화 */
    IfxStm_initCompare(config->stmSfr, &(config->stmConfig));

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    g_Scheduler.counter = 0;
}