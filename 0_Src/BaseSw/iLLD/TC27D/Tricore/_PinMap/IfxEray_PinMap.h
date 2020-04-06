/**
 * \file IfxEray_PinMap.h
 * \brief ERAY I/O map
 * \ingroup IfxLld_Eray
 *
 * \version iLLD_1_0_1_8_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
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
 * \defgroup IfxLld_Eray_pinmap ERAY Pin Mapping
 * \ingroup IfxLld_Eray
 */

#ifndef IFXERAY_PINMAP_H
#define IFXERAY_PINMAP_H

#include <IfxEray_reg.h>
#include <_Impl/IfxEray_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Eray_pinmap
 * \{ */

/** \brief RXD pin mapping structure */
typedef const struct
{
    Ifx_ERAY*         module;   /**< \brief Base address */
    IfxEray_NodeId    nodeId;   /**< \brief Node ID */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEray_Rxd_In;

/** \brief TXD pin mapping structure */
typedef const struct
{
    Ifx_ERAY*         module;   /**< \brief Base address */
    IfxEray_NodeId    nodeId;   /**< \brief Node ID */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxEray_Txd_Out;

/** \brief TXEN pin mapping structure */
typedef const struct
{
    Ifx_ERAY*         module;   /**< \brief Base address */
    IfxEray_NodeId    nodeId;   /**< \brief Node ID */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxEray_Txen_Out;

IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDA0_P14_8_IN;  /**< \brief ERAY_RXDA0: ERAY input */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDA1_P11_9_IN;  /**< \brief ERAY_RXDA1: ERAY input */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDA2_P02_1_IN;  /**< \brief ERAY_RXDA2: ERAY input */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDA3_P14_1_IN;  /**< \brief ERAY_RXDA3: ERAY input */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDB0_P14_7_IN;  /**< \brief ERAY_RXDB0: ERAY input */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDB1_P11_10_IN;  /**< \brief ERAY_RXDB1: ERAY input */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDB2_P02_3_IN;  /**< \brief ERAY_RXDB2: ERAY input */
IFX_EXTERN IfxEray_Rxd_In IfxEray0_RXDB3_P14_1_IN;  /**< \brief ERAY_RXDB3: ERAY input */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDA_P02_0_OUT;  /**< \brief ERAY_TXDA: ERAY output */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDA_P11_3_OUT;  /**< \brief ERAY_TXDA: ERAY output */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDA_P14_0_OUT;  /**< \brief ERAY_TXDA: ERAY output */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDA_P14_10_OUT;  /**< \brief ERAY_TXDA: ERAY output */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDB_P02_2_OUT;  /**< \brief ERAY_TXDB: ERAY output */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDB_P11_12_OUT;  /**< \brief ERAY_TXDB: ERAY output */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDB_P14_0_OUT;  /**< \brief ERAY_TXDB: ERAY output */
IFX_EXTERN IfxEray_Txd_Out IfxEray0_TXDB_P14_5_OUT;  /**< \brief ERAY_TXDB: ERAY output */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENA_P02_4_OUT;  /**< \brief ERAY_TXENA: ERAY output */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENA_P11_6_OUT;  /**< \brief ERAY_TXENA: ERAY output */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENA_P14_9_OUT;  /**< \brief ERAY_TXENA: ERAY output */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P02_5_OUT;  /**< \brief ERAY_TXENB: ERAY output */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P11_11_OUT;  /**< \brief ERAY_TXENB: ERAY output */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P11_6_OUT;  /**< \brief ERAY_TXENB: ERAY output */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P14_6_OUT;  /**< \brief ERAY_TXENB: ERAY output */
IFX_EXTERN IfxEray_Txen_Out IfxEray0_TXENB_P14_9_OUT;  /**< \brief ERAY_TXENB: ERAY output */

/** \brief Table dimensions */
#define IFXERAY_PINMAP_NUM_MODULES 1
#define IFXERAY_PINMAP_NUM_NODES 2
#define IFXERAY_PINMAP_RXD_IN_NUM_ITEMS 4
#define IFXERAY_PINMAP_TXD_OUT_NUM_ITEMS 4
#define IFXERAY_PINMAP_TXEN_OUT_NUM_ITEMS 5


/** \brief IfxEray_Rxd_In table */
IFX_EXTERN const IfxEray_Rxd_In *IfxEray_Rxd_In_pinTable[IFXERAY_PINMAP_NUM_MODULES][IFXERAY_PINMAP_NUM_NODES][IFXERAY_PINMAP_RXD_IN_NUM_ITEMS];

/** \brief IfxEray_Txd_Out table */
IFX_EXTERN const IfxEray_Txd_Out *IfxEray_Txd_Out_pinTable[IFXERAY_PINMAP_NUM_MODULES][IFXERAY_PINMAP_NUM_NODES][IFXERAY_PINMAP_TXD_OUT_NUM_ITEMS];

/** \brief IfxEray_Txen_Out table */
IFX_EXTERN const IfxEray_Txen_Out *IfxEray_Txen_Out_pinTable[IFXERAY_PINMAP_NUM_MODULES][IFXERAY_PINMAP_NUM_NODES][IFXERAY_PINMAP_TXEN_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXERAY_PINMAP_H */
