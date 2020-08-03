#ifndef SERIALMONITOR_H
#define SERIALMONITOR_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include <Asclin/Asc/IfxAsclin_Asc.h>
#include <stdlib.h>
#include <stdio.h>
#include "Configuration.h"

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
    IfxAsclin_Asc           asc;
    IfxAsclin_Asc_Config    config;
    uint8                   *outputData;
    uint8                   *inputData;
    uint8                   *outputBuffer; // [64 + sizeof(Ifx_Fifo) + 8]; // size : [ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
    uint8                   *inputBuffer; // [64 + sizeof(Ifx_Fifo) + 8]; // size : [ASC_RX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
} _JHL_SerialMonitorConfig;

typedef struct {
    _JHL_SerialMonitorConfig _config;
    uint8                    outputBufferByteSize;
    uint8                    inputBufferByteSize;
    // As you can see above, the transfer buffers allocate not only memory for the data itself, but also for FIFO runtime variables. 
    // 8 bytes have to be added to ensure a proper circular buffer handling independent from the address to which the buffers have been located.
} JHL_SerialMonitorConfig;

typedef struct
{
    JHL_SerialMonitorConfig config;
    Ifx_SizeT               count;
    uint8                   ouputData[64];
    uint8                   inputData[64];
} JHL_SerialMonitor;

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN JHL_SerialMonitor g_SerialMonitor;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void JHL_SerialMonitorConfig_init(JHL_SerialMonitorConfig *config);
void JHL_SerialMonitor_init(JHL_SerialMonitorConfig *config);
// not implemented void _JHL_SerialMonitor_fullQueueException(); 
// not implemented void _JHL_SerialMonitor_emptyQueueException();
// not implemented void JHL_SerialMonitor_enQueue();
// not implemented void JHL_SerialMonitor_deQeuue();
void JHL_SerialMonitor_tester(void);


void JHL_SerialMonitor_runShellInterface(void)

#endif