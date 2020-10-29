/**
 * LEDBlinker.h
 * LED 를 쉽게 키고 끌 수 있는 high level api 입니다.
 * 
 * LED 사용 과정
 * (1) LED 설정 초기화 : JHL_LEDBlinkerConfig_init(&g_Scheduler.config);
 * (2) LED 설정 커스터마이징 : g_Scheduler.* = *;
 * (3) LED 초기화 : JHL_LEDBlinker_init(&g_Scheduler.config);
 * (4) LED 기능 수행 : JHL_tinyScheduler_main() 함수 내에 기능을 구현.
 * API : g_TimeFrame
 * if-else 구문을 활용하여 g_TimeFrame 의 특정 value 마다 수행할 동작을 주변기기에 명령하면 됨.
 */

#ifndef LEDBLINKER_H
#define LEDBLINKER_H 1
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

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct {
    Ifx_P*          port;
    int             pinindex;
    IfxPort_Mode    portmode;
} JHL_LEDConfig;

typedef struct {
    volatile uint8      on;
    JHL_LEDConfig       config;
} JHL_LED;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN JHL_LED g_LED;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void JHL_LEDBlinkerConfig_init(JHL_LEDConfig *config);
void JHL_LEDBlinker_init(JHL_LEDConfig *config);

void JHL_lightOnLED_Task(void);
void JHL_lightOffLED_Task(void);
void JHL_toggleLEDLight_Task(void);
void JHL_toggleLEDLightTwice_Task(void);

#endif