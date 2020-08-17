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
#define ASC_TX_BUFFER_SIZE 64
#define ASC_RX_BUFFER_SIZE 64

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

typedef struct {
    uint8                   outputData[64];
    uint8                   inputData[64];
    uint8                   frontIdx;
    uint8                   rearIdx;
    Ifx_SizeT               count;
} JHL_SerialMonitorDataStructure;

typedef struct
{
    JHL_SerialMonitorDataStructure  _ds;
    JHL_SerialMonitorConfig         config;
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
void JHL_SerialMonitor_init(JHL_SerialMonitor *monitor);
// not implemented 
void _JHL_SerialMonitor_fullQueueException();
// not implemented 
void _JHL_SerialMonitor_emptyQueueException();
boolean _JHL_SerialMonitor_isFull();
boolean _JHL_SerialMonitor_isEmpty();

// not implemented void JHL_SerialMonitor_enQueue();
uint8 JHL_SerialMonitor_currentQueueItemsCnt();

// not implemented void JHL_SerialMonitor_enQueueText(char* str);
boolean JHL_SerialMonitor_enQueueOneByteUnsignedInt(uint8 num);
boolean JHL_SerialMonitor_deQeueueAndSendOneByteUnsignedInt();

void JHL_SerialMonitor_tester();

#endif