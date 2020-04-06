	.file	"IfxEth_Phy_Pef7071.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxEth_Phy_Pef7071_init,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_init
	.type	IfxEth_Phy_Pef7071_init, @function
IfxEth_Phy_Pef7071_init:
.LFB286:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
	.loc 1 112 0
	.loc 1 113 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8176
.L2:
	.loc 1 113 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L2
.LVL0:
.LBB17:
.LBB18:
	.loc 1 179 0 is_stmt 1
	movh.a	%a15, 61442
	mov.u	%d15, 32768
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	movh.a	%a15, 61442
	mov	%d15, 3
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L3:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L3
.LBE18:
.LBE17:
.LBB19:
.LBB20:
	.loc 1 167 0
	movh.a	%a15, 61442
	.loc 1 172 0
	movh.a	%a2, 61442
	.loc 1 167 0
	lea	%a15, [%a15] -8176
	mov	%d2, 1
	.loc 1 172 0
	lea	%a2, [%a2] -8172
.L5:
.LVL1:
	.loc 1 167 0 discriminator 1
	st.w	[%a15]0, %d2
.L4:
	.loc 1 169 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L4
	.loc 1 172 0
	ld.w	%d15, [%a2]0
.LVL2:
.LBE20:
.LBE19:
	.loc 1 130 0
	jnz.t	%d15, 15, .L5
.LVL3:
.LBB21:
.LBB22:
	.loc 1 179 0
	movh.a	%a15, 61442
	mov.u	%d15, 63234
.LVL4:
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	movh.a	%a15, 61442
	mov	%d15, 1475
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L6:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 1
	jnz	%d15, .L6
.LVL5:
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 1 179 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	movh.a	%a15, 61442
	mov	%d15, 579
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L7:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L7
.LVL6:
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	.loc 1 179 0
	movh.a	%a15, 61442
	mov	%d15, 257
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	movh.a	%a15, 61442
	mov	%d15, 259
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L8:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L8
.LVL7:
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	.loc 1 179 0
	movh.a	%a15, 61442
	mov	%d15, 4608
	lea	%a15, [%a15] -8172
	st.w	[%a15]0, %d15
	.loc 1 182 0
	movh.a	%a15, 61442
	mov	%d15, 3
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L9:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L9
.LBE28:
.LBE27:
	.loc 1 143 0
	mov	%d15, 1
	movh.a	%a15, hi:IfxEth_Phy_Pef7071_iPhyInitDone
	st.w	[%a15] lo:IfxEth_Phy_Pef7071_iPhyInitDone, %d15
	.loc 1 146 0
	mov	%d2, 1
	ret
.LFE286:
	.size	IfxEth_Phy_Pef7071_init, .-IfxEth_Phy_Pef7071_init
.section .text.IfxEth_Phy_Pef7071_link,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_link
	.type	IfxEth_Phy_Pef7071_link, @function
IfxEth_Phy_Pef7071_link:
.LFB287:
	.loc 1 150 0
.LVL8:
	.loc 1 153 0
	movh.a	%a15, hi:IfxEth_Phy_Pef7071_iPhyInitDone
	ld.w	%d15, [%a15] lo:IfxEth_Phy_Pef7071_iPhyInitDone
	.loc 1 151 0
	mov	%d2, 0
	.loc 1 153 0
	jz	%d15, .L20
.LVL9:
.LBB29:
.LBB30:
.LBB31:
	.loc 1 167 0
	movh.a	%a15, 61442
	mov	%d15, 65
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d15
.L21:
	.loc 1 169 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L21
	.loc 1 172 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	ld.w	%d2, [%a15]0
.LVL10:
.LBE31:
.LBE30:
	.loc 1 157 0
	extr.u	%d2, %d2, 2, 1
.LVL11:
.L20:
.LBE29:
	.loc 1 161 0
	ret
.LFE287:
	.size	IfxEth_Phy_Pef7071_link, .-IfxEth_Phy_Pef7071_link
.section .text.IfxEth_Phy_Pef7071_read_mdio_reg,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_read_mdio_reg
	.type	IfxEth_Phy_Pef7071_read_mdio_reg, @function
IfxEth_Phy_Pef7071_read_mdio_reg:
.LFB288:
	.loc 1 165 0
.LVL12:
	.loc 1 167 0
	sh	%d5, 6
.LVL13:
	or	%d5, %d5, 1
	sh	%d4, %d4, 11
.LVL14:
	movh.a	%a15, 61442
	or	%d4, %d5
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L26:
	.loc 1 169 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L26
	.loc 1 172 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	ret
.LFE288:
	.size	IfxEth_Phy_Pef7071_read_mdio_reg, .-IfxEth_Phy_Pef7071_read_mdio_reg
.section .text.IfxEth_Phy_Pef7071_write_mdio_reg,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_write_mdio_reg
	.type	IfxEth_Phy_Pef7071_write_mdio_reg, @function
IfxEth_Phy_Pef7071_write_mdio_reg:
.LFB289:
	.loc 1 177 0
.LVL15:
	.loc 1 179 0
	movh.a	%a15, 61442
	lea	%a15, [%a15] -8172
	.loc 1 182 0
	sh	%d5, 6
.LVL16:
	.loc 1 179 0
	st.w	[%a15]0, %d6
	or	%d5, %d5, 3
	.loc 1 182 0
	sh	%d4, %d4, 11
.LVL17:
	movh.a	%a15, 61442
	or	%d4, %d5
	lea	%a15, [%a15] -8176
	st.w	[%a15]0, %d4
.L29:
	.loc 1 184 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L29
	.loc 1 185 0
	ret
.LFE289:
	.size	IfxEth_Phy_Pef7071_write_mdio_reg, .-IfxEth_Phy_Pef7071_write_mdio_reg
	.global	IfxEth_Phy_Pef7071_iPhyInitDone
.section .bss.IfxEth_Phy_Pef7071_iPhyInitDone,"aw",@nobits
	.align 2
	.type	IfxEth_Phy_Pef7071_iPhyInitDone, @object
	.size	IfxEth_Phy_Pef7071_iPhyInitDone, 4
IfxEth_Phy_Pef7071_iPhyInitDone:
	.zero	4
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxEth_regdef.h"
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7e8
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
	.string	"C:\\\\Users\\\\user\\\\Desktop\\\\programming_PROJECTS\\\\\307\321\276\347\264\353_\300\323\272\243\265\360\265\345\275\303\275\272\305\333\\\\DevBaseEnv_vscode_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1b9
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1f0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29b
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x7d
	.uaword	0x2c2
	.uleb128 0x7
	.string	"module"
	.byte	0x3
	.byte	0x7f
	.uaword	0x295
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x3
	.byte	0x80
	.uaword	0x224
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x81
	.uaword	0x29c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x8
	.string	"_Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xb8
	.uaword	0x365
	.uleb128 0x9
	.string	"GB"
	.byte	0x4
	.byte	0xba
	.uaword	0x2dc
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"GW"
	.byte	0x4
	.byte	0xbb
	.uaword	0x2dc
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"CR"
	.byte	0x4
	.byte	0xbc
	.uaword	0x2dc
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"GR"
	.byte	0x4
	.byte	0xbd
	.uaword	0x2dc
	.byte	0x4
	.byte	0x5
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PA"
	.byte	0x4
	.byte	0xbe
	.uaword	0x2dc
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0xbf
	.uaword	0x2dc
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x4
	.byte	0xc0
	.uaword	0x2ec
	.uleb128 0x8
	.string	"_Ifx_ETH_GMII_DATA_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xc3
	.uaword	0x3c4
	.uleb128 0x9
	.string	"GD"
	.byte	0x4
	.byte	0xc5
	.uaword	0x2dc
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x4
	.byte	0xc6
	.uaword	0x2dc
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_DATA_Bits"
	.byte	0x4
	.byte	0xc7
	.uaword	0x386
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x5cf
	.uaword	0x40a
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x5d1
	.uaword	0x2dc
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x5d2
	.uaword	0x1da
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x5d3
	.uaword	0x365
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ETH_GMII_ADDRESS"
	.byte	0x4
	.uahalf	0x5d4
	.uaword	0x3e2
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x5d7
	.uaword	0x44f
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x5d9
	.uaword	0x2dc
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x5da
	.uaword	0x1da
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x5db
	.uaword	0x3c4
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ETH_GMII_DATA"
	.byte	0x4
	.uahalf	0x5dc
	.uaword	0x427
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.byte	0x76
	.uaword	0x4c5
	.uleb128 0xf
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xf
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xf
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xf
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_read_mdio_reg"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.byte	0x1
	.uaword	0x518
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa4
	.uaword	0x232
	.uleb128 0x12
	.string	"regaddr"
	.byte	0x1
	.byte	0xa4
	.uaword	0x232
	.uleb128 0x12
	.string	"pdata"
	.byte	0x1
	.byte	0xa4
	.uaword	0x518
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x232
	.uleb128 0x10
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_write_mdio_reg"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.byte	0x1
	.uaword	0x571
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb0
	.uaword	0x232
	.uleb128 0x12
	.string	"regaddr"
	.byte	0x1
	.byte	0xb0
	.uaword	0x232
	.uleb128 0x12
	.string	"data"
	.byte	0x1
	.byte	0xb0
	.uaword	0x232
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_init"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB286
	.uaword	.LFE286
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69d
	.uleb128 0x14
	.string	"value"
	.byte	0x1
	.byte	0x7d
	.uaword	0x232
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	0x51e
	.uaword	.LBB17
	.uaword	.LBE17
	.byte	0x1
	.byte	0x7c
	.uaword	0x5d9
	.uleb128 0x16
	.uaword	0x564
	.uahalf	0x8000
	.uleb128 0x17
	.uaword	0x555
	.byte	0
	.uleb128 0x17
	.uaword	0x54a
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x4c5
	.uaword	.LBB19
	.uaword	.LBE19
	.byte	0x1
	.byte	0x81
	.uaword	0x605
	.uleb128 0x18
	.uaword	0x50a
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1441
	.sleb128 0
	.uleb128 0x17
	.uaword	0x4fb
	.byte	0
	.uleb128 0x17
	.uaword	0x4f0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x51e
	.uaword	.LBB21
	.uaword	.LBE21
	.byte	0x1
	.byte	0x85
	.uaword	0x62c
	.uleb128 0x16
	.uaword	0x564
	.uahalf	0xf702
	.uleb128 0x17
	.uaword	0x555
	.byte	0x17
	.uleb128 0x17
	.uaword	0x54a
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x51e
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x86
	.uaword	0x652
	.uleb128 0x17
	.uaword	0x564
	.byte	0
	.uleb128 0x17
	.uaword	0x555
	.byte	0x9
	.uleb128 0x17
	.uaword	0x54a
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x51e
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.byte	0x87
	.uaword	0x679
	.uleb128 0x16
	.uaword	0x564
	.uahalf	0x101
	.uleb128 0x17
	.uaword	0x555
	.byte	0x4
	.uleb128 0x17
	.uaword	0x54a
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x51e
	.uaword	.LBB27
	.uaword	.LBE27
	.byte	0x1
	.byte	0x88
	.uleb128 0x16
	.uaword	0x564
	.uahalf	0x1200
	.uleb128 0x17
	.uaword	0x555
	.byte	0
	.uleb128 0x17
	.uaword	0x54a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_link"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	0x253
	.uaword	.LFB287
	.uaword	.LFE287
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x72f
	.uleb128 0x14
	.string	"linkEstablished"
	.byte	0x1
	.byte	0x97
	.uaword	0x253
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x14
	.string	"value"
	.byte	0x1
	.byte	0x9b
	.uaword	0x232
	.uaword	.LLST2
	.uleb128 0x19
	.uaword	0x4c5
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0x9c
	.uleb128 0x1b
	.uaword	0x50a
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	0x4fb
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	0x4f0
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x4c5
	.uaword	.LFB288
	.uaword	.LFE288
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x75d
	.uleb128 0x1b
	.uaword	0x4f0
	.uaword	.LLST6
	.uleb128 0x1b
	.uaword	0x4fb
	.uaword	.LLST7
	.uleb128 0x18
	.uaword	0x50a
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.uaword	0x51e
	.uaword	.LFB289
	.uaword	.LFE289
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x78b
	.uleb128 0x1b
	.uaword	0x54a
	.uaword	.LLST8
	.uleb128 0x1b
	.uaword	0x555
	.uaword	.LLST9
	.uleb128 0x18
	.uaword	0x564
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1d
	.uaword	0x2c2
	.uaword	0x79b
	.uleb128 0x1e
	.uaword	0x469
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x5
	.byte	0x96
	.uaword	0x7b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.uaword	0x78b
	.uleb128 0x21
	.string	"IfxEth_Phy_Pef7071_iPhyInitDone"
	.byte	0x1
	.byte	0x69
	.uaword	0x232
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_Phy_Pef7071_iPhyInitDone
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1777
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LFE288
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL13
	.uaword	.LFE288
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE289
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LFE289
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB286
	.uaword	.LFE286
	.uaword	.LFB287
	.uaword	.LFE287
	.uaword	.LFB288
	.uaword	.LFE288
	.uaword	.LFB289
	.uaword	.LFE289
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_16"
.LASF1:
	.string	"layeraddr"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
