	.file	"IfxStm_Timer.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxStm_Timer_getFrequency,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_getFrequency
	.type	IfxStm_Timer_getFrequency, @function
IfxStm_Timer_getFrequency:
.LFB262:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Stm/Timer/IfxStm_Timer.c"
	.loc 1 66 0
.LVL0:
.LBB57:
.LBB58:
	.file 2 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
	.loc 2 420 0
	ld.w	%d15, [%a4]0
	utof	%d2, %d15
	ld.w	%d15, [%a4] 8
	div.f	%d15, %d2, %d15
.LBE58:
.LBE57:
	.loc 1 68 0
	movh	%d2, 16256
	div.f	%d2, %d2, %d15
	ret
.LFE262:
	.size	IfxStm_Timer_getFrequency, .-IfxStm_Timer_getFrequency
.section .text.IfxStm_Timer_getInputFrequency,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_getInputFrequency
	.type	IfxStm_Timer_getInputFrequency, @function
IfxStm_Timer_getInputFrequency:
.LFB263:
	.loc 1 72 0
.LVL1:
	.loc 1 74 0
	ld.w	%d2, [%a4] 8
	ret
.LFE263:
	.size	IfxStm_Timer_getInputFrequency, .-IfxStm_Timer_getInputFrequency
.section .text.IfxStm_Timer_getPeriod,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_getPeriod
	.type	IfxStm_Timer_getPeriod, @function
IfxStm_Timer_getPeriod:
.LFB264:
	.loc 1 78 0
.LVL2:
	.loc 1 80 0
	ld.w	%d2, [%a4]0
	ret
.LFE264:
	.size	IfxStm_Timer_getPeriod, .-IfxStm_Timer_getPeriod
.section .text.IfxStm_Timer_getResolution,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_getResolution
	.type	IfxStm_Timer_getResolution, @function
IfxStm_Timer_getResolution:
.LFB265:
	.loc 1 84 0
.LVL3:
	.loc 1 85 0
	ld.w	%d15, [%a4] 8
	.loc 1 86 0
	movh	%d2, 16256
	div.f	%d2, %d2, %d15
	ret
.LFE265:
	.size	IfxStm_Timer_getResolution, .-IfxStm_Timer_getResolution
.section .text.IfxStm_Timer_setFrequency,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_setFrequency
	.type	IfxStm_Timer_setFrequency, @function
IfxStm_Timer_setFrequency:
.LFB267:
	.loc 1 106 0
.LVL4:
	.loc 1 107 0
	movh	%d15, 16256
	div.f	%d4, %d15, %d4
.LVL5:
.LBB59:
.LBB60:
	.loc 2 431 0
	ld.w	%d15, [%a4] 8
.LBE60:
.LBE59:
	.loc 1 110 0
	mov	%d2, 1
.LBB62:
.LBB61:
	.loc 2 431 0
	mul.f	%d4, %d4, %d15
.LVL6:
	ftouz	%d4, %d4
.LVL7:
	st.w	[%a4]0, %d4
.LBE61:
.LBE62:
	.loc 1 110 0
	ret
.LFE267:
	.size	IfxStm_Timer_setFrequency, .-IfxStm_Timer_setFrequency
.section .text.IfxStm_Timer_setPeriod,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_setPeriod
	.type	IfxStm_Timer_setPeriod, @function
IfxStm_Timer_setPeriod:
.LFB268:
	.loc 1 114 0
.LVL8:
	.loc 1 115 0
	st.w	[%a4]0, %d4
	.loc 1 118 0
	mov	%d2, 1
	ret
.LFE268:
	.size	IfxStm_Timer_setPeriod, .-IfxStm_Timer_setPeriod
.section .text.IfxStm_Timer_setSingleMode,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_setSingleMode
	.type	IfxStm_Timer_setSingleMode, @function
IfxStm_Timer_setSingleMode:
.LFB269:
	.loc 1 122 0
.LVL9:
	.loc 1 123 0
	st.b	[%a4] 13, %d4
	ret
.LFE269:
	.size	IfxStm_Timer_setSingleMode, .-IfxStm_Timer_setSingleMode
.section .text.IfxStm_Timer_stop,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_stop
	.type	IfxStm_Timer_stop, @function
IfxStm_Timer_stop:
.LFB271:
	.loc 1 153 0
.LVL10:
	.loc 1 153 0
	mov.aa	%a15, %a4
	.loc 1 154 0
	ld.a	%a4, [%a4] 16
.LVL11:
	ld.bu	%d4, [%a15] 20
	j	IfxStm_disableComparatorInterrupt
.LVL12:
.LFE271:
	.size	IfxStm_Timer_stop, .-IfxStm_Timer_stop
.section .text.IfxStm_Timer_run,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_run
	.type	IfxStm_Timer_run, @function
IfxStm_Timer_run:
.LFB266:
	.loc 1 90 0
.LVL13:
	.loc 1 90 0
	mov.aa	%a15, %a4
.LBB63:
.LBB64:
.LBB65:
.LBB66:
.LBB67:
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 632 0
#APP
	# 632 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d6, LO:0xFE2C
	# 0 "" 2
.LVL14:
#NO_APP
.LBE67:
	.loc 3 633 0
	extr.u	%d6, %d6, 15, 1
.LVL15:
.LBE66:
.LBE65:
	.loc 3 641 0
#APP
	# 641 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB68:
.LBB69:
	.file 4 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 4 1405 0
#APP
	# 1405 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
.LBE69:
.LBE68:
.LBE64:
.LBE63:
	.loc 1 95 0
	ld.a	%a2, [%a4] 16
.LVL16:
.LBB70:
.LBB71:
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/Stm/Std/IfxStm.h"
	.loc 5 530 0
	ld.w	%d4, [%a2] 16
.LVL17:
	.loc 5 531 0
	ld.w	%d7, [%a2] 44
	.loc 5 530 0
	mul.u	%e2, %d4, 1
.LVL18:
	.loc 5 531 0
	or	%d5, %d4, 0
	or	%d15, %d7, %d3
.LVL19:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	.loc 3 916 0
	jz	%d6, .L10
	.loc 3 918 0
#APP
	# 918 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
	ld.a	%a2, [%a4] 16
.LVL20:
.L10:
.LBE73:
.LBE72:
	.loc 1 98 0
	ld.bu	%d4, [%a15] 28
	ge	%d2, %d4, 32
	seln	%d3, %d2, %d5, %d15
	seln	%d15, %d2, %d15, 0
.LVL21:
	and	%d2, %d4, 31
	rsub	%d4, %d2, 32
	dextr	%d15, %d15, %d3, %d4
	sel	%d15, %d2, %d15, %d3
	ld.w	%d2, [%a15]0
	add	%d15, %d2
.LBB74:
.LBB75:
	.loc 5 659 0
	ld.bu	%d2, [%a15] 20
.LBE75:
.LBE74:
	.loc 1 98 0
	st.w	[%a15] 24, %d15
.LVL22:
.LBB77:
.LBB76:
	.loc 5 659 0
	addi	%d2, %d2, 12
	addsc.a	%a2, %a2, %d2, 2
.LVL23:
	st.w	[%a2]0, %d15
.LVL24:
.LBE76:
.LBE77:
	.loc 1 101 0
	ld.a	%a4, [%a15] 16
.LVL25:
	ld.bu	%d4, [%a15] 20
	j	IfxStm_enableComparatorInterrupt
.LVL26:
.LFE266:
	.size	IfxStm_Timer_run, .-IfxStm_Timer_run
.section .text.IfxStm_Timer_updateInputFrequency,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_updateInputFrequency
	.type	IfxStm_Timer_updateInputFrequency, @function
IfxStm_Timer_updateInputFrequency:
.LFB272:
	.loc 1 159 0
.LVL27:
	.loc 1 159 0
	mov.aa	%a15, %a4
.LVL28:
.LBB78:
.LBB79:
.LBB80:
.LBB81:
	.file 6 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
	.loc 6 1105 0
	call	IfxScuCcu_getSourceFrequency
.LVL29:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	ld.w	%d15, [%a2]0
.LBE81:
.LBE80:
.LBE79:
.LBE78:
	.loc 1 162 0
	ld.bu	%d3, [%a15] 28
.LBB85:
.LBB84:
.LBB83:
.LBB82:
	.loc 6 1105 0
	extr.u	%d15, %d15, 8, 4
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LBE82:
.LBE83:
.LBE84:
.LBE85:
	.loc 1 162 0
	mov	%d15, 1
	sh	%d15, %d15, %d3
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
	st.w	[%a15] 8, %d2
	ret
.LFE272:
	.size	IfxStm_Timer_updateInputFrequency, .-IfxStm_Timer_updateInputFrequency
.section .text.IfxStm_Timer_acknowledgeTimerIrq,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_acknowledgeTimerIrq
	.type	IfxStm_Timer_acknowledgeTimerIrq, @function
IfxStm_Timer_acknowledgeTimerIrq:
.LFB261:
	.loc 1 40 0
.LVL30:
	.loc 1 40 0
	mov.aa	%a15, %a4
	.loc 1 42 0
	ld.a	%a4, [%a4] 16
.LVL31:
	ld.bu	%d4, [%a15] 20
	call	IfxStm_isCompareFlagSet
.LVL32:
	mov	%d15, %d2
.LVL33:
	.loc 1 44 0
	jnz	%d2, .L22
	.loc 1 62 0
	mov	%d2, %d15
	ret
.L22:
	.loc 1 46 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d4, [%a15] 20
	call	IfxStm_clearCompareFlag
.LVL34:
	.loc 1 48 0
	ld.bu	%d2, [%a15] 13
	jnz	%d2, .L18
	.loc 1 50 0
	ld.w	%d3, [%a15] 24
	ld.w	%d2, [%a15]0
	.loc 1 51 0
	ld.a	%a2, [%a15] 16
.LVL35:
	.loc 1 50 0
	add	%d2, %d3
.LVL36:
.LBB92:
.LBB93:
	.loc 5 659 0
	ld.bu	%d3, [%a15] 20
.LBE93:
.LBE92:
	.loc 1 50 0
	st.w	[%a15] 24, %d2
.LBB95:
.LBB94:
	.loc 5 659 0
	addi	%d3, %d3, 12
	addsc.a	%a15, %a2, %d3, 2
.LVL37:
	st.w	[%a15]0, %d2
.LBE94:
.LBE95:
	.loc 1 62 0
	mov	%d2, %d15
.LVL38:
	ret
.LVL39:
.L18:
.LBB96:
.LBB97:
	.loc 1 55 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d4, [%a15] 20
	call	IfxStm_disableComparatorInterrupt
.LVL40:
.LBE97:
.LBE96:
	.loc 1 62 0
	mov	%d2, %d15
	ret
.LFE261:
	.size	IfxStm_Timer_acknowledgeTimerIrq, .-IfxStm_Timer_acknowledgeTimerIrq
.section .text.IfxStm_Timer_stdIfTimerInit,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_stdIfTimerInit
	.type	IfxStm_Timer_stdIfTimerInit, @function
IfxStm_Timer_stdIfTimerInit:
.LFB270:
	.loc 1 128 0
.LVL41:
	.loc 1 131 0
	movh	%d15, hi:IfxStm_Timer_getFrequency
	.loc 1 128 0
	mov.aa	%a15, %a4
	.loc 1 131 0
	addi	%d15, %d15, lo:IfxStm_Timer_getFrequency
	.loc 1 129 0
	call	IfxStdIf_Timer_initStdIf
.LVL42:
	.loc 1 131 0
	st.w	[%a15] 4, %d15
	.loc 1 132 0
	movh	%d15, hi:IfxStm_Timer_getPeriod
	addi	%d15, %d15, lo:IfxStm_Timer_getPeriod
	st.w	[%a15] 8, %d15
	.loc 1 133 0
	movh	%d15, hi:IfxStm_Timer_getResolution
	addi	%d15, %d15, lo:IfxStm_Timer_getResolution
	st.w	[%a15] 12, %d15
	.loc 1 135 0
	movh	%d15, hi:IfxStm_Timer_setFrequency
	addi	%d15, %d15, lo:IfxStm_Timer_setFrequency
	st.w	[%a15] 20, %d15
	.loc 1 136 0
	movh	%d15, hi:IfxStm_Timer_updateInputFrequency
	addi	%d15, %d15, lo:IfxStm_Timer_updateInputFrequency
	st.w	[%a15] 24, %d15
	.loc 1 139 0
	movh	%d15, hi:IfxStm_Timer_getInputFrequency
	addi	%d15, %d15, lo:IfxStm_Timer_getInputFrequency
	st.w	[%a15] 36, %d15
	.loc 1 140 0
	movh	%d15, hi:IfxStm_Timer_run
	addi	%d15, %d15, lo:IfxStm_Timer_run
	st.w	[%a15] 40, %d15
	.loc 1 141 0
	movh	%d15, hi:IfxStm_Timer_setPeriod
	addi	%d15, %d15, lo:IfxStm_Timer_setPeriod
	st.w	[%a15] 44, %d15
	.loc 1 142 0
	movh	%d15, hi:IfxStm_Timer_setSingleMode
	addi	%d15, %d15, lo:IfxStm_Timer_setSingleMode
	st.w	[%a15] 48, %d15
	.loc 1 144 0
	movh	%d15, hi:IfxStm_Timer_stop
	addi	%d15, %d15, lo:IfxStm_Timer_stop
	st.w	[%a15] 56, %d15
	.loc 1 145 0
	movh	%d15, hi:IfxStm_Timer_acknowledgeTimerIrq
	addi	%d15, %d15, lo:IfxStm_Timer_acknowledgeTimerIrq
	st.w	[%a15] 60, %d15
	.loc 1 149 0
	mov	%d2, 1
	ret
.LFE270:
	.size	IfxStm_Timer_stdIfTimerInit, .-IfxStm_Timer_stdIfTimerInit
	.global	__extendsfdf2
	.global	__divdf3
	.global	__gtdf2
.section .text.IfxStm_Timer_init,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_init
	.type	IfxStm_Timer_init, @function
IfxStm_Timer_init:
.LFB273:
	.loc 1 167 0
.LVL43:
	.loc 1 173 0
	ld.w	%d15, [%a5] 36
	.loc 1 177 0
	mov	%d8, 0
	.loc 1 173 0
	st.w	[%a4] 16, %d15
	.loc 1 174 0
	ld.bu	%d15, [%a5] 40
	.loc 1 167 0
	mov.aa	%a15, %a4
	.loc 1 174 0
	st.b	[%a4] 20, %d15
	.loc 1 176 0
	ld.bu	%d15, [%a5] 12
	.loc 1 177 0
	st.b	[%a4] 13, %d8
	.loc 1 176 0
	st.b	[%a4] 4, %d15
	.loc 1 186 0
	ld.w	%d15, [%a5] 8
.LVL44:
	.loc 1 167 0
	mov.aa	%a12, %a5
.LBB98:
.LBB99:
.LBB100:
.LBB101:
	.loc 6 1105 0
	call	IfxScuCcu_getSourceFrequency
.LVL45:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	ld.w	%d3, [%a2]0
	extr.u	%d3, %d3, 8, 4
	itof	%d3, %d3
	div.f	%d2, %d2, %d3
.LBE101:
.LBE100:
.LBE99:
.LBE98:
	.loc 1 186 0
	mul.f	%d2, %d15, %d2
	ftouz	%d2, %d2
	clz	%d2, %d2
	and	%d2, %d2, 255
	.loc 1 188 0
	ne	%d15, %d2, 32
	jnz	%d15, .L25
	.loc 1 186 0
	st.b	[%a15] 28, %d8
	.loc 1 193 0
	mov.aa	%a4, %a15
	call	IfxStm_Timer_updateInputFrequency
.LVL46:
	.loc 1 195 0
	ld.w	%d10, [%a12] 8
	mov	%d15, 0
	cmp.f	%d15, %d10, %d15
	jz.t	%d15, 2, .L34
.L27:
	.loc 1 195 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15] 8
	mov	%d4, %d15
	call	__extendsfdf2
.LVL47:
	imask	%e4, 0, 20, 10
	mov	%e6, %d3, %d2
	call	__divdf3
.LVL48:
	mov	%d4, %d10
	mov	%e8, %d3, %d2
	call	__extendsfdf2
.LVL49:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	call	__gtdf2
.LVL50:
	.loc 1 168 0 is_stmt 1 discriminator 1
	lt	%d8, %d2, 1
.L28:
.LVL51:
.LBB102:
.LBB103:
	.loc 1 107 0
	ld.w	%d2, [%a12]0
	movh	%d3, 16256
	div.f	%d3, %d3, %d2
.LVL52:
.LBE103:
.LBE102:
	.loc 1 208 0
	ld.bu	%d4, [%a15] 20
	.loc 1 205 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d5, [%a15] 28
	mov	%d6, 31
	ne	%d7, %d4, 0
.LBB107:
.LBB106:
.LBB104:
.LBB105:
	.loc 2 431 0
	mul.f	%d15, %d3, %d15
.LVL53:
	ftouz	%d15, %d15
.LVL54:
	st.w	[%a15]0, %d15
.LVL55:
.LBE105:
.LBE104:
.LBE106:
.LBE107:
	.loc 1 205 0
	call	IfxStm_setCompareControl
.LVL56:
	.loc 1 211 0
	ld.hu	%d15, [%a12] 4
.LVL57:
	jz	%d15, .L30
.LBB108:
	.loc 1 214 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d4, [%a15] 20
	call	IfxStm_clearCompareFlag
.LVL58:
	.loc 1 217 0
	ld.a	%a4, [%a15] 16
	ld.bu	%d4, [%a12] 40
	call	IfxStm_getSrcPointer
.LVL59:
.LBB109:
.LBB110:
	.file 7 "0_Src/BaseSw/iLLD/TC27D/Tricore/Src/Std/IfxSrc.h"
	.loc 7 256 0
	ld.w	%d2, [%a2]0
	ld.bu	%d3, [%a12] 4
	andn	%d2, %d2, ~(-256)
	or	%d2, %d3
.LBE110:
.LBE109:
	.loc 1 218 0
	ld.bu	%d15, [%a12] 6
.LVL60:
.LBB114:
.LBB113:
	.loc 7 256 0
	st.w	[%a2]0, %d2
.LVL61:
	.loc 7 257 0
	ld.w	%d2, [%a2]0
	insert	%d15, %d2, %d15, 11, 2
.LVL62:
	st.w	[%a2]0, %d15
.LVL63:
.LBB111:
.LBB112:
	.loc 7 232 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 25, 1
	st.w	[%a2]0, %d15
.LVL64:
.LBE112:
.LBE111:
.LBE113:
.LBE114:
.LBB115:
.LBB116:
	.loc 7 250 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 15, 10, 1
	st.w	[%a2]0, %d15
.LVL65:
.L30:
.LBE116:
.LBE115:
.LBE108:
	.loc 1 223 0
	mov	%d2, %d8
	ret
.LVL66:
.L25:
	.loc 1 190 0
	rsub	%d2, %d2, 31
	st.b	[%a15] 28, %d2
	.loc 1 193 0
	mov.aa	%a4, %a15
	call	IfxStm_Timer_updateInputFrequency
.LVL67:
	.loc 1 195 0
	ld.w	%d10, [%a12] 8
	mov	%d15, 0
	cmp.f	%d15, %d10, %d15
	jnz.t	%d15, 2, .L27
.L34:
	ld.w	%d15, [%a15] 8
	.loc 1 168 0
	mov	%d8, 1
	j	.L28
.LFE273:
	.size	IfxStm_Timer_init, .-IfxStm_Timer_init
.section .text.IfxStm_Timer_initConfig,"ax",@progbits
	.align 1
	.global	IfxStm_Timer_initConfig
	.type	IfxStm_Timer_initConfig, @function
IfxStm_Timer_initConfig:
.LFB274:
	.loc 1 227 0
.LVL68:
	.loc 1 227 0
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
	.loc 1 230 0
	mov	%d15, 0
	.loc 1 228 0
	call	IfxStdIf_Timer_initConfig
.LVL69:
	.loc 1 229 0
	st.a	[%a15] 36, %a12
	.loc 1 230 0
	st.b	[%a15] 40, %d15
	ret
.LFE274:
	.size	IfxStm_Timer_initConfig, .-IfxStm_Timer_initConfig
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
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB267
	.uaword	.LFE267-.LFB267
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB268
	.uaword	.LFE268-.LFB268
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB269
	.uaword	.LFE269-.LFB269
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB271
	.uaword	.LFE271-.LFB271
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB272
	.uaword	.LFE272-.LFB272
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB270
	.uaword	.LFE270-.LFB270
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB273
	.uaword	.LFE273-.LFB273
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB274
	.uaword	.LFE274-.LFB274
	.align 2
.LEFDE26:
.section .text,"ax",@progbits
.Letext0:
	.file 8 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 9 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 10 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxStm_regdef.h"
	.file 11 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_regdef.h"
	.file 12 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_regdef.h"
	.file 13 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h"
	.file 14 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
	.file 15 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxSrc_cfg.h"
	.file 16 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 17 "0_Src/BaseSw/iLLD/TC27D/Tricore/Stm/Timer/IfxStm_Timer.h"
	.file 18 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x376a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Stm/Timer/IfxStm_Timer.c"
	.string	"C:\\\\Users\\\\user\\\\Desktop\\\\programming_PROJECTS\\\\\307\321\276\347\264\353_\300\323\272\243\265\360\265\345\275\303\275\272\305\333\\\\DevBaseEnv_vscode_TC27D"
	.uaword	.Ldebug_ranges0+0x90
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.byte	0x8
	.byte	0x59
	.uaword	0x224
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x8
	.byte	0x5b
	.uaword	0x250
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x8
	.byte	0x5c
	.uaword	0x1e0
	.uleb128 0x3
	.string	"uint32"
	.byte	0x8
	.byte	0x5d
	.uaword	0x1ec
	.uleb128 0x3
	.string	"float32"
	.byte	0x8
	.byte	0x5e
	.uaword	0x1ad
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x8
	.byte	0x68
	.uaword	0x224
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64"
	.byte	0x9
	.byte	0x25
	.uaword	0x1b6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d9
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x9
	.byte	0x55
	.uaword	0x242
	.uleb128 0x3
	.string	"Ifx_TimerValue"
	.byte	0x9
	.byte	0x56
	.uaword	0x274
	.uleb128 0x7
	.byte	0x8
	.byte	0x9
	.byte	0x7d
	.uaword	0x32a
	.uleb128 0x8
	.string	"module"
	.byte	0x9
	.byte	0x7f
	.uaword	0x2d3
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x9
	.byte	0x80
	.uaword	0x266
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x9
	.byte	0x81
	.uaword	0x304
	.uleb128 0x9
	.string	"_Ifx_STM_ACCEN0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.uaword	0x558
	.uleb128 0xa
	.string	"EN0"
	.byte	0xa
	.byte	0x2f
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"EN1"
	.byte	0xa
	.byte	0x30
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"EN2"
	.byte	0xa
	.byte	0x31
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"EN3"
	.byte	0xa
	.byte	0x32
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"EN4"
	.byte	0xa
	.byte	0x33
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"EN5"
	.byte	0xa
	.byte	0x34
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"EN6"
	.byte	0xa
	.byte	0x35
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"EN7"
	.byte	0xa
	.byte	0x36
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"EN8"
	.byte	0xa
	.byte	0x37
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.string	"EN9"
	.byte	0xa
	.byte	0x38
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"EN10"
	.byte	0xa
	.byte	0x39
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"EN11"
	.byte	0xa
	.byte	0x3a
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"EN12"
	.byte	0xa
	.byte	0x3b
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.string	"EN13"
	.byte	0xa
	.byte	0x3c
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.string	"EN14"
	.byte	0xa
	.byte	0x3d
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"EN15"
	.byte	0xa
	.byte	0x3e
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"EN16"
	.byte	0xa
	.byte	0x3f
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"EN17"
	.byte	0xa
	.byte	0x40
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.string	"EN18"
	.byte	0xa
	.byte	0x41
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.string	"EN19"
	.byte	0xa
	.byte	0x42
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"EN20"
	.byte	0xa
	.byte	0x43
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"EN21"
	.byte	0xa
	.byte	0x44
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"EN22"
	.byte	0xa
	.byte	0x45
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.string	"EN23"
	.byte	0xa
	.byte	0x46
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"EN24"
	.byte	0xa
	.byte	0x47
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"EN25"
	.byte	0xa
	.byte	0x48
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"EN26"
	.byte	0xa
	.byte	0x49
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"EN27"
	.byte	0xa
	.byte	0x4a
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"EN28"
	.byte	0xa
	.byte	0x4b
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"EN29"
	.byte	0xa
	.byte	0x4c
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"EN30"
	.byte	0xa
	.byte	0x4d
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"EN31"
	.byte	0xa
	.byte	0x4e
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0_Bits"
	.byte	0xa
	.byte	0x4f
	.uaword	0x344
	.uleb128 0x9
	.string	"_Ifx_STM_ACCEN1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x52
	.uaword	0x5a0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0x54
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN1_Bits"
	.byte	0xa
	.byte	0x55
	.uaword	0x573
	.uleb128 0x9
	.string	"_Ifx_STM_CAP_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x58
	.uaword	0x5e5
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0xa
	.byte	0x5a
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAP_Bits"
	.byte	0xa
	.byte	0x5b
	.uaword	0x5bb
	.uleb128 0x9
	.string	"_Ifx_STM_CAPSV_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x5e
	.uaword	0x629
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0xa
	.byte	0x60
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAPSV_Bits"
	.byte	0xa
	.byte	0x61
	.uaword	0x5fd
	.uleb128 0x9
	.string	"_Ifx_STM_CLC_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x64
	.uaword	0x6ac
	.uleb128 0xa
	.string	"DISR"
	.byte	0xa
	.byte	0x66
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"DISS"
	.byte	0xa
	.byte	0x67
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0xa
	.byte	0x68
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"EDIS"
	.byte	0xa
	.byte	0x69
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0xa
	.byte	0x6a
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CLC_Bits"
	.byte	0xa
	.byte	0x6b
	.uaword	0x643
	.uleb128 0x9
	.string	"_Ifx_STM_CMCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x6e
	.uaword	0x77e
	.uleb128 0xa
	.string	"MSIZE0"
	.byte	0xa
	.byte	0x70
	.uaword	0x1d0
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"reserved_5"
	.byte	0xa
	.byte	0x71
	.uaword	0x1d0
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"MSTART0"
	.byte	0xa
	.byte	0x72
	.uaword	0x1d0
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0xa
	.byte	0x73
	.uaword	0x1d0
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"MSIZE1"
	.byte	0xa
	.byte	0x74
	.uaword	0x1d0
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.string	"reserved_21"
	.byte	0xa
	.byte	0x75
	.uaword	0x1d0
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"MSTART1"
	.byte	0xa
	.byte	0x76
	.uaword	0x1d0
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"reserved_29"
	.byte	0xa
	.byte	0x77
	.uaword	0x1d0
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMCON_Bits"
	.byte	0xa
	.byte	0x78
	.uaword	0x6c4
	.uleb128 0x9
	.string	"_Ifx_STM_CMP_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x7b
	.uaword	0x7c5
	.uleb128 0xa
	.string	"CMPVAL"
	.byte	0xa
	.byte	0x7d
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CMP_Bits"
	.byte	0xa
	.byte	0x7e
	.uaword	0x798
	.uleb128 0x9
	.string	"_Ifx_STM_ICR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x81
	.uaword	0x890
	.uleb128 0xa
	.string	"CMP0EN"
	.byte	0xa
	.byte	0x83
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"CMP0IR"
	.byte	0xa
	.byte	0x84
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"CMP0OS"
	.byte	0xa
	.byte	0x85
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"reserved_3"
	.byte	0xa
	.byte	0x86
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"CMP1EN"
	.byte	0xa
	.byte	0x87
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.string	"CMP1IR"
	.byte	0xa
	.byte	0x88
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.string	"CMP1OS"
	.byte	0xa
	.byte	0x89
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.string	"reserved_7"
	.byte	0xa
	.byte	0x8a
	.uaword	0x1d0
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ICR_Bits"
	.byte	0xa
	.byte	0x8b
	.uaword	0x7dd
	.uleb128 0x9
	.string	"_Ifx_STM_ID_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x8e
	.uaword	0x8fc
	.uleb128 0xa
	.string	"MODREV"
	.byte	0xa
	.byte	0x90
	.uaword	0x1d0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"MODTYPE"
	.byte	0xa
	.byte	0x91
	.uaword	0x1d0
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"MODNUMBER"
	.byte	0xa
	.byte	0x92
	.uaword	0x1d0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ID_Bits"
	.byte	0xa
	.byte	0x93
	.uaword	0x8a8
	.uleb128 0x9
	.string	"_Ifx_STM_ISCR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x96
	.uaword	0x98a
	.uleb128 0xa
	.string	"CMP0IRR"
	.byte	0xa
	.byte	0x98
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"CMP0IRS"
	.byte	0xa
	.byte	0x99
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.string	"CMP1IRR"
	.byte	0xa
	.byte	0x9a
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.string	"CMP1IRS"
	.byte	0xa
	.byte	0x9b
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0xa
	.byte	0x9c
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ISCR_Bits"
	.byte	0xa
	.byte	0x9d
	.uaword	0x913
	.uleb128 0x9
	.string	"_Ifx_STM_KRST0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa0
	.uaword	0x9f1
	.uleb128 0xa
	.string	"RST"
	.byte	0xa
	.byte	0xa2
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.string	"RSTSTAT"
	.byte	0xa
	.byte	0xa3
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0xa
	.byte	0xa4
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST0_Bits"
	.byte	0xa
	.byte	0xa5
	.uaword	0x9a3
	.uleb128 0x9
	.string	"_Ifx_STM_KRST1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xa8
	.uaword	0xa46
	.uleb128 0xa
	.string	"RST"
	.byte	0xa
	.byte	0xaa
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0xa
	.byte	0xab
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRST1_Bits"
	.byte	0xa
	.byte	0xac
	.uaword	0xa0b
	.uleb128 0x9
	.string	"_Ifx_STM_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xaf
	.uaword	0xa9d
	.uleb128 0xa
	.string	"CLR"
	.byte	0xa
	.byte	0xb1
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0xa
	.byte	0xb2
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_KRSTCLR_Bits"
	.byte	0xa
	.byte	0xb3
	.uaword	0xa60
	.uleb128 0x9
	.string	"_Ifx_STM_OCS_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xb6
	.uaword	0xb2c
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0xa
	.byte	0xb8
	.uaword	0x1d0
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"SUS"
	.byte	0xa
	.byte	0xb9
	.uaword	0x1d0
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"SUS_P"
	.byte	0xa
	.byte	0xba
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"SUSSTA"
	.byte	0xa
	.byte	0xbb
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"reserved_30"
	.byte	0xa
	.byte	0xbc
	.uaword	0x1d0
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_OCS_Bits"
	.byte	0xa
	.byte	0xbd
	.uaword	0xab9
	.uleb128 0x9
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xc0
	.uaword	0xb73
	.uleb128 0xa
	.string	"STM31_0"
	.byte	0xa
	.byte	0xc2
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0xa
	.byte	0xc3
	.uaword	0xb44
	.uleb128 0x9
	.string	"_Ifx_STM_TIM0SV_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xc6
	.uaword	0xbbd
	.uleb128 0xa
	.string	"STM31_0"
	.byte	0xa
	.byte	0xc8
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0SV_Bits"
	.byte	0xa
	.byte	0xc9
	.uaword	0xb8c
	.uleb128 0x9
	.string	"_Ifx_STM_TIM1_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xcc
	.uaword	0xc07
	.uleb128 0xa
	.string	"STM35_4"
	.byte	0xa
	.byte	0xce
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM1_Bits"
	.byte	0xa
	.byte	0xcf
	.uaword	0xbd8
	.uleb128 0x9
	.string	"_Ifx_STM_TIM2_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd2
	.uaword	0xc4f
	.uleb128 0xa
	.string	"STM39_8"
	.byte	0xa
	.byte	0xd4
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM2_Bits"
	.byte	0xa
	.byte	0xd5
	.uaword	0xc20
	.uleb128 0x9
	.string	"_Ifx_STM_TIM3_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xd8
	.uaword	0xc98
	.uleb128 0xa
	.string	"STM43_12"
	.byte	0xa
	.byte	0xda
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM3_Bits"
	.byte	0xa
	.byte	0xdb
	.uaword	0xc68
	.uleb128 0x9
	.string	"_Ifx_STM_TIM4_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xde
	.uaword	0xce1
	.uleb128 0xa
	.string	"STM47_16"
	.byte	0xa
	.byte	0xe0
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM4_Bits"
	.byte	0xa
	.byte	0xe1
	.uaword	0xcb1
	.uleb128 0x9
	.string	"_Ifx_STM_TIM5_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xe4
	.uaword	0xd2a
	.uleb128 0xa
	.string	"STM51_20"
	.byte	0xa
	.byte	0xe6
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM5_Bits"
	.byte	0xa
	.byte	0xe7
	.uaword	0xcfa
	.uleb128 0x9
	.string	"_Ifx_STM_TIM6_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xea
	.uaword	0xd73
	.uleb128 0xa
	.string	"STM63_32"
	.byte	0xa
	.byte	0xec
	.uaword	0x1d0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM6_Bits"
	.byte	0xa
	.byte	0xed
	.uaword	0xd43
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.byte	0xf5
	.uaword	0xdb0
	.uleb128 0xd
	.string	"U"
	.byte	0xa
	.byte	0xf7
	.uaword	0x1d0
	.uleb128 0xd
	.string	"I"
	.byte	0xa
	.byte	0xf8
	.uaword	0x201
	.uleb128 0xd
	.string	"B"
	.byte	0xa
	.byte	0xf9
	.uaword	0x558
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_ACCEN0"
	.byte	0xa
	.byte	0xfa
	.uaword	0xd8c
	.uleb128 0xc
	.byte	0x4
	.byte	0xa
	.byte	0xfd
	.uaword	0xdec
	.uleb128 0xd
	.string	"U"
	.byte	0xa
	.byte	0xff
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x100
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x101
	.uaword	0x5a0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_ACCEN1"
	.byte	0xa
	.uahalf	0x102
	.uaword	0xdc6
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x105
	.uaword	0xe2b
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x107
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x108
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x109
	.uaword	0x5e5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_CAP"
	.byte	0xa
	.uahalf	0x10a
	.uaword	0xe03
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x10d
	.uaword	0xe67
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x10f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x110
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x111
	.uaword	0x629
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_CAPSV"
	.byte	0xa
	.uahalf	0x112
	.uaword	0xe3f
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x115
	.uaword	0xea5
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x117
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x118
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x119
	.uaword	0x6ac
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_CLC"
	.byte	0xa
	.uahalf	0x11a
	.uaword	0xe7d
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x11d
	.uaword	0xee1
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x11f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x120
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x121
	.uaword	0x77e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_CMCON"
	.byte	0xa
	.uahalf	0x122
	.uaword	0xeb9
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x125
	.uaword	0xf1f
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x127
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x128
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x129
	.uaword	0x7c5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_CMP"
	.byte	0xa
	.uahalf	0x12a
	.uaword	0xef7
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x12d
	.uaword	0xf5b
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x12f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x130
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x131
	.uaword	0x890
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_ICR"
	.byte	0xa
	.uahalf	0x132
	.uaword	0xf33
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x135
	.uaword	0xf97
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x137
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x138
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x139
	.uaword	0x8fc
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_ID"
	.byte	0xa
	.uahalf	0x13a
	.uaword	0xf6f
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x13d
	.uaword	0xfd2
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x13f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x140
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x141
	.uaword	0x98a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_ISCR"
	.byte	0xa
	.uahalf	0x142
	.uaword	0xfaa
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x145
	.uaword	0x100f
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x147
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x148
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x149
	.uaword	0x9f1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_KRST0"
	.byte	0xa
	.uahalf	0x14a
	.uaword	0xfe7
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x14d
	.uaword	0x104d
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x14f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x150
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x151
	.uaword	0xa46
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_KRST1"
	.byte	0xa
	.uahalf	0x152
	.uaword	0x1025
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x155
	.uaword	0x108b
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x157
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x158
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x159
	.uaword	0xa9d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_KRSTCLR"
	.byte	0xa
	.uahalf	0x15a
	.uaword	0x1063
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x15d
	.uaword	0x10cb
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x160
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x161
	.uaword	0xb2c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_OCS"
	.byte	0xa
	.uahalf	0x162
	.uaword	0x10a3
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x165
	.uaword	0x1107
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x167
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x168
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x169
	.uaword	0xb73
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM0"
	.byte	0xa
	.uahalf	0x16a
	.uaword	0x10df
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x16d
	.uaword	0x1144
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x16f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x170
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x171
	.uaword	0xbbd
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM0SV"
	.byte	0xa
	.uahalf	0x172
	.uaword	0x111c
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x175
	.uaword	0x1183
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x177
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x179
	.uaword	0xc07
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM1"
	.byte	0xa
	.uahalf	0x17a
	.uaword	0x115b
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x17d
	.uaword	0x11c0
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x17f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x180
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x181
	.uaword	0xc4f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM2"
	.byte	0xa
	.uahalf	0x182
	.uaword	0x1198
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x185
	.uaword	0x11fd
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x187
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x188
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x189
	.uaword	0xc98
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM3"
	.byte	0xa
	.uahalf	0x18a
	.uaword	0x11d5
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x18d
	.uaword	0x123a
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x18f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x190
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x191
	.uaword	0xce1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM4"
	.byte	0xa
	.uahalf	0x192
	.uaword	0x1212
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x195
	.uaword	0x1277
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x197
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x198
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x199
	.uaword	0xd2a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM5"
	.byte	0xa
	.uahalf	0x19a
	.uaword	0x124f
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.uahalf	0x19d
	.uaword	0x12b4
	.uleb128 0xe
	.string	"U"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xa
	.uahalf	0x1a0
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xa
	.uahalf	0x1a1
	.uaword	0xd73
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM6"
	.byte	0xa
	.uahalf	0x1a2
	.uaword	0x128c
	.uleb128 0x11
	.string	"_Ifx_STM"
	.uahalf	0x100
	.byte	0xa
	.uahalf	0x1ad
	.uaword	0x1462
	.uleb128 0x12
	.string	"CLC"
	.byte	0xa
	.uahalf	0x1af
	.uaword	0xea5
	.byte	0
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0xa
	.uahalf	0x1b0
	.uaword	0x1462
	.byte	0x4
	.uleb128 0x12
	.string	"ID"
	.byte	0xa
	.uahalf	0x1b1
	.uaword	0xf97
	.byte	0x8
	.uleb128 0x12
	.string	"reserved_C"
	.byte	0xa
	.uahalf	0x1b2
	.uaword	0x1462
	.byte	0xc
	.uleb128 0x12
	.string	"TIM0"
	.byte	0xa
	.uahalf	0x1b3
	.uaword	0x1107
	.byte	0x10
	.uleb128 0x12
	.string	"TIM1"
	.byte	0xa
	.uahalf	0x1b4
	.uaword	0x1183
	.byte	0x14
	.uleb128 0x12
	.string	"TIM2"
	.byte	0xa
	.uahalf	0x1b5
	.uaword	0x11c0
	.byte	0x18
	.uleb128 0x12
	.string	"TIM3"
	.byte	0xa
	.uahalf	0x1b6
	.uaword	0x11fd
	.byte	0x1c
	.uleb128 0x12
	.string	"TIM4"
	.byte	0xa
	.uahalf	0x1b7
	.uaword	0x123a
	.byte	0x20
	.uleb128 0x12
	.string	"TIM5"
	.byte	0xa
	.uahalf	0x1b8
	.uaword	0x1277
	.byte	0x24
	.uleb128 0x12
	.string	"TIM6"
	.byte	0xa
	.uahalf	0x1b9
	.uaword	0x12b4
	.byte	0x28
	.uleb128 0x12
	.string	"CAP"
	.byte	0xa
	.uahalf	0x1ba
	.uaword	0xe2b
	.byte	0x2c
	.uleb128 0x12
	.string	"CMP"
	.byte	0xa
	.uahalf	0x1bb
	.uaword	0x147e
	.byte	0x30
	.uleb128 0x12
	.string	"CMCON"
	.byte	0xa
	.uahalf	0x1bc
	.uaword	0xee1
	.byte	0x38
	.uleb128 0x12
	.string	"ICR"
	.byte	0xa
	.uahalf	0x1bd
	.uaword	0xf5b
	.byte	0x3c
	.uleb128 0x12
	.string	"ISCR"
	.byte	0xa
	.uahalf	0x1be
	.uaword	0xfd2
	.byte	0x40
	.uleb128 0x12
	.string	"reserved_44"
	.byte	0xa
	.uahalf	0x1bf
	.uaword	0x148e
	.byte	0x44
	.uleb128 0x12
	.string	"TIM0SV"
	.byte	0xa
	.uahalf	0x1c0
	.uaword	0x1144
	.byte	0x50
	.uleb128 0x12
	.string	"CAPSV"
	.byte	0xa
	.uahalf	0x1c1
	.uaword	0xe67
	.byte	0x54
	.uleb128 0x12
	.string	"reserved_58"
	.byte	0xa
	.uahalf	0x1c2
	.uaword	0x149e
	.byte	0x58
	.uleb128 0x12
	.string	"OCS"
	.byte	0xa
	.uahalf	0x1c3
	.uaword	0x10cb
	.byte	0xe8
	.uleb128 0x12
	.string	"KRSTCLR"
	.byte	0xa
	.uahalf	0x1c4
	.uaword	0x108b
	.byte	0xec
	.uleb128 0x12
	.string	"KRST1"
	.byte	0xa
	.uahalf	0x1c5
	.uaword	0x104d
	.byte	0xf0
	.uleb128 0x12
	.string	"KRST0"
	.byte	0xa
	.uahalf	0x1c6
	.uaword	0x100f
	.byte	0xf4
	.uleb128 0x12
	.string	"ACCEN1"
	.byte	0xa
	.uahalf	0x1c7
	.uaword	0xdec
	.byte	0xf8
	.uleb128 0x12
	.string	"ACCEN0"
	.byte	0xa
	.uahalf	0x1c8
	.uaword	0xdb0
	.byte	0xfc
	.byte	0
	.uleb128 0x14
	.uaword	0x224
	.uaword	0x1472
	.uleb128 0x15
	.uaword	0x1472
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x14
	.uaword	0xf1f
	.uaword	0x148e
	.uleb128 0x15
	.uaword	0x1472
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.uaword	0x224
	.uaword	0x149e
	.uleb128 0x15
	.uaword	0x1472
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x224
	.uaword	0x14ae
	.uleb128 0x15
	.uaword	0x1472
	.byte	0x8f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM"
	.byte	0xa
	.uahalf	0x1c9
	.uaword	0x14be
	.uleb128 0x16
	.uaword	0x12c9
	.uleb128 0x9
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x72
	.uaword	0x1597
	.uleb128 0xa
	.string	"CANDIV"
	.byte	0xb
	.byte	0x74
	.uaword	0x1d0
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.string	"ERAYDIV"
	.byte	0xb
	.byte	0x75
	.uaword	0x1d0
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"STMDIV"
	.byte	0xb
	.byte	0x76
	.uaword	0x1d0
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.string	"GTMDIV"
	.byte	0xb
	.byte	0x77
	.uaword	0x1d0
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"ETHDIV"
	.byte	0xb
	.byte	0x78
	.uaword	0x1d0
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"ASCLINFDIV"
	.byte	0xb
	.byte	0x79
	.uaword	0x1d0
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"ASCLINSDIV"
	.byte	0xb
	.byte	0x7a
	.uaword	0x1d0
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"INSEL"
	.byte	0xb
	.byte	0x7b
	.uaword	0x1d0
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"UP"
	.byte	0xb
	.byte	0x7c
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"LCK"
	.byte	0xb
	.byte	0x7d
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0xb
	.byte	0x7e
	.uaword	0x14c3
	.uleb128 0x16
	.uaword	0x1d0
	.uleb128 0x10
	.byte	0x4
	.byte	0xb
	.uahalf	0x4cd
	.uaword	0x15e0
	.uleb128 0xe
	.string	"U"
	.byte	0xb
	.uahalf	0x4cf
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xb
	.uahalf	0x4d0
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xb
	.uahalf	0x4d1
	.uaword	0x1597
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON1"
	.byte	0xb
	.uahalf	0x4d2
	.uaword	0x15b8
	.uleb128 0x17
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x176
	.uaword	0x1675
	.uleb128 0x18
	.string	"CCPN"
	.byte	0xc
	.uahalf	0x178
	.uaword	0x15b3
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0x18
	.string	"reserved_10"
	.byte	0xc
	.uahalf	0x179
	.uaword	0x15b3
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0x18
	.string	"IE"
	.byte	0xc
	.uahalf	0x17a
	.uaword	0x15b3
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x18
	.string	"PIPN"
	.byte	0xc
	.uahalf	0x17b
	.uaword	0x15b3
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.string	"reserved_26"
	.byte	0xc
	.uahalf	0x17c
	.uaword	0x15b3
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0xc
	.uahalf	0x17d
	.uaword	0x15f8
	.uleb128 0x10
	.byte	0x4
	.byte	0xc
	.uahalf	0x3e2
	.uaword	0x16b6
	.uleb128 0xe
	.string	"U"
	.byte	0xc
	.uahalf	0x3e4
	.uaword	0x1d0
	.uleb128 0xe
	.string	"I"
	.byte	0xc
	.uahalf	0x3e5
	.uaword	0x201
	.uleb128 0xe
	.string	"B"
	.byte	0xc
	.uahalf	0x3e6
	.uaword	0x1675
	.byte	0
	.uleb128 0xf
	.string	"Ifx_CPU_ICR"
	.byte	0xc
	.uahalf	0x3e7
	.uaword	0x168e
	.uleb128 0x9
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x2d
	.uaword	0x17e7
	.uleb128 0xa
	.string	"SRPN"
	.byte	0xd
	.byte	0x2f
	.uaword	0x1d0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.string	"reserved_8"
	.byte	0xd
	.byte	0x30
	.uaword	0x1d0
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.string	"SRE"
	.byte	0xd
	.byte	0x31
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.string	"TOS"
	.byte	0xd
	.byte	0x32
	.uaword	0x1d0
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0xd
	.byte	0x33
	.uaword	0x1d0
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"ECC"
	.byte	0xd
	.byte	0x34
	.uaword	0x1d0
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.string	"reserved_22"
	.byte	0xd
	.byte	0x35
	.uaword	0x1d0
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.string	"SRR"
	.byte	0xd
	.byte	0x36
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.string	"CLRR"
	.byte	0xd
	.byte	0x37
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.string	"SETR"
	.byte	0xd
	.byte	0x38
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.string	"IOV"
	.byte	0xd
	.byte	0x39
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"IOVCLR"
	.byte	0xd
	.byte	0x3a
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.string	"SWS"
	.byte	0xd
	.byte	0x3b
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.string	"SWSCLR"
	.byte	0xd
	.byte	0x3c
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.string	"reserved_31"
	.byte	0xd
	.byte	0x3d
	.uaword	0x1d0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0xd
	.byte	0x3e
	.uaword	0x16ca
	.uleb128 0xc
	.byte	0x4
	.byte	0xd
	.byte	0x46
	.uaword	0x1824
	.uleb128 0xd
	.string	"U"
	.byte	0xd
	.byte	0x48
	.uaword	0x1d0
	.uleb128 0xd
	.string	"I"
	.byte	0xd
	.byte	0x49
	.uaword	0x201
	.uleb128 0xd
	.string	"B"
	.byte	0xd
	.byte	0x4a
	.uaword	0x17e7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0xd
	.byte	0x4b
	.uaword	0x1800
	.uleb128 0x19
	.byte	0x1
	.byte	0xe
	.byte	0x73
	.uaword	0x1880
	.uleb128 0x1a
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x1a
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0xe
	.byte	0x76
	.uaword	0x1838
	.uleb128 0x19
	.byte	0x1
	.byte	0xe
	.byte	0x7d
	.uaword	0x1a3b
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x1a
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0xe
	.byte	0x8a
	.uaword	0x189a
	.uleb128 0x19
	.byte	0x1
	.byte	0xf
	.byte	0x32
	.uaword	0x1aa4
	.uleb128 0x1a
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x1a
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 1
	.uleb128 0x1a
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 2
	.uleb128 0x1a
	.string	"IfxSrc_Tos_dma"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0xf
	.byte	0x37
	.uaword	0x1a54
	.uleb128 0x19
	.byte	0x1
	.byte	0x5
	.byte	0x84
	.uaword	0x1aeb
	.uleb128 0x1a
	.string	"IfxStm_Comparator_0"
	.sleb128 0
	.uleb128 0x1a
	.string	"IfxStm_Comparator_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_Comparator"
	.byte	0x5
	.byte	0x87
	.uaword	0x1ab6
	.uleb128 0x19
	.byte	0x1
	.byte	0x5
	.byte	0x8c
	.uaword	0x1b4f
	.uleb128 0x1a
	.string	"IfxStm_ComparatorInterrupt_ir0"
	.sleb128 0
	.uleb128 0x1a
	.string	"IfxStm_ComparatorInterrupt_ir1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorInterrupt"
	.byte	0x5
	.byte	0x8f
	.uaword	0x1b04
	.uleb128 0x19
	.byte	0x1
	.byte	0x5
	.byte	0x94
	.uaword	0x1f10
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_0"
	.sleb128 0
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_1"
	.sleb128 1
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_2"
	.sleb128 2
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_3"
	.sleb128 3
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_4"
	.sleb128 4
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_5"
	.sleb128 5
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_6"
	.sleb128 6
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_7"
	.sleb128 7
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_8"
	.sleb128 8
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_9"
	.sleb128 9
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_10"
	.sleb128 10
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_11"
	.sleb128 11
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_12"
	.sleb128 12
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_13"
	.sleb128 13
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_14"
	.sleb128 14
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_15"
	.sleb128 15
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_16"
	.sleb128 16
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_17"
	.sleb128 17
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_18"
	.sleb128 18
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_19"
	.sleb128 19
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_20"
	.sleb128 20
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_21"
	.sleb128 21
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_22"
	.sleb128 22
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_23"
	.sleb128 23
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_24"
	.sleb128 24
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_25"
	.sleb128 25
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_26"
	.sleb128 26
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_27"
	.sleb128 27
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_28"
	.sleb128 28
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_29"
	.sleb128 29
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_30"
	.sleb128 30
	.uleb128 0x1a
	.string	"IfxStm_ComparatorOffset_31"
	.sleb128 31
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorOffset"
	.byte	0x5
	.byte	0xb5
	.uaword	0x1b71
	.uleb128 0x19
	.byte	0x1
	.byte	0x5
	.byte	0xba
	.uaword	0x230e
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_1Bit"
	.sleb128 0
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_2Bits"
	.sleb128 1
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_3Bits"
	.sleb128 2
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_4Bits"
	.sleb128 3
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_5Bits"
	.sleb128 4
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_6Bits"
	.sleb128 5
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_7Bits"
	.sleb128 6
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_8Bits"
	.sleb128 7
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_9Bits"
	.sleb128 8
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_10Bits"
	.sleb128 9
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_11Bits"
	.sleb128 10
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_12Bits"
	.sleb128 11
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_13Bits"
	.sleb128 12
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_14Bits"
	.sleb128 13
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_15Bits"
	.sleb128 14
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_16Bits"
	.sleb128 15
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_17Bits"
	.sleb128 16
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_18Bits"
	.sleb128 17
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_19Bits"
	.sleb128 18
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_20Bits"
	.sleb128 19
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_21Bits"
	.sleb128 20
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_22Bits"
	.sleb128 21
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_23Bits"
	.sleb128 22
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_24Bits"
	.sleb128 23
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_25Bits"
	.sleb128 24
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_26Bits"
	.sleb128 25
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_27Bits"
	.sleb128 26
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_28Bits"
	.sleb128 27
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_29Bits"
	.sleb128 28
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_30Bits"
	.sleb128 29
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_31Bits"
	.sleb128 30
	.uleb128 0x1a
	.string	"IfxStm_ComparatorSize_32Bits"
	.sleb128 31
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_ComparatorSize"
	.byte	0x5
	.byte	0xdb
	.uaword	0x1f2f
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x10
	.byte	0x62
	.uaword	0x2d1
	.uleb128 0x19
	.byte	0x1
	.byte	0x2
	.byte	0x45
	.uaword	0x23b4
	.uleb128 0x1a
	.string	"IfxStdIf_Timer_CountDir_up"
	.sleb128 0
	.uleb128 0x1a
	.string	"IfxStdIf_Timer_CountDir_upAndDown"
	.sleb128 1
	.uleb128 0x1a
	.string	"IfxStdIf_Timer_CountDir_down"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_CountDir"
	.byte	0x2
	.byte	0x49
	.uaword	0x234b
	.uleb128 0x3
	.string	"IfxStdIf_Timer"
	.byte	0x2
	.byte	0x4c
	.uaword	0x23e9
	.uleb128 0x9
	.string	"IfxStdIf_Timer_"
	.byte	0x44
	.byte	0x2
	.byte	0xdc
	.uaword	0x2552
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x2
	.byte	0xde
	.uaword	0x232b
	.byte	0
	.uleb128 0x8
	.string	"getFrequency"
	.byte	0x2
	.byte	0xdf
	.uaword	0x2552
	.byte	0x4
	.uleb128 0x8
	.string	"getPeriod"
	.byte	0x2
	.byte	0xe0
	.uaword	0x258b
	.byte	0x8
	.uleb128 0x8
	.string	"getResolution"
	.byte	0x2
	.byte	0xe1
	.uaword	0x25c1
	.byte	0xc
	.uleb128 0x8
	.string	"getTrigger"
	.byte	0x2
	.byte	0xe2
	.uaword	0x25e5
	.byte	0x10
	.uleb128 0x8
	.string	"setFrequency"
	.byte	0x2
	.byte	0xe3
	.uaword	0x2606
	.byte	0x14
	.uleb128 0x8
	.string	"updateInputFrequency"
	.byte	0x2
	.byte	0xe4
	.uaword	0x2644
	.byte	0x18
	.uleb128 0x8
	.string	"applyUpdate"
	.byte	0x2
	.byte	0xe5
	.uaword	0x2681
	.byte	0x1c
	.uleb128 0x8
	.string	"disableUpdate"
	.byte	0x2
	.byte	0xe6
	.uaword	0x26a3
	.byte	0x20
	.uleb128 0x8
	.string	"getInputFrequency"
	.byte	0x2
	.byte	0xe7
	.uaword	0x26c7
	.byte	0x24
	.uleb128 0x8
	.string	"run"
	.byte	0x2
	.byte	0xe8
	.uaword	0x26ef
	.byte	0x28
	.uleb128 0x8
	.string	"setPeriod"
	.byte	0x2
	.byte	0xe9
	.uaword	0x2709
	.byte	0x2c
	.uleb128 0x8
	.string	"setSingleMode"
	.byte	0x2
	.byte	0xea
	.uaword	0x2744
	.byte	0x30
	.uleb128 0x8
	.string	"setTrigger"
	.byte	0x2
	.byte	0xeb
	.uaword	0x277f
	.byte	0x34
	.uleb128 0x8
	.string	"stop"
	.byte	0x2
	.byte	0xec
	.uaword	0x27b7
	.byte	0x38
	.uleb128 0x8
	.string	"ackTimerIrq"
	.byte	0x2
	.byte	0xed
	.uaword	0x27d2
	.byte	0x3c
	.uleb128 0x8
	.string	"ackTriggerIrq"
	.byte	0x2
	.byte	0xee
	.uaword	0x280a
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetFrequency"
	.byte	0x2
	.byte	0x52
	.uaword	0x2575
	.uleb128 0x5
	.byte	0x4
	.uaword	0x257b
	.uleb128 0x1c
	.byte	0x1
	.uaword	0x282
	.uaword	0x258b
	.uleb128 0x1d
	.uaword	0x232b
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetPeriod"
	.byte	0x2
	.byte	0x58
	.uaword	0x25ab
	.uleb128 0x5
	.byte	0x4
	.uaword	0x25b1
	.uleb128 0x1c
	.byte	0x1
	.uaword	0x2ee
	.uaword	0x25c1
	.uleb128 0x1d
	.uaword	0x232b
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetResolution"
	.byte	0x2
	.byte	0x5e
	.uaword	0x2575
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetTrigger"
	.byte	0x2
	.byte	0x64
	.uaword	0x25ab
	.uleb128 0x3
	.string	"IfxStdIf_Timer_SetFrequency"
	.byte	0x2
	.byte	0x6c
	.uaword	0x2629
	.uleb128 0x5
	.byte	0x4
	.uaword	0x262f
	.uleb128 0x1c
	.byte	0x1
	.uaword	0x29b
	.uaword	0x2644
	.uleb128 0x1d
	.uaword	0x232b
	.uleb128 0x1d
	.uaword	0x282
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_UpdateInputFrequency"
	.byte	0x2
	.byte	0x72
	.uaword	0x266f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2675
	.uleb128 0x1e
	.byte	0x1
	.uaword	0x2681
	.uleb128 0x1d
	.uaword	0x232b
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_ApplyUpdate"
	.byte	0x2
	.byte	0x87
	.uaword	0x266f
	.uleb128 0x3
	.string	"IfxStdIf_Timer_DisableUpdate"
	.byte	0x2
	.byte	0x98
	.uaword	0x266f
	.uleb128 0x3
	.string	"IfxStdIf_Timer_GetInputFrequency"
	.byte	0x2
	.byte	0x9e
	.uaword	0x2575
	.uleb128 0x3
	.string	"IfxStdIf_Timer_Run"
	.byte	0x2
	.byte	0xa7
	.uaword	0x266f
	.uleb128 0x3
	.string	"IfxStdIf_Timer_SetPeriod"
	.byte	0x2
	.byte	0xb1
	.uaword	0x2729
	.uleb128 0x5
	.byte	0x4
	.uaword	0x272f
	.uleb128 0x1c
	.byte	0x1
	.uaword	0x29b
	.uaword	0x2744
	.uleb128 0x1d
	.uaword	0x232b
	.uleb128 0x1d
	.uaword	0x2ee
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_SetSingleMode"
	.byte	0x2
	.byte	0xba
	.uaword	0x2768
	.uleb128 0x5
	.byte	0x4
	.uaword	0x276e
	.uleb128 0x1e
	.byte	0x1
	.uaword	0x277f
	.uleb128 0x1d
	.uaword	0x232b
	.uleb128 0x1d
	.uaword	0x29b
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_SetTrigger"
	.byte	0x2
	.byte	0xc6
	.uaword	0x27a0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x27a6
	.uleb128 0x1e
	.byte	0x1
	.uaword	0x27b7
	.uleb128 0x1d
	.uaword	0x232b
	.uleb128 0x1d
	.uaword	0x2ee
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_Stop"
	.byte	0x2
	.byte	0xcc
	.uaword	0x266f
	.uleb128 0x3
	.string	"IfxStdIf_Timer_AckTimerIrq"
	.byte	0x2
	.byte	0xd2
	.uaword	0x27f4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x27fa
	.uleb128 0x1c
	.byte	0x1
	.uaword	0x29b
	.uaword	0x280a
	.uleb128 0x1d
	.uaword	0x232b
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_AckTriggerIrq"
	.byte	0x2
	.byte	0xd8
	.uaword	0x27f4
	.uleb128 0x7
	.byte	0x10
	.byte	0x2
	.byte	0xf2
	.uaword	0x28c9
	.uleb128 0x1b
	.uaword	.LASF7
	.byte	0x2
	.byte	0xf4
	.uaword	0x29b
	.byte	0
	.uleb128 0x8
	.string	"triggerPoint"
	.byte	0x2
	.byte	0xf5
	.uaword	0x2ee
	.byte	0x4
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x2
	.byte	0xf6
	.uaword	0x2da
	.byte	0x8
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x2
	.byte	0xf7
	.uaword	0x1aa4
	.byte	0xa
	.uleb128 0x8
	.string	"outputMode"
	.byte	0x2
	.byte	0xf8
	.uaword	0x1880
	.byte	0xb
	.uleb128 0x8
	.string	"outputDriver"
	.byte	0x2
	.byte	0xf9
	.uaword	0x1a3b
	.byte	0xc
	.uleb128 0x8
	.string	"risingEdgeAtPeriod"
	.byte	0x2
	.byte	0xfa
	.uaword	0x29b
	.byte	0xd
	.uleb128 0x8
	.string	"outputEnabled"
	.byte	0x2
	.byte	0xfb
	.uaword	0x29b
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Timer_TrigConfig"
	.byte	0x2
	.byte	0xfc
	.uaword	0x282e
	.uleb128 0x7
	.byte	0x24
	.byte	0x2
	.byte	0xff
	.uaword	0x2964
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x2
	.uahalf	0x101
	.uaword	0x282
	.byte	0
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x2
	.uahalf	0x102
	.uaword	0x2da
	.byte	0x4
	.uleb128 0x13
	.uaword	.LASF9
	.byte	0x2
	.uahalf	0x103
	.uaword	0x1aa4
	.byte	0x6
	.uleb128 0x12
	.string	"minResolution"
	.byte	0x2
	.uahalf	0x104
	.uaword	0x282
	.byte	0x8
	.uleb128 0x12
	.string	"trigger"
	.byte	0x2
	.uahalf	0x105
	.uaword	0x28c9
	.byte	0xc
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x106
	.uaword	0x23b4
	.byte	0x1c
	.uleb128 0x12
	.string	"startOffset"
	.byte	0x2
	.uahalf	0x107
	.uaword	0x282
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.string	"IfxStdIf_Timer_Config"
	.byte	0x2
	.uahalf	0x108
	.uaword	0x28ea
	.uleb128 0x7
	.byte	0x10
	.byte	0x11
	.byte	0x6d
	.uaword	0x29d9
	.uleb128 0x1b
	.uaword	.LASF12
	.byte	0x11
	.byte	0x6f
	.uaword	0x2ee
	.byte	0
	.uleb128 0x8
	.string	"triggerEnabled"
	.byte	0x11
	.byte	0x70
	.uaword	0x29b
	.byte	0x4
	.uleb128 0x1b
	.uaword	.LASF13
	.byte	0x11
	.byte	0x71
	.uaword	0x282
	.byte	0x8
	.uleb128 0x1b
	.uaword	.LASF11
	.byte	0x11
	.byte	0x72
	.uaword	0x23b4
	.byte	0xc
	.uleb128 0x8
	.string	"singleShot"
	.byte	0x11
	.byte	0x73
	.uaword	0x29b
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_Timer_Base"
	.byte	0x11
	.byte	0x74
	.uaword	0x2982
	.uleb128 0x7
	.byte	0x20
	.byte	0x11
	.byte	0x7c
	.uaword	0x2a50
	.uleb128 0x8
	.string	"base"
	.byte	0x11
	.byte	0x7e
	.uaword	0x29d9
	.byte	0
	.uleb128 0x8
	.string	"stm"
	.byte	0x11
	.byte	0x7f
	.uaword	0x2a50
	.byte	0x10
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x11
	.byte	0x80
	.uaword	0x1aeb
	.byte	0x14
	.uleb128 0x8
	.string	"comparatorValue"
	.byte	0x11
	.byte	0x81
	.uaword	0x274
	.byte	0x18
	.uleb128 0x8
	.string	"comparatorShift"
	.byte	0x11
	.byte	0x82
	.uaword	0x217
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x14ae
	.uleb128 0x3
	.string	"IfxStm_Timer"
	.byte	0x11
	.byte	0x83
	.uaword	0x29f2
	.uleb128 0x7
	.byte	0x2c
	.byte	0x11
	.byte	0x87
	.uaword	0x2a98
	.uleb128 0x8
	.string	"base"
	.byte	0x11
	.byte	0x89
	.uaword	0x2964
	.byte	0
	.uleb128 0x8
	.string	"stm"
	.byte	0x11
	.byte	0x8a
	.uaword	0x2a50
	.byte	0x24
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x11
	.byte	0x8b
	.uaword	0x1aeb
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.string	"IfxStm_Timer_Config"
	.byte	0x11
	.byte	0x8c
	.uaword	0x2a6a
	.uleb128 0x1f
	.string	"IfxCpu_areInterruptsEnabled"
	.byte	0x3
	.uahalf	0x275
	.byte	0x1
	.uaword	0x29b
	.byte	0x3
	.uaword	0x2afa
	.uleb128 0x20
	.string	"reg"
	.byte	0x3
	.uahalf	0x277
	.uaword	0x16b6
	.uleb128 0x21
	.uleb128 0x20
	.string	"__res"
	.byte	0x3
	.uahalf	0x278
	.uaword	0x1d0
	.byte	0
	.byte	0
	.uleb128 0x22
	.string	"__nop"
	.byte	0x4
	.uahalf	0x57b
	.byte	0x1
	.byte	0x3
	.uleb128 0x23
	.string	"IfxSrc_clearRequest"
	.byte	0x7
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0x2b2f
	.uleb128 0x24
	.string	"src"
	.byte	0x7
	.byte	0xe6
	.uaword	0x2b2f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b35
	.uleb128 0x16
	.uaword	0x1824
	.uleb128 0x25
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x6
	.uahalf	0x44f
	.byte	0x1
	.uaword	0x282
	.byte	0x3
	.uleb128 0x1f
	.string	"IfxStm_getFrequency"
	.byte	0x5
	.uahalf	0x21f
	.byte	0x1
	.uaword	0x282
	.byte	0x3
	.uaword	0x2b99
	.uleb128 0x26
	.string	"stm"
	.byte	0x5
	.uahalf	0x21f
	.uaword	0x2a50
	.uleb128 0x27
	.uaword	.LASF15
	.byte	0x5
	.uahalf	0x221
	.uaword	0x282
	.byte	0
	.uleb128 0x1f
	.string	"IfxStdIf_Timer_tickToS"
	.byte	0x2
	.uahalf	0x1a2
	.byte	0x1
	.uaword	0x282
	.byte	0x3
	.uaword	0x2bd9
	.uleb128 0x28
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0x282
	.uleb128 0x26
	.string	"ticks"
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0x2ee
	.byte	0
	.uleb128 0x1f
	.string	"IfxStdIf_Timer_sToTick"
	.byte	0x2
	.uahalf	0x1ad
	.byte	0x1
	.uaword	0x2ee
	.byte	0x3
	.uaword	0x2c1b
	.uleb128 0x28
	.uaword	.LASF13
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x282
	.uleb128 0x26
	.string	"seconds"
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x282
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxStm_Timer_setPeriod"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	0x29b
	.byte	0x1
	.uaword	0x2c57
	.uleb128 0x2a
	.uaword	.LASF6
	.byte	0x1
	.byte	0x71
	.uaword	0x2c57
	.uleb128 0x2a
	.uaword	.LASF12
	.byte	0x1
	.byte	0x71
	.uaword	0x2ee
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2a56
	.uleb128 0x2b
	.string	"IfxStm_updateCompare"
	.byte	0x5
	.uahalf	0x291
	.byte	0x1
	.byte	0x3
	.uaword	0x2ca3
	.uleb128 0x26
	.string	"stm"
	.byte	0x5
	.uahalf	0x291
	.uaword	0x2a50
	.uleb128 0x28
	.uaword	.LASF14
	.byte	0x5
	.uahalf	0x291
	.uaword	0x1aeb
	.uleb128 0x26
	.string	"ticks"
	.byte	0x5
	.uahalf	0x291
	.uaword	0x274
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxStm_Timer_acknowledgeTimerIrq"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.uaword	0x29b
	.byte	0x1
	.uaword	0x2ceb
	.uleb128 0x2a
	.uaword	.LASF6
	.byte	0x1
	.byte	0x27
	.uaword	0x2c57
	.uleb128 0x2c
	.string	"event"
	.byte	0x1
	.byte	0x29
	.uaword	0x29b
	.byte	0
	.uleb128 0x1f
	.string	"IfxCpu_disableInterrupts"
	.byte	0x3
	.uahalf	0x27d
	.byte	0x1
	.uaword	0x29b
	.byte	0x3
	.uaword	0x2d1f
	.uleb128 0x27
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x27f
	.uaword	0x29b
	.byte	0
	.uleb128 0x1f
	.string	"IfxStm_get"
	.byte	0x5
	.uahalf	0x20e
	.byte	0x1
	.uaword	0x2bb
	.byte	0x3
	.uaword	0x2d51
	.uleb128 0x26
	.string	"stm"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x2a50
	.uleb128 0x27
	.uaword	.LASF15
	.byte	0x5
	.uahalf	0x210
	.uaword	0x2bb
	.byte	0
	.uleb128 0x2b
	.string	"IfxCpu_restoreInterrupts"
	.byte	0x3
	.uahalf	0x392
	.byte	0x1
	.byte	0x3
	.uaword	0x2d81
	.uleb128 0x28
	.uaword	.LASF7
	.byte	0x3
	.uahalf	0x392
	.uaword	0x29b
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxStm_Timer_setFrequency"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	0x29b
	.byte	0x1
	.uaword	0x2dcb
	.uleb128 0x2a
	.uaword	.LASF6
	.byte	0x1
	.byte	0x69
	.uaword	0x2c57
	.uleb128 0x2a
	.uaword	.LASF10
	.byte	0x1
	.byte	0x69
	.uaword	0x282
	.uleb128 0x2d
	.uaword	.LASF12
	.byte	0x1
	.byte	0x6b
	.uaword	0x2ee
	.byte	0
	.uleb128 0x23
	.string	"IfxSrc_init"
	.byte	0x7
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0x2e10
	.uleb128 0x24
	.string	"src"
	.byte	0x7
	.byte	0xfe
	.uaword	0x2b2f
	.uleb128 0x24
	.string	"typOfService"
	.byte	0x7
	.byte	0xfe
	.uaword	0x1aa4
	.uleb128 0x24
	.string	"priority"
	.byte	0x7
	.byte	0xfe
	.uaword	0x2da
	.byte	0
	.uleb128 0x23
	.string	"IfxSrc_enable"
	.byte	0x7
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0x2e33
	.uleb128 0x24
	.string	"src"
	.byte	0x7
	.byte	0xf8
	.uaword	0x2b2f
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxStm_Timer_getFrequency"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	0x282
	.uaword	.LFB262
	.uaword	.LFE262
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e93
	.uleb128 0x2f
	.uaword	.LASF6
	.byte	0x1
	.byte	0x41
	.uaword	0x2c57
	.byte	0x1
	.byte	0x64
	.uleb128 0x30
	.uaword	0x2b99
	.uaword	.LBB57
	.uaword	.LBE57
	.byte	0x1
	.byte	0x43
	.uleb128 0x31
	.uaword	0x2bca
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x31
	.uaword	0x2bbe
	.byte	0x2
	.byte	0x84
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxStm_Timer_getInputFrequency"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.uaword	0x282
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2ed8
	.uleb128 0x2f
	.uaword	.LASF6
	.byte	0x1
	.byte	0x47
	.uaword	0x2c57
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxStm_Timer_getPeriod"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	0x2ee
	.uaword	.LFB264
	.uaword	.LFE264
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f15
	.uleb128 0x2f
	.uaword	.LASF6
	.byte	0x1
	.byte	0x4d
	.uaword	0x2c57
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxStm_Timer_getResolution"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.uaword	0x282
	.uaword	.LFB265
	.uaword	.LFE265
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f56
	.uleb128 0x2f
	.uaword	.LASF6
	.byte	0x1
	.byte	0x53
	.uaword	0x2c57
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x32
	.uaword	0x2d81
	.uaword	.LFB267
	.uaword	.LFE267
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2fa1
	.uleb128 0x31
	.uaword	0x2da9
	.byte	0x1
	.byte	0x64
	.uleb128 0x33
	.uaword	0x2db4
	.uaword	.LLST0
	.uleb128 0x34
	.uaword	0x2dbf
	.uleb128 0x35
	.uaword	0x2bd9
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6b
	.uleb128 0x33
	.uaword	0x2c0a
	.uaword	.LLST1
	.uleb128 0x31
	.uaword	0x2bfe
	.byte	0x2
	.byte	0x84
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x2c1b
	.uaword	.LFB268
	.uaword	.LFE268
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2fc4
	.uleb128 0x31
	.uaword	0x2c40
	.byte	0x1
	.byte	0x64
	.uleb128 0x31
	.uaword	0x2c4b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IfxStm_Timer_setSingleMode"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	.LFB269
	.uaword	.LFE269
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x300e
	.uleb128 0x2f
	.uaword	.LASF6
	.byte	0x1
	.byte	0x79
	.uaword	0x2c57
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.uaword	.LASF7
	.byte	0x1
	.byte	0x79
	.uaword	0x29b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IfxStm_Timer_stop"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	.LFB271
	.uaword	.LFE271
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x304e
	.uleb128 0x37
	.uaword	.LASF6
	.byte	0x1
	.byte	0x98
	.uaword	0x2c57
	.uaword	.LLST2
	.uleb128 0x38
	.uaword	.LVL12
	.byte	0x1
	.uaword	0x35a9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IfxStm_Timer_run"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB266
	.uaword	.LFE266
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3197
	.uleb128 0x37
	.uaword	.LASF6
	.byte	0x1
	.byte	0x59
	.uaword	0x2c57
	.uaword	.LLST3
	.uleb128 0x2c
	.string	"interruptState"
	.byte	0x1
	.byte	0x5b
	.uaword	0x29b
	.uleb128 0x39
	.string	"timer"
	.byte	0x1
	.byte	0x5c
	.uaword	0x2bb
	.byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3a
	.uaword	0x2ceb
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.byte	0x5e
	.uaword	0x3116
	.uleb128 0x3b
	.uaword	.LBB64
	.uaword	.LBE64
	.uleb128 0x34
	.uaword	0x2d12
	.uleb128 0x3c
	.uaword	0x2ab3
	.uaword	.LBB65
	.uaword	.LBE65
	.byte	0x3
	.uahalf	0x280
	.uaword	0x3104
	.uleb128 0x3b
	.uaword	.LBB66
	.uaword	.LBE66
	.uleb128 0x34
	.uaword	0x2add
	.uleb128 0x3b
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x3d
	.uaword	0x2aea
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uaword	0x2afa
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x3
	.uahalf	0x282
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x2d1f
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.byte	0x5f
	.uaword	0x3146
	.uleb128 0x33
	.uaword	0x2d38
	.uaword	.LLST5
	.uleb128 0x3b
	.uaword	.LBB71
	.uaword	.LBE71
	.uleb128 0x3d
	.uaword	0x2d44
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x2d51
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0x60
	.uaword	0x315f
	.uleb128 0x3f
	.uaword	0x2d74
	.byte	0
	.uleb128 0x40
	.uaword	0x2c5d
	.uaword	.LBB74
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x64
	.uaword	0x318c
	.uleb128 0x31
	.uaword	0x2c94
	.byte	0x1
	.byte	0x5f
	.uleb128 0x33
	.uaword	0x2c88
	.uaword	.LLST7
	.uleb128 0x33
	.uaword	0x2c7c
	.uaword	.LLST8
	.byte	0
	.uleb128 0x38
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x35e1
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IfxStm_Timer_updateInputFrequency"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	.LFB272
	.uaword	.LFE272
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x322b
	.uleb128 0x37
	.uaword	.LASF6
	.byte	0x1
	.byte	0x9e
	.uaword	0x2c57
	.uaword	.LLST9
	.uleb128 0x2c
	.string	"freqency"
	.byte	0x1
	.byte	0xa0
	.uaword	0x282
	.uleb128 0x35
	.uaword	0x2b5e
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xa1
	.uleb128 0x33
	.uaword	0x2b80
	.uaword	.LLST10
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x34
	.uaword	0x2b8c
	.uleb128 0x42
	.uaword	0x2b3a
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x5
	.uahalf	0x223
	.uleb128 0x43
	.uaword	.LVL29
	.uaword	0x3618
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x2ca3
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x32c0
	.uleb128 0x33
	.uaword	0x2cd2
	.uaword	.LLST11
	.uleb128 0x3d
	.uaword	0x2cdd
	.uaword	.LLST12
	.uleb128 0x40
	.uaword	0x2c5d
	.uaword	.LBB92
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x33
	.uaword	0x3280
	.uleb128 0x33
	.uaword	0x2c94
	.uaword	.LLST13
	.uleb128 0x33
	.uaword	0x2c88
	.uaword	.LLST14
	.uleb128 0x33
	.uaword	0x2c7c
	.uaword	.LLST15
	.byte	0
	.uleb128 0x44
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	0x32ad
	.uleb128 0x31
	.uaword	0x2cd2
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3b
	.uaword	.LBB97
	.uaword	.LBE97
	.uleb128 0x34
	.uaword	0x2cdd
	.uleb128 0x43
	.uaword	.LVL40
	.uaword	0x35a9
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL32
	.uaword	0x3640
	.uleb128 0x43
	.uaword	.LVL34
	.uaword	0x3672
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxStm_Timer_stdIfTimerInit"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.uaword	0x29b
	.uaword	.LFB270
	.uaword	.LFE270
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x332c
	.uleb128 0x45
	.string	"stdif"
	.byte	0x1
	.byte	0x7f
	.uaword	0x332c
	.uaword	.LLST16
	.uleb128 0x37
	.uaword	.LASF6
	.byte	0x1
	.byte	0x7f
	.uaword	0x2c57
	.uaword	.LLST17
	.uleb128 0x46
	.uaword	.LVL42
	.uaword	0x36a0
	.uleb128 0x47
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x47
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x23d3
	.uleb128 0x48
	.byte	0x1
	.string	"IfxStm_Timer_init"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	0x29b
	.uaword	.LFB273
	.uaword	.LFE273
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3502
	.uleb128 0x37
	.uaword	.LASF6
	.byte	0x1
	.byte	0xa6
	.uaword	0x2c57
	.uaword	.LLST18
	.uleb128 0x45
	.string	"config"
	.byte	0x1
	.byte	0xa6
	.uaword	0x3502
	.uaword	.LLST19
	.uleb128 0x49
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa8
	.uaword	0x29b
	.uaword	.LLST20
	.uleb128 0x4a
	.string	"base"
	.byte	0x1
	.byte	0xa9
	.uaword	0x350d
	.uaword	.LLST18
	.uleb128 0x3a
	.uaword	0x2b5e
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.byte	0xba
	.uaword	0x33e2
	.uleb128 0x33
	.uaword	0x2b80
	.uaword	.LLST22
	.uleb128 0x3b
	.uaword	.LBB99
	.uaword	.LBE99
	.uleb128 0x34
	.uaword	0x2b8c
	.uleb128 0x4b
	.uaword	0x2b3a
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x5
	.uahalf	0x223
	.uleb128 0x43
	.uaword	.LVL45
	.uaword	0x3618
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.uaword	0x2d81
	.uaword	.LBB102
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xcb
	.uaword	0x3435
	.uleb128 0x33
	.uaword	0x2db4
	.uaword	.LLST23
	.uleb128 0x33
	.uaword	0x2da9
	.uaword	.LLST24
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x34
	.uaword	0x2dbf
	.uleb128 0x30
	.uaword	0x2bd9
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.byte	0x6b
	.uleb128 0x33
	.uaword	0x2c0a
	.uaword	.LLST25
	.uleb128 0x33
	.uaword	0x2bfe
	.uaword	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	0x34ca
	.uleb128 0x4a
	.string	"src"
	.byte	0x1
	.byte	0xd8
	.uaword	0x2b2f
	.uaword	.LLST27
	.uleb128 0x40
	.uaword	0x2dcb
	.uaword	.LBB109
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xda
	.uaword	0x349a
	.uleb128 0x33
	.uaword	0x2dff
	.uaword	.LLST28
	.uleb128 0x33
	.uaword	0x2deb
	.uaword	.LLST29
	.uleb128 0x33
	.uaword	0x2de0
	.uaword	.LLST30
	.uleb128 0x4b
	.uaword	0x2b06
	.uaword	.LBB111
	.uaword	.LBE111
	.byte	0x7
	.uahalf	0x102
	.uleb128 0x33
	.uaword	0x2b23
	.uaword	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x2e10
	.uaword	.LBB115
	.uaword	.LBE115
	.byte	0x1
	.byte	0xdb
	.uaword	0x34b7
	.uleb128 0x33
	.uaword	0x2e27
	.uaword	.LLST32
	.byte	0
	.uleb128 0x43
	.uaword	.LVL58
	.uaword	0x3672
	.uleb128 0x43
	.uaword	.LVL59
	.uaword	0x36cf
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL46
	.uaword	0x3197
	.uaword	0x34de
	.uleb128 0x47
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL56
	.uaword	0x36fe
	.uaword	0x34f1
	.uleb128 0x47
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x46
	.uaword	.LVL67
	.uaword	0x3197
	.uleb128 0x47
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3508
	.uleb128 0x4d
	.uaword	0x2a98
	.uleb128 0x5
	.byte	0x4
	.uaword	0x29d9
	.uleb128 0x36
	.byte	0x1
	.string	"IfxStm_Timer_initConfig"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.uaword	.LFB274
	.uaword	.LFE274
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3571
	.uleb128 0x45
	.string	"config"
	.byte	0x1
	.byte	0xe2
	.uaword	0x3571
	.uaword	.LLST33
	.uleb128 0x45
	.string	"stm"
	.byte	0x1
	.byte	0xe2
	.uaword	0x2a50
	.uaword	.LLST34
	.uleb128 0x46
	.uaword	.LVL69
	.uaword	0x373c
	.uleb128 0x47
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2a98
	.uleb128 0x14
	.uaword	0x32a
	.uaword	0x3587
	.uleb128 0x15
	.uaword	0x1472
	.byte	0x2
	.byte	0
	.uleb128 0x4e
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x12
	.byte	0x96
	.uaword	0x35a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.uaword	0x3577
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxStm_disableComparatorInterrupt"
	.byte	0x5
	.uahalf	0x1c5
	.byte	0x1
	.byte	0x1
	.uaword	0x35e1
	.uleb128 0x1d
	.uaword	0x2a50
	.uleb128 0x1d
	.uaword	0x1aeb
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxStm_enableComparatorInterrupt"
	.byte	0x5
	.uahalf	0x1cc
	.byte	0x1
	.byte	0x1
	.uaword	0x3618
	.uleb128 0x1d
	.uaword	0x2a50
	.uleb128 0x1d
	.uaword	0x1aeb
	.byte	0
	.uleb128 0x50
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x6
	.uahalf	0x39a
	.byte	0x1
	.uaword	0x282
	.byte	0x1
	.uleb128 0x51
	.byte	0x1
	.string	"IfxStm_isCompareFlagSet"
	.byte	0x5
	.uahalf	0x1e7
	.byte	0x1
	.uaword	0x29b
	.byte	0x1
	.uaword	0x3672
	.uleb128 0x1d
	.uaword	0x2a50
	.uleb128 0x1d
	.uaword	0x1aeb
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxStm_clearCompareFlag"
	.byte	0x5
	.uahalf	0x1be
	.byte	0x1
	.byte	0x1
	.uaword	0x36a0
	.uleb128 0x1d
	.uaword	0x2a50
	.uleb128 0x1d
	.uaword	0x1aeb
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxStdIf_Timer_initStdIf"
	.byte	0x2
	.uahalf	0x1cb
	.byte	0x1
	.byte	0x1
	.uaword	0x36cf
	.uleb128 0x1d
	.uaword	0x332c
	.uleb128 0x1d
	.uaword	0x232b
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxStm_getSrcPointer"
	.byte	0x5
	.uahalf	0x1d3
	.byte	0x1
	.uaword	0x2b2f
	.byte	0x1
	.uaword	0x36fe
	.uleb128 0x1d
	.uaword	0x2a50
	.uleb128 0x1d
	.uaword	0x1aeb
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxStm_setCompareControl"
	.byte	0x5
	.uahalf	0x1f1
	.byte	0x1
	.byte	0x1
	.uaword	0x373c
	.uleb128 0x1d
	.uaword	0x2a50
	.uleb128 0x1d
	.uaword	0x1aeb
	.uleb128 0x1d
	.uaword	0x1f10
	.uleb128 0x1d
	.uaword	0x230e
	.uleb128 0x1d
	.uaword	0x1b4f
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxStdIf_Timer_initConfig"
	.byte	0x2
	.uahalf	0x1c3
	.byte	0x1
	.byte	0x1
	.uaword	0x3767
	.uleb128 0x1d
	.uaword	0x3767
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2964
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x17
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LFE267
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ad
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xe
	.byte	0xf4
	.uleb128 0x1ad
	.byte	0x4
	.uaword	0x3f800000
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ad
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE267
	.uahalf	0x10
	.byte	0xf4
	.uleb128 0x1ad
	.byte	0x4
	.uaword	0x3f800000
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ad
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LFE271
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL13
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25
	.uaword	.LFE266
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x84
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1d0
	.byte	0xf7
	.uleb128 0x1b6
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x84
	.sleb128 20
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x3
	.byte	0x72
	.sleb128 -12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL27
	.uaword	.LVL29-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29-1
	.uaword	.LFE272
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE261
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL33
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LFE261
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x3
	.byte	0x73
	.sleb128 -12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42-1
	.uaword	.LFE270
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL42-1
	.uaword	.LFE270
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL43
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1
	.uaword	.LFE273
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL43
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL45-1
	.uaword	.LFE273
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL66
	.uaword	.LFE273
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL55
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL51
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x10
	.byte	0xf4
	.uleb128 0x1ad
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x8c
	.sleb128 0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x1ad
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x8c
	.sleb128 6
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL60
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69-1
	.uaword	.LFE274
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL69-1
	.uaword	.LFE274
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x84
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.uaword	.LFB267
	.uaword	.LFE267-.LFB267
	.uaword	.LFB268
	.uaword	.LFE268-.LFB268
	.uaword	.LFB269
	.uaword	.LFE269-.LFB269
	.uaword	.LFB271
	.uaword	.LFE271-.LFB271
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.uaword	.LFB272
	.uaword	.LFE272-.LFB272
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.uaword	.LFB270
	.uaword	.LFE270-.LFB270
	.uaword	.LFB273
	.uaword	.LFE273-.LFB273
	.uaword	.LFB274
	.uaword	.LFE274-.LFB274
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0
	.uaword	0
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	0
	.uaword	0
	.uaword	.LFB262
	.uaword	.LFE262
	.uaword	.LFB263
	.uaword	.LFE263
	.uaword	.LFB264
	.uaword	.LFE264
	.uaword	.LFB265
	.uaword	.LFE265
	.uaword	.LFB267
	.uaword	.LFE267
	.uaword	.LFB268
	.uaword	.LFE268
	.uaword	.LFB269
	.uaword	.LFE269
	.uaword	.LFB271
	.uaword	.LFE271
	.uaword	.LFB266
	.uaword	.LFE266
	.uaword	.LFB272
	.uaword	.LFE272
	.uaword	.LFB261
	.uaword	.LFE261
	.uaword	.LFB270
	.uaword	.LFE270
	.uaword	.LFB273
	.uaword	.LFE273
	.uaword	.LFB274
	.uaword	.LFE274
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_0"
.LASF5:
	.string	"reserved_1"
.LASF2:
	.string	"reserved_2"
.LASF3:
	.string	"reserved_4"
.LASF6:
	.string	"driver"
.LASF7:
	.string	"enabled"
.LASF10:
	.string	"frequency"
.LASF8:
	.string	"isrPriority"
.LASF4:
	.string	"reserved_13"
.LASF14:
	.string	"comparator"
.LASF15:
	.string	"result"
.LASF13:
	.string	"clockFreq"
.LASF9:
	.string	"isrProvider"
.LASF12:
	.string	"period"
.LASF1:
	.string	"STMCAP63_32"
.LASF11:
	.string	"countDir"
	.extern	IfxStdIf_Timer_initConfig,STT_FUNC,0
	.extern	IfxStm_getSrcPointer,STT_FUNC,0
	.extern	IfxStm_setCompareControl,STT_FUNC,0
	.extern	IfxStdIf_Timer_initStdIf,STT_FUNC,0
	.extern	IfxStm_clearCompareFlag,STT_FUNC,0
	.extern	IfxStm_isCompareFlagSet,STT_FUNC,0
	.extern	IfxScuCcu_getSourceFrequency,STT_FUNC,0
	.extern	IfxStm_enableComparatorInterrupt,STT_FUNC,0
	.extern	IfxStm_disableComparatorInterrupt,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
