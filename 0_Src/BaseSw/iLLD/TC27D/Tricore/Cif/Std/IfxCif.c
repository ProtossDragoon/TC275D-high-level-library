/**
 * \file IfxCif.c
 * \brief CIF  basic functionality
 *
 * \version iLLD_1_0_1_8_0
 * \copyright Copyright (c) 2016 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxCif.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxCif_clearEpError(IfxCif_EpErrorClearSources source)
{
    if (source == IfxCif_EpErrorClearSources_ExtraPath5SizeError)
    {
        MODULE_CIF.MIEP.STA_ERR_CLR.B.EP_5_IC_SIZE_ERR_CLR = 1;
    }
    else if (source == IfxCif_EpErrorClearSources_ExtraPath4SizeError)
    {
        MODULE_CIF.MIEP.STA_ERR_CLR.B.EP_4_IC_SIZE_ERR_CLR = 1;
    }
    else if (source == IfxCif_EpErrorClearSources_ExtraPath3SizeError)
    {
        MODULE_CIF.MIEP.STA_ERR_CLR.B.EP_3_IC_SIZE_ERR_CLR = 1;
    }
    else if (source == IfxCif_EpErrorClearSources_ExtraPath2SizeError)
    {
        MODULE_CIF.MIEP.STA_ERR_CLR.B.EP_2_IC_SIZE_ERR_CLR = 1;
    }
    else if (source == IfxCif_EpErrorClearSources_ExtraPath1SizeError)
    {
        MODULE_CIF.MIEP.STA_ERR_CLR.B.EP_1_IC_SIZE_ERR_CLR = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_clearEpInterrupt(IfxCif_ExtraPath z, IfxCif_EpInterrupts interruptSource)
{
    if (5 > z)
    {
        MODULE_CIF.MIEP.ICR.U = (((uint32)1 << (uint32)interruptSource) << ((uint32)z * IfxCif_EpInterrupts_Count));
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_clearIspError(IfxCif_IspErrorSources errorSource)
{
    if (errorSource == IfxCif_IspErrorSources_SizeErrorInOutmuxSubmodule)
    {
        MODULE_CIF.ISP.ERR_CLR.B.OUTFORM_SIZE_ERR_CLR = 1;
    }
    else if (errorSource == IfxCif_IspErrorSources_SizeErrorInImageStabilizationSubmodule)
    {
        MODULE_CIF.ISP.ERR_CLR.B.IS_SIZE_ERR_CLR = 1;
    }
    else if (errorSource == IfxCif_IspErrorSources_SizeErrorInInformSubmodule)
    {
        MODULE_CIF.ISP.ERR_CLR.B.INFORM_SIZE_ERR_CLR = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_clearIspInterrupt(IfxCif_IspInterruptSources interruptSource)
{
    if (interruptSource == IfxCif_IspInterruptSources_SecurityWatchdogTimeout)
    {
        MODULE_CIF.ISP.ICR.B.ICR_WD_TRIG = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfHSync)
    {
        MODULE_CIF.ISP.ICR.B.ICR_H_START = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfVSync)
    {
        MODULE_CIF.ISP.ICR.B.ICR_V_START = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_SampledInputFrameComplete)
    {
        MODULE_CIF.ISP.ICR.B.ICR_FRAME_IN = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_PictureSizeViolationOccurred)
    {
        MODULE_CIF.ISP.ICR.B.ICR_PIC_SIZE_ERR = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_LossOfData)
    {
        MODULE_CIF.ISP.ICR.B.ICR_DATA_LOSS = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_FrameCompletelyPutOut)
    {
        MODULE_CIF.ISP.ICR.B.ICR_FRAME = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_IspTurnedOff)
    {
        MODULE_CIF.ISP.ICR.B.ICR_ISP_OFF = 1;
    }
}


void IfxCif_clearJpeInterrupt(IfxCif_JpeInterruptSources interruptSource)
{
    if (interruptSource == IfxCif_JpeInterruptSources_VlcTableError)
    {
        MODULE_CIF.JPE.ERROR_ISR.B.VLC_TABLE_ERR = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_R2BImageSizeError)
    {
        MODULE_CIF.JPE.ERROR_ISR.B.R2B_IMG_SIZE_ERR = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_DcTableError)
    {
        MODULE_CIF.JPE.ERROR_ISR.B.DCT_ERR = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_VlcSymbolError)
    {
        MODULE_CIF.JPE.ERROR_ISR.B.VLC_SYMBOL_ERR = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_HeaderGenerationComplete)
    {
        MODULE_CIF.JPE.STATUS_ISR.B.GEN_HEADER_DONE = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_EncodingComplete)
    {
        MODULE_CIF.JPE.STATUS_ISR.B.ENCODE_DONE = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_clearMiInterrupt(IfxCif_MiInterruptSources interruptSource)
{
    if (interruptSource == IfxCif_MiInterruptSources_BusError)
    {
        MODULE_CIF.MI.ICR.B.BUS_ERROR = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCr)
    {
        MODULE_CIF.MI.ICR.B.WRAP_MP_CR = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCb)
    {
        MODULE_CIF.MI.ICR.B.WRAP_MP_CB = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureY)
    {
        MODULE_CIF.MI.ICR.B.WRAP_MP_Y = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_FillMainPictureY)
    {
        MODULE_CIF.MI.ICR.B.FILL_MPY = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MacroBlockLine)
    {
        MODULE_CIF.MI.ICR.B.MBLK_LINE = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MainPictureFrameEnd)
    {
        MODULE_CIF.MI.ICR.B.MP_FRAME_END = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_clearMiStatus(IfxCif_MiStatusClearSources source)
{
    if (source == IfxCif_MiStatusClearSources_ExtraPath5FifoFull)
    {
        MODULE_CIF.MI.STATUS_CLR.B.EP_5_FIFO_FULL = 1;
    }
    else if (source == IfxCif_MiStatusClearSources_ExtraPath4FifoFull)
    {
        MODULE_CIF.MI.STATUS_CLR.B.EP_4_FIFO_FULL = 1;
    }
    else if (source == IfxCif_MiStatusClearSources_ExtraPath3FifoFull)
    {
        MODULE_CIF.MI.STATUS_CLR.B.EP_3_FIFO_FULL = 1;
    }
    else if (source == IfxCif_MiStatusClearSources_ExtraPath2FifoFull)
    {
        MODULE_CIF.MI.STATUS_CLR.B.EP_2_FIFO_FULL = 1;
    }
    else if (source == IfxCif_MiStatusClearSources_ExtraPath1FifoFull)
    {
        MODULE_CIF.MI.STATUS_CLR.B.EP_1_FIFO_FULL = 1;
    }
    else if (source == IfxCif_MiStatusClearSources_BusWriteError)
    {
        MODULE_CIF.MI.STATUS_CLR.B.BUS_WRITE_ERROR = 1;
    }
    else if (source == IfxCif_MiStatusClearSources_MainPictureCrFifoFull)
    {
        MODULE_CIF.MI.STATUS_CLR.B.MP_CR_FIFO_FULL = 1;
    }
    else if (source == IfxCif_MiStatusClearSources_MainPictureCbFifoFull)
    {
        MODULE_CIF.MI.STATUS_CLR.B.MP_CB_FIFO_FULL = 1;
    }
    else if (source == IfxCif_MiStatusClearSources_MainPictureYFifoFull)
    {
        MODULE_CIF.MI.STATUS_CLR.B.MP_Y_FIFO_FULL = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_clearSecurityWatchdogInterrupt(IfxCif_SecurityWatchdogInterruptSources interruptSource)
{
    if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalEndStartTimeout)
    {
        MODULE_CIF.WD.ICR.B.ICR_WD_VES_TO = 1;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalStartEndTimeout)
    {
        MODULE_CIF.WD.ICR.B.ICR_WD_VSE_TO = 1;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalEndStartTimeout)
    {
        MODULE_CIF.WD.ICR.B.ICR_WD_HES_TO = 1;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalStartEndTimeout)
    {
        MODULE_CIF.WD.ICR.B.ICR_WD_HSE_TO = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_dpResetCounter(IfxCif_DpCounters counter)
{
    if (counter == IfxCif_DpCounters_PredividerCounter)
    {
        MODULE_CIF.DP.CTRL.B.RST_PD = 1;
    }
    else if (counter == IfxCif_DpCounters_TimestampCounter)
    {
        MODULE_CIF.DP.CTRL.B.RST_TSC = 1;
    }
    else if (counter == IfxCif_DpCounters_LineNumberCounter)
    {
        MODULE_CIF.DP.CTRL.B.RST_LNC = 1;
    }
    else if (counter == IfxCif_DpCounters_FrameNumberCounter)
    {
        MODULE_CIF.DP.CTRL.B.RST_FNC = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_epForceConfigurationUpdate(IfxCif_ExtraPath z)
{
    if (5 > z)
    {
        Ifx_CIF_MIEP_CH_INIT init;
        init.U                          = MODULE_CIF.MIEP.CH_1S[z].INIT.U;
        init.B.MI_EP_CFG_UPD            = 1;
        MODULE_CIF.MIEP.CH_1S[z].INIT.U = init.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_epSkipPicture(IfxCif_ExtraPath z)
{
    if (5 > z)
    {
        Ifx_CIF_MIEP_CH_INIT init;
        init.U                          = MODULE_CIF.MIEP.CH_1S[z].INIT.U;
        init.B.MI_EP_SKIP               = 1;
        MODULE_CIF.MIEP.CH_1S[z].INIT.U = init.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


uint16 IfxCif_getCurrentIspPictureOffset(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISP.OUT_H_OFFS_SHD.B.ISP_OUT_H_OFFS_SHD;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISP.OUT_V_OFFS_SHD.B.ISP_OUT_V_OFFS_SHD;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getCurrentIspPictureSize(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISP.OUT_H_SIZE_SHD.B.ISP_OUT_H_SIZE_SHD;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISP.OUT_V_SIZE_SHD.B.ISP_OUT_V_SIZE_SHD;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getDpControlEnableState(IfxCif_DpControlSources source)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (source == IfxCif_DpControlSources_UserDefinedSymbol8)
    {
        retValue = MODULE_CIF.DP.CTRL.B.UDS8;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol7)
    {
        retValue = MODULE_CIF.DP.CTRL.B.UDS7;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol6)
    {
        retValue = MODULE_CIF.DP.CTRL.B.UDS6;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol5)
    {
        retValue = MODULE_CIF.DP.CTRL.B.UDS5;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol4)
    {
        retValue = MODULE_CIF.DP.CTRL.B.UDS4;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol3)
    {
        retValue = MODULE_CIF.DP.CTRL.B.UDS3;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol2)
    {
        retValue = MODULE_CIF.DP.CTRL.B.UDS2;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol1)
    {
        retValue = MODULE_CIF.DP.CTRL.B.UDS1;
    }
    else if (source == IfxCif_DpControlSources_TimestampCounter)
    {
        retValue = MODULE_CIF.DP.CTRL.B.TSC_EN;
    }
    else if (source == IfxCif_DpControlSources_LineNumberCounter)
    {
        retValue = MODULE_CIF.DP.CTRL.B.LNC_EN;
    }
    else if (source == IfxCif_DpControlSources_FrameNumberCounter)
    {
        retValue = MODULE_CIF.DP.CTRL.B.FNC_EN;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getDpCounter(IfxCif_DpCounters counter)
{
    uint32 retValue = 0xffffffff;

    if (counter == IfxCif_DpCounters_PredividerCounter)
    {
        retValue = MODULE_CIF.DP.PDIV_STAT.B.PDIV_VAL;
    }
    else if (counter == IfxCif_DpCounters_TimestampCounter)
    {
        retValue = MODULE_CIF.DP.TSC_STAT.B.TSC_VAL;
    }
    else if (counter == IfxCif_DpCounters_LineNumberCounter)
    {
        retValue = MODULE_CIF.DP.FLC_STAT.B.LNC_VAL;
    }
    else if (counter == IfxCif_DpCounters_FrameNumberCounter)
    {
        retValue = MODULE_CIF.DP.FLC_STAT.B.FNC_VAL;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getDpUserDefinedSymbol(uint8 x)
{
    uint16 retValue = 0xffff;

    if (8 > x)
    {
        retValue = MODULE_CIF.DP.UDS_1S[x].B.UDS;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpBaseAddress(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read base address from unsigned component of the register structure because lower bits are tied
         * to 0 as base address needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].BASE_AD_SHD.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpBaseInitAddress(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read base address from unsigned component of the register structure because lower bits are tied to 0
         * as base address needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].BASE_AD_INIT.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getEpCroppingCameraDisplacement(IfxCif_ExtraPath z, IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].DISPLACE.B.DX;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].DISPLACE.B.DY;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getEpCroppingCurrentPictureOffset(IfxCif_ExtraPath z, IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].H_OFFS_SHD.B.H_OFFS_SHD;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].V_OFFS_SHD.B.V_OFFS_SHD;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getEpCroppingCurrentPictureSize(IfxCif_ExtraPath z, IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].H_SIZE_SHD.B.H_SIZE_SHD;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].V_SIZE_SHD.B.V_SIZE_SHD;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getEpCroppingEnableState(IfxCif_ExtraPath z)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (5 > z)
    {
        retValue = MODULE_CIF.EP_IC_1S[z].CTRL.B.IC_EN;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getEpCroppingMaximumDisplacement(IfxCif_ExtraPath z, IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].MAX_DX.B.MAX_DX;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].MAX_DY.B.MAX_DY;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getEpCroppingOffsetOutputWindow(IfxCif_ExtraPath z, IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].H_OFFS.B.H_OFFS;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].V_OFFS.B.V_OFFS;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getEpCroppingPictureSize(IfxCif_ExtraPath z, IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].H_SIZE.B.H_SIZE;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            retValue = MODULE_CIF.EP_IC_1S[z].V_SIZE.B.V_SIZE;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getEpCroppingRecenterState(IfxCif_ExtraPath z)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (5 > z)
    {
        if (0 != MODULE_CIF.EP_IC_1S[z].RECENTER.B.RECENTER)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_ErrorState IfxCif_getEpErrorState(IfxCif_EpErrorSources source)
{
    IfxCif_ErrorState retValue = IfxCif_ErrorState_NoError;

    if (source == IfxCif_EpErrorSources_ExtraPath5FifoFull)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_5_FIFO_FULL;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath4FifoFull)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_4_FIFO_FULL;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath3FifoFull)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_3_FIFO_FULL;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath2FifoFull)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_2_FIFO_FULL;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath1FifoFull)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_1_FIFO_FULL;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath5SizeError)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_5_IC_SIZE_ERR;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath4SizeError)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_4_IC_SIZE_ERR;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath3SizeError)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_3_IC_SIZE_ERR;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath2SizeError)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_2_IC_SIZE_ERR;
    }
    else if (source == IfxCif_EpErrorSources_ExtraPath1SizeError)
    {
        retValue = MODULE_CIF.MIEP.STA_ERR.B.EP_1_IC_SIZE_ERR;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getEpFeatureEnableState(IfxCif_ExtraPath z, IfxCif_EpFeatures feature)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (5 > z)
    {
        if (feature == IfxCif_EpFeatures_InitOffsetCounter)
        {
            retValue = MODULE_CIF.MIEP.CH_1S[z].CTRL.B.INIT_OFFSET_EN;
        }
        else if (feature == IfxCif_EpFeatures_InitBaseAddress)
        {
            retValue = MODULE_CIF.MIEP.CH_1S[z].CTRL.B.INIT_BASE_EN;
        }
        else if (feature == IfxCif_EpFeatures_ByteSwap)
        {
            retValue = MODULE_CIF.MIEP.CH_1S[z].CTRL.B.BYTE_SWAP;
        }
        else if (feature == IfxCif_EpFeatures_PictureDataPath)
        {
            retValue = MODULE_CIF.MIEP.CH_1S[z].CTRL.B.EP_ENABLE;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpInitSize(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read size from unsigned component of the register structure because lower bits are tied to 0
         * as size needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].SIZE_INIT.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpInitialFillLevelInterruptOffset(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read interrupt offset from unsigned component of the register structure because lower bits are tied
         * to 0 as interrupt offset needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].IRQ_OFFS_INIT.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpInitialOffsetCounter(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read offset counter from unsigned component of the register structure because lower bits are tied
         * to 0 as offset counter needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].OFFS_CNT_INIT.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getEpInputEnableState(IfxCif_ExtraPath z)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (5 > z)
    {
        retValue = MODULE_CIF.MIEP.CH_1S[z].CTRL_SHD.B.EP_ENABLE_IN;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getEpInterruptEnableState(IfxCif_ExtraPath z, IfxCif_EpInterrupts interruptSource)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (5 > z)
    {
        if (0 !=
            (MODULE_CIF.MIEP.IMSC.
             U & (((uint32)1 << (uint32)interruptSource) << ((uint32)z * IfxCif_EpInterrupts_Count))))
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpInterruptOffset(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read interrupt offset from unsigned component of the register structure because lower bits are tied
         * to 0 as interrupt offset needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].IRQ_OFFS_SHD.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpOffsetCounter(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read offset counter from unsigned component of the register structure because lower bits are tied
         * to 0 as offset counter needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].OFFS_CNT_SHD.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpOffsetCounterStart(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read offset counter from unsigned component of the register structure because lower bits are tied
         * to 0 as offset counter needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].OFFS_CNT_START.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getEpOutputEnableState(IfxCif_ExtraPath z)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (5 > z)
    {
        retValue = MODULE_CIF.MIEP.CH_1S[z].CTRL_SHD.B.EP_ENABLE_OUT;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint8 IfxCif_getEpRecenterValue(IfxCif_ExtraPath z)
{
    uint8 retValue = 0xff;

    if (5 > z)
    {
        retValue = MODULE_CIF.EP_IC_1S[z].RECENTER.B.RECENTER;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getEpSize(IfxCif_ExtraPath z)
{
    uint32 retValue = 0xffffffff;

    if (5 > z)
    {
        /* read size from unsigned component of the register structure because lower bits are tied
         * to 0 as size needs to be a word aligned value */
        retValue = MODULE_CIF.MIEP.CH_1S[z].SIZE_SHD.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_EpWriteFormat IfxCif_getEpWriteFormat(IfxCif_ExtraPath z)
{
    IfxCif_EpWriteFormat retValue = IfxCif_EpWriteFormat_Raw8Bit;

    if (5 > z)
    {
        retValue = MODULE_CIF.MIEP.CH_1S[z].CTRL.B.EP_WRITE_FORMAT;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint8 IfxCif_getHuffmanAcTableLength(IfxCif_HuffmanTables table)
{
    uint8 retValue = 0xff;

    if (table == IfxCif_HuffmanTables_Table0)
    {
        retValue = MODULE_CIF.JPE.TAC0_LEN.B.TAC0_LEN;
    }
    else if (table == IfxCif_HuffmanTables_Table1)
    {
        retValue = MODULE_CIF.JPE.TAC1_LEN.B.TAC1_LEN;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getHuffmanAcTableSelectorState(IfxCif_HuffmanTables table, IfxCif_HuffmanTableComponents component)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (table == IfxCif_HuffmanTables_Table0)
    {
        if (1 != (MODULE_CIF.JPE.AC_TABLE_SELECT.B.AC_TABLE_SELECT & ~(1 << component)))
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (table == IfxCif_HuffmanTables_Table1)
    {
        if (0 != (MODULE_CIF.JPE.AC_TABLE_SELECT.B.AC_TABLE_SELECT & ~(1 << component)))
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint8 IfxCif_getHuffmanDcTableLength(IfxCif_HuffmanTables table)
{
    uint8 retValue = 0xff;

    if (table == IfxCif_HuffmanTables_Table0)
    {
        retValue = MODULE_CIF.JPE.TDC0_LEN.B.TDC0_LEN;
    }
    else if (table == IfxCif_HuffmanTables_Table1)
    {
        retValue = MODULE_CIF.JPE.TDC1_LEN.B.TDC1_LEN;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getHuffmanDcTableSelectorState(IfxCif_HuffmanTables table, IfxCif_HuffmanTableComponents component)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (table == IfxCif_HuffmanTables_Table0)
    {
        if (1 != (MODULE_CIF.JPE.DC_TABLE_SELECT.B.DC_TABLE_SELECT & ~(1 << component)))
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (table == IfxCif_HuffmanTables_Table1)
    {
        if (0 != (MODULE_CIF.JPE.DC_TABLE_SELECT.B.DC_TABLE_SELECT & ~(1 << component)))
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getInternalClockMode(IfxCif_Submodules submodule)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (submodule == IfxCif_Submodules_Debug)
    {
        if (0 != MODULE_CIF.ICCL.B.CIF_DEBUG_PATH_CLK_EN)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_ExtraPaths)
    {
        if (0 != MODULE_CIF.ICCL.B.CIF_EXTRA_PATHS_CLK_ENABLE)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_LinearDownscaler)
    {
        if (0 != MODULE_CIF.ICCL.B.CIF_LIN_DSCALER_CLK_ENABLE)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_SecurityWatchdog)
    {
        if (0 != MODULE_CIF.ICCL.B.CIF_WATCHDOG_CLK_ENABLE)
        {
            retValue = IfxCif_State_Enabled;
        }
    }

    else if (submodule == IfxCif_Submodules_MemoryInterface)
    {
        if (0 != MODULE_CIF.ICCL.B.CIF_MI_CLK_ENABLE)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_JpegEncoder)
    {
        if (0 != MODULE_CIF.ICCL.B.CIF_JPEG_CLK_ENABLE)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_ImageSignalProcessing)
    {
        if (0 != MODULE_CIF.ICCL.B.CIF_ISP_CLK_ENABLE)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspAcquisitionOffset(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISP.ACQ_H_OFFS.B.ACQ_H_OFFS;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISP.ACQ_V_OFFS.B.ACQ_V_OFFS;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspAcquisitionSize(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISP.ACQ_H_SIZE.B.ACQ_H_SIZE;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISP.ACQ_V_SIZE.B.ACQ_V_SIZE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_ErrorState IfxCif_getIspErrorState(IfxCif_IspErrorSources errorSource)
{
    IfxCif_ErrorState retValue = IfxCif_ErrorState_NoError;

    if (errorSource == IfxCif_IspErrorSources_SizeErrorInOutmuxSubmodule)
    {
        if (0 != MODULE_CIF.ISP.ERR.B.OUTFORM_SIZE_ERR)
        {
            retValue = IfxCif_ErrorState_Error;
        }
    }
    else if (errorSource == IfxCif_IspErrorSources_SizeErrorInImageStabilizationSubmodule)
    {
        if (0 != MODULE_CIF.ISP.ERR.B.IS_SIZE_ERR)
        {
            retValue = IfxCif_ErrorState_Error;
        }
    }
    else if (errorSource == IfxCif_IspErrorSources_SizeErrorInInformSubmodule)
    {
        if (0 != MODULE_CIF.ISP.ERR.B.INFORM_SIZE_ERR)
        {
            retValue = IfxCif_ErrorState_Error;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getIspInputSelectionAppendState(void)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (1 != MODULE_CIF.ISP.ACQ_PROP.B.INPUT_SELECTION_NO_APP)
    {
        retValue = IfxCif_State_Enabled;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getIspInterruptEnableState(IfxCif_IspInterruptSources interruptSource)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (interruptSource == IfxCif_IspInterruptSources_SecurityWatchdogTimeout)
    {
        if (0 != MODULE_CIF.ISP.IMSC.B.IMSC_WD_TRIG)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfHSync)
    {
        if (0 != MODULE_CIF.ISP.IMSC.B.IMSC_H_START)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfVSync)
    {
        if (0 != MODULE_CIF.ISP.IMSC.B.IMSC_V_START)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_SampledInputFrameComplete)
    {
        if (0 != MODULE_CIF.ISP.IMSC.B.IMSC_FRAME_IN)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_PictureSizeViolationOccurred)
    {
        if (0 != MODULE_CIF.ISP.IMSC.B.IMSC_PIC_SIZE_ERR)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_LossOfData)
    {
        if (0 != MODULE_CIF.ISP.IMSC.B.IMSC_DATA_LOSS)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_FrameCompletelyPutOut)
    {
        if (0 != MODULE_CIF.ISP.IMSC.B.IMSC_FRAME)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_IspTurnedOff)
    {
        if (0 != MODULE_CIF.ISP.IMSC.B.IMSC_ISP_OFF)
        {
            retValue = IfxCif_State_Enabled;
        }
    }

    return retValue;
}


uint16 IfxCif_getIspOutputWindowOffset(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISP.OUT_H_OFFS.B.ISP_OUT_H_OFFS;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISP.OUT_V_OFFS.B.ISP_OUT_V_OFFS;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspPictureSize(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISP.OUT_H_SIZE.B.ISP_OUT_H_SIZE;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISP.OUT_V_SIZE.B.ISP_OUT_V_SIZE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspisCameraDisplacement(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISPIS.DISPLACE.B.DX;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISPIS.DISPLACE.B.DY;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspisCurrentPictureOffset(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISPIS.H_OFFS_SHD.B.IS_H_OFFS_SHD;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISPIS.V_OFFS_SHD.B.IS_V_OFFS_SHD;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspisCurrentPictureSize(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISPIS.H_SIZE_SHD.B.ISP_H_SIZE_SHD;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISPIS.V_SIZE_SHD.B.ISP_V_SIZE_SHD;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspisMaximumDisplacement(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISPIS.MAX_DX.B.IS_MAX_DX;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISPIS.MAX_DY.B.IS_MAX_DY;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspisOffsetOutputWindow(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISPIS.H_OFFS.B.IS_H_OFFS;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISPIS.V_OFFS.B.IS_V_OFFS;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getIspisPictureSize(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.ISPIS.H_SIZE.B.IS_H_SIZE;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.ISPIS.V_SIZE.B.IS_V_SIZE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getIspisRecenterEnableState(void)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (0 != MODULE_CIF.ISPIS.RECENTER.B.RECENTER)
    {
        retValue = IfxCif_State_Enabled;
    }

    return retValue;
}


IfxCif_JpeDebugSignalState IfxCif_getJpeDebugSignalState(IfxCif_JpeDebugSignalSources source)
{
    IfxCif_JpeDebugSignalState retValue = IfxCif_JpeDebugSignalState_Inactive;

    if (source == IfxCif_JpeDebugSignalSources_BadTableAccess)
    {
        retValue = MODULE_CIF.JPE.DEBUG.B.DEB_BAD_TABLE_ACCESS;
    }
    else if (source == IfxCif_JpeDebugSignalSources_VlcTableBusy)
    {
        retValue = MODULE_CIF.JPE.DEBUG.B.DEB_VLC_TABLE_BUSY;
    }
    else if (source == IfxCif_JpeDebugSignalSources_R2BMemoryFull)
    {
        retValue = MODULE_CIF.JPE.DEBUG.B.DEB_R2B_MEMORY_FULL;
    }
    else if (source == IfxCif_JpeDebugSignalSources_VlcEncodeBusy)
    {
        retValue = MODULE_CIF.JPE.DEBUG.B.DEB_VLC_ENCODE_BUSY;
    }
    else if (source == IfxCif_JpeDebugSignalSources_QiqTableAccess)
    {
        retValue = MODULE_CIF.JPE.DEBUG.B.DEB_QIQ_TABLE_ACC;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getJpeInterruptEnableState(IfxCif_JpeInterruptSources interruptSource)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (interruptSource == IfxCif_JpeInterruptSources_VlcTableError)
    {
        retValue = MODULE_CIF.JPE.ERROR_IMR.B.VLC_TABLE_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_R2BImageSizeError)
    {
        retValue = MODULE_CIF.JPE.ERROR_IMR.B.R2B_IMG_SIZE_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_DcTableError)
    {
        retValue = MODULE_CIF.JPE.ERROR_IMR.B.DCT_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_VlcSymbolError)
    {
        retValue = MODULE_CIF.JPE.ERROR_IMR.B.VLC_SYMBOL_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_HeaderGenerationComplete)
    {
        retValue = MODULE_CIF.JPE.STATUS_IMR.B.GEN_HEADER_DONE;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_EncodingComplete)
    {
        retValue = MODULE_CIF.JPE.STATUS_IMR.B.ENCODE_DONE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_JpeQTableSelector IfxCif_getJpeQTableSelector(IfxCif_JpeQTableSelectorComponents component)
{
    IfxCif_JpeQTableSelector retValue = IfxCif_JpeQTableSelector_Table0;

    if (component == IfxCif_JpeQTableSelectorComponents_Y)
    {
        retValue = MODULE_CIF.JPE.TQ_Y_SELECT.B.TQ0_SELECT;
    }
    else if (component == IfxCif_JpeQTableSelectorComponents_U)
    {
        retValue = MODULE_CIF.JPE.TQ_U_SELECT.B.TQ1_SELECT;
    }
    else if (component == IfxCif_JpeQTableSelectorComponents_V)
    {
        retValue = MODULE_CIF.JPE.TQ_V_SELECT.B.TQ2_SELECT;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getJpeScalingEnableState(IfxCif_JpeScalingValueSources source)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (source == IfxCif_JpeScalingValueSources_Y)
    {
        retValue = MODULE_CIF.JPE.Y_SCALE_EN.B.Y_SCALE_EN;
    }
    else if (source == IfxCif_JpeScalingValueSources_CbCr)
    {
        retValue = MODULE_CIF.JPE.CBCR_SCALE_EN.B.CBCR_SCALE_EN;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getJpegCodecImageSize(IfxCif_ImageTiers tier)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.JPE.ENC_HSIZE.B.ENC_HSIZE;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.JPE.ENC_VSIZE.B.ENC_VSIZE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getKernelResetRequestState(void)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if ((0 != MODULE_CIF.BBB.KRST0.B.RST) && (0 != MODULE_CIF.BBB.KRST1.B.RST))
    {
        retValue = IfxCif_State_Enabled;
    }

    return retValue;
}


IfxCif_State IfxCif_getLinearDownscalerEnableState(IfxCif_ImageTiers tier)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.LDS.CTRL.B.LDS_H_EN;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.LDS.CTRL.B.LDS_V_EN;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint8 IfxCif_getLinearDownscalerScalingFactor(IfxCif_ImageTiers tier)
{
    uint8 retValue = 0xff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.LDS.FAC.B.LDS_H_FAC;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.LDS.FAC.B.LDS_V_FAC;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_LinearDownscalerScalingMode IfxCif_getLinearDownscalerScalingMode(IfxCif_ImageTiers tier)
{
    IfxCif_LinearDownscalerScalingMode retValue = IfxCif_LinearDownscalerScalingMode_SingleSkip;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        retValue = MODULE_CIF.LDS.CTRL.B.LDS_H_MODE;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        retValue = MODULE_CIF.LDS.CTRL.B.LDS_V_MODE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getMainPictureComponentBaseInitAddress(IfxCif_MiMainPicturePathComponents component)
{
    uint32 retValue = 0xffffffff;

    /* read base address from unsigned component of the register structure because lower bits are tied to 0
     * as base address needs to be a word aligned value */
    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        retValue = MODULE_CIF.MI.MP_Y_BASE_AD_INIT.U;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        retValue = MODULE_CIF.MI.MP_CB_BASE_AD_INIT.U;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        retValue = MODULE_CIF.MI.MP_CR_BASE_AD_INIT.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getMaskedEpInterruptTriggeredState(IfxCif_ExtraPath z, IfxCif_EpInterrupts interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (5 > z)
    {
        if (0 !=
            (MODULE_CIF.MIEP.MIS.
             U & (((uint32)1 << (uint32)interruptSource) << ((uint32)z * IfxCif_EpInterrupts_Count))))
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
        else
        {}
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getMaskedIspInterruptTriggeredState(IfxCif_IspInterruptSources interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (interruptSource == IfxCif_IspInterruptSources_SecurityWatchdogTimeout)
    {
        if (0 != MODULE_CIF.ISP.MIS.B.MIS_WD_TRIG)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfHSync)
    {
        if (0 != MODULE_CIF.ISP.MIS.B.MIS_H_START)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfVSync)
    {
        if (0 != MODULE_CIF.ISP.MIS.B.MIS_V_START)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_SampledInputFrameComplete)
    {
        if (0 != MODULE_CIF.ISP.MIS.B.MIS_FRAME_IN)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_PictureSizeViolationOccurred)
    {
        if (0 != MODULE_CIF.ISP.MIS.B.MIS_PIC_SIZE_ERR)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_LossOfData)
    {
        if (0 != MODULE_CIF.ISP.MIS.B.MIS_DATA_LOSS)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_FrameCompletelyPutOut)
    {
        if (0 != MODULE_CIF.ISP.MIS.B.MIS_FRAME)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_IspTurnedOff)
    {
        if (0 != MODULE_CIF.ISP.MIS.B.MIS_ISP_OFF)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getMaskedJpeInterruptTriggeredState(IfxCif_JpeInterruptSources interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (interruptSource == IfxCif_JpeInterruptSources_VlcTableError)
    {
        retValue = MODULE_CIF.JPE.ERROR_MIS.B.VLC_TABLE_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_R2BImageSizeError)
    {
        retValue = MODULE_CIF.JPE.ERROR_MIS.B.R2B_IMG_SIZE_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_DcTableError)
    {
        retValue = MODULE_CIF.JPE.ERROR_MIS.B.DCT_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_VlcSymbolError)
    {
        retValue = MODULE_CIF.JPE.ERROR_MIS.B.VLC_SYMBOL_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_HeaderGenerationComplete)
    {
        retValue = MODULE_CIF.JPE.STATUS_MIS.B.GEN_HEADER_DONE;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_EncodingComplete)
    {
        retValue = MODULE_CIF.JPE.STATUS_MIS.B.ENCODE_DONE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getMaskedMiInterruptTriggeredState(IfxCif_MiInterruptSources interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (interruptSource == IfxCif_MiInterruptSources_BusError)
    {
        retValue = MODULE_CIF.MI.MIS.B.BUS_ERROR;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCr)
    {
        retValue = MODULE_CIF.MI.MIS.B.WRAP_MP_CR;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCb)
    {
        retValue = MODULE_CIF.MI.MIS.B.WRAP_MP_CB;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureY)
    {
        retValue = MODULE_CIF.MI.MIS.B.WRAP_MP_Y;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_FillMainPictureY)
    {
        retValue = MODULE_CIF.MI.MIS.B.FILL_MP_Y;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MacroBlockLine)
    {
        retValue = MODULE_CIF.MI.MIS.B.MBLK_LINE;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MainPictureFrameEnd)
    {
        retValue = MODULE_CIF.MI.MIS.B.MP_FRAME_END;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getMaskedSecurityWatchdogInterruptTriggeredState(IfxCif_SecurityWatchdogInterruptSources interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalEndStartTimeout)
    {
        retValue = MODULE_CIF.WD.MIS.B.MIS_WD_VES_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalStartEndTimeout)
    {
        retValue = MODULE_CIF.WD.MIS.B.MIS_WD_VSE_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalEndStartTimeout)
    {
        retValue = MODULE_CIF.WD.MIS.B.MIS_WD_HES_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalStartEndTimeout)
    {
        retValue = MODULE_CIF.WD.MIS.B.MIS_WD_HSE_TO;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getMiDataPathInputEnableState(IfxCif_MiDataPaths dataPath)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (dataPath == IfxCif_MiDataPaths_RawData)
    {
        retValue = MODULE_CIF.MI.CTRL_SHD.B.RAW_ENABLE_IN;
    }
    else if (dataPath == IfxCif_MiDataPaths_JpegData)
    {
        retValue = MODULE_CIF.MI.CTRL_SHD.B.JPEG_ENABLE_IN;
    }
    else if (dataPath == IfxCif_MiDataPaths_MainPictureData)
    {
        retValue = MODULE_CIF.MI.CTRL_SHD.B.MP_ENABLE_IN;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getMiDataPathOutputEnableState(IfxCif_MiDataPaths dataPath)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (dataPath == IfxCif_MiDataPaths_RawData)
    {
        retValue = MODULE_CIF.MI.CTRL_SHD.B.RAW_ENABLE_OUT;
    }
    else if (dataPath == IfxCif_MiDataPaths_JpegData)
    {
        retValue = MODULE_CIF.MI.CTRL_SHD.B.JPEG_ENABLE_OUT;
    }
    else if (dataPath == IfxCif_MiDataPaths_MainPictureData)
    {
        retValue = MODULE_CIF.MI.CTRL_SHD.B.MP_ENABLE_OUT;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getMiFeatureEnableState(IfxCif_MiDataPaths dataPath)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (dataPath == IfxCif_MiDataPaths_RawData)
    {
        retValue = MODULE_CIF.MI.CTRL.B.RAW_ENABLE;
    }
    else if (dataPath == IfxCif_MiDataPaths_JpegData)
    {
        retValue = MODULE_CIF.MI.CTRL.B.JPEG_ENABLE;
    }
    else if (dataPath == IfxCif_MiDataPaths_MainPictureData)
    {
        retValue = MODULE_CIF.MI.CTRL.B.MP_ENABLE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getMiInterruptEnableState(IfxCif_MiInterruptSources interruptSource)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (interruptSource == IfxCif_MiInterruptSources_BusError)
    {
        retValue = MODULE_CIF.MI.IMSC.B.BUS_ERROR;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCr)
    {
        retValue = MODULE_CIF.MI.IMSC.B.WRAP_MP_CR;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCb)
    {
        retValue = MODULE_CIF.MI.IMSC.B.WRAP_MP_CB;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureY)
    {
        retValue = MODULE_CIF.MI.IMSC.B.WRAP_MP_Y;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_FillMainPictureY)
    {
        retValue = MODULE_CIF.MI.IMSC.B.FILL_MP_Y;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MacroBlockLine)
    {
        retValue = MODULE_CIF.MI.IMSC.B.MBLK_LINE;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MainPictureFrameEnd)
    {
        retValue = MODULE_CIF.MI.IMSC.B.MP_FRAME_END;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getMiMainPictureComponentBaseAddress(IfxCif_MiMainPicturePathComponents component)
{
    uint32 retValue = 0xffffffff;

    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        retValue = MODULE_CIF.MI.MP_Y_BASE_AD_SHD.B.MP_Y_BASE_AD;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        retValue = MODULE_CIF.MI.MP_CB_BASE_AD_SHD.B.MP_CB_BASE_AD;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        retValue = MODULE_CIF.MI.MP_CR_BASE_AD_SHD.B.MP_CR_BASE_AD;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getMiMainPictureComponentInitSize(IfxCif_MiMainPicturePathComponents component)
{
    uint32 retValue = 0xffffffff;

    /* read size from unsigned component of the register structure because lower bits are tied to 0
     * as size needs to be a word aligned value */
    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        retValue = MODULE_CIF.MI.MP_Y_SIZE_INIT.U;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        retValue = MODULE_CIF.MI.MP_CB_SIZE_INIT.U;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        retValue = MODULE_CIF.MI.MP_CR_SIZE_INIT.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getMiMainPictureComponentInitialOffsetCounter(IfxCif_MiMainPicturePathComponents component)
{
    uint32 retValue = 0xffffffff;

    /* read offset counter from unsigned component of the register structure because lower bits are tied to 0
     * as offset counter needs to be a word aligned value */
    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        retValue = MODULE_CIF.MI.MP_Y_OFFS_CNT_INIT.U;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        retValue = MODULE_CIF.MI.MP_CB_OFFS_CNT_INIT.U;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        retValue = MODULE_CIF.MI.MP_CR_OFFS_CNT_INIT.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getMiMainPictureComponentOffsetCounter(IfxCif_MiMainPicturePathComponents component)
{
    uint32 retValue = 0xffffffff;

    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        retValue = MODULE_CIF.MI.MP_Y_OFFS_CNT_SHD.B.MP_Y_OFFS_CNT;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        retValue = MODULE_CIF.MI.MP_CB_OFFS_CNT_SHD.B.MP_CB_OFFS_CNT;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        retValue = MODULE_CIF.MI.MP_CR_OFFS_CNT_SHD.B.MP_CR_OFFS_CNT;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getMiMainPictureComponentOffsetCounterStart(IfxCif_MiMainPicturePathComponents component)
{
    uint32 retValue = 0xffffffff;

    /* read offset counter from unsigned component of the register structure because lower bits are tied to 0
     * as offset counter needs to be a word aligned value */
    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        retValue = MODULE_CIF.MI.MP_Y_OFFS_CNT_START.U;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        retValue = MODULE_CIF.MI.MP_CB_OFFS_CNT_START.U;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        retValue = MODULE_CIF.MI.MP_CR_OFFS_CNT_START.U;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint32 IfxCif_getMiMainPictureComponentSize(IfxCif_MiMainPicturePathComponents component)
{
    uint32 retValue = 0xffffffff;

    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        retValue = MODULE_CIF.MI.MP_Y_SIZE_SHD.B.MP_Y_SIZE;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        retValue = MODULE_CIF.MI.MP_CB_SIZE_SHD.B.MP_CB_SIZE;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        retValue = MODULE_CIF.MI.MP_CR_SIZE_SHD.B.MP_CR_SIZE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_ErrorState IfxCif_getMiStatusInformation(IfxCif_MiStatusInformationSources source)
{
    IfxCif_ErrorState retValue = IfxCif_ErrorState_NoError;

    if (source == IfxCif_MiStatusInformationSources_BusWriteError)
    {
        retValue = MODULE_CIF.MI.STATUS.B.BUS_WRITE_ERROR;
    }
    else if (source == IfxCif_MiStatusInformationSources_MainPictureCrFifoFull)
    {
        retValue = MODULE_CIF.MI.STATUS.B.MP_CR_FIFO_FULL;
    }
    else if (source == IfxCif_MiStatusInformationSources_MainPictureCbFifoFull)
    {
        retValue = MODULE_CIF.MI.STATUS.B.MP_CB_FIFO_FULL;
    }
    else if (source == IfxCif_MiStatusInformationSources_MainPictureYFifoFull)
    {
        retValue = MODULE_CIF.MI.STATUS.B.MP_Y_FIFO_FULL;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getRawEpInterruptTriggeredState(IfxCif_ExtraPath z, IfxCif_EpInterrupts interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (5 > z)
    {
        if (0 !=
            (MODULE_CIF.MIEP.RIS.
             U & (((uint32)1 << (uint32)interruptSource) << ((uint32)z * IfxCif_EpInterrupts_Count))))
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getRawIspInterruptTriggeredState(IfxCif_IspInterruptSources interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (interruptSource == IfxCif_IspInterruptSources_SecurityWatchdogTimeout)
    {
        if (0 != MODULE_CIF.ISP.RIS.B.RIS_WD_TRIG)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfHSync)
    {
        if (0 != MODULE_CIF.ISP.RIS.B.RIS_H_START)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfVSync)
    {
        if (0 != MODULE_CIF.ISP.RIS.B.RIS_V_START)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_SampledInputFrameComplete)
    {
        if (0 != MODULE_CIF.ISP.RIS.B.RIS_FRAME_IN)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_PictureSizeViolationOccurred)
    {
        if (0 != MODULE_CIF.ISP.RIS.B.RIS_PIC_SIZE_ERR)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_LossOfData)
    {
        if (0 != MODULE_CIF.ISP.RIS.B.RIS_DATA_LOSS)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_FrameCompletelyPutOut)
    {
        if (0 != MODULE_CIF.ISP.RIS.B.RIS_FRAME)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }
    else if (interruptSource == IfxCif_IspInterruptSources_IspTurnedOff)
    {
        if (0 != MODULE_CIF.ISP.RIS.B.RIS_ISP_OFF)
        {
            retValue = IfxCif_InterruptTriggeredState_Triggered;
        }
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getRawJpeInterruptTriggeredState(IfxCif_JpeInterruptSources interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (interruptSource == IfxCif_JpeInterruptSources_VlcTableError)
    {
        retValue = MODULE_CIF.JPE.ERROR_RIS.B.VLC_TABLE_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_R2BImageSizeError)
    {
        retValue = MODULE_CIF.JPE.ERROR_RIS.B.R2B_IMG_SIZE_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_DcTableError)
    {
        retValue = MODULE_CIF.JPE.ERROR_RIS.B.DCT_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_VlcSymbolError)
    {
        retValue = MODULE_CIF.JPE.ERROR_RIS.B.VLC_SYMBOL_ERR;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_HeaderGenerationComplete)
    {
        retValue = MODULE_CIF.JPE.STATUS_RIS.B.GEN_HEADER_DONE;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_EncodingComplete)
    {
        retValue = MODULE_CIF.JPE.STATUS_RIS.B.ENCODE_DONE;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getRawMiInterruptTriggeredState(IfxCif_MiInterruptSources interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (interruptSource == IfxCif_MiInterruptSources_BusError)
    {
        retValue = MODULE_CIF.MI.RIS.B.BUS_ERROR;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCr)
    {
        retValue = MODULE_CIF.MI.RIS.B.WRAP_MP_CR;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCb)
    {
        retValue = MODULE_CIF.MI.RIS.B.WRAP_MP_CB;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureY)
    {
        retValue = MODULE_CIF.MI.RIS.B.WRAP_MP_Y;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_FillMainPictureY)
    {
        retValue = MODULE_CIF.MI.RIS.B.FILL_MP_Y;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MacroBlockLine)
    {
        retValue = MODULE_CIF.MI.RIS.B.MBLK_LINE;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MainPictureFrameEnd)
    {
        retValue = MODULE_CIF.MI.RIS.B.MP_FRAME_END;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_InterruptTriggeredState IfxCif_getRawSecurityWatchdogInterruptTriggeredState(IfxCif_SecurityWatchdogInterruptSources interruptSource)
{
    IfxCif_InterruptTriggeredState retValue = IfxCif_InterruptTriggeredState_NotTriggered;

    if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalEndStartTimeout)
    {
        retValue = MODULE_CIF.WD.RIS.B.RIS_WD_VES_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalStartEndTimeout)
    {
        retValue = MODULE_CIF.WD.RIS.B.RIS_WD_VSE_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalEndStartTimeout)
    {
        retValue = MODULE_CIF.WD.RIS.B.RIS_WD_HES_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalStartEndTimeout)
    {
        retValue = MODULE_CIF.WD.RIS.B.RIS_WD_HSE_TO;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getSecurityWatchdogInterruptEnableState(IfxCif_SecurityWatchdogInterruptSources interruptSource)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalEndStartTimeout)
    {
        retValue = MODULE_CIF.WD.IMSC.B.IMSC_WD_VES_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalStartEndTimeout)
    {
        retValue = MODULE_CIF.WD.IMSC.B.IMSC_WD_VSE_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalEndStartTimeout)
    {
        retValue = MODULE_CIF.WD.IMSC.B.IMSC_WD_HES_TO;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalStartEndTimeout)
    {
        retValue = MODULE_CIF.WD.IMSC.B.IMSC_WD_HSE_TO;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


uint16 IfxCif_getSecurityWatchdogTimeout(IfxCif_ImageTiers tier, IfxCif_SecurityWatchdogTimeoutCounters timeoutCounter)
{
    uint16 retValue = 0xffff;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        if (timeoutCounter == IfxCif_SecurityWatchdogTimeoutCounters_EndStart)
        {
            retValue = MODULE_CIF.WD.H_TIMEOUT.B.WD_HES_TO;
        }
        else if (timeoutCounter == IfxCif_SecurityWatchdogTimeoutCounters_StartEnd)
        {
            retValue = MODULE_CIF.WD.H_TIMEOUT.B.WD_HSE_TO;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        if (timeoutCounter == IfxCif_SecurityWatchdogTimeoutCounters_EndStart)
        {
            retValue = MODULE_CIF.WD.V_TIMEOUT.B.WD_VES_TO;
        }
        else if (timeoutCounter == IfxCif_SecurityWatchdogTimeoutCounters_StartEnd)
        {
            retValue = MODULE_CIF.WD.V_TIMEOUT.B.WD_VSE_TO;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


IfxCif_State IfxCif_getSoftwareResetMode(IfxCif_Submodules submodule)
{
    IfxCif_State retValue = IfxCif_State_Disabled;

    if (submodule == IfxCif_Submodules_AllModules)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_GLOBAL_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_Debug)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_DEBUG_PATH_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_ExtraPaths)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_EXTRA_PATHS_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_LinearDownscaler)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_LIN_DSCALER_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_SecurityWatchdog)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_WATCHDOG_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_MemoryInterface)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_MI_SOFT_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_JpegEncoder)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_JPEG_SOFT_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_ImageSignalProcessing)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_ISP_SOFT_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else if (submodule == IfxCif_Submodules_YCSplitter)
    {
        if (0 != MODULE_CIF.IRCL.B.CIF_YCS_SOFT_RST)
        {
            retValue = IfxCif_State_Enabled;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }

    return retValue;
}


void IfxCif_programJpeTable(IfxCif_JpeTableId tableId, const uint8 *tableEntry, uint8 length)
{
    uint16  i;
    boolean programTable = TRUE;

    if ((tableId == IfxCif_JpeTableId_QTable0) || (tableId == IfxCif_JpeTableId_QTable1))
    {
        MODULE_CIF.JPE.TABLE_ID.B.TABLE_ID = tableId;
    }
    else if (tableId == IfxCif_JpeTableId_VlcDcTable0)
    {
        MODULE_CIF.JPE.TABLE_ID.B.TABLE_ID = tableId;
        IfxCif_setHuffmanDcTableLength(IfxCif_HuffmanTables_Table0, length);
    }
    else if (tableId == IfxCif_JpeTableId_VlcDcTable1)
    {
        MODULE_CIF.JPE.TABLE_ID.B.TABLE_ID = tableId;
        IfxCif_setHuffmanDcTableLength(IfxCif_HuffmanTables_Table1, length);
    }
    else if (tableId == IfxCif_JpeTableId_VlcAcTable0)
    {
        MODULE_CIF.JPE.TABLE_ID.B.TABLE_ID = tableId;
        IfxCif_setHuffmanAcTableLength(IfxCif_HuffmanTables_Table0, length);
    }
    else if (tableId == IfxCif_JpeTableId_VlcAcTable1)
    {
        MODULE_CIF.JPE.TABLE_ID.B.TABLE_ID = tableId;
        IfxCif_setHuffmanAcTableLength(IfxCif_HuffmanTables_Table1, length);
    }
    else
    {
        IFXCIF_DEBUG;
        programTable = FALSE;
    }

    if (programTable != FALSE)
    {
        for (i = 0; i < (length / 2); i++)
        {
            Ifx_CIF_JPE_TABLE_DATA data;
            data.B.TABLE_WDATA_H        = tableEntry[i * 2 + 1];
            data.B.TABLE_WDATA_L        = tableEntry[i * 2];
            MODULE_CIF.JPE.TABLE_DATA.U = data.U;
        }
    }
}


void IfxCif_resetModule(Ifx_CIF_BBB *cifBbb)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(passwd);
    cifBbb->KRST0.B.RST = 1;            /* Only if both Kernel reset bits are set a reset is executed */
    cifBbb->KRST1.B.RST = 1;
    IfxScuWdt_setCpuEndinit(passwd);

    while (0 == cifBbb->KRST0.B.RSTSTAT)    /* Wait until reset is executed */

    {}

    IfxScuWdt_clearCpuEndinit(passwd);
    cifBbb->KRSTCLR.B.CLR = 1;          /* Clear Kernel reset status bit */
    IfxScuWdt_setCpuEndinit(passwd);
}


void IfxCif_resetSecurityWatchdogCounter(IfxCif_SecurityWatchdogCounters counter)
{
    if (counter == IfxCif_SecurityWatchdogCounters_Predivider)
    {
        MODULE_CIF.WD.CTRL.B.RST_PD_CNT = 1;
    }
    else if (counter == IfxCif_SecurityWatchdogCounters_Vertical)
    {
        MODULE_CIF.WD.CTRL.B.RST_V_CNT = 1;
    }
    else if (counter == IfxCif_SecurityWatchdogCounters_Horizontal)
    {
        MODULE_CIF.WD.CTRL.B.RST_H_CNT = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setDpControlEnableState(IfxCif_DpControlSources source, IfxCif_State enableState)
{
    if (source == IfxCif_DpControlSources_UserDefinedSymbol8)
    {
        MODULE_CIF.DP.CTRL.B.UDS8 = enableState;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol7)
    {
        MODULE_CIF.DP.CTRL.B.UDS7 = enableState;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol6)
    {
        MODULE_CIF.DP.CTRL.B.UDS6 = enableState;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol5)
    {
        MODULE_CIF.DP.CTRL.B.UDS5 = enableState;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol4)
    {
        MODULE_CIF.DP.CTRL.B.UDS4 = enableState;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol3)
    {
        MODULE_CIF.DP.CTRL.B.UDS3 = enableState;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol2)
    {
        MODULE_CIF.DP.CTRL.B.UDS2 = enableState;
    }
    else if (source == IfxCif_DpControlSources_UserDefinedSymbol1)
    {
        MODULE_CIF.DP.CTRL.B.UDS1 = enableState;
    }
    else if (source == IfxCif_DpControlSources_TimestampCounter)
    {
        MODULE_CIF.DP.CTRL.B.TSC_EN = enableState;
    }
    else if (source == IfxCif_DpControlSources_LineNumberCounter)
    {
        MODULE_CIF.DP.CTRL.B.LNC_EN = enableState;
    }
    else if (source == IfxCif_DpControlSources_FrameNumberCounter)
    {
        MODULE_CIF.DP.CTRL.B.FNC_EN = enableState;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setDpCounter(IfxCif_DpCounters counter, uint32 counterValue)
{
    // only the predivider counter can be set
    if (counter == IfxCif_DpCounters_PredividerCounter)
    {
        MODULE_CIF.DP.PDIV_CTRL.B.PDIV_VAL = counterValue;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setDpUserDefinedSymbol(uint8 x, uint16 value)
{
    if (8 > x)
    {
        MODULE_CIF.DP.UDS_1S[x].B.UDS = value;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpBaseInitAddress(IfxCif_ExtraPath z, Ifx_AddressValue baseAddress)
{
    if (5 > z)
    {
        /* write base address to unsigned component of the register structure because lower bits are tied to 0
         * as base address needs to be a word aligned value */
        MODULE_CIF.MIEP.CH_1S[z].BASE_AD_INIT.U = (uint32)baseAddress;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpCroppingCameraDisplacement(IfxCif_ExtraPath z, IfxCif_ImageTiers tier, uint16 displacement)
{
    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            MODULE_CIF.EP_IC_1S[z].DISPLACE.B.DX = displacement;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            MODULE_CIF.EP_IC_1S[z].DISPLACE.B.DY = displacement;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpCroppingEnableState(IfxCif_ExtraPath z, uint32 enableState)
{
    if (5 > z)
    {
        MODULE_CIF.EP_IC_1S[z].CTRL.B.IC_EN = enableState;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpCroppingMaximumDisplacement(IfxCif_ExtraPath z, IfxCif_ImageTiers tier, uint16 displacement)
{
    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            MODULE_CIF.EP_IC_1S[z].MAX_DX.B.MAX_DX = displacement;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            MODULE_CIF.EP_IC_1S[z].MAX_DY.B.MAX_DY = displacement;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpCroppingOffsetOutputWindow(IfxCif_ExtraPath z, IfxCif_ImageTiers tier, uint16 offset)
{
    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            MODULE_CIF.EP_IC_1S[z].H_OFFS.B.H_OFFS = offset;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            MODULE_CIF.EP_IC_1S[z].V_OFFS.B.V_OFFS = offset;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpCroppingOffsetsOutputWindow(IfxCif_ExtraPath z, uint16 hOffset, uint16 vOffset)
{
    if (5 > z)
    {
        MODULE_CIF.EP_IC_1S[z].H_OFFS.B.H_OFFS = hOffset;
        MODULE_CIF.EP_IC_1S[z].V_OFFS.B.V_OFFS = vOffset;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpCroppingPictureSize(IfxCif_ExtraPath z, IfxCif_ImageTiers tier, uint16 size)
{
    if (5 > z)
    {
        if (tier == IfxCif_ImageTiers_Horizontal)
        {
            MODULE_CIF.EP_IC_1S[z].H_SIZE.B.H_SIZE = size;
        }
        else if (tier == IfxCif_ImageTiers_Vertical)
        {
            MODULE_CIF.EP_IC_1S[z].V_SIZE.B.V_SIZE = size;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpCroppingPictureSizes(IfxCif_ExtraPath z, uint16 hSize, uint16 vSize)
{
    if (5 > z)
    {
        MODULE_CIF.EP_IC_1S[z].H_SIZE.B.H_SIZE = hSize;
        MODULE_CIF.EP_IC_1S[z].V_SIZE.B.V_SIZE = vSize;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpFeatureEnableState(IfxCif_ExtraPath z, IfxCif_EpFeatures feature, IfxCif_State enableState)
{
    if (5 > z)
    {
        if (feature == IfxCif_EpFeatures_InitOffsetCounter)
        {
            MODULE_CIF.MIEP.CH_1S[z].CTRL.B.INIT_OFFSET_EN = enableState;
        }
        else if (feature == IfxCif_EpFeatures_InitBaseAddress)
        {
            MODULE_CIF.MIEP.CH_1S[z].CTRL.B.INIT_BASE_EN = enableState;
        }
        else if (feature == IfxCif_EpFeatures_ByteSwap)
        {
            MODULE_CIF.MIEP.CH_1S[z].CTRL.B.BYTE_SWAP = enableState;
        }
        else if (feature == IfxCif_EpFeatures_PictureDataPath)
        {
            MODULE_CIF.MIEP.CH_1S[z].CTRL.B.EP_ENABLE = enableState;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpInitSize(IfxCif_ExtraPath z, uint32 size)
{
    if (5 > z)
    {
        /* write size to unsigned component of the register structure because lower bits are tied to 0
         * as size needs to be a word aligned value */
        MODULE_CIF.MIEP.CH_1S[z].SIZE_INIT.U = size;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpInitialFillLevelInterruptOffset(uint32 z, uint32 interruptOffset)
{
    if (5 > z)
    {
        /* write interrupt offset to unsigned component of the register structure because lower bits are tied
         * to 0 as interrupt offset needs to be a word aligned value */
        MODULE_CIF.MIEP.CH_1S[z].IRQ_OFFS_INIT.U = interruptOffset;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpInitialOffsetCounter(IfxCif_ExtraPath z, uint32 offsetCounter)
{
    if (5 > z)
    {
        /* write offset counter to unsigned component of the register structure because lower bits are tied
         * to 0 as offset counter needs to be a word aligned value */
        MODULE_CIF.MIEP.CH_1S[z].OFFS_CNT_INIT.U = offsetCounter;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpInterruptEnableState(IfxCif_ExtraPath z, IfxCif_EpInterrupts interruptSource, IfxCif_State interruptEnableState)
{
    if (5 > z)
    {
        if (IfxCif_State_Enabled == interruptEnableState)
        {
            MODULE_CIF.MIEP.IMSC.U |=
                (((uint32)1 << (uint32)interruptSource) << ((uint32)z * IfxCif_EpInterrupts_Count));
        }
        else
        {
            MODULE_CIF.MIEP.IMSC.U &=
                ~(((uint32)1 << (uint32)interruptSource) << ((uint32)z * IfxCif_EpInterrupts_Count));
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpInterruptRequestBit(IfxCif_ExtraPath z, IfxCif_EpInterrupts interruptSource)
{
    if (5 > z)
    {
        MODULE_CIF.MIEP.ISR.U = (((uint32)1 << (uint32)interruptSource) << ((uint32)z * IfxCif_EpInterrupts_Count));
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpOffsetCounterStart(uint32 z, uint32 offsetCounter)
{
    if (5 > z)
    {
        /* write offset counter to unsigned component of the register structure because lower bits are tied
         * to 0 as offset counter needs to be a word aligned value */
        MODULE_CIF.MIEP.CH_1S[z].OFFS_CNT_START.U = offsetCounter;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpRecenterValue(IfxCif_ExtraPath z, uint8 value)
{
    if (5 > z)
    {
        MODULE_CIF.EP_IC_1S[z].RECENTER.B.RECENTER = value;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setEpWriteFormat(IfxCif_ExtraPath z, IfxCif_EpWriteFormat writeFormat)
{
    if (5 > z)
    {
        MODULE_CIF.MIEP.CH_1S[z].CTRL.B.EP_WRITE_FORMAT = writeFormat;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setHuffmanAcTableLength(IfxCif_HuffmanTables table, uint8 length)
{
    if (table == IfxCif_HuffmanTables_Table0)
    {
        MODULE_CIF.JPE.TAC0_LEN.U = length; // 32-bit access is needed
    }
    else if (table == IfxCif_HuffmanTables_Table1)
    {
        MODULE_CIF.JPE.TAC1_LEN.U = length; // 32-bit access is needed
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setHuffmanAcTableSelector(IfxCif_HuffmanTables table, IfxCif_HuffmanTableComponents component)
{
    if (table == IfxCif_HuffmanTables_Table0)
    {
        MODULE_CIF.JPE.AC_TABLE_SELECT.B.AC_TABLE_SELECT &= ~(1 << component);
    }
    else if (table == IfxCif_HuffmanTables_Table1)
    {
        MODULE_CIF.JPE.AC_TABLE_SELECT.B.AC_TABLE_SELECT |= (1 << component);
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setHuffmanDcTableLength(IfxCif_HuffmanTables table, uint8 length)
{
    if (table == IfxCif_HuffmanTables_Table0)
    {
        MODULE_CIF.JPE.TDC0_LEN.U = length; // 32-bit access is needed
    }
    else if (table == IfxCif_HuffmanTables_Table1)
    {
        MODULE_CIF.JPE.TDC1_LEN.U = length; // 32-bit access is needed
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setHuffmanDcTableSelector(IfxCif_HuffmanTables table, IfxCif_HuffmanTableComponents component)
{
    if (table == IfxCif_HuffmanTables_Table0)
    {
        MODULE_CIF.JPE.DC_TABLE_SELECT.B.DC_TABLE_SELECT &= ~(1 << component);
    }
    else if (table == IfxCif_HuffmanTables_Table1)
    {
        MODULE_CIF.JPE.DC_TABLE_SELECT.B.DC_TABLE_SELECT |= (1 << component);
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setInternalClockMode(IfxCif_Submodules submodule, IfxCif_State clockState)
{
    Ifx_CIF_ICCL iccl = MODULE_CIF.ICCL;

    if (submodule == IfxCif_Submodules_Debug)
    {
        iccl.B.CIF_DEBUG_PATH_CLK_EN = clockState;
    }
    else if (submodule == IfxCif_Submodules_ExtraPaths)
    {
        iccl.B.CIF_EXTRA_PATHS_CLK_ENABLE = clockState;
    }
    else if (submodule == IfxCif_Submodules_LinearDownscaler)
    {
        iccl.B.CIF_LIN_DSCALER_CLK_ENABLE = clockState;
    }
    else if (submodule == IfxCif_Submodules_SecurityWatchdog)
    {
        iccl.B.CIF_WATCHDOG_CLK_ENABLE = clockState;
    }
    else if (submodule == IfxCif_Submodules_MemoryInterface)
    {
        iccl.B.CIF_MI_CLK_ENABLE = clockState;
    }
    else if (submodule == IfxCif_Submodules_JpegEncoder)
    {
        iccl.B.CIF_JPEG_CLK_ENABLE = clockState;
    }
    else if (submodule == IfxCif_Submodules_ImageSignalProcessing)
    {
        iccl.B.CIF_ISP_CLK_ENABLE = clockState;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    MODULE_CIF.ICCL.U = iccl.U;
}


void IfxCif_setIspAcquisitionOffset(IfxCif_ImageTiers tier, uint16 offset)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.ISP.ACQ_H_OFFS.B.ACQ_H_OFFS = offset;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.ISP.ACQ_V_OFFS.B.ACQ_V_OFFS = offset;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setIspAcquisitionSize(IfxCif_ImageTiers tier, uint16 size)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.ISP.ACQ_H_SIZE.B.ACQ_H_SIZE = size;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.ISP.ACQ_V_SIZE.B.ACQ_V_SIZE = size;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setIspInputSelectionAppendState(IfxCif_State appendState)
{
    /* CIF module has a NO append enable bit -> invert appendState */
    if (appendState == IfxCif_State_Enabled)
    {
        MODULE_CIF.ISP.ACQ_PROP.B.INPUT_SELECTION_NO_APP = 0;
    }
    else
    {
        MODULE_CIF.ISP.ACQ_PROP.B.INPUT_SELECTION_NO_APP = 1;
    }
}


void IfxCif_setIspInterruptEnableState(IfxCif_IspInterruptSources interruptSource, IfxCif_State interruptEnableState)
{
    if (interruptSource == IfxCif_IspInterruptSources_SecurityWatchdogTimeout)
    {
        MODULE_CIF.ISP.IMSC.B.IMSC_WD_TRIG = interruptEnableState;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfHSync)
    {
        MODULE_CIF.ISP.IMSC.B.IMSC_H_START = interruptEnableState;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfVSync)
    {
        MODULE_CIF.ISP.IMSC.B.IMSC_V_START = interruptEnableState;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_SampledInputFrameComplete)
    {
        MODULE_CIF.ISP.IMSC.B.IMSC_FRAME_IN = interruptEnableState;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_PictureSizeViolationOccurred)
    {
        MODULE_CIF.ISP.IMSC.B.IMSC_PIC_SIZE_ERR = interruptEnableState;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_LossOfData)
    {
        MODULE_CIF.ISP.IMSC.B.IMSC_DATA_LOSS = interruptEnableState;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_FrameCompletelyPutOut)
    {
        MODULE_CIF.ISP.IMSC.B.IMSC_FRAME = interruptEnableState;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_IspTurnedOff)
    {
        MODULE_CIF.ISP.IMSC.B.IMSC_ISP_OFF = interruptEnableState;
    }
}


void IfxCif_setIspInterruptRequestBit(IfxCif_IspInterruptSources interruptSource)
{
    if (interruptSource == IfxCif_IspInterruptSources_SecurityWatchdogTimeout)
    {
        MODULE_CIF.ISP.ISR.B.ISR_WD_TRIG = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfHSync)
    {
        MODULE_CIF.ISP.ISR.B.ISR_H_START = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_StartEdgeOfVSync)
    {
        MODULE_CIF.ISP.ISR.B.ISR_V_START = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_SampledInputFrameComplete)
    {
        MODULE_CIF.ISP.ISR.B.ISR_FRAME_IN = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_PictureSizeViolationOccurred)
    {
        MODULE_CIF.ISP.ISR.B.ISR_PIC_SIZE_ERR = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_LossOfData)
    {
        MODULE_CIF.ISP.ISR.B.ISR_DATA_LOSS = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_FrameCompletelyPutOut)
    {
        MODULE_CIF.ISP.ISR.B.ISR_FRAME = 1;
    }
    else if (interruptSource == IfxCif_IspInterruptSources_IspTurnedOff)
    {
        MODULE_CIF.ISP.ISR.B.ISR_ISP_OFF = 1;
    }
}


void IfxCif_setIspOutputWindowOffset(IfxCif_ImageTiers tier, uint16 offset)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.ISP.OUT_H_OFFS.B.ISP_OUT_H_OFFS = offset;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.ISP.OUT_V_OFFS.B.ISP_OUT_V_OFFS = offset;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setIspPictureSize(IfxCif_ImageTiers tier, uint16 pictureSize)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.ISP.OUT_H_SIZE.B.ISP_OUT_H_SIZE = pictureSize;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.ISP.OUT_V_SIZE.B.ISP_OUT_V_SIZE = pictureSize;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setIspisCameraDisplacement(uint16 tier, uint16 displacement)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.ISPIS.DISPLACE.B.DX = displacement;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.ISPIS.DISPLACE.B.DY = displacement;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setIspisMaximumDisplacement(IfxCif_ImageTiers tier, uint16 displacement)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.ISPIS.MAX_DX.B.IS_MAX_DX = displacement;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.ISPIS.MAX_DY.B.IS_MAX_DY = displacement;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setIspisOutputWindowOffset(IfxCif_ImageTiers tier, uint16 offset)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.ISPIS.H_OFFS.B.IS_H_OFFS = offset;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.ISPIS.V_OFFS.B.IS_V_OFFS = offset;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setIspisPictureSize(IfxCif_ImageTiers tier, uint16 size)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.ISPIS.H_SIZE.B.IS_H_SIZE = size;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.ISPIS.V_SIZE.B.IS_V_SIZE = size;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setJpeInterruptEnableState(IfxCif_JpeInterruptSources interruptSource, IfxCif_State interruptEnableState)
{
    if (interruptSource == IfxCif_JpeInterruptSources_VlcTableError)
    {
        MODULE_CIF.JPE.ERROR_IMR.B.VLC_TABLE_ERR = interruptEnableState;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_R2BImageSizeError)
    {
        MODULE_CIF.JPE.ERROR_IMR.B.R2B_IMG_SIZE_ERR = interruptEnableState;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_DcTableError)
    {
        MODULE_CIF.JPE.ERROR_IMR.B.DCT_ERR = interruptEnableState;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_VlcSymbolError)
    {
        MODULE_CIF.JPE.ERROR_IMR.B.VLC_SYMBOL_ERR = interruptEnableState;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_HeaderGenerationComplete)
    {
        MODULE_CIF.JPE.STATUS_IMR.B.GEN_HEADER_DONE = interruptEnableState;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_EncodingComplete)
    {
        MODULE_CIF.JPE.STATUS_IMR.B.ENCODE_DONE = interruptEnableState;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setJpeInterruptRequestBit(IfxCif_JpeInterruptSources interruptSource)
{
    if (interruptSource == IfxCif_JpeInterruptSources_VlcTableError)
    {
        MODULE_CIF.JPE.ERROR_ICR.B.VLC_TABLE_ERR = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_R2BImageSizeError)
    {
        MODULE_CIF.JPE.ERROR_ICR.B.R2B_IMG_SIZE_ERR = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_DcTableError)
    {
        MODULE_CIF.JPE.ERROR_ICR.B.DCT_ERR = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_VlcSymbolError)
    {
        MODULE_CIF.JPE.ERROR_ICR.B.VLC_SYMBOL_ERR = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_HeaderGenerationComplete)
    {
        MODULE_CIF.JPE.STATUS_ICR.B.GEN_HEADER_DONE = 1;
    }
    else if (interruptSource == IfxCif_JpeInterruptSources_EncodingComplete)
    {
        MODULE_CIF.JPE.STATUS_ICR.B.ENCODE_DONE = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setJpeQTableSelector(IfxCif_JpeQTableSelectorComponents component, IfxCif_JpeQTableSelector selector)
{
    if (component == IfxCif_JpeQTableSelectorComponents_Y)
    {
        MODULE_CIF.JPE.TQ_Y_SELECT.B.TQ0_SELECT = selector;
    }
    else if (component == IfxCif_JpeQTableSelectorComponents_U)
    {
        MODULE_CIF.JPE.TQ_U_SELECT.B.TQ1_SELECT = selector;
    }
    else if (component == IfxCif_JpeQTableSelectorComponents_V)
    {
        MODULE_CIF.JPE.TQ_V_SELECT.B.TQ2_SELECT = selector;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setJpeScalingEnableState(IfxCif_JpeScalingValueSources source, IfxCif_State scalingEnable)
{
    if (source == IfxCif_JpeScalingValueSources_Y)
    {
        MODULE_CIF.JPE.Y_SCALE_EN.B.Y_SCALE_EN = scalingEnable;
    }
    else if (source == IfxCif_JpeScalingValueSources_CbCr)
    {
        MODULE_CIF.JPE.CBCR_SCALE_EN.B.CBCR_SCALE_EN = scalingEnable;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setJpegCodecImageSize(IfxCif_ImageTiers tier, uint16 size)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        MODULE_CIF.JPE.ENC_HSIZE.B.ENC_HSIZE = size;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        MODULE_CIF.JPE.ENC_VSIZE.B.ENC_VSIZE = size;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setLinearDownscalerEnableState(IfxCif_ImageTiers tier, IfxCif_State enableState)
{
    Ifx_CIF_LDS_CTRL ldsCtrl = MODULE_CIF.LDS.CTRL;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        ldsCtrl.B.LDS_H_EN = enableState;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        ldsCtrl.B.LDS_V_EN = enableState;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    MODULE_CIF.LDS.CTRL.U = ldsCtrl.U;
}


void IfxCif_setLinearDownscalerScalingFactor(IfxCif_ImageTiers tier, uint8 factor)
{
    Ifx_CIF_LDS_FAC ldsFac = MODULE_CIF.LDS.FAC;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        ldsFac.B.LDS_H_FAC = factor;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        ldsFac.B.LDS_V_FAC = factor;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    MODULE_CIF.LDS.FAC.U = ldsFac.U;
}


void IfxCif_setLinearDownscalerScalingFactors(uint8 horizFactor, uint8 vertFactor)
{
    Ifx_CIF_LDS_FAC ldsFac = MODULE_CIF.LDS.FAC;

    ldsFac.B.LDS_H_FAC   = horizFactor;
    ldsFac.B.LDS_V_FAC   = vertFactor;
    MODULE_CIF.LDS.FAC.U = ldsFac.U;
}


void IfxCif_setLinearDownscalerScalingMode(IfxCif_ImageTiers tier, IfxCif_LinearDownscalerScalingMode mode)
{
    Ifx_CIF_LDS_CTRL ldsCtrl = MODULE_CIF.LDS.CTRL;

    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        ldsCtrl.B.LDS_H_MODE = mode;
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        ldsCtrl.B.LDS_V_MODE = mode;
    }
    else
    {
        IFXCIF_DEBUG;
    }

    MODULE_CIF.LDS.CTRL.U = ldsCtrl.U;
}


void IfxCif_setLinearDownscalerScalingModes(IfxCif_LinearDownscalerScalingMode horizMode, IfxCif_LinearDownscalerScalingMode vertMode)
{
    Ifx_CIF_LDS_CTRL ldsCtrl = MODULE_CIF.LDS.CTRL;

    ldsCtrl.B.LDS_H_EN    = (horizMode != IfxCif_LinearDownscalerScalingMode_Disabled);
    ldsCtrl.B.LDS_V_EN    = (vertMode != IfxCif_LinearDownscalerScalingMode_Disabled);
    ldsCtrl.B.LDS_H_MODE  = horizMode;
    ldsCtrl.B.LDS_V_MODE  = vertMode;
    MODULE_CIF.LDS.CTRL.U = ldsCtrl.U;
}


void IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths dataPath, IfxCif_State enableState)
{
    if (dataPath == IfxCif_MiDataPaths_RawData)
    {
        MODULE_CIF.MI.CTRL.B.RAW_ENABLE = enableState;
    }
    else if (dataPath == IfxCif_MiDataPaths_JpegData)
    {
        MODULE_CIF.MI.CTRL.B.JPEG_ENABLE = enableState;
    }
    else if (dataPath == IfxCif_MiDataPaths_MainPictureData)
    {
        MODULE_CIF.MI.CTRL.B.MP_ENABLE = enableState;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setMiInterruptEnableState(IfxCif_MiInterruptSources interruptSource, IfxCif_State interruptEnableState)
{
    if (interruptSource == IfxCif_MiInterruptSources_BusError)
    {
        MODULE_CIF.MI.IMSC.B.BUS_ERROR = interruptEnableState;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCr)
    {
        MODULE_CIF.MI.IMSC.B.WRAP_MP_CR = interruptEnableState;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCb)
    {
        MODULE_CIF.MI.IMSC.B.WRAP_MP_CB = interruptEnableState;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureY)
    {
        MODULE_CIF.MI.IMSC.B.WRAP_MP_Y = interruptEnableState;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_FillMainPictureY)
    {
        MODULE_CIF.MI.IMSC.B.FILL_MP_Y = interruptEnableState;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MacroBlockLine)
    {
        MODULE_CIF.MI.IMSC.B.MBLK_LINE = interruptEnableState;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MainPictureFrameEnd)
    {
        MODULE_CIF.MI.IMSC.B.MP_FRAME_END = interruptEnableState;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setMiInterruptRequestBit(IfxCif_MiInterruptSources interruptSource)
{
    if (interruptSource == IfxCif_MiInterruptSources_BusError)
    {
        MODULE_CIF.MI.ISR.B.Bus_ERROR = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCr)
    {
        MODULE_CIF.MI.ISR.B.WRAP_MP_CR = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureCb)
    {
        MODULE_CIF.MI.ISR.B.WRAP_MP_CB = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_WrapMainPictureY)
    {
        MODULE_CIF.MI.ISR.B.WRAP_MP_Y = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_FillMainPictureY)
    {
        MODULE_CIF.MI.ISR.B.FILL_MP_Y = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MacroBlockLine)
    {
        MODULE_CIF.MI.ISR.B.MBLK_LINE = 1;
    }
    else if (interruptSource == IfxCif_MiInterruptSources_MainPictureFrameEnd)
    {
        MODULE_CIF.MI.ISR.B.MP_FRAME_END = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setMiLuminanceBurstLength(IfxCif_MiBurstLength burstLength)
{
    MODULE_CIF.MI.CTRL.B.BURST_LEN_LUM = burstLength;
}


void IfxCif_setMiMainPictureComponentBaseInitAddress(IfxCif_MiMainPicturePathComponents component, Ifx_AddressValue address)
{
    uint32 baseAddress = (uint32)address;

    /* write base address to unsigned component of the register structure because lower bits are tied to 0
     * as base address needs to be a word aligned value */
    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        MODULE_CIF.MI.MP_Y_BASE_AD_INIT.U = baseAddress;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        MODULE_CIF.MI.MP_CB_BASE_AD_INIT.U = baseAddress;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        MODULE_CIF.MI.MP_CR_BASE_AD_INIT.U = baseAddress;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setMiMainPictureComponentInitSize(IfxCif_MiMainPicturePathComponents component, uint32 size)
{
    /* write size to unsigned component of the register structure because lower bits are tied to 0
     * as size needs to be a word aligned value */
    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        MODULE_CIF.MI.MP_Y_SIZE_INIT.U = size;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        MODULE_CIF.MI.MP_CB_SIZE_INIT.U = size;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        MODULE_CIF.MI.MP_CR_SIZE_INIT.U = size;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setMiMainPictureComponentInitialOffsetCounter(IfxCif_MiMainPicturePathComponents component, uint32 offsetCounter)
{
    /* write offset counter to unsigned component of the register structure because lower bits are tied to 0
     * as offset counter needs to be a word aligned value */
    if (component == IfxCif_MiMainPicturePathComponents_Y)
    {
        MODULE_CIF.MI.MP_Y_OFFS_CNT_INIT.U = offsetCounter;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cb)
    {
        MODULE_CIF.MI.MP_CB_OFFS_CNT_INIT.U = offsetCounter;
    }
    else if (component == IfxCif_MiMainPicturePathComponents_Cr)
    {
        MODULE_CIF.MI.MP_CR_OFFS_CNT_INIT.U = offsetCounter;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setModuleStateRequest(IfxCif_State state)
{
    uint16 l_TempVar = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(l_TempVar);

    /* bit is inverted */
    MODULE_CIF.BBB.CLC.B.DISR = (IfxCif_State_Enabled == state) ? 0 : 1;

    while (MODULE_CIF.BBB.CLC.B.DISS == (IfxCif_State_Enabled == state) ? 1 : 0)
    {}

    IfxScuWdt_setCpuEndinit(l_TempVar);
}


void IfxCif_setSecurityWatchdogInterruptEnableState(IfxCif_SecurityWatchdogInterruptSources interruptSource, IfxCif_State interruptEnableState)
{
    if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalEndStartTimeout)
    {
        MODULE_CIF.WD.IMSC.B.IMSC_WD_VES_TO = interruptEnableState;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalStartEndTimeout)
    {
        MODULE_CIF.WD.IMSC.B.IMSC_WD_VSE_TO = interruptEnableState;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalEndStartTimeout)
    {
        MODULE_CIF.WD.IMSC.B.IMSC_WD_HES_TO = interruptEnableState;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalStartEndTimeout)
    {
        MODULE_CIF.WD.IMSC.B.IMSC_WD_HSE_TO = interruptEnableState;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setSecurityWatchdogInterruptRequestBit(IfxCif_SecurityWatchdogInterruptSources interruptSource)
{
    if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalEndStartTimeout)
    {
        MODULE_CIF.WD.ISR.B.ISR_WD_VES_TO = 1;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_VerticalStartEndTimeout)
    {
        MODULE_CIF.WD.ISR.B.ISR_WD_VSE_TO = 1;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalEndStartTimeout)
    {
        MODULE_CIF.WD.ISR.B.ISR_WD_HES_TO = 1;
    }
    else if (interruptSource == IfxCif_SecurityWatchdogInterruptSources_HorizontalStartEndTimeout)
    {
        MODULE_CIF.WD.ISR.B.ISR_WD_HSE_TO = 1;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setSecurityWatchdogTimeout(IfxCif_ImageTiers tier, IfxCif_SecurityWatchdogTimeoutCounters timeoutCounter, uint16 timeout)
{
    if (tier == IfxCif_ImageTiers_Horizontal)
    {
        if (timeoutCounter == IfxCif_SecurityWatchdogTimeoutCounters_EndStart)
        {
            MODULE_CIF.WD.H_TIMEOUT.B.WD_HES_TO = timeout;
        }
        else if (timeoutCounter == IfxCif_SecurityWatchdogTimeoutCounters_StartEnd)
        {
            MODULE_CIF.WD.H_TIMEOUT.B.WD_HSE_TO = timeout;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else if (tier == IfxCif_ImageTiers_Vertical)
    {
        if (timeoutCounter == IfxCif_SecurityWatchdogTimeoutCounters_EndStart)
        {
            MODULE_CIF.WD.V_TIMEOUT.B.WD_VES_TO = timeout;
        }
        else if (timeoutCounter == IfxCif_SecurityWatchdogTimeoutCounters_StartEnd)
        {
            MODULE_CIF.WD.V_TIMEOUT.B.WD_VSE_TO = timeout;
        }
        else
        {
            IFXCIF_DEBUG;
        }
    }
    else
    {
        IFXCIF_DEBUG;
    }
}


void IfxCif_setSoftwareResetMode(IfxCif_Submodules submodule, IfxCif_State resetMode)
{
    if (submodule == IfxCif_Submodules_AllModules)
    {
        MODULE_CIF.IRCL.B.CIF_GLOBAL_RST = resetMode;
    }
    else if (submodule == IfxCif_Submodules_Debug)
    {
        MODULE_CIF.IRCL.B.CIF_DEBUG_PATH_RST = resetMode;
    }
    else if (submodule == IfxCif_Submodules_ExtraPaths)
    {
        MODULE_CIF.IRCL.B.CIF_EXTRA_PATHS_RST = resetMode;
    }
    else if (submodule == IfxCif_Submodules_LinearDownscaler)
    {
        MODULE_CIF.IRCL.B.CIF_LIN_DSCALER_RST = resetMode;
    }
    else if (submodule == IfxCif_Submodules_SecurityWatchdog)
    {
        MODULE_CIF.IRCL.B.CIF_WATCHDOG_RST = resetMode;
    }
    else if (submodule == IfxCif_Submodules_MemoryInterface)
    {
        MODULE_CIF.IRCL.B.CIF_MI_SOFT_RST = resetMode;
    }
    else if (submodule == IfxCif_Submodules_JpegEncoder)
    {
        MODULE_CIF.IRCL.B.CIF_JPEG_SOFT_RST = resetMode;
    }
    else if (submodule == IfxCif_Submodules_ImageSignalProcessing)
    {
        MODULE_CIF.IRCL.B.CIF_ISP_SOFT_RST = resetMode;
    }
    else if (submodule == IfxCif_Submodules_YCSplitter)
    {
        MODULE_CIF.IRCL.B.CIF_YCS_SOFT_RST = resetMode;
    }
    else
    {
        IFXCIF_DEBUG;
    }
}
