	.file	"Assert.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_Assert_doLevel,"ax",@progbits
	.align 1
	.global	Ifx_Assert_doLevel
	.type	Ifx_Assert_doLevel, @function
Ifx_Assert_doLevel:
.LFB0:
	.file 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.c"
	.loc 1 58 0
.LVL0:
	ret
.LFE0:
	.size	Ifx_Assert_doLevel, .-Ifx_Assert_doLevel
.section .text.Ifx_Assert_doValidate,"ax",@progbits
	.align 1
	.global	Ifx_Assert_doValidate
	.type	Ifx_Assert_doValidate, @function
Ifx_Assert_doValidate:
.LFB1:
	.loc 1 81 0
.LVL1:
	.loc 1 107 0
	mov	%d2, %d4
	ret
.LFE1:
	.size	Ifx_Assert_doValidate, .-Ifx_Assert_doValidate
	.global	Assert_level
.section .rodata,"a",@progbits
.LC0:
	.string	"OFF"
.LC1:
	.string	"FAILURE"
.LC2:
	.string	"ERROR"
.LC3:
	.string	"WARNING"
.LC4:
	.string	"INFO"
.LC5:
	.string	"DEBUG"
.section .rodata.Assert_level,"a",@progbits
	.align 2
	.type	Assert_level, @object
	.size	Assert_level, 24
Assert_level:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.global	Assert_verboseLevel
.section .data.Assert_verboseLevel,"aw",@progbits
	.align 2
	.type	Assert_verboseLevel, @object
	.size	Assert_verboseLevel, 4
Assert_verboseLevel:
	.word	4
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3fc
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.c"
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
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1eb
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
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1b3
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
	.uaword	0x1eb
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"pchar"
	.byte	0x3
	.byte	0x27
	.uaword	0x287
	.uleb128 0x4
	.byte	0x4
	.uaword	0x28d
	.uleb128 0x5
	.uaword	0x292
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x1
	.string	"Ifx_Assert_doLevel"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x30b
	.uleb128 0x7
	.string	"level"
	.byte	0x1
	.byte	0x39
	.uaword	0x1de
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x39
	.uaword	0x27a
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.string	"__file"
	.byte	0x1
	.byte	0x39
	.uaword	0x27a
	.byte	0x1
	.byte	0x65
	.uleb128 0x7
	.string	"__line"
	.byte	0x1
	.byte	0x39
	.uaword	0x30b
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x39
	.uaword	0x27a
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x9
	.byte	0x1
	.string	"Ifx_Assert_doValidate"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a1
	.uleb128 0x7
	.string	"expr"
	.byte	0x1
	.byte	0x50
	.uaword	0x240
	.byte	0x1
	.byte	0x54
	.uleb128 0x7
	.string	"level"
	.byte	0x1
	.byte	0x50
	.uaword	0x1de
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x50
	.uaword	0x27a
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.string	"__file"
	.byte	0x1
	.byte	0x50
	.uaword	0x27a
	.byte	0x1
	.byte	0x65
	.uleb128 0x7
	.string	"__line"
	.byte	0x1
	.byte	0x50
	.uaword	0x30b
	.byte	0x1
	.byte	0x56
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x50
	.uaword	0x27a
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0xa
	.string	"Assert_verboseLevel"
	.byte	0x1
	.byte	0x21
	.uaword	0x21f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Assert_verboseLevel
	.uleb128 0xb
	.uaword	0x27a
	.uaword	0x3d3
	.uleb128 0xc
	.uaword	0x3d3
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.string	"Assert_level"
	.byte	0x1
	.byte	0x30
	.uaword	0x3fa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Assert_level
	.uleb128 0x5
	.uaword	0x3c3
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"__function"
.LASF0:
	.string	"__assertion"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
