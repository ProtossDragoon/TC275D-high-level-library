/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>

#include "TinyScheduler.h"
#include "LEDBlinker.h"

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

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief High level Scheduler Function. 
 * OS 의 역할을 수행. 이 함수 내에서만 실행동작을 정의해 주세요.
 * 
 */
void JHL_Scheduler_main(void) {

    if (g_TimeFrame % 4000 == 0) {
        JHL_toggleLEDLightTwice_Task();
    }
    if (g_TimeFrame % 1000 == 0) {
        // JHL_toggleLEDLight_Task();
    }
}