/**
 * TinyScheduler.h
 * 여러 기능을 병렬적으로 수행할 수 있는 기능을 담은 high level api 입니다.
 * 
 * 스케줄러 사용 과정
 * 글로벌 스케줄러 변수 이름 : g_Scheduler
 * (1) 스케줄러 설정 초기화 : JHL_tinySchedulerConfig_init(&g_Scheduler.config);
 * (2) 스케줄러 설정 커스터마이징 : g_Scheduler.* = *;
 * (3) 스케줄러 초기화 : JHL_tinyScheduler_init(&g_Scheduler.config);
 * (4) 스케줄러 기능 수행 : JHL_tinyScheduler_main() 함수 내에 기능을 구현.
 * API : g_TimeFrame
 * if-else 구문을 활용하여 g_TimeFrame 의 특정 value 마다 수행할 동작을 주변기기에 명령하면 됨.
 */


#ifndef TINYSCHEDULER_H
#define TINYSCHEDULER_H 1
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include <stdio.h>
#include <Stm/Std/IfxStm.h>
#include "ConfigurationIsr.h" 
#include "Bsp.h" // for TimeConst

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define g_TimeFrame g_Scheduler.counter

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct {
    Ifx_STM             *stmSfr;         /* Tartget system timer module : STM 모듈을 지정합니다. */
    IfxStm_CompareConfig stmConfig;
    uint32               timeStandard;   /* timer standard : counter 이 시간을 증가시키는 기준입니다. */
    uint32               tickLimit;      /* Max tick : tick 변수가 ticklimit 에 도달하면 reset 됩니다. */
} JHL_SchedulerConfig;

/* stm module 을 사용하는 스케줄러입니다. */
typedef struct {
    volatile uint32     counter;
    JHL_SchedulerConfig config;
} JHL_Scheduler;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN JHL_Scheduler g_Scheduler;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void JHL_tinySchedulerConfig_init(JHL_SchedulerConfig *config);
void JHL_tinyScheduler_init(JHL_SchedulerConfig *config);
void JHL_tinyScheduler_main(void);

#endif

