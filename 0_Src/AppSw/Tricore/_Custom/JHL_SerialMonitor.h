#ifndef ASCLINASCDEMO_H
#define ASCLINASCDEMO_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include <Asclin/Asc/IfxAsclin_Asc.h>
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
    uint8                   *outputBuffer; // size : [ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
    uint8                   *inputBuffer; // size : [ASC_RX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
} _JHL_SerialMonitor;

typedef struct {
    _JHL_SerialMonitor      _config;
    uint8                   outputBufferByteSize;
    uint8                   inputBufferByteSize;
    // As you can see above, the transfer buffers allocate not only memory for the data itself, but also for FIFO runtime variables. 
    // 8 bytes have to be added to ensure a proper circular buffer handling independent from the address to which the buffers have been located.
} JHL_SerialMonitorConfig;

typedef struct
{
    Ifx_SizeT               count;
    uint8                   ouputData[64];
    uint8                   inputData[64];
    JHL_SerialMonitorConfig config;
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

#endif