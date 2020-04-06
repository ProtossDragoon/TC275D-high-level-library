/**
 * \file IfxCif_Cam.c
 * \brief CIF CAM details
 *
 * \version iLLD_1_0_1_8_0
 * \copyright Copyright (c) 2018 Infineon Technologies AG. All rights reserved.
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

#include "IfxCif_Cam.h"
#include "Src/Std/IfxSrc.h"

/******************************************************************************/
/*----------------------------------Macros------------------------------------*/
/******************************************************************************/

#define IFXCIF_CAM_ALIGN(size, align) ((((size) / (align)) * (align)) + ((((size) % (align)) != 0) ? (align) : 0))

#define IFXCIF_CAM_MEM_ALIGN(size)    IFXCIF_CAM_ALIGN(size, IFXCIF_CAM_MEM_ALIGN_SIZE)

/** \addtogroup IfxLld_Cif_Cam_camEnumerations
 * \{ */

/******************************************************************************/
/*-----------------------Private Function Prototypes--------------------------*/
/******************************************************************************/

/**
 * \param cam cam handle
 */
IFX_STATIC IfxCif_Cam_Status IfxCif_Cam_initMemSize(IfxCif_Cam *cam, const IfxCif_Cam_Config *config);

/** \} */

/** \addtogroup IfxLld_Cif_Cam_camFunctions
 * \{ */
/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/**
 */
IFX_INLINE uint32 IfxCif_Cam_calcMem(uint32 bytes, float32 frames);

/**
 * \return None
 */
IFX_INLINE void IfxCif_Cam_initPictInfo(IfxCif_Cam_PictureInfo *m, const IfxCif_Cam_MemConfig *mcfg);

/** \brief initializes GPIO Ports for image capturing
 * \return None
 */
IFX_INLINE void IfxCif_Cam_initPortPins(IfxPort_InputMode inputMode, IfxPort_PadDriver padDriver);

/**
 */
IFX_INLINE boolean IfxCif_Cam_isEmulationExtensionAvailable(void);

/**
 * \param cam cam handle
 */
IFX_INLINE uint32 IfxCif_Cam_yuvMemSize(const IfxCif_Cam *cam);

/******************************************************************************/
/*-----------------------Private Function Prototypes--------------------------*/
/******************************************************************************/

/** \brief OVT OV10630 sensor Camera SensorcConfig subroutine , Config file is preloaded to pflash
 */
IFX_STATIC IfxCif_Cam_Status IfxCif_Cam_initCamera(const IfxCif_Cam_Config *config);

/** \brief Initialises the CIF for image capturing
 * \param cam cam handel
 * \return None
 */
IFX_STATIC void IfxCif_Cam_initCif(const IfxCif_Cam *cam, const IfxCif_Cam_Config *config);

/**
 * \return None
 */
IFX_STATIC void IfxCif_Cam_initCifDownscaler(const IfxCif_Cam_Downscaling *ds);

/**
 * \param cam cam handle
 * \return None
 */
IFX_STATIC void IfxCif_Cam_initCifExtraPath(const IfxCif_Cam *cam, IfxCif_ExtraPath ep, const IfxCif_Cam_Config *config);

/**
 * \return None
 */
IFX_STATIC void IfxCif_Cam_initCifIspUnit(const IfxCif_Cam_Config *config);

/**
 * \return None
 */
IFX_STATIC void IfxCif_Cam_initCifJpegEncoder(const IfxCif_Cam_Config *config);

/**
 * \param cam cam handle
 * \return None
 */
IFX_STATIC void IfxCif_Cam_initCifMemInterface(const IfxCif_Cam *cam, const IfxCif_Cam_Config *config);

/** \brief Enables CIF and EMEM and initialises all memory to 0
 * \return None
 */
IFX_STATIC void IfxCif_Cam_initEmem(void);

/** \} */

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE uint32 IfxCif_Cam_calcMem(uint32 bytes, float32 frames)
{
    float32 fbytes = (float32)bytes * frames;
    uint32  ubytes = (uint32)__roundf(fbytes);

    return Ifx_AlignOn32(ubytes);
}


IFX_INLINE void IfxCif_Cam_initPictInfo(IfxCif_Cam_PictureInfo *m, const IfxCif_Cam_MemConfig *mcfg)
{
    m->hSize   = mcfg->hSize;
    m->vSize   = mcfg->vSize;
    m->hOffset = mcfg->hOffset;
    m->vOffset = mcfg->vOffset;
}


IFX_INLINE void IfxCif_Cam_initPortPins(IfxPort_InputMode inputMode, IfxPort_PadDriver padDriver)
{
    /* Setup the P00.0..9, P02.0..8 pad drivers */
    IfxPort_setGroupPadDriver(&MODULE_P02, 0, 0x01FFU, padDriver);
    IfxPort_setGroupPadDriver(&MODULE_P00, 0, 0x03FFU, padDriver);

    /* CIF Data Lines */
    /* P02.0 .. 8 as input for CIFD0..D8 */
    /* P00.0 .. 6 as input for CIFD9..D15 */
    IfxPort_setGroupModeInput(&MODULE_P02, 0, 0x01FFU, inputMode);
    IfxPort_setGroupModeInput(&MODULE_P00, 0, 0x007FU, inputMode);

    /* CIF synchronisation lines */
    IfxPort_setPinModeInput(&MODULE_P00, 8, inputMode); /* CIFVSNC */
    IfxPort_setPinModeInput(&MODULE_P00, 9, inputMode); /* CIFHSNC */
    IfxPort_setPinModeInput(&MODULE_P00, 7, inputMode); /* CIFCLK */
}


IFX_INLINE boolean IfxCif_Cam_isEmulationExtensionAvailable(void)
{
    return (MODULE_SCU.CHIPID.B.EEA != 0) ? TRUE : FALSE;
}


IFX_INLINE uint32 IfxCif_Cam_yuvMemSize(const IfxCif_Cam *cam)
{
    return cam->memAreas.y.size + cam->memAreas.cb.size + cam->memAreas.cr.size;
}


/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxCif_Cam_clearAllFlags(const IfxCif_Cam *cam)
{
    (void)cam;
    MODULE_CIF.JPE.STATUS_ICR.U = 0xFFFFFFFFUL;
    MODULE_CIF.MI.ICR.U         = 0xFFFFFFFFUL;
    MODULE_CIF.ISP.ICR.U        = 0xFFFFFFFFUL;
}


void IfxCif_Cam_disableJpegEncoder(const IfxCif_Cam *cam)
{
    IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths_JpegData, IfxCif_State_Disabled);
    IfxCif_setDataPathSelectorForMainPath(IfxCif_DataPathSelectorForMainPath_DataToMemoryInterfaceUncompressed);

    if (cam->ispMode == IfxCif_Cam_IspMode_raw)
    {
        IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths_RawData, IfxCif_State_Enabled);
    }
    else
    {
        IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths_MainPictureData, IfxCif_State_Enabled);
    }
}


void IfxCif_Cam_enableJpegEncoder(const IfxCif_Cam *cam)
{
    IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths_RawData, IfxCif_State_Disabled);
    IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths_MainPictureData, IfxCif_State_Disabled);
    IfxCif_setDataPathSelectorForMainPath(IfxCif_DataPathSelectorForMainPath_DataToJpegEncoder);
    IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths_JpegData, IfxCif_State_Enabled);
}


IFX_CONST IfxCif_Cam_PictureInfo *IfxCif_Cam_getExtraPathPictureInfo(const IfxCif_Cam *cam, IfxCif_ExtraPath z)
{
    const IfxCif_Cam_PictureInfo *m = NULL_PTR;

    if (z <= IfxCif_ExtraPath_5)
    {
        m = &(cam->memAreas.ep[z].image);
    }

    return m;
}


boolean IfxCif_Cam_getLastJpegEncodingInfo(IfxCif_Cam *cam, Ifx_AddressValue *address, sint32 *size)
{
    boolean result = FALSE;

    if (IfxCif_Cam_isJpegEncodingComplete(cam))
    {
        /* event for sending JPEG encoded image */
        IfxCif_Cam_clearJpegEncodingCompleteFlag(cam);
        Ifx_AddressValue nextAddress = IfxCif_Cam_getNextJpegFrameAddress(cam);

        if (((IfxCif_Cam_JfifHeader *)nextAddress)->app0 == 0xE0FF)
        {
            /* correct JPEG header was detected. */
            *address = IfxCif_Cam_getLastFrameAddress(cam);
            *size    = IfxCif_Cam_getJpegEncodedSize(cam);
            result   = TRUE;
        }
        else
        {}
    }

    return result;
}


IfxCif_Cam_Status IfxCif_Cam_init(IfxCif_Cam *cam, const IfxCif_Cam_Config *config, boolean initCam)
{
    /* Try allocating image areas for EMEM */
    IfxCif_Cam_Status result = IfxCif_Cam_initMemSize(cam, config);

    /* Check if EMEM is available */
    if (IfxCif_Cam_isEmulationExtensionAvailable() == FALSE)
    {
        result = IfxCif_Cam_Status_notAvailable;
    }
    else
    {
        IfxCif_Cam_initEmem();
    }

    /* Initialse camera if needed */
    if ((result == IfxCif_Cam_Status_ok) && (initCam != FALSE))
    {
        result = IfxCif_Cam_initCamera(config);
    }

    /* Finally, initialise the CIF */
    if (result == IfxCif_Cam_Status_ok)
    {
        if (IfxCif_getModuleState() == IfxCif_State_Enabled)
        {
            IfxCif_setKernelResetRequestState(IfxCif_State_Enabled);
        }

        IfxCif_Cam_initPortPins(IfxPort_InputMode_noPullDevice, IfxPort_PadDriver_ttlSpeed1);
        IfxCif_Cam_initCif(cam, config);
    }

    cam->configResult = result;

    return result;
}


IFX_STATIC IfxCif_Cam_Status IfxCif_Cam_initCamera(const IfxCif_Cam_Config *config)
{
    IfxCif_Cam_Status result = IfxCif_Cam_Status_ok;
    IfxI2c_I2c        i2c;
    IfxI2c_I2c_Device i2cDev;

    {                           /* Initialise I2C module as master */
        IfxI2c_I2c_Config i2cConfig;
        IfxI2c_I2c_initConfig(&i2cConfig, &MODULE_I2C0);

        const IfxI2c_Pins pins = {
            &IfxI2c0_SCL_P15_4_INOUT,
            &IfxI2c0_SDA_P15_5_INOUT,
            IfxPort_PadDriver_ttlSpeed1
        };

        i2cConfig.pins     = &pins;
        i2cConfig.baudrate = 400000;       /* 400 kHz */
        IfxI2c_I2c_initModule(&i2c, &i2cConfig);

        IfxI2c_I2c_deviceConfig i2cDeviceConfig;
        IfxI2c_I2c_initDeviceConfig(&i2cDeviceConfig, &i2c); /* Device config for Bus of i2c handle */

        /* device address is obtained from the setup data table */
        i2cDeviceConfig.deviceAddress = (0xFFU & config->setupDataTable[0]);
        IfxI2c_I2c_initDevice(&i2cDev, &i2cDeviceConfig);
    }

    /* Send camera configuration array */
    {
        uint32 count;

        for (count = 0; count < config->setupDataCount && result == IfxCif_Cam_Status_ok; count++)
        {
            uint32 nakCnt = 0; /* counts the NAKs */

            while (IfxI2c_I2c_write(&i2cDev, ((uint8 *)&(config->setupDataTable[count])) + 1, 3) == IfxI2c_I2c_Status_nak)
            {
                nakCnt++;

                if (nakCnt >= IFXCIF_MAX_I2CNAK) /* ~400 - 500 us */
                {
                    result = IfxCif_Cam_Status_cameraCommError;
                    break;
                }
            }
        }
    }

    return result;
}


IFX_STATIC void IfxCif_Cam_initCif(const IfxCif_Cam *cam, const IfxCif_Cam_Config *config)
{
    const IfxCif_Cam_Common *common = config->common;

    IfxCif_setModuleStateRequest(IfxCif_State_Enabled);
    IfxCif_setSoftwareResetMode(IfxCif_Submodules_AllModules, IfxCif_State_Enabled);

    //IfxCif_setInternalClockMode(IfxCif_Submodules_Debug, IfxCif_State_Enabled);
    //IfxCif_setInternalClockMode(IfxCif_Submodules_SecurityWatchdog, IfxCif_State_Enabled);

    IfxCif_Cam_initCifDownscaler(config->downscaling);
    IfxCif_Cam_initCifExtraPath(cam, IfxCif_ExtraPath_1, config);
    IfxCif_Cam_initCifExtraPath(cam, IfxCif_ExtraPath_2, config);
    IfxCif_Cam_initCifExtraPath(cam, IfxCif_ExtraPath_3, config);
    IfxCif_Cam_initCifExtraPath(cam, IfxCif_ExtraPath_4, config);
    IfxCif_Cam_initCifExtraPath(cam, IfxCif_ExtraPath_5, config);

    IfxCif_Cam_initCifMemInterface(cam, config);
    IfxCif_Cam_initCifIspUnit(config);

    if (common->jpegEnabled)
    {
        IfxCif_Cam_enableJpegEncoder(cam);
    }
    else
    {
        IfxCif_Cam_disableJpegEncoder(cam);
    }

    if (common->jpegTables != NULL_PTR)
    {
        IfxCif_Cam_initCifJpegEncoder(config);
    }
}


IFX_STATIC void IfxCif_Cam_initCifDownscaler(const IfxCif_Cam_Downscaling *ds)
{
    if (ds != NULL_PTR)
    {
        IfxCif_setInternalClockMode(IfxCif_Submodules_LinearDownscaler,
            ds->enabled ? IfxCif_State_Enabled : IfxCif_State_Disabled);
        IfxCif_setLinearDownscalerScalingFactors(ds->hFactor, ds->vFactor);
        IfxCif_setLinearDownscalerScalingModes(ds->hMode, ds->vMode);
    }
}


IFX_STATIC void IfxCif_Cam_initCifExtraPath(const IfxCif_Cam *cam, IfxCif_ExtraPath ep, const IfxCif_Cam_Config *config)
{
    const IfxCif_Cam_Common    *common = config->common;
    const IfxCif_Cam_MemConfig *mcfg   = &(common->extraPaths[ep]);

    /* configuration of extra path is requested when each {hSize, vSize, memFactor} is positive. */

    if ((mcfg->hSize > 0) && (mcfg->vSize > 0) && (mcfg->memFactor > 0))
    {
        if ((mcfg->vSize + mcfg->vOffset) > common->ispIn.vSize)
        {
            /* invalid setting, the vSize and vOffset is outside the ISP acquisition */
            IFXCIF_DEBUG;
        }

        IfxCif_setInternalClockMode(IfxCif_Submodules_ExtraPaths, IfxCif_State_Enabled);
        IfxCif_setEpFeatureEnableState(ep, IfxCif_EpFeatures_PictureDataPath, IfxCif_State_Enabled);
        IfxCif_setEpFeatureEnableState(ep, IfxCif_EpFeatures_InitBaseAddress, IfxCif_State_Enabled);
        IfxCif_setEpFeatureEnableState(ep, IfxCif_EpFeatures_InitOffsetCounter, IfxCif_State_Enabled);

        if (config->ispMode == IfxCif_Cam_IspMode_raw)
        {
            IfxCif_setEpWriteFormat(ep, (config->ispRawBpp <= 8) ? IfxCif_EpWriteFormat_Raw8Bit : IfxCif_EpWriteFormat_RawGreater);
            IfxCif_setEpFeatureEnableState(ep, IfxCif_EpFeatures_ByteSwap, mcfg->byteSwap ? IfxCif_State_Enabled : IfxCif_State_Disabled);
        }
        else
        {
            IfxCif_setEpWriteFormat(ep, IfxCif_EpWriteFormat_YCbCr);
        }

        if ((mcfg->hSize + mcfg->hOffset) > common->ispIn.hSize)
        {
            /* invalid setting, the hSize and hOffset is outside the ISP acquisition */
            IFXCIF_DEBUG;
        }

        IfxCif_setEpCroppingEnableState(ep, IfxCif_State_Enabled);
        IfxCif_setEpCroppingPictureSizes(ep, mcfg->hSize, mcfg->vSize);
        IfxCif_setEpCroppingOffsetsOutputWindow(ep, mcfg->hOffset, mcfg->vOffset);
        IfxCif_setEpBaseInitAddress(ep, IfxCif_Cam_getBbbAddress(cam, cam->memAreas.ep[ep].start));
        IfxCif_setEpInitSize(ep, cam->memAreas.ep[ep].size);
        IfxCif_epForceConfigurationUpdate(ep);
    }
}


IFX_STATIC void IfxCif_Cam_initCifIspUnit(const IfxCif_Cam_Config *config)
{
    const IfxCif_Cam_Common *common = config->common;

    IfxCif_setInternalClockMode(IfxCif_Submodules_ImageSignalProcessing, IfxCif_State_Enabled);

    IfxCif_setYCSplitterChannelMode(IfxCif_YCSplitterChannelMode_MainPathAndRawMode);
    IfxCif_setNumberOfAcquisitionFrames(1);

    if (config->ispRawBpp == 8)
    {
        IfxCif_setIspInputSelectionAppendState(IfxCif_State_Enabled);
        IfxCif_setIspInputInterface(IfxCif_IspInputInterface_8BitExternalInterfaceAppendMsb);
    }
    else if (config->ispRawBpp == 10)
    {
        IfxCif_setIspInputSelectionAppendState(IfxCif_State_Enabled);
        IfxCif_setIspInputInterface(IfxCif_IspInputInterface_10BitExternalInterfaceAppendMsb);
    }
    else if (config->ispRawBpp == 12)
    {
        IfxCif_setIspInputSelectionAppendState(IfxCif_State_Enabled);
        IfxCif_setIspInputInterface(IfxCif_IspInputInterface_12BitExternalInterfaceAppendMsb);
    }
    else if (config->ispRawBpp == 14)
    {
        IfxCif_setIspInputSelectionAppendState(IfxCif_State_Enabled);
        IfxCif_setIspInputInterface(IfxCif_IspInputInterface_14BitExternalInterfaceAppendMsb);
    }
    else if (config->ispRawBpp == 16)
    {
        IfxCif_setIspInputSelectionAppendState(IfxCif_State_Disabled);
        IfxCif_setIspInputInterface(IfxCif_IspInputInterface_16BitExternalInterface);
    }
    else
    {
        IFXCIF_DEBUG;
    }

    IfxCif_setIspHSyncPolarity(config->hSyncPolarity);
    IfxCif_setIspVSyncPolarity(config->vSyncPolarity);
    IfxCif_setIspSamplingEdge(config->samplingEdge);

    if (config->ispMode == IfxCif_Cam_IspMode_raw)
    {
        IfxCif_setIspMode(IfxCif_IspMode_RawPicture);
        IfxCif_setIspFieldInvertState(IfxCif_State_Disabled);
        IfxCif_setIspAcquisitionSizes(common->ispIn.hSize, common->ispIn.vSize);

        /* the followings are ignored, but set to default */
        IfxCif_setIspCcirSequence(IfxCif_IspCcirSequence_YCbYCr);
        IfxCif_setIspColorSpaceMatrixCrominanceClippingRange(IfxCif_IspColorSpaceMatrixCrominanceClippingRange_0To255);
        IfxCif_setIspColorSpaceMatrixLuminanceClippingRange(IfxCif_IspColorSpaceMatrixLuminanceClippingRange_0To255);
    }
    else if ((config->ispMode == IfxCif_Cam_IspMode_yuvInterleaved)
             || (config->ispMode == IfxCif_Cam_IspMode_yuvPlanar))
    {
        IfxCif_setIspMode(IfxCif_IspMode_ItuRBT601);
        IfxCif_setIspFieldInvertState(IfxCif_State_Enabled);
        IfxCif_setIspAcquisitionSizes(common->ispIn.hSize * 2, common->ispIn.vSize);

        IfxCif_setIspCcirSequence(IfxCif_IspCcirSequence_YCbYCr);
        IfxCif_setIspColorSpaceMatrixCrominanceClippingRange(IfxCif_IspColorSpaceMatrixCrominanceClippingRange_0To255);
        IfxCif_setIspColorSpaceMatrixLuminanceClippingRange(IfxCif_IspColorSpaceMatrixLuminanceClippingRange_0To255);
    }
    else
    {
        /* undefined */
        IFXCIF_DEBUG;
    }

    IfxCif_setIspAcquisitionOffsets(common->ispIn.hOffset, common->ispIn.vOffset);
    IfxCif_setIspPictureSizes(common->ispIn.hSize, common->ispIn.vSize);
    IfxCif_setIspOutputWindowOffsets(common->ispIn.hOffset, common->ispIn.vOffset);

    IfxCif_setIspisEnableState(IfxCif_State_Enabled);
    IfxCif_setIspisPictureSizes(common->mainPath.hSize, common->mainPath.vSize);
    IfxCif_setIspisOutputWindowOffsets(common->mainPath.hOffset, common->mainPath.vOffset);

    IfxCif_generateIspImmediateConfigUpdateSignal();

    IfxCif_setIspInterruptEnableState(IfxCif_IspInterruptSources_FrameCompletelyPutOut, IfxCif_State_Enabled);
    //IfxCif_setIspInterruptEnableState(IfxCif_IspInterruptSources_IspTurnedOff, IfxCif_State_Enabled);

    if (common->ispInterrupt.priority > 0)
    {
        volatile Ifx_SRC_SRCR *srcr = &SRC_CIFISP;
        IfxSrc_init(srcr, common->ispInterrupt.provider, common->ispInterrupt.priority);
        IfxSrc_enable(srcr);
    }
}


IFX_STATIC void IfxCif_Cam_initCifJpegEncoder(const IfxCif_Cam_Config *config)
{
    const IfxCif_Cam_JpegTables *jpeTables = config->common->jpegTables;

    IfxCif_setInternalClockMode(IfxCif_Submodules_JpegEncoder, IfxCif_State_Enabled);

    /* Select encoding table */
    IfxCif_setJpeQTableSelector(IfxCif_JpeQTableSelectorComponents_Y, IfxCif_JpeQTableSelector_Table0);
    IfxCif_setJpeQTableSelector(IfxCif_JpeQTableSelectorComponents_U, IfxCif_JpeQTableSelector_Table1);
    IfxCif_setJpeQTableSelector(IfxCif_JpeQTableSelectorComponents_V, IfxCif_JpeQTableSelector_Table1);

    /* Programming encoding table */
    IfxCif_programJpeTable(IfxCif_JpeTableId_QTable0, jpeTables->y.q.entry, jpeTables->y.q.length);
    IfxCif_programJpeTable(IfxCif_JpeTableId_QTable1, jpeTables->uv.q.entry, jpeTables->uv.q.length);
    IfxCif_programJpeTable(IfxCif_JpeTableId_VlcDcTable0, jpeTables->y.dc.entry, jpeTables->y.dc.length);
    IfxCif_programJpeTable(IfxCif_JpeTableId_VlcDcTable1, jpeTables->uv.dc.entry, jpeTables->uv.dc.length);
    IfxCif_programJpeTable(IfxCif_JpeTableId_VlcAcTable0, jpeTables->y.ac.entry, jpeTables->y.ac.length);
    IfxCif_programJpeTable(IfxCif_JpeTableId_VlcAcTable1, jpeTables->uv.ac.entry, jpeTables->uv.ac.length);

    /* JPEG Codec Image Size */
    const IfxCif_Cam_MemConfig *mcfg = &(config->common->mainPath);

    if (config->ispMode == IfxCif_Cam_IspMode_raw)
    {
        IfxCif_setJpegCodecImageSizes(mcfg->hSize, mcfg->vSize);
    }
    else if (config->ispMode == IfxCif_Cam_IspMode_yuvInterleaved)
    {
        IfxCif_setJpegCodecImageSizes(mcfg->hSize, mcfg->vSize);
    }
    else
    {
        IFXCIF_DEBUG;
    }

    /* JPE Header Mode Definition Register */
    IfxCif_setJpeHeaderMode(IfxCif_JpeHeaderMode_JfifHeader);

    /* JPE Status Interrupt Mask Register */
    IfxCif_setJpeInterruptEnableState(IfxCif_JpeInterruptSources_EncodingComplete, IfxCif_State_Enabled);
    //IfxCif_setJpeInterruptEnableState(IfxCif_JpeInterruptSources_HeaderGenerationComplete, IfxCif_State_Enabled);

    /* JPE Command To Start Stream Header Generation Register */
    IfxCif_jpeGenerateHeader();

    /* JPE Start Command To Start JFIF Stream Encoding Register */
    IfxCif_startJpegJfifStreamEncoder();
    IfxCif_setJpegJfifStreamEncoderContinuousMode
        (IfxCif_JpegJfifStreamEncoderContinuousMode_GenerateHeaderAndStartAutomatically);

    /* JPE Automatic Configuration Update Register */
    IfxCif_initJpegEncoder();
}


IFX_STATIC void IfxCif_Cam_initCifMemInterface(const IfxCif_Cam *cam, const IfxCif_Cam_Config *config)
{
    IfxCif_setInternalClockMode(IfxCif_Submodules_MemoryInterface, IfxCif_State_Enabled);

    if (config->ispMode == IfxCif_Cam_IspMode_raw)
    {
        IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths_RawData, IfxCif_State_Enabled);
        IfxCif_setMiLuminanceBurstLength(IfxCif_MiBurstLength_8BeatBursts);

        if (config->ispRawBpp > 8)
        {
            IfxCif_setMiMainPictureWriteFormat(IfxCif_MiMainPictureWriteFormat_InterleavedOrDataGreater8Bit);
        }
        else
        {
            IfxCif_setMiMainPictureWriteFormat(IfxCif_MiMainPictureWriteFormat_PlanarOrData8Bit);
        }
    }
    else if (config->ispMode == IfxCif_Cam_IspMode_yuvInterleaved)
    {
        IfxCif_setMiFeatureEnableState(IfxCif_MiDataPaths_MainPictureData, IfxCif_State_Enabled);
        IfxCif_setMiLuminanceBurstLength(IfxCif_MiBurstLength_8BeatBursts);
        IfxCif_setMiMainPictureWriteFormat(IfxCif_MiMainPictureWriteFormat_InterleavedOrDataGreater8Bit);   /* interleaved mode */
    }
    else
    {
        IFXCIF_DEBUG;
    }

    IfxCif_setMiBaseAddressInitializationEnableState(IfxCif_State_Enabled);
    IfxCif_setMiMainPictureComponentBaseInitAddress(IfxCif_MiMainPicturePathComponents_Y, IfxCif_Cam_getBbbAddress(cam, cam->memAreas.y.start));
    IfxCif_setMiMainPictureComponentInitSize(IfxCif_MiMainPicturePathComponents_Y, cam->memAreas.y.size);
    IfxCif_generateMiImmediateConfigUpdateSignal();

    IfxCif_setMiInterruptEnableState(IfxCif_MiInterruptSources_MainPictureFrameEnd, IfxCif_State_Enabled);
    //IfxCif_setMiInterruptEnableState(IfxCif_MiInterruptSources_FillMainPictureY, IfxCif_State_Enabled);
}


IFX_STATIC void IfxCif_Cam_initEmem(void)
{
    IfxEmem_setClockEnableState(IfxEmem_State_enabled);
    __nop();

    if (IfxEmem_LockedState_locked == IfxEmem_getLockedState())
    {
        /* apply unlock sequence */
        IfxEmem_setUnlockStandbyLockFlag(0x1);
        IfxEmem_setUnlockStandbyLockFlag(0x3);
        IfxEmem_setUnlockStandbyLockFlag(0x7);
        /* wait one cycle for unlock */
        __nop();
    }

    IfxEmem_setTileConfigMode(IfxEmem_TileConfigMode_calibMode, IfxEmem_TileNumber_0);

#if IFXCIF_CAM_INITIALIZE_EMEM
    {
        uint64 *pmem;
        uint32  i;

        /* initialize the whole EMEM with 0 */
        pmem = (uint64 *)IFXEMEM_START_ADDR_CPU;

        for (i = 0; (uint64)i < (IFXEMEM_SIZE / 8); i += 1)
        {
            *(pmem++) = 0;
        }
    }
#endif
}


IFX_STATIC IfxCif_Cam_Status IfxCif_Cam_initMemSize(IfxCif_Cam *cam, const IfxCif_Cam_Config *config)
{
    IfxCif_Cam_Status           result = IfxCif_Cam_Status_ok;
    IfxCif_Cam_MemAreas        *m      = &cam->memAreas;
    const IfxCif_Cam_Common    *common = config->common;
    const IfxCif_Cam_MemConfig *mcfg   = &(common->mainPath);

    cam->nextFreeAddress = 0x00000000;
    cam->availMemSize    = 0x00100000;
    cam->cif             = &MODULE_CIF;
    cam->emem            = &MODULE_EMEM;
    cam->configResult    = 0;
    cam->totalMemSize    = 0;
    cam->ispMode         = config->ispMode;
    cam->jfif            = NULL_PTR;

    memset(m, 0, sizeof(IfxCif_Cam_MemAreas));

    uint32 numPixels = mcfg->hSize * mcfg->vSize;

    /* Calculate MainPath memory usage information ------------------------------------ */
    if (config->ispMode == IfxCif_Cam_IspMode_raw)
    {
        cam->ispBpp = (config->ispRawBpp > 8) ? 2 : 1;
        m->y.size   = IfxCif_Cam_calcMem(numPixels * cam->ispBpp, mcfg->memFactor) + IFXCIF_CAM_MEM_GAPSIZE;
        IfxCif_Cam_initPictInfo(&m->y.image, mcfg);
        m->cb.size  = 0 + IFXCIF_CAM_MEM_GAPSIZE;
        m->cr.size  = 0 + IFXCIF_CAM_MEM_GAPSIZE;
    }
    else if (config->ispMode == IfxCif_Cam_IspMode_yuvInterleaved)
    {
        cam->ispBpp = 2;
        m->y.size   = IfxCif_Cam_calcMem(numPixels * cam->ispBpp, mcfg->memFactor) + IFXCIF_CAM_MEM_GAPSIZE;
        IfxCif_Cam_initPictInfo(&m->y.image, mcfg);
        m->cb.size  = 0;
        m->cr.size  = m->cb.size;
    }
    else if (config->ispMode == IfxCif_Cam_IspMode_yuvPlanar)
    {
        IFXCIF_DEBUG; /* not tested! */
        cam->ispBpp = 2;
        m->y.size   = IfxCif_Cam_calcMem(numPixels, mcfg->memFactor) + IFXCIF_CAM_MEM_GAPSIZE;
        IfxCif_Cam_initPictInfo(&m->y.image, mcfg);
        m->cb.size  = m->y.size / 2;
        m->cr.size  = m->cb.size;
    }

    m->y.start = (Ifx_AddressValue)IFXEMEM_START_ADDR_CPU_CACHED;

    if (common->jpegEnabled != 0)
    {
        cam->memAreas.y.size = Ifx_AlignOn32(cam->memAreas.y.size / 8);
    }

    m->cb.start       = (Ifx_AddressValue)((uint32)m->y.start + m->y.size);
    m->cr.start       = (Ifx_AddressValue)((uint32)m->cb.start + m->cb.size);

    cam->totalMemSize = IFXCIF_CAM_MEM_ALIGN(IfxCif_Cam_yuvMemSize(cam));

    IfxCif_ExtraPath    z         = IfxCif_ExtraPath_1;
    Ifx_AddressValue    nextStart = (Ifx_AddressValue)(IFXEMEM_START_ADDR_CPU_CACHED + cam->totalMemSize);

    /* Calculate ExtraPath 1 memory usage information --------------------------------- */
    IfxCif_Cam_MemInfo *mep = &(m->ep[z]);
    mcfg       = &common->extraPaths[z];
    mep->start = nextStart;
    mep->size  = IfxCif_Cam_calcMem(cam->ispBpp * (mcfg->vSize * mcfg->hSize), mcfg->memFactor);
    IfxCif_Cam_initPictInfo(&mep->image, mcfg);

    if (config->downscaling != NULL_PTR)
    {
        const IfxCif_Cam_Downscaling *downscaling = config->downscaling;

        if (downscaling->enabled)
        {
            /* NOTE: preliminary version (using 2x or 4x downscaling only) */
            /* It should be possible to compute the size from the given parameters */
            if ((downscaling->sizeFactor != 4) && (downscaling->sizeFactor != 2))
            {
                IFXCIF_DEBUG;
            }

            mep->size /= (downscaling->sizeFactor * downscaling->sizeFactor);

            if (downscaling->hMode != IfxCif_LinearDownscalerScalingMode_Disabled)
            {
                mep->image.hSize /= downscaling->sizeFactor;
            }

            if (downscaling->vMode != IfxCif_LinearDownscalerScalingMode_Disabled)
            {
                mep->image.vSize /= downscaling->sizeFactor;
            }
        }
    }

    cam->totalMemSize = cam->totalMemSize + IFXCIF_CAM_MEM_ALIGN(mep->size);
    nextStart         = (Ifx_AddressValue)(IFXEMEM_START_ADDR_CPU_CACHED + cam->totalMemSize);

    /* Calculate ExtraPath 2..5 memory usage information ------------------------------ */
    for (z = IfxCif_ExtraPath_2; z <= IfxCif_ExtraPath_5; z++)
    {
        mep               = &(m->ep[z]);
        mcfg              = &common->extraPaths[z];
        mep->start        = nextStart;
        mep->size         = IfxCif_Cam_calcMem(cam->ispBpp * (mcfg->vSize * mcfg->hSize), mcfg->memFactor);
        IfxCif_Cam_initPictInfo(&mep->image, mcfg);
        cam->totalMemSize = cam->totalMemSize + IFXCIF_CAM_MEM_ALIGN(mep->size);
        nextStart         = (Ifx_AddressValue)(IFXEMEM_START_ADDR_CPU_CACHED + cam->totalMemSize);
    }

    /* Total memory usage ------------------------------------------------------------- */
    if (cam->totalMemSize <= cam->availMemSize)
    {
        /* if enough memory available..... */
        cam->availMemSize -= cam->totalMemSize;

        if (cam->nextFreeAddress == 0)
        {
            cam->nextFreeAddress = (Ifx_AddressValue)IFXEMEM_START_ADDR_CPU_CACHED;
        }

        cam->nextFreeAddress = (Ifx_AddressValue)((uint32)cam->nextFreeAddress + cam->totalMemSize);
    }
    else
    {
        IFXCIF_DEBUG;
        result = IfxCif_Cam_Status_notEnoughMemory;
    }

    return result;
}


void IfxCif_Cam_restartCapture(const IfxCif_Cam *cam, uint8 frames)
{
    (void)cam;
    IfxCif_setNumberOfAcquisitionFrames(frames);
    IfxCif_setIspOutputState(IfxCif_State_Enabled);
    IfxCif_generateIspFrameSynchronousConfigUpdateSignal();
}


void IfxCif_Cam_startCapture(const IfxCif_Cam *cam, uint8 frames)
{
    (void)cam;
    IfxCif_setMiOffsetCounterInitializationEnableState(IfxCif_State_Enabled);
    IfxCif_generateMiImmediateConfigUpdateSignal();
    IfxCif_setNumberOfAcquisitionFrames(frames);
    IfxCif_setIspInputFormatterState(IfxCif_State_Enabled);
    IfxCif_setIspOutputState(IfxCif_State_Enabled);
    IfxCif_generateIspImmediateConfigUpdateSignal();
}


void IfxCif_Cam_stopCapture(const IfxCif_Cam *cam)
{
    (void)cam;
    IfxCif_setIspOutputState(IfxCif_State_Disabled);
    IfxCif_generateIspImmediateConfigUpdateSignal();
}
