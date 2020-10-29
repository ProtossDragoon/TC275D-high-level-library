/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "SerialMonitor.h"

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

/* pin configuration */
const IfxAsclin_Asc_Pins defaultPinConfig = {
    NULL, IfxPort_InputMode_pullUp,                        /* CTS pin not used */
    &IfxAsclin3_RXD_P32_2_IN, IfxPort_InputMode_pullUp,    /* Rx pin */
    NULL, IfxPort_OutputMode_pushPull,                     /* RTS pin not used */
    &IfxAsclin3_TX_P15_7_OUT, IfxPort_OutputMode_pushPull, /* Tx pin */
    IfxPort_PadDriver_cmosAutomotiveSpeed1
};

void JHL_SerialMonitorConfig_init(JHL_SerialMonitorConfig *config)
{
    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

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
    config->inputBufferByteSize  = ASC_TX_BUFFER_SIZE;
    config->outputBufferByteSize = ASC_TX_BUFFER_SIZE;
    config->_config.config.rxBuffer      = config->_config.inputBuffer;
    config->_config.config.txBuffer      = config->_config.outputBuffer;

    /* pin configuration */
    config->_config.config.pins = &defaultPinConfig;

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);
}

void JHL_SerialMonitor_init(JHL_SerialMonitor *monitor)
{
    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    /* malloc memory */
    monitor->config._config.config.txBufferSize = monitor->config.outputBufferByteSize;
    monitor->config._config.inputBuffer = (uint8*)malloc(sizeof(uint8) * monitor->config.inputBufferByteSize + sizeof(Ifx_Fifo) + 8);
    monitor->config._config.outputBuffer = (uint8*)malloc(sizeof(uint8) * monitor->config.outputBufferByteSize + sizeof(Ifx_Fifo) + 8);

    /* initialize Asclin Asc module */
    IfxAsclin_Asc_initModule(&(monitor->config._config.asc), &(monitor->config._config.config));

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    /* data structure init */
    g_SerialMonitor._ds.count = 0;
    g_SerialMonitor._ds.frontIdx = 63;
    g_SerialMonitor._ds.rearIdx = 0;

    printf("JHL_SerialMonitor is initialised\n");
}

void JHL_SerialMonitor_tester()
{
    g_SerialMonitor._ds.count = 5;
    for (uint32 i = 0; i < g_SerialMonitor._ds.count; ++i) {
        g_SerialMonitor._ds.outputData[i] = 'a' + i; // ASCII Code
        printf("writing %c\n", 'a'+i);
        wait(TimeConst_100ms);
    }
    printf("writing start\n");
    IfxAsclin_Asc_write(&g_SerialMonitor.config._config.asc, g_SerialMonitor._ds.outputData, &g_SerialMonitor._ds.count, TIME_INFINITE);

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

boolean _JHL_SerialMonitor_isFull()
{
    if (g_SerialMonitor._ds.count >= 63)
    {
        return TRUE;
    }
    if ((g_SerialMonitor._ds.rearIdx + 1) % 64 == g_SerialMonitor._ds.frontIdx) 
    {
        return TRUE;
    }
    return FALSE;
}

boolean _JHL_SerialMonitor_isEmpty()
{
    if (g_SerialMonitor._ds.count == 0)
    {
        return TRUE;
    }
    if ((g_SerialMonitor._ds.frontIdx + 1) % 64 == g_SerialMonitor._ds.rearIdx) 
    {
        return TRUE;
    }
    return FALSE;
}

void _JHL_SerialMonitor_fullQueueException()
{
    printf("output buffer was full! your bit was extinguished while ready to send!\n");
}

void _JHL_SerialMonitor_emptyQueueException()
{
    printf("output buffer was empty. nothing was sent\n");    
}

uint8 JHL_SerialMonitor_currentQueueItemsCnt()
{
    return g_SerialMonitor._ds.count;
}

boolean JHL_SerialMonitor_enQueueOneByteUnsignedInt(uint8 num)
{
    // retrun : 정상적으로 전송 대기 큐에 담겨졌다면 True, 아니면 False
    
    if (_JHL_SerialMonitor_isFull())
    {
        _JHL_SerialMonitor_fullQueueException();
        return FALSE;
    }
    g_SerialMonitor._ds.outputData[g_SerialMonitor._ds.rearIdx] = num;
    g_SerialMonitor._ds.rearIdx = (++g_SerialMonitor._ds.rearIdx) % 64;
    g_SerialMonitor._ds.count++;
    return TRUE;
}

boolean JHL_SerialMonitor_deQeueueAndSendOneByteUnsignedInt()
{
    // return : 전송 대기 큐에 담겨있는 한 숫자 하나 (1바이트) 가 정상적으로 전송되었다면 True, 아니면 False
    
    if (_JHL_SerialMonitor_isEmpty())
    {
        _JHL_SerialMonitor_emptyQueueException();
        return FALSE;
    }

    Ifx_SizeT one = 1;
    boolean success = IfxAsclin_Asc_write(&g_SerialMonitor.config._config.asc, &(g_SerialMonitor._ds.outputData[g_SerialMonitor._ds.frontIdx]), &one, TIME_INFINITE);
    if (success)
    {
        g_SerialMonitor._ds.count--;
        g_SerialMonitor._ds.frontIdx = (++g_SerialMonitor._ds.frontIdx) % 64;
    }
    return success;
}
