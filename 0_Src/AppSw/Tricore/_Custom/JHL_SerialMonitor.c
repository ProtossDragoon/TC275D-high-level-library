/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "JHL_SerialMonitor.h"

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
JHL_SerialMonitor g_SerialMonitor;

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
IFX_INTERRUPT(asclin3TxISR, 0, ISR_PRIORITY_JHLSERIALMONITOR_TX)
{
    IfxAsclin_Asc_isrTransmit(&g_SerialMonitor.config._config.asc);
}
IFX_INTERRUPT(asclin3RxISR, 0, ISR_PRIORITY_JHLSERIALMONITOR_RX)
{
    IfxAsclin_Asc_isrReceive(&g_SerialMonitor.config._config.asc);
}
IFX_INTERRUPT(asclin3ErISR, 0, ISR_PRIORITY_JHLSERIALMONITOR_ER)
{
    IfxAsclin_Asc_isrError(&g_SerialMonitor.config._config.asc);
}

void JHL_SerialMonitorConfig_init(JHL_SerialMonitorConfig *config)
{
    /* create module config */
    IfxAsclin_Asc_initModuleConfig(&(config->_config.config), &MODULE_ASCLIN3); // TC273에서는 MODULE_ASCLIN3 만이 USB 를 지원함.

    /* set the desired baudrate */
    config->_config.config.baudrate.prescaler    = 1;
    config->_config.config.baudrate.baudrate     = 115200; /* FDR values will be calculated in initModule */
    config->_config.config.baudrate.oversampling = IfxAsclin_OversamplingFactor_4;

    /* ISR priorities and interrupt target */
    config->_config.config.interrupt.txPriority    = ISR_PRIORITY_JHLSERIALMONITOR_TX;
    config->_config.config.interrupt.rxPriority    = ISR_PRIORITY_JHLSERIALMONITOR_RX;
    config->_config.config.interrupt.erPriority    = ISR_PRIORITY_JHLSERIALMONITOR_ER;
    config->_config.config.interrupt.typeOfService = (IfxSrc_Tos)IfxCpu_getCoreIndex();

    /* FIFO configuration */
    config->inputBufferByteSize  = 64;
    config->outputBufferByteSize = 64;
    config->_config.config.rxBuffer      = config->_config.inputBuffer;
    config->_config.config.txBuffer      = config->_config.outputBuffer;

    /* pin configuration */
    const IfxAsclin_Asc_Pins pins = {
        NULL,                     IfxPort_InputMode_pullUp,        /* CTS pin not used */
        &IfxAsclin3_RXD_P32_2_IN, IfxPort_InputMode_pullUp,        /* Rx pin */
        NULL,                     IfxPort_OutputMode_pushPull,     /* RTS pin not used */
        &IfxAsclin3_TX_P15_7_OUT, IfxPort_OutputMode_pushPull,     /* Tx pin */
        IfxPort_PadDriver_cmosAutomotiveSpeed1
    };
    config->_config.config.pins = &pins;
}

void JHL_SerialMonitor_init(JHL_SerialMonitorConfig *config)
{
    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    /* malloc memory */
    config->_config.config.rxBufferSize = config->inputBufferByteSize;
    config->_config.config.txBufferSize = config->outputBufferByteSize;
    // config->_config.inputBuffer = (uint8*)malloc(sizeof(uint8) * config->inputBufferByteSize + sizeof(Ifx_Fifo) + 8);
    // config->_config.outputBuffer = (uint8*)malloc(sizeof(uint8) * config->outputBufferByteSize + sizeof(Ifx_Fifo) + 8);

    /* initialize Asclin Asc module */
    IfxAsclin_Asc_initModule(&(config->_config.asc), &(config->_config.config));

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    printf("JHL_SerialMonitor is initialised\n");
}

void JHL_SerialMonitor_tester()
{
    g_SerialMonitor.count = 5;
    for (int i = 0; i < g_SerialMonitor.count; i++) {
        g_SerialMonitor.ouputData[i] = 'a' + i; // ASCII Code
    }
    IfxAsclin_Asc_write(&g_SerialMonitor.config._config.asc, g_SerialMonitor.ouputData, &g_SerialMonitor.count, TIME_INFINITE);
    printf("write complete");


    /*
    
    // Receive data
    IfxAsclin_Asc_read(&g_AsclinAsc.drivers.asc3, g_AsclinAsc.rxData, &g_AsclinAsc.count, TIME_INFINITE);

    // check received data
    for (i = 0; i < 5; ++i)
    {
        if (g_AsclinAsc.rxData[i] != g_AsclinAsc.txData[i])
        {
            ++errors;
        }
    }

    if (errors)
    {
        printf("ERROR: received data doesn't match with expected data (%lu mismatches)\n", errors);
    }
    else
    {
        printf("OK: received data matches with expected data\n");
    }
    */
}