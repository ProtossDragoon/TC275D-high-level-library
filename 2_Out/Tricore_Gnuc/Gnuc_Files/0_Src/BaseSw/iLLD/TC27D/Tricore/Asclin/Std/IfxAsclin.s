	.file	"IfxAsclin.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxAsclin_disableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_disableModule
	.type	IfxAsclin_disableModule, @function
IfxAsclin_disableModule:
.LFB363:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Asclin/Std/IfxAsclin.c"
	.loc 1 36 0
.LVL0:
	.loc 1 36 0
	mov.aa	%a15, %a4
	.loc 1 37 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL1:
	.loc 1 38 0
	mov	%d4, %d2
	.loc 1 37 0
	mov	%d15, %d2
.LVL2:
	.loc 1 38 0
	call	IfxScuWdt_clearCpuEndinit
.LVL3:
.LBB66:
.LBB67:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/Asclin/Std/IfxAsclin.h"
	.loc 2 2217 0
	ld.w	%d2, [%a15]0
.LBE67:
.LBE66:
	.loc 1 40 0
	mov	%d4, %d15
.LBB69:
.LBB68:
	.loc 2 2217 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
.LBE68:
.LBE69:
	.loc 1 40 0
	j	IfxScuWdt_setCpuEndinit
.LVL4:
.LFE363:
	.size	IfxAsclin_disableModule, .-IfxAsclin_disableModule
.section .text.IfxAsclin_enableAscErrorFlags,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableAscErrorFlags
	.type	IfxAsclin_enableAscErrorFlags, @function
IfxAsclin_enableAscErrorFlags:
.LFB364:
	.loc 1 45 0
.LVL5:
.LBB70:
.LBB71:
	.loc 2 1806 0
	movh	%d15, 1
	sel	%d4, %d4, %d15, 0
.LVL6:
	ld.w	%d15, [%a4] 64
	insert	%d15, %d15, 0, 16, 1
	or	%d4, %d15
	st.w	[%a4] 64, %d4
.LVL7:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	.loc 2 1836 0
	movh	%d15, 1024
	sel	%d5, %d5, %d15, 0
.LVL8:
	ld.w	%d15, [%a4] 64
	insert	%d15, %d15, 0, 26, 1
	or	%d5, %d15
	st.w	[%a4] 64, %d5
	ret
.LBE73:
.LBE72:
.LFE364:
	.size	IfxAsclin_enableAscErrorFlags, .-IfxAsclin_enableAscErrorFlags
.section .text.IfxAsclin_enableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableModule
	.type	IfxAsclin_enableModule, @function
IfxAsclin_enableModule:
.LFB365:
	.loc 1 52 0
.LVL9:
	.loc 1 52 0
	mov.aa	%a15, %a4
	.loc 1 53 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL10:
	.loc 1 54 0
	mov	%d4, %d2
	.loc 1 53 0
	mov	%d15, %d2
.LVL11:
	.loc 1 54 0
	call	IfxScuWdt_clearCpuEndinit
.LVL12:
.LBB74:
.LBB75:
	.loc 2 2223 0
	ld.w	%d2, [%a15]0
.LBE75:
.LBE74:
	.loc 1 56 0
	mov	%d4, %d15
.LBB77:
.LBB76:
	.loc 2 2223 0
	andn	%d2, %d2, ~(-2)
	st.w	[%a15]0, %d2
.LBE76:
.LBE77:
	.loc 1 56 0
	j	IfxScuWdt_setCpuEndinit
.LVL13:
.LFE365:
	.size	IfxAsclin_enableModule, .-IfxAsclin_enableModule
.section .text.IfxAsclin_getAddress,"ax",@progbits
	.align 1
	.global	IfxAsclin_getAddress
	.type	IfxAsclin_getAddress, @function
IfxAsclin_getAddress:
.LFB366:
	.loc 1 61 0
.LVL14:
	.loc 1 70 0
	mov.a	%a2, 0
	.loc 1 64 0
	jge	%d4, 4, .L5
	.loc 1 66 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	addsc.a	%a15, %a15, %d4, 3
	ld.a	%a2, [%a15]0
.LVL15:
.L5:
	.loc 1 74 0
	ret
.LFE366:
	.size	IfxAsclin_getAddress, .-IfxAsclin_getAddress
.section .text.IfxAsclin_getFaFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getFaFrequency
	.type	IfxAsclin_getFaFrequency, @function
IfxAsclin_getFaFrequency:
.LFB367:
	.loc 1 78 0
.LVL16:
.LBB78:
.LBB79:
	.loc 2 1914 0
	ld.w	%d2, [%a4] 76
	and	%d2, %d2, 31
.LBE79:
.LBE78:
	.loc 1 82 0
	add	%d2, -1
	ge.u	%d15, %d2, 16
	jz	%d15, .L16
.L9:
.LVL17:
	.loc 1 108 0
	mov	%d2, 0
	ret
.LVL18:
.L16:
	.loc 1 82 0
	movh.a	%a15, hi:.L11
	lea	%a15, [%a15] lo:.L11
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L11:
	.code32
	j	.L10
	.code32
	j	.L12
	.code32
	j	.L9
	.code32
	j	.L13
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L14
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L15
.L14:
	.loc 1 97 0
	j	IfxScuCcu_getBaud2Frequency
.LVL19:
.L10:
	.loc 1 88 0
	j	IfxScuCcu_getSpbFrequency
.LVL20:
.L12:
	.loc 1 91 0
	j	IfxScuCcu_getOsc0Frequency
.LVL21:
.L13:
	.loc 1 94 0
	j	IfxScuCcu_getPllErayFrequency
.LVL22:
.L15:
	.loc 1 100 0
	j	IfxScuCcu_getBaud1Frequency
.LVL23:
.LFE367:
	.size	IfxAsclin_getFaFrequency, .-IfxAsclin_getFaFrequency
.section .text.IfxAsclin_getIndex,"ax",@progbits
	.align 1
	.global	IfxAsclin_getIndex
	.type	IfxAsclin_getIndex, @function
IfxAsclin_getIndex:
.LFB368:
	.loc 1 112 0
.LVL24:
	movh.a	%a3, hi:IfxAsclin_cfg_indexMap
	.loc 1 118 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxAsclin_cfg_indexMap
	mov.a	%a15, 3
.LVL25:
.L20:
	.loc 1 120 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a5, %a4, .L22
	.loc 1 118 0 discriminator 2
	add	%d15, 1
.LVL26:
	loop	%a15, .L20
	.loc 1 116 0
	mov	%d2, -1
.LVL27:
	.loc 1 128 0
	ret
.LVL28:
.L22:
	.loc 1 122 0
	ld.b	%d2, [%a2] 4
.LVL29:
	.loc 1 123 0
	ret
.LFE368:
	.size	IfxAsclin_getIndex, .-IfxAsclin_getIndex
.section .text.IfxAsclin_getOvsFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getOvsFrequency
	.type	IfxAsclin_getOvsFrequency, @function
IfxAsclin_getOvsFrequency:
.LFB369:
	.loc 1 132 0
.LVL30:
	.loc 1 132 0
	mov.aa	%a15, %a4
.LVL31:
.LBB80:
.LBB81:
	.loc 1 139 0
	call	IfxAsclin_getFaFrequency
.LVL32:
	ld.w	%d4, [%a15] 20
.LBE81:
.LBE80:
	.loc 1 133 0
	ld.w	%d3, [%a15] 32
.LBB85:
.LBB82:
	.loc 1 139 0
	insert	%d4, %d4, 0, 12, 20
.LBE82:
.LBE85:
	.loc 1 133 0
	ld.w	%d15, [%a15] 32
.LBB86:
.LBB83:
	.loc 1 139 0
	add	%d4, 1
	itof	%d4, %d4
.LBE83:
.LBE86:
	.loc 1 133 0
	extr.u	%d3, %d3, 16, 12
.LBB87:
.LBB84:
	.loc 1 139 0
	div.f	%d2, %d2, %d4
.LBE84:
.LBE87:
	.loc 1 133 0
	itof	%d3, %d3
	insert	%d15, %d15, 0, 12, 20
	mul.f	%d2, %d3, %d2
	itof	%d15, %d15
	.loc 1 134 0
	div.f	%d2, %d2, %d15
	ret
.LFE369:
	.size	IfxAsclin_getOvsFrequency, .-IfxAsclin_getOvsFrequency
.section .text.IfxAsclin_getPdFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getPdFrequency
	.type	IfxAsclin_getPdFrequency, @function
IfxAsclin_getPdFrequency:
.LFB370:
	.loc 1 138 0
.LVL33:
	.loc 1 138 0
	mov.aa	%a15, %a4
	.loc 1 139 0
	call	IfxAsclin_getFaFrequency
.LVL34:
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 12, 20
	add	%d15, 1
	itof	%d15, %d15
	.loc 1 140 0
	div.f	%d2, %d2, %d15
	ret
.LFE370:
	.size	IfxAsclin_getPdFrequency, .-IfxAsclin_getPdFrequency
.section .text.IfxAsclin_getShiftFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getShiftFrequency
	.type	IfxAsclin_getShiftFrequency, @function
IfxAsclin_getShiftFrequency:
.LFB371:
	.loc 1 144 0
.LVL35:
	.loc 1 144 0
	mov.aa	%a15, %a4
	.loc 1 145 0
	call	IfxAsclin_getOvsFrequency
.LVL36:
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 16, 4
	itof	%d15, %d15
	.loc 1 146 0
	div.f	%d2, %d2, %d15
	ret
.LFE371:
	.size	IfxAsclin_getShiftFrequency, .-IfxAsclin_getShiftFrequency
.section .text.IfxAsclin_getSrcPointerEr,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerEr
	.type	IfxAsclin_getSrcPointerEr, @function
IfxAsclin_getSrcPointerEr:
.LFB372:
	.loc 1 150 0
.LVL37:
	movh.a	%a3, hi:IfxAsclin_cfg_indexMap
.LBB88:
.LBB89:
	.loc 1 118 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxAsclin_cfg_indexMap
	mov.a	%a15, 3
.LVL38:
.L29:
	.loc 1 120 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a4, %a5, .L31
	.loc 1 118 0
	add	%d15, 1
.LVL39:
	loop	%a15, .L29
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32644
.LVL40:
.LBE89:
.LBE88:
	.loc 1 152 0
	ret
.LVL41:
.L31:
	ld.b	%d15, [%a2] 4
.LVL42:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32632
	addih.a	%a2, %a2, 61444
	ret
.LFE372:
	.size	IfxAsclin_getSrcPointerEr, .-IfxAsclin_getSrcPointerEr
.section .text.IfxAsclin_getSrcPointerRx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerRx
	.type	IfxAsclin_getSrcPointerRx, @function
IfxAsclin_getSrcPointerRx:
.LFB373:
	.loc 1 156 0
.LVL43:
	movh.a	%a3, hi:IfxAsclin_cfg_indexMap
.LBB90:
.LBB91:
	.loc 1 118 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxAsclin_cfg_indexMap
	mov.a	%a15, 3
.LVL44:
.L35:
	.loc 1 120 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a4, %a5, .L37
	.loc 1 118 0
	add	%d15, 1
.LVL45:
	loop	%a15, .L35
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32648
.LVL46:
.LBE91:
.LBE90:
	.loc 1 158 0
	ret
.LVL47:
.L37:
	ld.b	%d15, [%a2] 4
.LVL48:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32636
	addih.a	%a2, %a2, 61444
	ret
.LFE373:
	.size	IfxAsclin_getSrcPointerRx, .-IfxAsclin_getSrcPointerRx
.section .text.IfxAsclin_getSrcPointerTx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerTx
	.type	IfxAsclin_getSrcPointerTx, @function
IfxAsclin_getSrcPointerTx:
.LFB374:
	.loc 1 162 0
.LVL49:
	movh.a	%a3, hi:IfxAsclin_cfg_indexMap
.LBB92:
.LBB93:
	.loc 1 118 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxAsclin_cfg_indexMap
	mov.a	%a15, 3
.LVL50:
.L41:
	.loc 1 120 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a4, %a5, .L43
	.loc 1 118 0
	add	%d15, 1
.LVL51:
	loop	%a15, .L41
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32652
.LVL52:
.LBE93:
.LBE92:
	.loc 1 164 0
	ret
.LVL53:
.L43:
	ld.b	%d15, [%a2] 4
.LVL54:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32640
	addih.a	%a2, %a2, 61444
	ret
.LFE374:
	.size	IfxAsclin_getSrcPointerTx, .-IfxAsclin_getSrcPointerTx
.section .text.IfxAsclin_read16,"ax",@progbits
	.align 1
	.global	IfxAsclin_read16
	.type	IfxAsclin_read16, @function
IfxAsclin_read16:
.LFB375:
	.loc 1 168 0
.LVL55:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 171 0
	jz	%d4, .L50
.LVL56:
.L48:
	.loc 1 173 0
	ld.w	%d15, [%a4] 72
	st.h	[%a5]0, %d15
	add.a	%a5, 2
.LVL57:
	loop	%a15, .L48
.L50:
	.loc 1 178 0
	mov	%d2, 0
	ret
.LFE375:
	.size	IfxAsclin_read16, .-IfxAsclin_read16
.section .text.IfxAsclin_read32,"ax",@progbits
	.align 1
	.global	IfxAsclin_read32
	.type	IfxAsclin_read32, @function
IfxAsclin_read32:
.LFB376:
	.loc 1 182 0
.LVL58:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 185 0
	jz	%d4, .L57
.LVL59:
.L55:
	.loc 1 187 0
	ld.w	%d15, [%a4] 72
	st.w	[%a5]0, %d15
	add.a	%a5, 4
.LVL60:
	loop	%a15, .L55
.L57:
	.loc 1 192 0
	mov	%d2, 0
	ret
.LFE376:
	.size	IfxAsclin_read32, .-IfxAsclin_read32
.section .text.IfxAsclin_read8,"ax",@progbits
	.align 1
	.global	IfxAsclin_read8
	.type	IfxAsclin_read8, @function
IfxAsclin_read8:
.LFB377:
	.loc 1 196 0
.LVL61:
	mov.d	%d15, %a5
	addsc.a	%a15, %a5, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 199 0
	jz	%d4, .L64
.LVL62:
.L62:
	.loc 1 201 0
	ld.w	%d15, [%a4] 72
	st.b	[%a5]0, %d15
.LVL63:
	add.a	%a5, 1
.LVL64:
	loop	%a15, .L62
.LVL65:
.L64:
	.loc 1 206 0
	mov	%d2, 0
	ret
.LFE377:
	.size	IfxAsclin_read8, .-IfxAsclin_read8
.section .text.IfxAsclin_resetModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_resetModule
	.type	IfxAsclin_resetModule, @function
IfxAsclin_resetModule:
.LFB378:
	.loc 1 210 0
.LVL66:
	.loc 1 210 0
	mov.aa	%a15, %a4
	.loc 1 211 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL67:
	.loc 1 212 0
	mov	%d4, %d2
	.loc 1 211 0
	mov	%d8, %d2
.LVL68:
	.loc 1 212 0
	call	IfxScuWdt_clearCpuEndinit
.LVL69:
	.loc 1 214 0
	ld.w	%d15, [%a15] 244
	.loc 1 216 0
	mov	%d4, %d8
	.loc 1 214 0
	or	%d15, %d15, 1
	st.w	[%a15] 244, %d15
	.loc 1 215 0
	ld.w	%d15, [%a15] 240
	or	%d15, %d15, 1
	st.w	[%a15] 240, %d15
	.loc 1 216 0
	call	IfxScuWdt_setCpuEndinit
.LVL70:
.L66:
	.loc 1 218 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L66
	.loc 1 221 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL71:
	.loc 1 222 0
	ld.w	%d15, [%a15] 236
	.loc 1 224 0
	mov	%d4, %d8
	.loc 1 222 0
	or	%d15, %d15, 1
	st.w	[%a15] 236, %d15
	.loc 1 224 0
	j	IfxScuWdt_setCpuEndinit
.LVL72:
.LFE378:
	.size	IfxAsclin_resetModule, .-IfxAsclin_resetModule
.section .text.IfxAsclin_setBaudrateBitFields,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBaudrateBitFields
	.type	IfxAsclin_setBaudrateBitFields, @function
IfxAsclin_setBaudrateBitFields:
.LFB379:
	.loc 1 229 0
.LVL73:
.LBB94:
.LBB95:
	.loc 2 1914 0
	ld.w	%d2, [%a4] 76
.LBE95:
.LBE94:
.LBB97:
.LBB98:
	.loc 1 341 0
	ld.w	%d15, [%a4] 76
.LBE98:
.LBE97:
.LBB102:
.LBB96:
	.loc 2 1914 0
	and	%d2, %d2, 31
.LVL74:
.LBE96:
.LBE102:
.LBB103:
.LBB101:
	.loc 1 341 0
	andn	%d15, %d15, ~(-32)
	st.w	[%a4] 76, %d15
.L70:
.LVL75:
.LBB99:
.LBB100:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE100:
.LBE99:
	.loc 1 346 0
	jltz	%d15, .L70
.LVL76:
.LBE101:
.LBE103:
.LBB104:
.LBB105:
	.loc 2 2319 0
	ld.w	%d15, [%a4] 20
	add	%d4, -1
.LVL77:
	insert	%d4, %d15, %d4, 0, 12
.LVL78:
	st.w	[%a4] 20, %d4
.LVL79:
.LBE105:
.LBE104:
.LBB106:
.LBB107:
	.loc 2 2301 0
	ld.w	%d15, [%a4] 32
	insert	%d5, %d15, %d5, 16, 12
.LVL80:
	st.w	[%a4] 32, %d5
.LVL81:
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	.loc 2 2211 0
	ld.w	%d15, [%a4] 32
	insert	%d6, %d15, %d6, 0, 12
.LVL82:
	st.w	[%a4] 32, %d6
.LVL83:
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	.loc 2 2307 0
	ld.w	%d15, [%a4] 20
	insert	%d7, %d15, %d7, 16, 4
.LVL84:
	st.w	[%a4] 20, %d7
.LVL85:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	.loc 1 341 0
	ld.w	%d15, [%a4] 76
	andn	%d15, %d15, ~(-32)
	or	%d15, %d2
	st.w	[%a4] 76, %d15
	.loc 1 344 0
	jnz	%d2, .L77
.L72:
.LVL86:
.LBB114:
.LBB115:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE115:
.LBE114:
	.loc 1 346 0
	jltz	%d15, .L72
	ret
.LVL87:
.L77:
.LBB116:
.LBB117:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE117:
.LBE116:
	.loc 1 351 0
	jgez	%d15, .L77
	ret
.LBE113:
.LBE112:
.LFE379:
	.size	IfxAsclin_setBaudrateBitFields, .-IfxAsclin_setBaudrateBitFields
	.global	__extendsfdf2
	.global	__muldf3
	.global	__truncdfsf2
.section .text.IfxAsclin_setBitTiming,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBitTiming
	.type	IfxAsclin_setBitTiming, @function
IfxAsclin_setBitTiming:
.LFB380:
	.loc 1 241 0
.LVL88:
.LBB118:
.LBB119:
	.loc 2 1914 0
	ld.w	%d2, [%a4] 76
.LBE119:
.LBE118:
	.loc 1 241 0
	mov.a	%a14, %d7
	sub.a	%SP, 8
.LCFI0:
.LBB122:
.LBB120:
	.loc 2 1914 0
	and	%d2, %d2, 31
.LBE120:
.LBE122:
	.loc 1 241 0
	mov.aa	%a15, %a4
	mov	%d15, %d5
	mov	%d8, %d4
	mov	%d10, %d6
.LBB123:
.LBB121:
	.loc 2 1914 0
	mov.a	%a13, %d2
.LVL89:
.LBE121:
.LBE123:
.LBB124:
.LBB125:
	.loc 1 139 0
	call	IfxAsclin_getFaFrequency
.LVL90:
	ld.w	%d3, [%a15] 20
.LBE125:
.LBE124:
	.loc 1 249 0
	add	%d5, %d15, 1
.LBB128:
.LBB126:
	.loc 1 139 0
	insert	%d3, %d3, 0, 12, 20
.LBE126:
.LBE128:
.LBB129:
.LBB130:
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 150 0
	mov	%d15, 4
.LBE130:
.LBE129:
.LBB132:
.LBB127:
	.loc 1 139 0
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d3, %d2, %d3
	mov.a	%a12, %d3
.LVL91:
.LBE127:
.LBE132:
.LBB133:
.LBB131:
	.loc 3 150 0
#APP
	# 150 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d5, %d15
	# 0 "" 2
.LVL92:
#NO_APP
.LBE131:
.LBE133:
	.loc 1 249 0
	and	%d2, %d15, 255
	st.w	[%SP]0, %d2
.LVL93:
.LBB134:
.LBB135:
	.loc 3 150 0
	mov	%d9, 1
#APP
	# 150 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d10, %d9
	# 0 "" 2
.LVL94:
#NO_APP
	and	%d13, %d15, 255
.LBE135:
.LBE134:
	.loc 1 251 0
	itof	%d13, %d13
	.loc 1 250 0
	and	%d2, %d2, 255
.LVL95:
	.loc 1 251 0
	mul.f	%d13, %d13, %d8
	.loc 1 250 0
	st.w	[%SP] 4, %d2
.LVL96:
	.loc 1 253 0
	mov	%d4, %d13
	call	__extendsfdf2
.LVL97:
	movh	%d7, 16208
	mov	%e4, %d3, %d2
	movh	%d6, 54002
	addi	%d7, %d7, 25165
	addi	%d6, %d6, -22020
	call	__muldf3
.LVL98:
	mov	%e4, %d3, %d2
	.loc 1 280 0
	mov	%d14, 0
	.loc 1 253 0
	call	__truncdfsf2
.LVL99:
	.loc 1 259 0
	mov.d	%d5, %a12
	.loc 1 287 0
	mov	%d0, 1
	.loc 1 259 0
	div.f	%d4, %d5, %d13
	ftouz	%d4, %d4
	.loc 1 279 0
	utof	%d3, %d4
	.loc 1 259 0
	mov.a	%a2, %d4
.LVL100:
	.loc 1 279 0
	div.f	%d3, %d5, %d3
.LVL101:
	.loc 1 276 0
	mov.d	%d8, %a2
.LVL102:
	.loc 1 280 0
	sub.f	%d3, %d13, %d3
.LVL103:
	cmp.f	%d15, %d3, %d14
.LVL104:
	extr.u	%d15, %d15, 0, 1
	addih	%d4, %d3, 0x8000
.LVL105:
	cmov	%d3, %d15, %d4
.LVL106:
	.loc 1 287 0
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L82
	mov.d	%d15, %a2
	mov	%d4, 4096
	sh	%d15, 1
	jge.u	%d15, %d4, .L82
	mul	%d4, %d8, 3
	mov.a	%a5, %d15
	mov	%d1, 0
	mov.a	%a3, %d4
	mov	%d11, 2
	sub.a	%a4, %a5, %a3
	lea	%a5, 4096
.LVL107:
.L94:
	add.a	%a6, %a3, %a4
	mov.d	%d7, %a6
.LVL108:
	.loc 1 289 0
	jeq	%d11, 2, .L100
	.loc 1 296 0
	mul	%d12, %d1, %d11
	div.u	%e4, %d12, %d0
	.loc 1 297 0
	addi	%d12, %d4, 1
	.loc 1 296 0
	mov	%d6, %d4
.LVL109:
	.loc 1 300 0
	jlt.u	%d12, %d4, .L84
.LVL110:
.L83:
	utof	%d4, %d11
	mov.d	%d5, %a12
	mul.f	%d4, %d5, %d4
.LVL111:
.L89:
	add	%d9, %d7, %d6
.LVL112:
	.loc 1 302 0
	utof	%d15, %d9
	div.f	%d15, %d4, %d15
.LVL113:
	.loc 1 303 0
	sub.f	%d15, %d13, %d15
.LVL114:
	cmp.f	%d5, %d15, %d14
	extr.u	%d5, %d5, 0, 1
	addih	%d10, %d15, 0x8000
	sel	%d15, %d5, %d10, %d15
.LVL115:
	.loc 1 305 0
	cmp.f	%d5, %d15, %d3
	extr.u	%d5, %d5, 0, 1
	seln	%d1, %d5, %d1, %d6
.LVL116:
	.loc 1 300 0
	add	%d6, 1
.LVL117:
	.loc 1 305 0
	seln	%d3, %d5, %d3, %d15
.LVL118:
	seln	%d0, %d5, %d0, %d11
.LVL119:
	seln	%d8, %d5, %d8, %d9
.LVL120:
	.loc 1 300 0
	jge.u	%d12, %d6, .L89
.LVL121:
.L84:
	.loc 1 314 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L113
	.loc 1 287 0
	mov.d	%d4, %a3
	mov.d	%d5, %a5
	add.a	%a6, %a3, %a2
	add	%d11, 1
.LVL122:
	mov.d	%d15, %a6
	jge.u	%d4, %d5, .L113
	mov.a	%a3, %d15
	j	.L94
.LVL123:
.L100:
	.loc 1 292 0
	mov	%d12, 1
	.loc 1 291 0
	mov	%d6, 1
	j	.L83
.LVL124:
.L113:
	insert	%d0, %d0, 0, 12, 20
.LVL125:
.L82:
.LBB136:
.LBB137:
	.loc 1 341 0
	ld.w	%d4, [%a15] 76
	andn	%d4, %d4, ~(-32)
	st.w	[%a15] 76, %d4
.LVL126:
.L90:
.LBB138:
.LBB139:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE139:
.LBE138:
	.loc 1 346 0
	jltz	%d15, .L90
.LBE137:
.LBE136:
	.loc 1 321 0
	ld.w	%d2, [%a15] 32
.LVL127:
	.loc 1 322 0
	sh	%d0, %d0, 16
	.loc 1 321 0
	insert	%d8, %d2, %d8, 0, 12
.LVL128:
	.loc 1 325 0
	ld.w	%d15, [%SP]0
	.loc 1 321 0
	st.w	[%a15] 32, %d8
	.loc 1 322 0
	ld.w	%d4, [%a15] 32
	.loc 1 325 0
	add	%d15, -1
	.loc 1 322 0
	insert	%d4, %d4, 0, 16, 12
	or	%d0, %d4
	st.w	[%a15] 32, %d0
	.loc 1 325 0
	ld.w	%d3, [%a15] 20
.LVL129:
.LBB140:
.LBB141:
	.loc 1 341 0
	mov.d	%d4, %a13
.LBE141:
.LBE140:
	.loc 1 325 0
	insert	%d3, %d3, %d15, 16, 4
	.loc 1 328 0
	ld.w	%d15, [%SP] 4
	.loc 1 325 0
	st.w	[%a15] 20, %d3
	.loc 1 328 0
	ld.w	%d2, [%a15] 20
	insert	%d2, %d2, %d15, 24, 4
	.loc 1 331 0
	movh	%d15, 32768
	.loc 1 328 0
	st.w	[%a15] 20, %d2
	.loc 1 331 0
	mov.d	%d2, %a14
	sel	%d7, %d2, %d15, 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 31, 1
	or	%d15, %d7
	st.w	[%a15] 20, %d15
.LVL130:
.LBB150:
.LBB148:
	.loc 1 341 0
	ld.w	%d15, [%a15] 76
	andn	%d15, %d15, ~(-32)
	or	%d15, %d4
	st.w	[%a15] 76, %d15
	.loc 1 344 0
	jnz.a	%a13, .L110
.L92:
.LVL131:
.LBB142:
.LBB143:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE143:
.LBE142:
	.loc 1 346 0
	jltz	%d15, .L92
.LVL132:
.L112:
.LBE148:
.LBE150:
	.loc 1 336 0
	mov	%d2, 1
	ret
.L110:
.LVL133:
.LBB151:
.LBB149:
.LBB144:
.LBB145:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE145:
.LBE144:
	.loc 1 351 0
	jltz	%d15, .L112
.LBB147:
.LBB146:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE146:
.LBE147:
	.loc 1 351 0
	jgez	%d15, .L110
	j	.L112
.LBE149:
.LBE151:
.LFE380:
	.size	IfxAsclin_setBitTiming, .-IfxAsclin_setBitTiming
.section .text.IfxAsclin_setClockSource,"ax",@progbits
	.align 1
	.global	IfxAsclin_setClockSource
	.type	IfxAsclin_setClockSource, @function
IfxAsclin_setClockSource:
.LFB381:
	.loc 1 340 0
.LVL134:
	.loc 1 341 0
	ld.w	%d15, [%a4] 76
	insert	%d15, %d15, %d4, 0, 5
	st.w	[%a4] 76, %d15
	.loc 1 344 0
	jnz	%d4, .L122
.L118:
.LVL135:
.LBB152:
.LBB153:
	.loc 2 1920 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE153:
.LBE152:
	.loc 1 346 0 discriminator 1
	jltz	%d15, .L118
	ret
.LVL136:
.L122:
.LBB154:
.LBB155:
	.loc 2 1920 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE155:
.LBE154:
	.loc 1 351 0 discriminator 1
	jgez	%d15, .L122
	ret
.LFE381:
	.size	IfxAsclin_setClockSource, .-IfxAsclin_setClockSource
.section .text.IfxAsclin_write16,"ax",@progbits
	.align 1
	.global	IfxAsclin_write16
	.type	IfxAsclin_write16, @function
IfxAsclin_write16:
.LFB382:
	.loc 1 358 0
.LVL137:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 361 0
	jz	%d4, .L130
.LVL138:
.L128:
	.loc 1 363 0
	ld.hu	%d15, [%a5]0
	add.a	%a5, 2
.LVL139:
	st.w	[%a4] 68, %d15
.LVL140:
	loop	%a15, .L128
.L130:
	.loc 1 368 0
	mov	%d2, 0
	ret
.LFE382:
	.size	IfxAsclin_write16, .-IfxAsclin_write16
.section .text.IfxAsclin_write32,"ax",@progbits
	.align 1
	.global	IfxAsclin_write32
	.type	IfxAsclin_write32, @function
IfxAsclin_write32:
.LFB383:
	.loc 1 372 0
.LVL141:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 375 0
	jz	%d4, .L137
.LVL142:
.L135:
	.loc 1 377 0
	ld.w	%d15, [%a5]0
	add.a	%a5, 4
.LVL143:
	st.w	[%a4] 68, %d15
.LVL144:
	loop	%a15, .L135
.L137:
	.loc 1 382 0
	mov	%d2, 0
	ret
.LFE383:
	.size	IfxAsclin_write32, .-IfxAsclin_write32
.section .text.IfxAsclin_write8,"ax",@progbits
	.align 1
	.global	IfxAsclin_write8
	.type	IfxAsclin_write8, @function
IfxAsclin_write8:
.LFB384:
	.loc 1 386 0
.LVL145:
	mov.d	%d15, %a5
	addsc.a	%a15, %a5, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 389 0
	jz	%d4, .L144
.LVL146:
.L142:
	.loc 1 391 0
	ld.bu	%d15, [%a5]0
	add.a	%a5, 1
.LVL147:
	st.w	[%a4] 68, %d15
.LVL148:
	loop	%a15, .L142
.L144:
	.loc 1 396 0
	mov	%d2, 0
	ret
.LFE384:
	.size	IfxAsclin_write8, .-IfxAsclin_write8
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
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.byte	0x4
	.uaword	.LCFI0-.LFB380
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB381
	.uaword	.LFE381-.LFB381
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB382
	.uaword	.LFE382-.LFB382
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB384
	.uaword	.LFE384-.LFB384
	.align 2
.LEFDE42:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxAsclin_regdef.h"
	.file 7 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxAsclin_cfg.h"
	.file 8 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxSrc_regdef.h"
	.file 9 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 10 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
	.file 11 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5b3d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Asclin/Std/IfxAsclin.c"
	.string	"C:\\\\Users\\\\user\\\\Desktop\\\\programming_PROJECTS\\\\\307\321\276\347\264\353_\300\323\272\243\265\360\265\345\275\303\275\272\305\333\\\\DevBaseEnv_vscode_TC27D"
	.uaword	.Ldebug_ranges0+0x118
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
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
	.byte	0x4
	.byte	0x59
	.uaword	0x208
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x234
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x1c4
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1d0
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x1ab
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x68
	.uaword	0x208
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
	.uaword	0x2c7
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x7d
	.uaword	0x2ee
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x7f
	.uaword	0x2c1
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x80
	.uaword	0x24a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x81
	.uaword	0x2c8
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x51f
	.uleb128 0x9
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x308
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x56d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.byte	0x54
	.uaword	0x1b4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x53d
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BITCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x633
	.uleb128 0x9
	.string	"PRESCALER"
	.byte	0x6
	.byte	0x5a
	.uaword	0x1b4
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0x5b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"OVERSAMPLING"
	.byte	0x6
	.byte	0x5c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"reserved_20"
	.byte	0x6
	.byte	0x5d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"SAMPLEPOINT"
	.byte	0x6
	.byte	0x5e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x5f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"SM"
	.byte	0x6
	.byte	0x60
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BITCON_Bits"
	.byte	0x6
	.byte	0x61
	.uaword	0x58b
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BRD_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x64
	.uaword	0x6be
	.uleb128 0x9
	.string	"LOWERLIMIT"
	.byte	0x6
	.byte	0x66
	.uaword	0x1b4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"UPPERLIMIT"
	.byte	0x6
	.byte	0x67
	.uaword	0x1b4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"MEASURED"
	.byte	0x6
	.byte	0x68
	.uaword	0x1b4
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x69
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRD_Bits"
	.byte	0x6
	.byte	0x6a
	.uaword	0x651
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BRG_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.uaword	0x741
	.uleb128 0x9
	.string	"DENOMINATOR"
	.byte	0x6
	.byte	0x6f
	.uaword	0x1b4
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0x70
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"NUMERATOR"
	.byte	0x6
	.byte	0x71
	.uaword	0x1b4
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x72
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRG_Bits"
	.byte	0x6
	.byte	0x73
	.uaword	0x6d9
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x76
	.uaword	0x7c8
	.uleb128 0x9
	.string	"DISR"
	.byte	0x6
	.byte	0x78
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"DISS"
	.byte	0x6
	.byte	0x79
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x6
	.byte	0x7a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EDIS"
	.byte	0x6
	.byte	0x7b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x7c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CLC_Bits"
	.byte	0x6
	.byte	0x7d
	.uaword	0x75c
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_CSR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x80
	.uaword	0x838
	.uleb128 0x9
	.string	"CLKSEL"
	.byte	0x6
	.byte	0x82
	.uaword	0x1b4
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"reserved_5"
	.byte	0x6
	.byte	0x83
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"CON"
	.byte	0x6
	.byte	0x84
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CSR_Bits"
	.byte	0x6
	.byte	0x85
	.uaword	0x7e3
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_DATCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x88
	.uaword	0x8e3
	.uleb128 0x9
	.string	"DATLEN"
	.byte	0x6
	.byte	0x8a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x8b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"HO"
	.byte	0x6
	.byte	0x8c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"RM"
	.byte	0x6
	.byte	0x8d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"CSM"
	.byte	0x6
	.byte	0x8e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"RESPONSE"
	.byte	0x6
	.byte	0x8f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x6
	.byte	0x90
	.uaword	0x1b4
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_DATCON_Bits"
	.byte	0x6
	.byte	0x91
	.uaword	0x853
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x94
	.uaword	0xaab
	.uleb128 0x9
	.string	"TH"
	.byte	0x6
	.byte	0x96
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TR"
	.byte	0x6
	.byte	0x97
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RH"
	.byte	0x6
	.byte	0x98
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RR"
	.byte	0x6
	.byte	0x99
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x9a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FED"
	.byte	0x6
	.byte	0x9b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"RED"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0x9d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQ"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQ"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQ"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PE"
	.byte	0x6
	.byte	0xa1
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TC"
	.byte	0x6
	.byte	0xa2
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FE"
	.byte	0x6
	.byte	0xa3
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HT"
	.byte	0x6
	.byte	0xa4
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RT"
	.byte	0x6
	.byte	0xa5
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BD"
	.byte	0x6
	.byte	0xa6
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LP"
	.byte	0x6
	.byte	0xa7
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"LA"
	.byte	0x6
	.byte	0xa8
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LC"
	.byte	0x6
	.byte	0xa9
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CE"
	.byte	0x6
	.byte	0xaa
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFO"
	.byte	0x6
	.byte	0xab
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFU"
	.byte	0x6
	.byte	0xac
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFL"
	.byte	0x6
	.byte	0xad
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xae
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFO"
	.byte	0x6
	.byte	0xaf
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFL"
	.byte	0x6
	.byte	0xb0
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x6
	.byte	0xb1
	.uaword	0x901
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb4
	.uaword	0xc8f
	.uleb128 0x9
	.string	"THC"
	.byte	0x6
	.byte	0xb6
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRC"
	.byte	0x6
	.byte	0xb7
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHC"
	.byte	0x6
	.byte	0xb8
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRC"
	.byte	0x6
	.byte	0xb9
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xba
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDC"
	.byte	0x6
	.byte	0xbb
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDC"
	.byte	0x6
	.byte	0xbc
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xbd
	.uaword	0x1b4
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQC"
	.byte	0x6
	.byte	0xbe
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQC"
	.byte	0x6
	.byte	0xbf
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQC"
	.byte	0x6
	.byte	0xc0
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PEC"
	.byte	0x6
	.byte	0xc1
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCC"
	.byte	0x6
	.byte	0xc2
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FEC"
	.byte	0x6
	.byte	0xc3
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HTC"
	.byte	0x6
	.byte	0xc4
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RTC"
	.byte	0x6
	.byte	0xc5
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BDC"
	.byte	0x6
	.byte	0xc6
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LPC"
	.byte	0x6
	.byte	0xc7
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"LAC"
	.byte	0x6
	.byte	0xc8
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LCC"
	.byte	0x6
	.byte	0xc9
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CEC"
	.byte	0x6
	.byte	0xca
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFOC"
	.byte	0x6
	.byte	0xcb
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFUC"
	.byte	0x6
	.byte	0xcc
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFLC"
	.byte	0x6
	.byte	0xcd
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xce
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFOC"
	.byte	0x6
	.byte	0xcf
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFLC"
	.byte	0x6
	.byte	0xd0
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x6
	.byte	0xd1
	.uaword	0xac8
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd4
	.uaword	0xe46
	.uleb128 0x9
	.string	"THE"
	.byte	0x6
	.byte	0xd6
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRE"
	.byte	0x6
	.byte	0xd7
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHE"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRE"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xda
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDE"
	.byte	0x6
	.byte	0xdb
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDE"
	.byte	0x6
	.byte	0xdc
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xdd
	.uaword	0x1b4
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PEE"
	.byte	0x6
	.byte	0xde
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCE"
	.byte	0x6
	.byte	0xdf
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FEE"
	.byte	0x6
	.byte	0xe0
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HTE"
	.byte	0x6
	.byte	0xe1
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RTE"
	.byte	0x6
	.byte	0xe2
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BDE"
	.byte	0x6
	.byte	0xe3
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LPE"
	.byte	0x6
	.byte	0xe4
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"ABE"
	.byte	0x6
	.byte	0xe5
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LCE"
	.byte	0x6
	.byte	0xe6
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CEE"
	.byte	0x6
	.byte	0xe7
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFOE"
	.byte	0x6
	.byte	0xe8
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFUE"
	.byte	0x6
	.byte	0xe9
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFLE"
	.byte	0x6
	.byte	0xea
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xeb
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFOE"
	.byte	0x6
	.byte	0xec
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFLE"
	.byte	0x6
	.byte	0xed
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x6
	.byte	0xee
	.uaword	0xcb1
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf1
	.uaword	0x103c
	.uleb128 0x9
	.string	"THS"
	.byte	0x6
	.byte	0xf3
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRS"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHS"
	.byte	0x6
	.byte	0xf5
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRS"
	.byte	0x6
	.byte	0xf6
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xf7
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDS"
	.byte	0x6
	.byte	0xf8
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDS"
	.byte	0x6
	.byte	0xf9
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xfa
	.uaword	0x1b4
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQS"
	.byte	0x6
	.byte	0xfb
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQS"
	.byte	0x6
	.byte	0xfc
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQS"
	.byte	0x6
	.byte	0xfd
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PES"
	.byte	0x6
	.byte	0xfe
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCS"
	.byte	0x6
	.byte	0xff
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"FES"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"HTS"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"RTS"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"BDS"
	.byte	0x6
	.uahalf	0x103
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"LPS"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"LAS"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"LCS"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CES"
	.byte	0x6
	.uahalf	0x107
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"RFOS"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"RFUS"
	.byte	0x6
	.uahalf	0x109
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"RFLS"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"TFOS"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"TFLS"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0xe69
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x111
	.uaword	0x113d
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x113
	.uaword	0x1b4
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"IDLE"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x1b4
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"STOP"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x1b4
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"LEAD"
	.byte	0x6
	.uahalf	0x116
	.uaword	0x1b4
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x117
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x1b4
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x119
	.uaword	0x1b4
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"MSB"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"CEN"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"PEN"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"ODD"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x105d
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_ID_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x121
	.uaword	0x11b9
	.uleb128 0xb
	.string	"MODREV"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x1b4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MODTYPE"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x1b4
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x1b4
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ID_Bits"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x115e
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_IOCR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x129
	.uaword	0x12d3
	.uleb128 0xb
	.string	"ALTI"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"DEPTH"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CTS"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1b4
	.byte	0x4
	.byte	0x7
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"RCPOL"
	.byte	0x6
	.uahalf	0x131
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"CPOL"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"SPOL"
	.byte	0x6
	.uahalf	0x133
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"LB"
	.byte	0x6
	.uahalf	0x134
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"CTSEN"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"RXM"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"TXM"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_IOCR_Bits"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x11d4
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1345
	.uleb128 0xb
	.string	"RST"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"RSTSTAT"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST0_Bits"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x12f0
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x143
	.uaword	0x13a4
	.uleb128 0xb
	.string	"RST"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST1_Bits"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x1363
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x1405
	.uleb128 0xb
	.string	"CLR"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x13c2
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x151
	.uaword	0x1474
	.uleb128 0xb
	.string	"BREAK"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x1b4
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"reserved_6"
	.byte	0x6
	.uahalf	0x154
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x1425
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x158
	.uaword	0x152a
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"CSI"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CSEN"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"MS"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"ABD"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x160
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x6
	.uahalf	0x161
	.uaword	0x1497
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x164
	.uaword	0x1593
	.uleb128 0xb
	.string	"HEADER"
	.byte	0x6
	.uahalf	0x166
	.uaword	0x1b4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x167
	.uaword	0x1b4
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x6
	.uahalf	0x168
	.uaword	0x154a
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_OCS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x1632
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SUS"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"SUS_P"
	.byte	0x6
	.uahalf	0x16f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"SUSSTA"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"reserved_30"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x1b4
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_OCS_Bits"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x15b6
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x175
	.uaword	0x1681
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x1b4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x6
	.uahalf	0x178
	.uaword	0x164e
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x16d4
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0x16a0
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x181
	.uaword	0x17ad
	.uleb128 0xb
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ENI"
	.byte	0x6
	.uahalf	0x184
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x185
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"OUTW"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x1b4
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x187
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x188
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FILL"
	.byte	0x6
	.uahalf	0x189
	.uaword	0x1b4
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1b4
	.byte	0x4
	.byte	0xa
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"BUF"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x16f4
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x1802
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x191
	.uaword	0x1b4
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x17cf
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x195
	.uaword	0x18c9
	.uleb128 0xb
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x197
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ENO"
	.byte	0x6
	.uahalf	0x198
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x199
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"INW"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x19b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FILL"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x1b4
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x1821
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x1913
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x51f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ACCEN0"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x18eb
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x1955
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1b3
	.uaword	0x56d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ACCEN1"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0x192d
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x1997
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x633
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BITCON"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x196f
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x19d9
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0x6be
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BRD"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0x19b1
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x1a18
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1cb
	.uaword	0x741
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BRG"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x19f0
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x1a57
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x7c8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_CLC"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1a2f
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1a96
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x838
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_CSR"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x1a6e
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x1ad5
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x8e3
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_DATCON"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x1aad
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x1b17
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0xaab
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGS"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x1aef
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x1b58
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0xc8f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x1b30
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x1b9e
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0xe46
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSENABLE"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x1b76
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x1be5
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x202
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x203
	.uaword	0x103c
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSSET"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1bbd
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x207
	.uaword	0x1c29
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x113d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FRAMECON"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1c01
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1c6d
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x11b9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ID"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x1c45
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x217
	.uaword	0x1cab
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x21a
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x21b
	.uaword	0x12d3
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_IOCR"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x1c83
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x1ceb
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x221
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x222
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x223
	.uaword	0x1345
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST0"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1cc3
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x227
	.uaword	0x1d2c
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x13a4
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST1"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0x1d04
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1d6d
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x231
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x232
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x233
	.uaword	0x1405
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRSTCLR"
	.byte	0x6
	.uahalf	0x234
	.uaword	0x1d45
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x237
	.uaword	0x1db0
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x23a
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x1474
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_BTIMER"
	.byte	0x6
	.uahalf	0x23c
	.uaword	0x1d88
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x23f
	.uaword	0x1df6
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x241
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x242
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x152a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_CON"
	.byte	0x6
	.uahalf	0x244
	.uaword	0x1dce
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x247
	.uaword	0x1e39
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x249
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x24a
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x1593
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_HTIMER"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x1e11
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x24f
	.uaword	0x1e7f
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x251
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x252
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x253
	.uaword	0x1632
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_OCS"
	.byte	0x6
	.uahalf	0x254
	.uaword	0x1e57
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1ebe
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x259
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x25a
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x25b
	.uaword	0x1681
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATA"
	.byte	0x6
	.uahalf	0x25c
	.uaword	0x1e96
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x25f
	.uaword	0x1f00
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x262
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x263
	.uaword	0x16d4
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATAD"
	.byte	0x6
	.uahalf	0x264
	.uaword	0x1ed8
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x267
	.uaword	0x1f43
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x269
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x26a
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x17ad
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXFIFOCON"
	.byte	0x6
	.uahalf	0x26c
	.uaword	0x1f1b
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x26f
	.uaword	0x1f88
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x271
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x272
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x273
	.uaword	0x1802
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXDATA"
	.byte	0x6
	.uahalf	0x274
	.uaword	0x1f60
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x277
	.uaword	0x1fca
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x279
	.uaword	0x1b4
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x27a
	.uaword	0x1e5
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x27b
	.uaword	0x18c9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXFIFOCON"
	.byte	0x6
	.uahalf	0x27c
	.uaword	0x1fa2
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN"
	.byte	0xc
	.byte	0x6
	.uahalf	0x287
	.uaword	0x202e
	.uleb128 0x11
	.string	"CON"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1df6
	.byte	0
	.uleb128 0x11
	.string	"BTIMER"
	.byte	0x6
	.uahalf	0x28a
	.uaword	0x1db0
	.byte	0x4
	.uleb128 0x11
	.string	"HTIMER"
	.byte	0x6
	.uahalf	0x28b
	.uaword	0x1e39
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN"
	.byte	0x6
	.uahalf	0x28c
	.uaword	0x2045
	.uleb128 0x12
	.uaword	0x1fe7
	.uleb128 0x13
	.string	"_Ifx_ASCLIN"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x299
	.uaword	0x2200
	.uleb128 0x11
	.string	"CLC"
	.byte	0x6
	.uahalf	0x29b
	.uaword	0x1a57
	.byte	0
	.uleb128 0x11
	.string	"IOCR"
	.byte	0x6
	.uahalf	0x29c
	.uaword	0x1cab
	.byte	0x4
	.uleb128 0x11
	.string	"ID"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1c6d
	.byte	0x8
	.uleb128 0x11
	.string	"TXFIFOCON"
	.byte	0x6
	.uahalf	0x29e
	.uaword	0x1fca
	.byte	0xc
	.uleb128 0x11
	.string	"RXFIFOCON"
	.byte	0x6
	.uahalf	0x29f
	.uaword	0x1f43
	.byte	0x10
	.uleb128 0x11
	.string	"BITCON"
	.byte	0x6
	.uahalf	0x2a0
	.uaword	0x1997
	.byte	0x14
	.uleb128 0x11
	.string	"FRAMECON"
	.byte	0x6
	.uahalf	0x2a1
	.uaword	0x1c29
	.byte	0x18
	.uleb128 0x11
	.string	"DATCON"
	.byte	0x6
	.uahalf	0x2a2
	.uaword	0x1ad5
	.byte	0x1c
	.uleb128 0x11
	.string	"BRG"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x1a18
	.byte	0x20
	.uleb128 0x11
	.string	"BRD"
	.byte	0x6
	.uahalf	0x2a4
	.uaword	0x19d9
	.byte	0x24
	.uleb128 0x11
	.string	"LIN"
	.byte	0x6
	.uahalf	0x2a5
	.uaword	0x202e
	.byte	0x28
	.uleb128 0x11
	.string	"FLAGS"
	.byte	0x6
	.uahalf	0x2a6
	.uaword	0x1b17
	.byte	0x34
	.uleb128 0x11
	.string	"FLAGSSET"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1be5
	.byte	0x38
	.uleb128 0x11
	.string	"FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x2a8
	.uaword	0x1b58
	.byte	0x3c
	.uleb128 0x11
	.string	"FLAGSENABLE"
	.byte	0x6
	.uahalf	0x2a9
	.uaword	0x1b9e
	.byte	0x40
	.uleb128 0x11
	.string	"TXDATA"
	.byte	0x6
	.uahalf	0x2aa
	.uaword	0x1f88
	.byte	0x44
	.uleb128 0x11
	.string	"RXDATA"
	.byte	0x6
	.uahalf	0x2ab
	.uaword	0x1ebe
	.byte	0x48
	.uleb128 0x11
	.string	"CSR"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x1a96
	.byte	0x4c
	.uleb128 0x11
	.string	"RXDATAD"
	.byte	0x6
	.uahalf	0x2ad
	.uaword	0x1f00
	.byte	0x50
	.uleb128 0x11
	.string	"reserved_54"
	.byte	0x6
	.uahalf	0x2ae
	.uaword	0x2200
	.byte	0x54
	.uleb128 0x11
	.string	"OCS"
	.byte	0x6
	.uahalf	0x2af
	.uaword	0x1e7f
	.byte	0xe8
	.uleb128 0x11
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x2b0
	.uaword	0x1d6d
	.byte	0xec
	.uleb128 0x11
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x1d2c
	.byte	0xf0
	.uleb128 0x11
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1ceb
	.byte	0xf4
	.uleb128 0x11
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x2b3
	.uaword	0x1955
	.byte	0xf8
	.uleb128 0x11
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x2b4
	.uaword	0x1913
	.byte	0xfc
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x2210
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xd
	.string	"Ifx_ASCLIN"
	.byte	0x6
	.uahalf	0x2b5
	.uaword	0x222f
	.uleb128 0x12
	.uaword	0x204a
	.uleb128 0x16
	.byte	0x1
	.byte	0x7
	.byte	0x3b
	.uaword	0x22a4
	.uleb128 0x17
	.string	"IfxAsclin_Index_none"
	.sleb128 -1
	.uleb128 0x17
	.string	"IfxAsclin_Index_0"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_Index_1"
	.sleb128 1
	.uleb128 0x17
	.string	"IfxAsclin_Index_2"
	.sleb128 2
	.uleb128 0x17
	.string	"IfxAsclin_Index_3"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Index"
	.byte	0x7
	.byte	0x41
	.uaword	0x2234
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x22cb
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x22db
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x22eb
	.uleb128 0x15
	.uaword	0x2210
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x22fb
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x230b
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x27
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x231b
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x232b
	.uleb128 0x15
	.uaword	0x2210
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x233b
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x2459
	.uleb128 0x9
	.string	"SRPN"
	.byte	0x8
	.byte	0x2f
	.uaword	0x1b4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x8
	.byte	0x30
	.uaword	0x1b4
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"SRE"
	.byte	0x8
	.byte	0x31
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"TOS"
	.byte	0x8
	.byte	0x32
	.uaword	0x1b4
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"reserved_13"
	.byte	0x8
	.byte	0x33
	.uaword	0x1b4
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"ECC"
	.byte	0x8
	.byte	0x34
	.uaword	0x1b4
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"reserved_22"
	.byte	0x8
	.byte	0x35
	.uaword	0x1b4
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"SRR"
	.byte	0x8
	.byte	0x36
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CLRR"
	.byte	0x8
	.byte	0x37
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"SETR"
	.byte	0x8
	.byte	0x38
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"IOV"
	.byte	0x8
	.byte	0x39
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"IOVCLR"
	.byte	0x8
	.byte	0x3a
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"SWS"
	.byte	0x8
	.byte	0x3b
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"SWSCLR"
	.byte	0x8
	.byte	0x3c
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"reserved_31"
	.byte	0x8
	.byte	0x3d
	.uaword	0x1b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x8
	.byte	0x3e
	.uaword	0x233b
	.uleb128 0x18
	.byte	0x4
	.byte	0x8
	.byte	0x46
	.uaword	0x2496
	.uleb128 0x19
	.string	"U"
	.byte	0x8
	.byte	0x48
	.uaword	0x1b4
	.uleb128 0x19
	.string	"I"
	.byte	0x8
	.byte	0x49
	.uaword	0x1e5
	.uleb128 0x19
	.string	"B"
	.byte	0x8
	.byte	0x4a
	.uaword	0x2459
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x8
	.byte	0x4b
	.uaword	0x2472
	.uleb128 0x8
	.string	"_Ifx_SRC_AGBT"
	.byte	0x4
	.byte	0x8
	.byte	0x56
	.uaword	0x24cc
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0x58
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_AGBT"
	.byte	0x8
	.byte	0x59
	.uaword	0x24e0
	.uleb128 0x12
	.uaword	0x24aa
	.uleb128 0x8
	.string	"_Ifx_SRC_ASCLIN"
	.byte	0xc
	.byte	0x8
	.byte	0x5c
	.uaword	0x2520
	.uleb128 0x7
	.string	"TX"
	.byte	0x8
	.byte	0x5e
	.uaword	0x2496
	.byte	0
	.uleb128 0x7
	.string	"RX"
	.byte	0x8
	.byte	0x5f
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0x60
	.uaword	0x2496
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ASCLIN"
	.byte	0x8
	.byte	0x61
	.uaword	0x2536
	.uleb128 0x12
	.uaword	0x24e5
	.uleb128 0x8
	.string	"_Ifx_SRC_BCUSPB"
	.byte	0x4
	.byte	0x8
	.byte	0x64
	.uaword	0x2562
	.uleb128 0x7
	.string	"SBSRC"
	.byte	0x8
	.byte	0x66
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_BCUSPB"
	.byte	0x8
	.byte	0x67
	.uaword	0x2578
	.uleb128 0x12
	.uaword	0x253b
	.uleb128 0x8
	.string	"_Ifx_SRC_CAN"
	.byte	0x40
	.byte	0x8
	.byte	0x6a
	.uaword	0x259f
	.uleb128 0x7
	.string	"INT"
	.byte	0x8
	.byte	0x6c
	.uaword	0x259f
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x25af
	.uleb128 0x15
	.uaword	0x2210
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CAN"
	.byte	0x8
	.byte	0x6d
	.uaword	0x25c2
	.uleb128 0x12
	.uaword	0x257d
	.uleb128 0x8
	.string	"_Ifx_SRC_CCU6"
	.byte	0x10
	.byte	0x8
	.byte	0x70
	.uaword	0x260e
	.uleb128 0x7
	.string	"SR0"
	.byte	0x8
	.byte	0x72
	.uaword	0x2496
	.byte	0
	.uleb128 0x7
	.string	"SR1"
	.byte	0x8
	.byte	0x73
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x7
	.string	"SR2"
	.byte	0x8
	.byte	0x74
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x7
	.string	"SR3"
	.byte	0x8
	.byte	0x75
	.uaword	0x2496
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CCU6"
	.byte	0x8
	.byte	0x76
	.uaword	0x2622
	.uleb128 0x12
	.uaword	0x25c7
	.uleb128 0x8
	.string	"_Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x8
	.byte	0x79
	.uaword	0x264d
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0x7b
	.uaword	0x264d
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x265d
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x7c
	.uaword	0x2675
	.uleb128 0x12
	.uaword	0x2627
	.uleb128 0x8
	.string	"_Ifx_SRC_CIF"
	.byte	0x10
	.byte	0x8
	.byte	0x7f
	.uaword	0x26c2
	.uleb128 0x7
	.string	"MI"
	.byte	0x8
	.byte	0x81
	.uaword	0x2496
	.byte	0
	.uleb128 0x7
	.string	"MIEP"
	.byte	0x8
	.byte	0x82
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x7
	.string	"ISP"
	.byte	0x8
	.byte	0x83
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x7
	.string	"MJPEG"
	.byte	0x8
	.byte	0x84
	.uaword	0x2496
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CIF"
	.byte	0x8
	.byte	0x85
	.uaword	0x26d5
	.uleb128 0x12
	.uaword	0x267a
	.uleb128 0x8
	.string	"_Ifx_SRC_CPU"
	.byte	0x4
	.byte	0x8
	.byte	0x88
	.uaword	0x26fe
	.uleb128 0x7
	.string	"SBSRC"
	.byte	0x8
	.byte	0x8a
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CPU"
	.byte	0x8
	.byte	0x8b
	.uaword	0x2711
	.uleb128 0x12
	.uaword	0x26da
	.uleb128 0x8
	.string	"_Ifx_SRC_DAM"
	.byte	0x18
	.byte	0x8
	.byte	0x8e
	.uaword	0x2737
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0x90
	.uaword	0x2737
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2747
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DAM"
	.byte	0x8
	.byte	0x91
	.uaword	0x275a
	.uleb128 0x12
	.uaword	0x2716
	.uleb128 0x1a
	.string	"_Ifx_SRC_DMA"
	.uahalf	0x110
	.byte	0x8
	.byte	0x94
	.uaword	0x2799
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0x96
	.uaword	0x2496
	.byte	0
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x8
	.byte	0x97
	.uaword	0x231b
	.byte	0x4
	.uleb128 0x7
	.string	"CH"
	.byte	0x8
	.byte	0x98
	.uaword	0x2799
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x27a9
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DMA"
	.byte	0x8
	.byte	0x99
	.uaword	0x27bc
	.uleb128 0x12
	.uaword	0x275f
	.uleb128 0x8
	.string	"_Ifx_SRC_DSADC"
	.byte	0x8
	.byte	0x8
	.byte	0x9c
	.uaword	0x27f1
	.uleb128 0x7
	.string	"SRM"
	.byte	0x8
	.byte	0x9e
	.uaword	0x2496
	.byte	0
	.uleb128 0x7
	.string	"SRA"
	.byte	0x8
	.byte	0x9f
	.uaword	0x2496
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DSADC"
	.byte	0x8
	.byte	0xa0
	.uaword	0x2806
	.uleb128 0x12
	.uaword	0x27c1
	.uleb128 0x8
	.string	"_Ifx_SRC_EMEM"
	.byte	0x4
	.byte	0x8
	.byte	0xa3
	.uaword	0x282d
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xa5
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_EMEM"
	.byte	0x8
	.byte	0xa6
	.uaword	0x2841
	.uleb128 0x12
	.uaword	0x280b
	.uleb128 0x8
	.string	"_Ifx_SRC_ERAY"
	.byte	0x50
	.byte	0x8
	.byte	0xa9
	.uaword	0x28b8
	.uleb128 0x7
	.string	"INT"
	.byte	0x8
	.byte	0xab
	.uaword	0x264d
	.byte	0
	.uleb128 0x7
	.string	"TINT"
	.byte	0x8
	.byte	0xac
	.uaword	0x264d
	.byte	0x8
	.uleb128 0x7
	.string	"NDAT"
	.byte	0x8
	.byte	0xad
	.uaword	0x264d
	.byte	0x10
	.uleb128 0x7
	.string	"MBSC"
	.byte	0x8
	.byte	0xae
	.uaword	0x264d
	.byte	0x18
	.uleb128 0x7
	.string	"OBUSY"
	.byte	0x8
	.byte	0xaf
	.uaword	0x2496
	.byte	0x20
	.uleb128 0x7
	.string	"IBUSY"
	.byte	0x8
	.byte	0xb0
	.uaword	0x2496
	.byte	0x24
	.uleb128 0x1b
	.uaword	.LASF2
	.byte	0x8
	.byte	0xb1
	.uaword	0x22fb
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ERAY"
	.byte	0x8
	.byte	0xb2
	.uaword	0x28cc
	.uleb128 0x12
	.uaword	0x2846
	.uleb128 0x8
	.string	"_Ifx_SRC_ETH"
	.byte	0x4
	.byte	0x8
	.byte	0xb5
	.uaword	0x28f2
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xb7
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ETH"
	.byte	0x8
	.byte	0xb8
	.uaword	0x2905
	.uleb128 0x12
	.uaword	0x28d1
	.uleb128 0x8
	.string	"_Ifx_SRC_FCE"
	.byte	0x4
	.byte	0x8
	.byte	0xbb
	.uaword	0x292b
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xbd
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_FCE"
	.byte	0x8
	.byte	0xbe
	.uaword	0x293e
	.uleb128 0x12
	.uaword	0x290a
	.uleb128 0x8
	.string	"_Ifx_SRC_GPSR"
	.byte	0x20
	.byte	0x8
	.byte	0xc1
	.uaword	0x2996
	.uleb128 0x7
	.string	"SR0"
	.byte	0x8
	.byte	0xc3
	.uaword	0x2496
	.byte	0
	.uleb128 0x7
	.string	"SR1"
	.byte	0x8
	.byte	0xc4
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x7
	.string	"SR2"
	.byte	0x8
	.byte	0xc5
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x7
	.string	"SR3"
	.byte	0x8
	.byte	0xc6
	.uaword	0x2496
	.byte	0xc
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x8
	.byte	0xc7
	.uaword	0x22db
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPSR"
	.byte	0x8
	.byte	0xc8
	.uaword	0x29aa
	.uleb128 0x12
	.uaword	0x2943
	.uleb128 0x8
	.string	"_Ifx_SRC_GPT12"
	.byte	0x30
	.byte	0x8
	.byte	0xcb
	.uaword	0x2a17
	.uleb128 0x7
	.string	"CIRQ"
	.byte	0x8
	.byte	0xcd
	.uaword	0x2496
	.byte	0
	.uleb128 0x7
	.string	"T2"
	.byte	0x8
	.byte	0xce
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x7
	.string	"T3"
	.byte	0x8
	.byte	0xcf
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x7
	.string	"T4"
	.byte	0x8
	.byte	0xd0
	.uaword	0x2496
	.byte	0xc
	.uleb128 0x7
	.string	"T5"
	.byte	0x8
	.byte	0xd1
	.uaword	0x2496
	.byte	0x10
	.uleb128 0x7
	.string	"T6"
	.byte	0x8
	.byte	0xd2
	.uaword	0x2496
	.byte	0x14
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x8
	.byte	0xd3
	.uaword	0x230b
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPT12"
	.byte	0x8
	.byte	0xd4
	.uaword	0x2a2c
	.uleb128 0x12
	.uaword	0x29af
	.uleb128 0x1a
	.string	"_Ifx_SRC_GTM"
	.uahalf	0x950
	.byte	0x8
	.byte	0xd7
	.uaword	0x2bca
	.uleb128 0x7
	.string	"AEIIRQ"
	.byte	0x8
	.byte	0xd9
	.uaword	0x2496
	.byte	0
	.uleb128 0x7
	.string	"ARUIRQ"
	.byte	0x8
	.byte	0xda
	.uaword	0x2bca
	.byte	0x4
	.uleb128 0x1b
	.uaword	.LASF9
	.byte	0x8
	.byte	0xdb
	.uaword	0x22cb
	.byte	0x10
	.uleb128 0x7
	.string	"BRCIRQ"
	.byte	0x8
	.byte	0xdc
	.uaword	0x2496
	.byte	0x14
	.uleb128 0x7
	.string	"CMPIRQ"
	.byte	0x8
	.byte	0xdd
	.uaword	0x2496
	.byte	0x18
	.uleb128 0x7
	.string	"SPEIRQ"
	.byte	0x8
	.byte	0xde
	.uaword	0x264d
	.byte	0x1c
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0x8
	.byte	0xdf
	.uaword	0x22bb
	.byte	0x24
	.uleb128 0x7
	.string	"PSM"
	.byte	0x8
	.byte	0xe0
	.uaword	0x2bda
	.byte	0x2c
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x8
	.byte	0xe1
	.uaword	0x2bf0
	.byte	0x4c
	.uleb128 0x7
	.string	"DPLL"
	.byte	0x8
	.byte	0xe2
	.uaword	0x2c00
	.byte	0xa4
	.uleb128 0x1c
	.string	"reserved_110"
	.byte	0x8
	.byte	0xe3
	.uaword	0x2c10
	.uahalf	0x110
	.uleb128 0x1c
	.string	"ERR"
	.byte	0x8
	.byte	0xe4
	.uaword	0x2496
	.uahalf	0x170
	.uleb128 0x1c
	.string	"reserved_174"
	.byte	0x8
	.byte	0xe5
	.uaword	0x231b
	.uahalf	0x174
	.uleb128 0x1c
	.string	"TIM"
	.byte	0x8
	.byte	0xe6
	.uaword	0x2c20
	.uahalf	0x180
	.uleb128 0x1c
	.string	"reserved_200"
	.byte	0x8
	.byte	0xe7
	.uaword	0x2c36
	.uahalf	0x200
	.uleb128 0x1c
	.string	"MCS"
	.byte	0x8
	.byte	0xe8
	.uaword	0x2c20
	.uahalf	0x380
	.uleb128 0x1c
	.string	"reserved_400"
	.byte	0x8
	.byte	0xe9
	.uaword	0x2c36
	.uahalf	0x400
	.uleb128 0x1c
	.string	"TOM"
	.byte	0x8
	.byte	0xea
	.uaword	0x2c47
	.uahalf	0x580
	.uleb128 0x1c
	.string	"reserved_5E0"
	.byte	0x8
	.byte	0xeb
	.uaword	0x2c5d
	.uahalf	0x5e0
	.uleb128 0x1c
	.string	"ATOM"
	.byte	0x8
	.byte	0xec
	.uaword	0x2c6e
	.uahalf	0x780
	.uleb128 0x1c
	.string	"reserved_7D0"
	.byte	0x8
	.byte	0xed
	.uaword	0x2c84
	.uahalf	0x7d0
	.uleb128 0x1c
	.string	"MCSW0"
	.byte	0x8
	.byte	0xee
	.uaword	0x2c95
	.uahalf	0x900
	.uleb128 0x1c
	.string	"reserved_910"
	.byte	0x8
	.byte	0xef
	.uaword	0x2ca5
	.uahalf	0x910
	.uleb128 0x1c
	.string	"MCSW1"
	.byte	0x8
	.byte	0xf0
	.uaword	0x2c95
	.uahalf	0x940
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2bda
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2bf0
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x2c00
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x57
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2c10
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x1a
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x2c20
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x5f
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2c36
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x2c47
	.uleb128 0x1d
	.uaword	0x2210
	.uahalf	0x17f
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2c5d
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x2
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x2c6e
	.uleb128 0x1d
	.uaword	0x2210
	.uahalf	0x19f
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2c84
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x4
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x2c95
	.uleb128 0x1d
	.uaword	0x2210
	.uahalf	0x12f
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2ca5
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x2cb5
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x2f
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GTM"
	.byte	0x8
	.byte	0xf1
	.uaword	0x2cc8
	.uleb128 0x12
	.uaword	0x2a31
	.uleb128 0x8
	.string	"_Ifx_SRC_HSCT"
	.byte	0x4
	.byte	0x8
	.byte	0xf4
	.uaword	0x2cef
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xf6
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_HSCT"
	.byte	0x8
	.byte	0xf7
	.uaword	0x2d03
	.uleb128 0x12
	.uaword	0x2ccd
	.uleb128 0x8
	.string	"_Ifx_SRC_HSM"
	.byte	0x8
	.byte	0x8
	.byte	0xfa
	.uaword	0x2d2a
	.uleb128 0x7
	.string	"HSM"
	.byte	0x8
	.byte	0xfc
	.uaword	0x264d
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_HSM"
	.byte	0x8
	.byte	0xfd
	.uaword	0x2d3d
	.uleb128 0x12
	.uaword	0x2d08
	.uleb128 0xe
	.string	"_Ifx_SRC_HSSL"
	.byte	0x10
	.byte	0x8
	.uahalf	0x100
	.uaword	0x2d8e
	.uleb128 0x11
	.string	"COK"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x2496
	.byte	0
	.uleb128 0x11
	.string	"RDI"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x11
	.string	"ERR"
	.byte	0x8
	.uahalf	0x104
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x11
	.string	"TRG"
	.byte	0x8
	.uahalf	0x105
	.uaword	0x2496
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_HSSL"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x2da3
	.uleb128 0x12
	.uaword	0x2d42
	.uleb128 0xe
	.string	"_Ifx_SRC_I2C"
	.byte	0x50
	.byte	0x8
	.uahalf	0x109
	.uaword	0x2e1e
	.uleb128 0x11
	.string	"BREQ"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x2496
	.byte	0
	.uleb128 0x11
	.string	"LBREQ"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x11
	.string	"SREQ"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x11
	.string	"LSREQ"
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x2496
	.byte	0xc
	.uleb128 0x11
	.string	"ERR"
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x2496
	.byte	0x10
	.uleb128 0x11
	.string	"P"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x2496
	.byte	0x14
	.uleb128 0x1e
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x111
	.uaword	0x2e1e
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x2e2e
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x37
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_I2C"
	.byte	0x8
	.uahalf	0x112
	.uaword	0x2e42
	.uleb128 0x12
	.uaword	0x2da8
	.uleb128 0xe
	.string	"_Ifx_SRC_LMU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x115
	.uaword	0x2e6a
	.uleb128 0x11
	.string	"SR"
	.byte	0x8
	.uahalf	0x117
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_LMU"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x2e7e
	.uleb128 0x12
	.uaword	0x2e47
	.uleb128 0xe
	.string	"_Ifx_SRC_MSC"
	.byte	0x14
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x2edb
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x2496
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x8
	.uahalf	0x120
	.uaword	0x2496
	.byte	0xc
	.uleb128 0x11
	.string	"SR4"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x2496
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_MSC"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x2eef
	.uleb128 0x12
	.uaword	0x2e83
	.uleb128 0xe
	.string	"_Ifx_SRC_PMU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x125
	.uaword	0x2f17
	.uleb128 0x11
	.string	"SR"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_PMU"
	.byte	0x8
	.uahalf	0x128
	.uaword	0x2f2b
	.uleb128 0x12
	.uaword	0x2ef4
	.uleb128 0xe
	.string	"_Ifx_SRC_PSI5"
	.byte	0x20
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x2f54
	.uleb128 0x11
	.string	"SR"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x2f54
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x2f64
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_PSI5"
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x2f79
	.uleb128 0x12
	.uaword	0x2f30
	.uleb128 0xe
	.string	"_Ifx_SRC_PSI5S"
	.byte	0x20
	.byte	0x8
	.uahalf	0x131
	.uaword	0x2fa3
	.uleb128 0x11
	.string	"SR"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x2f54
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_PSI5S"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x2fb9
	.uleb128 0x12
	.uaword	0x2f7e
	.uleb128 0xe
	.string	"_Ifx_SRC_QSPI"
	.byte	0x18
	.byte	0x8
	.uahalf	0x137
	.uaword	0x301f
	.uleb128 0x11
	.string	"TX"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x2496
	.byte	0
	.uleb128 0x11
	.string	"RX"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x11
	.string	"ERR"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x11
	.string	"PT"
	.byte	0x8
	.uahalf	0x13c
	.uaword	0x2496
	.byte	0xc
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x22cb
	.byte	0x10
	.uleb128 0x11
	.string	"U"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x2496
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_QSPI"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x3034
	.uleb128 0x12
	.uaword	0x2fbe
	.uleb128 0xe
	.string	"_Ifx_SRC_SCU"
	.byte	0x14
	.byte	0x8
	.uahalf	0x142
	.uaword	0x306a
	.uleb128 0x11
	.string	"DTS"
	.byte	0x8
	.uahalf	0x144
	.uaword	0x2496
	.byte	0
	.uleb128 0x11
	.string	"ERU"
	.byte	0x8
	.uahalf	0x145
	.uaword	0x2c95
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_SCU"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x307e
	.uleb128 0x12
	.uaword	0x3039
	.uleb128 0xe
	.string	"_Ifx_SRC_SENT"
	.byte	0x28
	.byte	0x8
	.uahalf	0x149
	.uaword	0x30a7
	.uleb128 0x11
	.string	"SR"
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x30a7
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2496
	.uaword	0x30b7
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_SENT"
	.byte	0x8
	.uahalf	0x14c
	.uaword	0x30cc
	.uleb128 0x12
	.uaword	0x3083
	.uleb128 0xe
	.string	"_Ifx_SRC_SMU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x30f4
	.uleb128 0x11
	.string	"SR"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x2bca
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_SMU"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x3108
	.uleb128 0x12
	.uaword	0x30d1
	.uleb128 0xe
	.string	"_Ifx_SRC_STM"
	.byte	0x8
	.byte	0x8
	.uahalf	0x155
	.uaword	0x313e
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x157
	.uaword	0x2496
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x158
	.uaword	0x2496
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_STM"
	.byte	0x8
	.uahalf	0x159
	.uaword	0x3152
	.uleb128 0x12
	.uaword	0x310d
	.uleb128 0xe
	.string	"_Ifx_SRC_VADCCG"
	.byte	0x10
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x31a5
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x2496
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x8
	.uahalf	0x161
	.uaword	0x2496
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_VADCCG"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x31bc
	.uleb128 0x12
	.uaword	0x3157
	.uleb128 0xe
	.string	"_Ifx_SRC_VADCG"
	.byte	0x10
	.byte	0x8
	.uahalf	0x165
	.uaword	0x320e
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x2496
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x2496
	.byte	0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x2496
	.byte	0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x2496
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_VADCG"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x3224
	.uleb128 0x12
	.uaword	0x31c1
	.uleb128 0xe
	.string	"_Ifx_SRC_XBAR"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16e
	.uaword	0x324e
	.uleb128 0x11
	.string	"SRC"
	.byte	0x8
	.uahalf	0x170
	.uaword	0x2496
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_XBAR"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x3263
	.uleb128 0x12
	.uaword	0x3229
	.uleb128 0xe
	.string	"_Ifx_SRC_GAGBT"
	.byte	0x4
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x328f
	.uleb128 0x11
	.string	"AGBT"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x329f
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x24cc
	.uaword	0x329f
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x328f
	.uleb128 0xd
	.string	"Ifx_SRC_GAGBT"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x32ba
	.uleb128 0x12
	.uaword	0x3268
	.uleb128 0xe
	.string	"_Ifx_SRC_GASCLIN"
	.byte	0x30
	.byte	0x8
	.uahalf	0x184
	.uaword	0x32ea
	.uleb128 0x11
	.string	"ASCLIN"
	.byte	0x8
	.uahalf	0x186
	.uaword	0x32fa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2520
	.uaword	0x32fa
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x32ea
	.uleb128 0xd
	.string	"Ifx_SRC_GASCLIN"
	.byte	0x8
	.uahalf	0x187
	.uaword	0x3317
	.uleb128 0x12
	.uaword	0x32bf
	.uleb128 0xe
	.string	"_Ifx_SRC_GBCU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x3341
	.uleb128 0x11
	.string	"SPB"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x2562
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GBCU"
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x3356
	.uleb128 0x12
	.uaword	0x331c
	.uleb128 0xe
	.string	"_Ifx_SRC_GCAN"
	.byte	0x40
	.byte	0x8
	.uahalf	0x190
	.uaword	0x3380
	.uleb128 0x11
	.string	"CAN"
	.byte	0x8
	.uahalf	0x192
	.uaword	0x3390
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x25af
	.uaword	0x3390
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3380
	.uleb128 0xd
	.string	"Ifx_SRC_GCAN"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x33aa
	.uleb128 0x12
	.uaword	0x335b
	.uleb128 0xe
	.string	"_Ifx_SRC_GCCU6"
	.byte	0x20
	.byte	0x8
	.uahalf	0x196
	.uaword	0x33d6
	.uleb128 0x11
	.string	"CCU6"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x33e6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x260e
	.uaword	0x33e6
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x33d6
	.uleb128 0xd
	.string	"Ifx_SRC_GCCU6"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x3401
	.uleb128 0x12
	.uaword	0x33af
	.uleb128 0xe
	.string	"_Ifx_SRC_GCERBERUS"
	.byte	0x8
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x3430
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x265d
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GCERBERUS"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x344a
	.uleb128 0x12
	.uaword	0x3406
	.uleb128 0xe
	.string	"_Ifx_SRC_GCIF"
	.byte	0x10
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x3474
	.uleb128 0x11
	.string	"CIF"
	.byte	0x8
	.uahalf	0x1a4
	.uaword	0x3484
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x26c2
	.uaword	0x3484
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3474
	.uleb128 0xd
	.string	"Ifx_SRC_GCIF"
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x349e
	.uleb128 0x12
	.uaword	0x344f
	.uleb128 0xe
	.string	"_Ifx_SRC_GCPU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x34c8
	.uleb128 0x11
	.string	"CPU"
	.byte	0x8
	.uahalf	0x1aa
	.uaword	0x34d8
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x26fe
	.uaword	0x34d8
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x34c8
	.uleb128 0xd
	.string	"Ifx_SRC_GCPU"
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x34f2
	.uleb128 0x12
	.uaword	0x34a3
	.uleb128 0xe
	.string	"_Ifx_SRC_GDAM"
	.byte	0x18
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x351c
	.uleb128 0x11
	.string	"DAM"
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x352c
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2747
	.uaword	0x352c
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x351c
	.uleb128 0xd
	.string	"Ifx_SRC_GDAM"
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x3546
	.uleb128 0x12
	.uaword	0x34f7
	.uleb128 0x13
	.string	"_Ifx_SRC_GDMA"
	.uahalf	0x110
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x3571
	.uleb128 0x11
	.string	"DMA"
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x3581
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x27a9
	.uaword	0x3581
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3571
	.uleb128 0xd
	.string	"Ifx_SRC_GDMA"
	.byte	0x8
	.uahalf	0x1b7
	.uaword	0x359b
	.uleb128 0x12
	.uaword	0x354b
	.uleb128 0xe
	.string	"_Ifx_SRC_GDSADC"
	.byte	0x30
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x35c9
	.uleb128 0x11
	.string	"DSADC"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x35d9
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x27f1
	.uaword	0x35d9
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.uaword	0x35c9
	.uleb128 0xd
	.string	"Ifx_SRC_GDSADC"
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x35f5
	.uleb128 0x12
	.uaword	0x35a0
	.uleb128 0xe
	.string	"_Ifx_SRC_GEMEM"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x3621
	.uleb128 0x11
	.string	"EMEM"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x3631
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x282d
	.uaword	0x3631
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3621
	.uleb128 0xd
	.string	"Ifx_SRC_GEMEM"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x364c
	.uleb128 0x12
	.uaword	0x35fa
	.uleb128 0xe
	.string	"_Ifx_SRC_GERAY"
	.byte	0x50
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x3678
	.uleb128 0x11
	.string	"ERAY"
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x3688
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x28b8
	.uaword	0x3688
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3678
	.uleb128 0xd
	.string	"Ifx_SRC_GERAY"
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x36a3
	.uleb128 0x12
	.uaword	0x3651
	.uleb128 0xe
	.string	"_Ifx_SRC_GETH"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x36cd
	.uleb128 0x11
	.string	"ETH"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x36dd
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x28f2
	.uaword	0x36dd
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x36cd
	.uleb128 0xd
	.string	"Ifx_SRC_GETH"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x36f7
	.uleb128 0x12
	.uaword	0x36a8
	.uleb128 0xe
	.string	"_Ifx_SRC_GFCE"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x3721
	.uleb128 0x11
	.string	"FCE"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x3731
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x292b
	.uaword	0x3731
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3721
	.uleb128 0xd
	.string	"Ifx_SRC_GFCE"
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x374b
	.uleb128 0x12
	.uaword	0x36fc
	.uleb128 0xe
	.string	"_Ifx_SRC_GGPSR"
	.byte	0x60
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x3777
	.uleb128 0x11
	.string	"GPSR"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x3787
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2996
	.uaword	0x3787
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x3777
	.uleb128 0xd
	.string	"Ifx_SRC_GGPSR"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x37a2
	.uleb128 0x12
	.uaword	0x3750
	.uleb128 0xe
	.string	"_Ifx_SRC_GGPT12"
	.byte	0x30
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x37d0
	.uleb128 0x11
	.string	"GPT12"
	.byte	0x8
	.uahalf	0x1e0
	.uaword	0x37e0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2a17
	.uaword	0x37e0
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x37d0
	.uleb128 0xd
	.string	"Ifx_SRC_GGPT12"
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x37fc
	.uleb128 0x12
	.uaword	0x37a7
	.uleb128 0x13
	.string	"_Ifx_SRC_GGTM"
	.uahalf	0x950
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x3827
	.uleb128 0x11
	.string	"GTM"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x3837
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2cb5
	.uaword	0x3837
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3827
	.uleb128 0xd
	.string	"Ifx_SRC_GGTM"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x3851
	.uleb128 0x12
	.uaword	0x3801
	.uleb128 0xe
	.string	"_Ifx_SRC_GHSCT"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x387d
	.uleb128 0x11
	.string	"HSCT"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x388d
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2cef
	.uaword	0x388d
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x387d
	.uleb128 0xd
	.string	"Ifx_SRC_GHSCT"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x38a8
	.uleb128 0x12
	.uaword	0x3856
	.uleb128 0xe
	.string	"_Ifx_SRC_GHSM"
	.byte	0x8
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x38d2
	.uleb128 0x11
	.string	"HSM"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x38e2
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2d2a
	.uaword	0x38e2
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x38d2
	.uleb128 0xd
	.string	"Ifx_SRC_GHSM"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x38fc
	.uleb128 0x12
	.uaword	0x38ad
	.uleb128 0xe
	.string	"_Ifx_SRC_GHSSL"
	.byte	0x44
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x3935
	.uleb128 0x11
	.string	"HSSL"
	.byte	0x8
	.uahalf	0x1f8
	.uaword	0x3945
	.byte	0
	.uleb128 0x11
	.string	"EXI"
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x2496
	.byte	0x40
	.byte	0
	.uleb128 0x14
	.uaword	0x2d8e
	.uaword	0x3945
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x3935
	.uleb128 0xd
	.string	"Ifx_SRC_GHSSL"
	.byte	0x8
	.uahalf	0x1fa
	.uaword	0x3960
	.uleb128 0x12
	.uaword	0x3901
	.uleb128 0xe
	.string	"_Ifx_SRC_GI2C"
	.byte	0x50
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x398a
	.uleb128 0x11
	.string	"I2C"
	.byte	0x8
	.uahalf	0x1ff
	.uaword	0x399a
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2e2e
	.uaword	0x399a
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x398a
	.uleb128 0xd
	.string	"Ifx_SRC_GI2C"
	.byte	0x8
	.uahalf	0x200
	.uaword	0x39b4
	.uleb128 0x12
	.uaword	0x3965
	.uleb128 0xe
	.string	"_Ifx_SRC_GLMU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x203
	.uaword	0x39de
	.uleb128 0x11
	.string	"LMU"
	.byte	0x8
	.uahalf	0x205
	.uaword	0x39ee
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2e6a
	.uaword	0x39ee
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x39de
	.uleb128 0xd
	.string	"Ifx_SRC_GLMU"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x3a08
	.uleb128 0x12
	.uaword	0x39b9
	.uleb128 0xe
	.string	"_Ifx_SRC_GMSC"
	.byte	0x28
	.byte	0x8
	.uahalf	0x209
	.uaword	0x3a32
	.uleb128 0x11
	.string	"MSC"
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x3a42
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2edb
	.uaword	0x3a42
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x3a32
	.uleb128 0xd
	.string	"Ifx_SRC_GMSC"
	.byte	0x8
	.uahalf	0x20c
	.uaword	0x3a5c
	.uleb128 0x12
	.uaword	0x3a0d
	.uleb128 0xe
	.string	"_Ifx_SRC_GPMU"
	.byte	0x8
	.byte	0x8
	.uahalf	0x20f
	.uaword	0x3a86
	.uleb128 0x11
	.string	"PMU"
	.byte	0x8
	.uahalf	0x211
	.uaword	0x3a96
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2f17
	.uaword	0x3a96
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x3a86
	.uleb128 0xd
	.string	"Ifx_SRC_GPMU"
	.byte	0x8
	.uahalf	0x212
	.uaword	0x3ab0
	.uleb128 0x12
	.uaword	0x3a61
	.uleb128 0xe
	.string	"_Ifx_SRC_GPSI5"
	.byte	0x20
	.byte	0x8
	.uahalf	0x215
	.uaword	0x3adc
	.uleb128 0x11
	.string	"PSI5"
	.byte	0x8
	.uahalf	0x217
	.uaword	0x3aec
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2f64
	.uaword	0x3aec
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3adc
	.uleb128 0xd
	.string	"Ifx_SRC_GPSI5"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x3b07
	.uleb128 0x12
	.uaword	0x3ab5
	.uleb128 0xe
	.string	"_Ifx_SRC_GPSI5S"
	.byte	0x20
	.byte	0x8
	.uahalf	0x21b
	.uaword	0x3b35
	.uleb128 0x11
	.string	"PSI5S"
	.byte	0x8
	.uahalf	0x21d
	.uaword	0x3b45
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2fa3
	.uaword	0x3b45
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3b35
	.uleb128 0xd
	.string	"Ifx_SRC_GPSI5S"
	.byte	0x8
	.uahalf	0x21e
	.uaword	0x3b61
	.uleb128 0x12
	.uaword	0x3b0c
	.uleb128 0xe
	.string	"_Ifx_SRC_GQSPI"
	.byte	0x60
	.byte	0x8
	.uahalf	0x221
	.uaword	0x3b8d
	.uleb128 0x11
	.string	"QSPI"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x3b9d
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x301f
	.uaword	0x3b9d
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x3b8d
	.uleb128 0xd
	.string	"Ifx_SRC_GQSPI"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x3bb8
	.uleb128 0x12
	.uaword	0x3b66
	.uleb128 0xe
	.string	"_Ifx_SRC_GSCU"
	.byte	0x14
	.byte	0x8
	.uahalf	0x227
	.uaword	0x3be2
	.uleb128 0x11
	.string	"SCU"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x306a
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GSCU"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x3bf7
	.uleb128 0x12
	.uaword	0x3bbd
	.uleb128 0xe
	.string	"_Ifx_SRC_GSENT"
	.byte	0x28
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x3c23
	.uleb128 0x11
	.string	"SENT"
	.byte	0x8
	.uahalf	0x22f
	.uaword	0x3c33
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x30b7
	.uaword	0x3c33
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3c23
	.uleb128 0xd
	.string	"Ifx_SRC_GSENT"
	.byte	0x8
	.uahalf	0x230
	.uaword	0x3c4e
	.uleb128 0x12
	.uaword	0x3bfc
	.uleb128 0xe
	.string	"_Ifx_SRC_GSMU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x233
	.uaword	0x3c78
	.uleb128 0x11
	.string	"SMU"
	.byte	0x8
	.uahalf	0x235
	.uaword	0x3c88
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x30f4
	.uaword	0x3c88
	.uleb128 0x15
	.uaword	0x2210
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3c78
	.uleb128 0xd
	.string	"Ifx_SRC_GSMU"
	.byte	0x8
	.uahalf	0x236
	.uaword	0x3ca2
	.uleb128 0x12
	.uaword	0x3c53
	.uleb128 0xe
	.string	"_Ifx_SRC_GSTM"
	.byte	0x18
	.byte	0x8
	.uahalf	0x239
	.uaword	0x3ccc
	.uleb128 0x11
	.string	"STM"
	.byte	0x8
	.uahalf	0x23b
	.uaword	0x3cdc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x313e
	.uaword	0x3cdc
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.uaword	0x3ccc
	.uleb128 0xd
	.string	"Ifx_SRC_GSTM"
	.byte	0x8
	.uahalf	0x23c
	.uaword	0x3cf6
	.uleb128 0x12
	.uaword	0x3ca7
	.uleb128 0x13
	.string	"_Ifx_SRC_GVADC"
	.uahalf	0x140
	.byte	0x8
	.uahalf	0x23f
	.uaword	0x3d42
	.uleb128 0x11
	.string	"G"
	.byte	0x8
	.uahalf	0x241
	.uaword	0x3d52
	.byte	0
	.uleb128 0x11
	.string	"reserved_80"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x3d57
	.byte	0x80
	.uleb128 0x1f
	.string	"CG"
	.byte	0x8
	.uahalf	0x243
	.uaword	0x3d77
	.uahalf	0x120
	.byte	0
	.uleb128 0x14
	.uaword	0x320e
	.uaword	0x3d52
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.uaword	0x3d42
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x3d67
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x9f
	.byte	0
	.uleb128 0x14
	.uaword	0x31a5
	.uaword	0x3d77
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x3d67
	.uleb128 0xd
	.string	"Ifx_SRC_GVADC"
	.byte	0x8
	.uahalf	0x244
	.uaword	0x3d92
	.uleb128 0x12
	.uaword	0x3cfb
	.uleb128 0xe
	.string	"_Ifx_SRC_GXBAR"
	.byte	0x4
	.byte	0x8
	.uahalf	0x247
	.uaword	0x3dbe
	.uleb128 0x11
	.string	"XBAR"
	.byte	0x8
	.uahalf	0x249
	.uaword	0x324e
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GXBAR"
	.byte	0x8
	.uahalf	0x24a
	.uaword	0x3dd4
	.uleb128 0x12
	.uaword	0x3d97
	.uleb128 0x13
	.string	"_Ifx_SRC"
	.uahalf	0x2000
	.byte	0x8
	.uahalf	0x257
	.uaword	0x426e
	.uleb128 0x11
	.string	"CPU"
	.byte	0x8
	.uahalf	0x259
	.uaword	0x34dd
	.byte	0
	.uleb128 0x11
	.string	"reserved_C"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0x426e
	.byte	0xc
	.uleb128 0x11
	.string	"EMEM"
	.byte	0x8
	.uahalf	0x25b
	.uaword	0x3636
	.byte	0x20
	.uleb128 0x11
	.string	"AGBT"
	.byte	0x8
	.uahalf	0x25c
	.uaword	0x32a4
	.byte	0x24
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x25d
	.uaword	0x230b
	.byte	0x28
	.uleb128 0x11
	.string	"BCU"
	.byte	0x8
	.uahalf	0x25e
	.uaword	0x3341
	.byte	0x40
	.uleb128 0x11
	.string	"reserved_44"
	.byte	0x8
	.uahalf	0x25f
	.uaword	0x22cb
	.byte	0x44
	.uleb128 0x11
	.string	"XBAR"
	.byte	0x8
	.uahalf	0x260
	.uaword	0x3dbe
	.byte	0x48
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x261
	.uaword	0x22cb
	.byte	0x4c
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x262
	.uaword	0x3430
	.byte	0x50
	.uleb128 0x11
	.string	"reserved_58"
	.byte	0x8
	.uahalf	0x263
	.uaword	0x22fb
	.byte	0x58
	.uleb128 0x11
	.string	"ASCLIN"
	.byte	0x8
	.uahalf	0x264
	.uaword	0x32ff
	.byte	0x80
	.uleb128 0x11
	.string	"reserved_B0"
	.byte	0x8
	.uahalf	0x265
	.uaword	0x427e
	.byte	0xb0
	.uleb128 0x1f
	.string	"QSPI"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x3ba2
	.uahalf	0x190
	.uleb128 0x1f
	.string	"reserved_1F0"
	.byte	0x8
	.uahalf	0x267
	.uaword	0x3d57
	.uahalf	0x1f0
	.uleb128 0x1f
	.string	"HSCT"
	.byte	0x8
	.uahalf	0x268
	.uaword	0x3892
	.uahalf	0x290
	.uleb128 0x1f
	.string	"reserved_294"
	.byte	0x8
	.uahalf	0x269
	.uaword	0x231b
	.uahalf	0x294
	.uleb128 0x1f
	.string	"HSSL"
	.byte	0x8
	.uahalf	0x26a
	.uaword	0x394a
	.uahalf	0x2a0
	.uleb128 0x1f
	.string	"reserved_2E4"
	.byte	0x8
	.uahalf	0x26b
	.uaword	0x22eb
	.uahalf	0x2e4
	.uleb128 0x1f
	.string	"I2C"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x399f
	.uahalf	0x300
	.uleb128 0x1f
	.string	"SENT"
	.byte	0x8
	.uahalf	0x26d
	.uaword	0x3c38
	.uahalf	0x350
	.uleb128 0x1f
	.string	"reserved_378"
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x428e
	.uahalf	0x378
	.uleb128 0x1f
	.string	"MSC"
	.byte	0x8
	.uahalf	0x26f
	.uaword	0x3a47
	.uahalf	0x3e0
	.uleb128 0x1f
	.string	"reserved_408"
	.byte	0x8
	.uahalf	0x270
	.uaword	0x230b
	.uahalf	0x408
	.uleb128 0x1f
	.string	"CCU6"
	.byte	0x8
	.uahalf	0x271
	.uaword	0x33eb
	.uahalf	0x420
	.uleb128 0x1f
	.string	"reserved_440"
	.byte	0x8
	.uahalf	0x272
	.uaword	0x429e
	.uahalf	0x440
	.uleb128 0x1f
	.string	"GPT12"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x37e5
	.uahalf	0x460
	.uleb128 0x1f
	.string	"STM"
	.byte	0x8
	.uahalf	0x274
	.uaword	0x3ce1
	.uahalf	0x490
	.uleb128 0x1f
	.string	"reserved_4A8"
	.byte	0x8
	.uahalf	0x275
	.uaword	0x22bb
	.uahalf	0x4a8
	.uleb128 0x1f
	.string	"FCE"
	.byte	0x8
	.uahalf	0x276
	.uaword	0x3736
	.uahalf	0x4b0
	.uleb128 0x1f
	.string	"reserved_4B4"
	.byte	0x8
	.uahalf	0x277
	.uaword	0x42ae
	.uahalf	0x4b4
	.uleb128 0x1f
	.string	"DMA"
	.byte	0x8
	.uahalf	0x278
	.uaword	0x3586
	.uahalf	0x4f0
	.uleb128 0x1f
	.string	"reserved_600"
	.byte	0x8
	.uahalf	0x279
	.uaword	0x42be
	.uahalf	0x600
	.uleb128 0x1f
	.string	"ETH"
	.byte	0x8
	.uahalf	0x27a
	.uaword	0x36e2
	.uahalf	0x8f0
	.uleb128 0x1f
	.string	"reserved_8F4"
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x231b
	.uahalf	0x8f4
	.uleb128 0x1f
	.string	"CAN"
	.byte	0x8
	.uahalf	0x27c
	.uaword	0x3395
	.uahalf	0x900
	.uleb128 0x1f
	.string	"reserved_940"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0x232b
	.uahalf	0x940
	.uleb128 0x1f
	.string	"VADC"
	.byte	0x8
	.uahalf	0x27e
	.uaword	0x3d7c
	.uahalf	0x980
	.uleb128 0x1f
	.string	"reserved_AC0"
	.byte	0x8
	.uahalf	0x27f
	.uaword	0x42cf
	.uahalf	0xac0
	.uleb128 0x1f
	.string	"DSADC"
	.byte	0x8
	.uahalf	0x280
	.uaword	0x35de
	.uahalf	0xb50
	.uleb128 0x1f
	.string	"reserved_B80"
	.byte	0x8
	.uahalf	0x281
	.uaword	0x2c10
	.uahalf	0xb80
	.uleb128 0x1f
	.string	"ERAY"
	.byte	0x8
	.uahalf	0x282
	.uaword	0x368d
	.uahalf	0xbe0
	.uleb128 0x1f
	.string	"PMU"
	.byte	0x8
	.uahalf	0x283
	.uaword	0x3a9b
	.uahalf	0xc30
	.uleb128 0x1f
	.string	"reserved_C38"
	.byte	0x8
	.uahalf	0x284
	.uaword	0x42df
	.uahalf	0xc38
	.uleb128 0x1f
	.string	"HSM"
	.byte	0x8
	.uahalf	0x285
	.uaword	0x38e7
	.uahalf	0xcc0
	.uleb128 0x1f
	.string	"reserved_CC8"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x22bb
	.uahalf	0xcc8
	.uleb128 0x1f
	.string	"SCU"
	.byte	0x8
	.uahalf	0x287
	.uaword	0x3be2
	.uahalf	0xcd0
	.uleb128 0x1f
	.string	"reserved_CE4"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x42ef
	.uahalf	0xce4
	.uleb128 0x1f
	.string	"SMU"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x3c8d
	.uahalf	0xd10
	.uleb128 0x1f
	.string	"reserved_D1C"
	.byte	0x8
	.uahalf	0x28a
	.uaword	0x426e
	.uahalf	0xd1c
	.uleb128 0x1f
	.string	"PSI5"
	.byte	0x8
	.uahalf	0x28b
	.uaword	0x3af1
	.uahalf	0xd30
	.uleb128 0x1f
	.string	"reserved_D50"
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x429e
	.uahalf	0xd50
	.uleb128 0x1f
	.string	"DAM"
	.byte	0x8
	.uahalf	0x28d
	.uaword	0x3531
	.uahalf	0xd70
	.uleb128 0x1f
	.string	"reserved_D88"
	.byte	0x8
	.uahalf	0x28e
	.uaword	0x230b
	.uahalf	0xd88
	.uleb128 0x1f
	.string	"CIF"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x3489
	.uahalf	0xda0
	.uleb128 0x1f
	.string	"reserved_DB0"
	.byte	0x8
	.uahalf	0x290
	.uaword	0x2ca5
	.uahalf	0xdb0
	.uleb128 0x1f
	.string	"LMU"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x39f3
	.uahalf	0xde0
	.uleb128 0x1f
	.string	"reserved_DE4"
	.byte	0x8
	.uahalf	0x292
	.uaword	0x231b
	.uahalf	0xde4
	.uleb128 0x1f
	.string	"PSI5S"
	.byte	0x8
	.uahalf	0x293
	.uaword	0x3b4a
	.uahalf	0xdf0
	.uleb128 0x1f
	.string	"reserved_E10"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x42ff
	.uahalf	0xe10
	.uleb128 0x1f
	.string	"GPSR"
	.byte	0x8
	.uahalf	0x295
	.uaword	0x378c
	.uahalf	0x1000
	.uleb128 0x1f
	.string	"reserved_1060"
	.byte	0x8
	.uahalf	0x296
	.uaword	0x4310
	.uahalf	0x1060
	.uleb128 0x1f
	.string	"GTM"
	.byte	0x8
	.uahalf	0x297
	.uaword	0x383c
	.uahalf	0x1600
	.uleb128 0x1f
	.string	"reserved_1F50"
	.byte	0x8
	.uahalf	0x298
	.uaword	0x4321
	.uahalf	0x1f50
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x427e
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x428e
	.uleb128 0x15
	.uaword	0x2210
	.byte	0xdf
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x429e
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x67
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x42ae
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x42be
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3b
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x42cf
	.uleb128 0x1d
	.uaword	0x2210
	.uahalf	0x2ef
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x42df
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x8f
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x42ef
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x87
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x42ff
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x2b
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x4310
	.uleb128 0x1d
	.uaword	0x2210
	.uahalf	0x1ef
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x4321
	.uleb128 0x1d
	.uaword	0x2210
	.uahalf	0x59f
	.byte	0
	.uleb128 0x14
	.uaword	0x208
	.uaword	0x4331
	.uleb128 0x15
	.uaword	0x2210
	.byte	0xaf
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC"
	.byte	0x8
	.uahalf	0x299
	.uaword	0x4341
	.uleb128 0x12
	.uaword	0x3dd9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x221c
	.uleb128 0x16
	.byte	0x1
	.byte	0x2
	.byte	0x5b
	.uaword	0x4430
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_noClock"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_kernelClock"
	.sleb128 1
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_oscillatorClock"
	.sleb128 2
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_flexRayClock"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_ascFastClock"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_ascSlowClock"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_ClockSource"
	.byte	0x2
	.byte	0x62
	.uaword	0x434c
	.uleb128 0x16
	.byte	0x1
	.byte	0x2
	.byte	0xd1
	.uaword	0x460a
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_4"
	.sleb128 3
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_5"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_6"
	.sleb128 5
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_7"
	.sleb128 6
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_8"
	.sleb128 7
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_9"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_10"
	.sleb128 9
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_11"
	.sleb128 10
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_12"
	.sleb128 11
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_13"
	.sleb128 12
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_14"
	.sleb128 13
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_15"
	.sleb128 14
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_16"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_OversamplingFactor"
	.byte	0x2
	.byte	0xdf
	.uaword	0x444d
	.uleb128 0x20
	.byte	0x1
	.byte	0x2
	.uahalf	0x131
	.uaword	0x483c
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_1"
	.sleb128 1
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_2"
	.sleb128 2
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_3"
	.sleb128 3
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_4"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_5"
	.sleb128 5
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_6"
	.sleb128 6
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_7"
	.sleb128 7
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_8"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_9"
	.sleb128 9
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_10"
	.sleb128 10
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_11"
	.sleb128 11
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_12"
	.sleb128 12
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_13"
	.sleb128 13
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_14"
	.sleb128 14
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_15"
	.sleb128 15
	.byte	0
	.uleb128 0xd
	.string	"IfxAsclin_SamplePointPosition"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x462e
	.uleb128 0x20
	.byte	0x1
	.byte	0x2
	.uahalf	0x147
	.uaword	0x48aa
	.uleb128 0x17
	.string	"IfxAsclin_SamplesPerBit_one"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_SamplesPerBit_three"
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.string	"IfxAsclin_SamplesPerBit"
	.byte	0x2
	.uahalf	0x14a
	.uaword	0x4862
	.uleb128 0x21
	.string	"IfxAsclin_setDisableModuleRequest"
	.byte	0x2
	.uahalf	0x8a7
	.byte	0x1
	.byte	0x3
	.uaword	0x4903
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x8a7
	.uaword	0x4346
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_enableParityErrorFlag"
	.byte	0x2
	.uahalf	0x70c
	.byte	0x1
	.byte	0x3
	.uaword	0x4949
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x70c
	.uaword	0x4346
	.uleb128 0x23
	.string	"enable"
	.byte	0x2
	.uahalf	0x70c
	.uaword	0x27f
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_enableRxFifoOverflowFlag"
	.byte	0x2
	.uahalf	0x72a
	.byte	0x1
	.byte	0x3
	.uaword	0x4992
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x72a
	.uaword	0x4346
	.uleb128 0x23
	.string	"enable"
	.byte	0x2
	.uahalf	0x72a
	.uaword	0x27f
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setEnableModuleRequest"
	.byte	0x2
	.uahalf	0x8ad
	.byte	0x1
	.byte	0x3
	.uaword	0x49ca
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x8ad
	.uaword	0x4346
	.byte	0
	.uleb128 0x24
	.string	"IfxAsclin_getClockSource"
	.byte	0x2
	.uahalf	0x778
	.byte	0x1
	.uaword	0x1fb
	.byte	0x3
	.uaword	0x49fe
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x778
	.uaword	0x4346
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxAsclin_getPdFrequency"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uaword	0x4a31
	.uleb128 0x26
	.uaword	.LASF16
	.byte	0x1
	.byte	0x89
	.uaword	0x4346
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxAsclin_getIndex"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	0x22a4
	.byte	0x1
	.uaword	0x4a79
	.uleb128 0x26
	.uaword	.LASF16
	.byte	0x1
	.byte	0x6f
	.uaword	0x4346
	.uleb128 0x27
	.string	"index"
	.byte	0x1
	.byte	0x71
	.uaword	0x258
	.uleb128 0x27
	.string	"result"
	.byte	0x1
	.byte	0x72
	.uaword	0x22a4
	.byte	0
	.uleb128 0x24
	.string	"IfxAsclin_getClockStatus"
	.byte	0x2
	.uahalf	0x77e
	.byte	0x1
	.uaword	0x27f
	.byte	0x3
	.uaword	0x4aad
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x77e
	.uaword	0x4346
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IfxAsclin_setClockSource"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.byte	0x1
	.uaword	0x4aea
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x153
	.uaword	0x4346
	.uleb128 0x22
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x153
	.uaword	0x4430
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setPrescaler"
	.byte	0x2
	.uahalf	0x90d
	.byte	0x1
	.byte	0x3
	.uaword	0x4b24
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x90d
	.uaword	0x4346
	.uleb128 0x22
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x90d
	.uaword	0x226
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setNumerator"
	.byte	0x2
	.uahalf	0x8fb
	.byte	0x1
	.byte	0x3
	.uaword	0x4b5e
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x8fb
	.uaword	0x4346
	.uleb128 0x22
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x8fb
	.uaword	0x226
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setDenominator"
	.byte	0x2
	.uahalf	0x8a1
	.byte	0x1
	.byte	0x3
	.uaword	0x4b9a
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x8a1
	.uaword	0x4346
	.uleb128 0x22
	.uaword	.LASF20
	.byte	0x2
	.uahalf	0x8a1
	.uaword	0x226
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setOversampling"
	.byte	0x2
	.uahalf	0x901
	.byte	0x1
	.byte	0x3
	.uaword	0x4bdd
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x901
	.uaword	0x4346
	.uleb128 0x23
	.string	"ovsFactor"
	.byte	0x2
	.uahalf	0x901
	.uaword	0x460a
	.byte	0
	.uleb128 0x29
	.string	"__maxu"
	.byte	0x3
	.byte	0x93
	.byte	0x1
	.uaword	0x258
	.byte	0x3
	.uaword	0x4c0f
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0x93
	.uaword	0x258
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0x93
	.uaword	0x258
	.uleb128 0x27
	.string	"res"
	.byte	0x3
	.byte	0x95
	.uaword	0x258
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_disableModule"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ca3
	.uleb128 0x2c
	.uaword	.LASF16
	.byte	0x1
	.byte	0x23
	.uaword	0x4346
	.uaword	.LLST0
	.uleb128 0x2d
	.string	"psw"
	.byte	0x1
	.byte	0x25
	.uaword	0x226
	.uaword	.LLST1
	.uleb128 0x2e
	.uaword	0x48ca
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x27
	.uaword	0x4c74
	.uleb128 0x2f
	.uaword	0x48f6
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x30
	.uaword	.LVL1
	.uaword	0x5a00
	.uleb128 0x31
	.uaword	.LVL3
	.uaword	0x5a2c
	.uaword	0x4c91
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x5a56
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_enableAscErrorFlags"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4d51
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0x2c
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x35
	.string	"parEnable"
	.byte	0x1
	.byte	0x2c
	.uaword	0x27f
	.uaword	.LLST2
	.uleb128 0x35
	.string	"rfoEnable"
	.byte	0x1
	.byte	0x2c
	.uaword	0x27f
	.uaword	.LLST3
	.uleb128 0x36
	.uaword	0x4903
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.byte	0x2e
	.uaword	0x4d30
	.uleb128 0x37
	.uaword	0x4939
	.uaword	.LLST2
	.uleb128 0x2f
	.uaword	0x492d
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	0x4949
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0x2f
	.uleb128 0x37
	.uaword	0x4982
	.uaword	.LLST5
	.uleb128 0x2f
	.uaword	0x4976
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_enableModule"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB365
	.uaword	.LFE365
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4de4
	.uleb128 0x2c
	.uaword	.LASF16
	.byte	0x1
	.byte	0x33
	.uaword	0x4346
	.uaword	.LLST6
	.uleb128 0x2d
	.string	"psw"
	.byte	0x1
	.byte	0x35
	.uaword	0x226
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x4992
	.uaword	.LBB74
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x37
	.uaword	0x4db5
	.uleb128 0x2f
	.uaword	0x49bd
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x30
	.uaword	.LVL10
	.uaword	0x5a00
	.uleb128 0x31
	.uaword	.LVL12
	.uaword	0x5a2c
	.uaword	0x4dd2
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x5a56
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getAddress"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x4346
	.uaword	.LFB366
	.uaword	.LFE366
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4e2f
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0x3c
	.uaword	0x22a4
	.byte	0x1
	.byte	0x54
	.uleb128 0x3a
	.string	"module"
	.byte	0x1
	.byte	0x3e
	.uaword	0x4346
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getFaFrequency"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	0x266
	.uaword	.LFB367
	.uaword	.LFE367
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4edf
	.uleb128 0x2c
	.uaword	.LASF16
	.byte	0x1
	.byte	0x4d
	.uaword	0x4346
	.uaword	.LLST8
	.uleb128 0x2d
	.string	"frequency"
	.byte	0x1
	.byte	0x4f
	.uaword	0x266
	.uaword	.LLST9
	.uleb128 0x3b
	.uaword	.LASF17
	.byte	0x1
	.byte	0x50
	.uaword	0x4430
	.uleb128 0x36
	.uaword	0x49ca
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.byte	0x50
	.uaword	0x4eac
	.uleb128 0x37
	.uaword	0x49f1
	.uaword	.LLST8
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x5a7e
	.uleb128 0x3c
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x5aa5
	.uleb128 0x3c
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x5aca
	.uleb128 0x3c
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x5af0
	.uleb128 0x3c
	.uaword	.LVL23
	.byte	0x1
	.uaword	0x5b19
	.byte	0
	.uleb128 0x3d
	.uaword	0x4a31
	.uaword	.LFB368
	.uaword	.LFE368
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f0d
	.uleb128 0x2f
	.uaword	0x4a52
	.byte	0x1
	.byte	0x64
	.uleb128 0x3e
	.uaword	0x4a5d
	.uaword	.LLST11
	.uleb128 0x3e
	.uaword	0x4a6a
	.uaword	.LLST12
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getOvsFrequency"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	0x266
	.uaword	.LFB369
	.uaword	.LFE369
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f78
	.uleb128 0x2c
	.uaword	.LASF16
	.byte	0x1
	.byte	0x83
	.uaword	0x4346
	.uaword	.LLST13
	.uleb128 0x3f
	.uaword	0x49fe
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x85
	.uleb128 0x37
	.uaword	0x4a25
	.uaword	.LLST14
	.uleb128 0x40
	.uaword	.LVL32
	.uaword	0x4e2f
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x49fe
	.uaword	.LFB370
	.uaword	.LFE370
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4fa6
	.uleb128 0x37
	.uaword	0x4a25
	.uaword	.LLST15
	.uleb128 0x40
	.uaword	.LVL34
	.uaword	0x4e2f
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getShiftFrequency"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x266
	.uaword	.LFB371
	.uaword	.LFE371
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ffa
	.uleb128 0x2c
	.uaword	.LASF16
	.byte	0x1
	.byte	0x8f
	.uaword	0x4346
	.uaword	.LLST16
	.uleb128 0x40
	.uaword	.LVL36
	.uaword	0x4f0d
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerEr"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	0x506d
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x506d
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0x95
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x38
	.uaword	0x4a31
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.byte	0x97
	.uleb128 0x2f
	.uaword	0x4a52
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.LBB89
	.uaword	.LBE89
	.uleb128 0x3e
	.uaword	0x4a5d
	.uaword	.LLST17
	.uleb128 0x3e
	.uaword	0x4a6a
	.uaword	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5073
	.uleb128 0x12
	.uaword	0x2496
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerRx"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	0x506d
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x50eb
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0x9b
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x38
	.uaword	0x4a31
	.uaword	.LBB90
	.uaword	.LBE90
	.byte	0x1
	.byte	0x9d
	.uleb128 0x2f
	.uaword	0x4a52
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.LBB91
	.uaword	.LBE91
	.uleb128 0x3e
	.uaword	0x4a5d
	.uaword	.LLST19
	.uleb128 0x3e
	.uaword	0x4a6a
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerTx"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	0x506d
	.uaword	.LFB374
	.uaword	.LFE374
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x515e
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0xa1
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x38
	.uaword	0x4a31
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.byte	0xa3
	.uleb128 0x2f
	.uaword	0x4a52
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.LBB93
	.uaword	.LBE93
	.uleb128 0x3e
	.uaword	0x4a5d
	.uaword	.LLST21
	.uleb128 0x3e
	.uaword	0x4a6a
	.uaword	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read16"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x258
	.uaword	.LFB375
	.uaword	.LFE375
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x51c3
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0xa7
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xa7
	.uaword	0x51c3
	.uaword	.LLST23
	.uleb128 0x2c
	.uaword	.LASF22
	.byte	0x1
	.byte	0xa7
	.uaword	0x258
	.uaword	.LLST24
	.uleb128 0x42
	.uaword	.LASF23
	.byte	0x1
	.byte	0xa9
	.uaword	0x51c9
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x226
	.uleb128 0x4
	.byte	0x4
	.uaword	0x51cf
	.uleb128 0x12
	.uaword	0x1ebe
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read32"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	0x258
	.uaword	.LFB376
	.uaword	.LFE376
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5239
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0xb5
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xb5
	.uaword	0x5239
	.uaword	.LLST25
	.uleb128 0x2c
	.uaword	.LASF22
	.byte	0x1
	.byte	0xb5
	.uaword	0x258
	.uaword	.LLST26
	.uleb128 0x42
	.uaword	.LASF23
	.byte	0x1
	.byte	0xb7
	.uaword	0x51c9
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x258
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read8"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	0x258
	.uaword	.LFB377
	.uaword	.LFE377
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x52a3
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0xc3
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xc3
	.uaword	0x52a3
	.uaword	.LLST27
	.uleb128 0x2c
	.uaword	.LASF22
	.byte	0x1
	.byte	0xc3
	.uaword	0x258
	.uaword	.LLST28
	.uleb128 0x42
	.uaword	.LASF23
	.byte	0x1
	.byte	0xc5
	.uaword	0x51c9
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1fb
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_resetModule"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.uaword	.LFB378
	.uaword	.LFE378
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x534b
	.uleb128 0x2c
	.uaword	.LASF16
	.byte	0x1
	.byte	0xd1
	.uaword	0x4346
	.uaword	.LLST29
	.uleb128 0x2d
	.string	"passwd"
	.byte	0x1
	.byte	0xd3
	.uaword	0x226
	.uaword	.LLST30
	.uleb128 0x30
	.uaword	.LVL67
	.uaword	0x5a00
	.uleb128 0x31
	.uaword	.LVL69
	.uaword	0x5a2c
	.uaword	0x5311
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL70
	.uaword	0x5a56
	.uaword	0x5325
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL71
	.uaword	0x5a2c
	.uaword	0x5339
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL72
	.byte	0x1
	.uaword	0x5a56
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_setBaudrateBitFields"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	.LFB379
	.uaword	.LFE379
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x550b
	.uleb128 0x34
	.uaword	.LASF16
	.byte	0x1
	.byte	0xe4
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF18
	.byte	0x1
	.byte	0xe4
	.uaword	0x226
	.uaword	.LLST31
	.uleb128 0x2c
	.uaword	.LASF19
	.byte	0x1
	.byte	0xe4
	.uaword	0x226
	.uaword	.LLST32
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.byte	0xe4
	.uaword	0x226
	.uaword	.LLST33
	.uleb128 0x2c
	.uaword	.LASF24
	.byte	0x1
	.byte	0xe4
	.uaword	0x460a
	.uaword	.LLST34
	.uleb128 0x3b
	.uaword	.LASF17
	.byte	0x1
	.byte	0xe6
	.uaword	0x4430
	.uleb128 0x2e
	.uaword	0x49ca
	.uaword	.LBB94
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xe6
	.uaword	0x53ed
	.uleb128 0x2f
	.uaword	0x49f1
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2e
	.uaword	0x4aad
	.uaword	.LBB97
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xe7
	.uaword	0x5426
	.uleb128 0x43
	.uaword	0x4add
	.byte	0
	.uleb128 0x2f
	.uaword	0x4ad1
	.byte	0x1
	.byte	0x64
	.uleb128 0x44
	.uaword	0x4a79
	.uaword	.LBB99
	.uaword	.LBE99
	.byte	0x1
	.uahalf	0x15a
	.uleb128 0x2f
	.uaword	0x4aa0
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4aea
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.byte	0xe8
	.uaword	0x544a
	.uleb128 0x37
	.uaword	0x4b17
	.uaword	.LLST35
	.uleb128 0x2f
	.uaword	0x4b0b
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x4b24
	.uaword	.LBB106
	.uaword	.LBE106
	.byte	0x1
	.byte	0xe9
	.uaword	0x546e
	.uleb128 0x37
	.uaword	0x4b51
	.uaword	.LLST36
	.uleb128 0x2f
	.uaword	0x4b45
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x4b5e
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.byte	0xea
	.uaword	0x5492
	.uleb128 0x37
	.uaword	0x4b8d
	.uaword	.LLST37
	.uleb128 0x2f
	.uaword	0x4b81
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x4b9a
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0xeb
	.uaword	0x54b6
	.uleb128 0x37
	.uaword	0x4bca
	.uaword	.LLST38
	.uleb128 0x2f
	.uaword	0x4bbe
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	0x4aad
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0xec
	.uleb128 0x2f
	.uaword	0x4add
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.uaword	0x4ad1
	.byte	0x1
	.byte	0x64
	.uleb128 0x45
	.uaword	0x4a79
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x54f1
	.uleb128 0x37
	.uaword	0x4aa0
	.uaword	.LLST39
	.byte	0
	.uleb128 0x44
	.uaword	0x4a79
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.uahalf	0x15f
	.uleb128 0x2f
	.uaword	0x4aa0
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.string	"IfxAsclin_setBitTiming"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB380
	.uaword	.LFE380
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x57f5
	.uleb128 0x2c
	.uaword	.LASF16
	.byte	0x1
	.byte	0xf0
	.uaword	0x4346
	.uaword	.LLST40
	.uleb128 0x35
	.string	"baudrate"
	.byte	0x1
	.byte	0xf0
	.uaword	0x266
	.uaword	.LLST41
	.uleb128 0x2c
	.uaword	.LASF24
	.byte	0x1
	.byte	0xf0
	.uaword	0x460a
	.uaword	.LLST42
	.uleb128 0x35
	.string	"samplepoint"
	.byte	0x1
	.byte	0xf0
	.uaword	0x483c
	.uaword	.LLST43
	.uleb128 0x35
	.string	"medianFilter"
	.byte	0x1
	.byte	0xf0
	.uaword	0x48aa
	.uaword	.LLST44
	.uleb128 0x27
	.string	"source"
	.byte	0x1
	.byte	0xf2
	.uaword	0x4430
	.uleb128 0x3a
	.string	"fOvs"
	.byte	0x1
	.byte	0xf3
	.uaword	0x266
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.byte	0xf4
	.uaword	0x258
	.uaword	.LLST45
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.byte	0xf4
	.uaword	0x258
	.uaword	.LLST46
	.uleb128 0x2d
	.string	"dBest"
	.byte	0x1
	.byte	0xf4
	.uaword	0x258
	.uaword	.LLST47
	.uleb128 0x2d
	.string	"nBest"
	.byte	0x1
	.byte	0xf4
	.uaword	0x258
	.uaword	.LLST48
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.byte	0xf5
	.uaword	0x266
	.uaword	.LLST49
	.uleb128 0x27
	.string	"fpd"
	.byte	0x1
	.byte	0xf8
	.uaword	0x266
	.uleb128 0x2d
	.string	"relError"
	.byte	0x1
	.byte	0xfc
	.uaword	0x266
	.uaword	.LLST50
	.uleb128 0x2d
	.string	"limit"
	.byte	0x1
	.byte	0xfd
	.uaword	0x266
	.uaword	.LLST51
	.uleb128 0x2d
	.string	"terminated"
	.byte	0x1
	.byte	0xff
	.uaword	0x27f
	.uaword	.LLST52
	.uleb128 0x47
	.string	"newRelError"
	.byte	0x1
	.uahalf	0x100
	.uaword	0x266
	.uaword	.LLST53
	.uleb128 0x47
	.string	"adder_facL"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x258
	.uaword	.LLST54
	.uleb128 0x47
	.string	"adder_facH"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x258
	.uaword	.LLST55
	.uleb128 0x47
	.string	"adder_facL_min"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x258
	.uaword	.LLST56
	.uleb128 0x48
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x101
	.uaword	0x258
	.uaword	.LLST57
	.uleb128 0x2e
	.uaword	0x49ca
	.uaword	.LBB118
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xf2
	.uaword	0x56d4
	.uleb128 0x37
	.uaword	0x49f1
	.uaword	.LLST40
	.byte	0
	.uleb128 0x2e
	.uaword	0x49fe
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xf8
	.uaword	0x5701
	.uleb128 0x37
	.uaword	0x4a25
	.uaword	.LLST59
	.uleb128 0x40
	.uaword	.LVL90
	.uaword	0x4e2f
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x4bdd
	.uaword	.LBB129
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xf9
	.uaword	0x572f
	.uleb128 0x43
	.uaword	0x4bfa
	.byte	0x4
	.uleb128 0x49
	.uaword	0x4bf1
	.uleb128 0x4a
	.uaword	.Ldebug_ranges0+0xc8
	.uleb128 0x3e
	.uaword	0x4c03
	.uaword	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4bdd
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.byte	0xfa
	.uaword	0x5765
	.uleb128 0x43
	.uaword	0x4bfa
	.byte	0x1
	.uleb128 0x37
	.uaword	0x4bf1
	.uaword	.LLST61
	.uleb128 0x41
	.uaword	.LBB135
	.uaword	.LBE135
	.uleb128 0x3e
	.uaword	0x4c03
	.uaword	.LLST62
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x4aad
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.uahalf	0x140
	.uaword	0x579f
	.uleb128 0x43
	.uaword	0x4add
	.byte	0
	.uleb128 0x2f
	.uaword	0x4ad1
	.byte	0x1
	.byte	0x6f
	.uleb128 0x44
	.uaword	0x4a79
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.uahalf	0x15a
	.uleb128 0x2f
	.uaword	0x4aa0
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x4aad
	.uaword	.LBB140
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x14d
	.uleb128 0x2f
	.uaword	0x4add
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.uaword	0x4ad1
	.byte	0x1
	.byte	0x6f
	.uleb128 0x45
	.uaword	0x4a79
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x57db
	.uleb128 0x37
	.uaword	0x4aa0
	.uaword	.LLST63
	.byte	0
	.uleb128 0x4b
	.uaword	0x4a79
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.uahalf	0x15f
	.uleb128 0x2f
	.uaword	0x4aa0
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x4aad
	.uaword	.LFB381
	.uaword	.LFE381
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x584e
	.uleb128 0x2f
	.uaword	0x4ad1
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.uaword	0x4add
	.byte	0x1
	.byte	0x54
	.uleb128 0x45
	.uaword	0x4a79
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x5835
	.uleb128 0x37
	.uaword	0x4aa0
	.uaword	.LLST64
	.byte	0
	.uleb128 0x44
	.uaword	0x4a79
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x1
	.uahalf	0x15f
	.uleb128 0x2f
	.uaword	0x4aa0
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxAsclin_write16"
	.byte	0x1
	.uahalf	0x165
	.byte	0x1
	.uaword	0x258
	.uaword	.LFB382
	.uaword	.LFE382
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x58b9
	.uleb128 0x4d
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x165
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x4e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x165
	.uaword	0x51c3
	.uaword	.LLST65
	.uleb128 0x4e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x165
	.uaword	0x258
	.uaword	.LLST66
	.uleb128 0x4f
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x167
	.uaword	0x58b9
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x58bf
	.uleb128 0x12
	.uaword	0x1f88
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxAsclin_write32"
	.byte	0x1
	.uahalf	0x173
	.byte	0x1
	.uaword	0x258
	.uaword	.LFB383
	.uaword	.LFE383
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x592f
	.uleb128 0x4d
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x173
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x4e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x173
	.uaword	0x5239
	.uaword	.LLST67
	.uleb128 0x4e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x173
	.uaword	0x258
	.uaword	.LLST68
	.uleb128 0x4f
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x175
	.uaword	0x58b9
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxAsclin_write8"
	.byte	0x1
	.uahalf	0x181
	.byte	0x1
	.uaword	0x258
	.uaword	.LFB384
	.uaword	.LFE384
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5999
	.uleb128 0x4d
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x181
	.uaword	0x4346
	.byte	0x1
	.byte	0x64
	.uleb128 0x4e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x181
	.uaword	0x52a3
	.uaword	.LLST69
	.uleb128 0x4e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x181
	.uaword	0x258
	.uaword	.LLST70
	.uleb128 0x4f
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x183
	.uaword	0x58b9
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x14
	.uaword	0x2ee
	.uaword	0x59a9
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x3
	.byte	0
	.uleb128 0x50
	.string	"IfxAsclin_cfg_indexMap"
	.byte	0x7
	.byte	0x49
	.uaword	0x59c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.uaword	0x5999
	.uleb128 0x14
	.uaword	0x2ee
	.uaword	0x59de
	.uleb128 0x15
	.uaword	0x2210
	.byte	0x2
	.byte	0
	.uleb128 0x50
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0x96
	.uaword	0x59fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x51
	.uaword	0x59ce
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xa
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x226
	.byte	0x1
	.uleb128 0x53
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xa
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x5a56
	.uleb128 0x54
	.uaword	0x226
	.byte	0
	.uleb128 0x53
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xa
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x5a7e
	.uleb128 0x54
	.uaword	0x226
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0xb
	.uahalf	0x34c
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0xb
	.uahalf	0x3a0
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0xb
	.uahalf	0x376
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0xb
	.uahalf	0x382
	.byte	0x1
	.uaword	0x266
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuCcu_getBaud1Frequency"
	.byte	0xb
	.uahalf	0x346
	.byte	0x1
	.uaword	0x266
	.byte	0x1
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
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x8
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE363
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-1
	.uaword	.LFE363
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE364
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE364
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE364
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12-1
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LFE367
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE368
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL30
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-1
	.uaword	.LFE369
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL31
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-1
	.uaword	.LFE369
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-1
	.uaword	.LFE370
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL35
	.uaword	.LVL36-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL36-1
	.uaword	.LFE371
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LFE375
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL67-1
	.uaword	.LFE378
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL68
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69-1
	.uaword	.LFE378
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL73
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LFE379
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL73
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL80
	.uaword	.LFE379
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL73
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL82
	.uaword	.LFE379
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL73
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL84
	.uaword	.LFE379
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL90-1
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL90-1
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL102
	.uaword	.LFE380
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ab
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL90-1
	.uaword	.LVL93
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL126
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL90-1
	.uaword	.LVL96
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL126
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL90-1
	.uaword	.LFE380
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL89
	.uaword	.LVL100
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL107
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL100
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL89
	.uaword	.LVL100
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL105
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL89
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1ab
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b4
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1ab
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b4
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1ab
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b4
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ab
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b4
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL114
	.uaword	.LVL121
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1ab
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b4
	.byte	0xf7
	.uleb128 0x1ab
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL96
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL106
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL120
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL99
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL99
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL115
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL109
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL100
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL110
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL117
	.uaword	.LVL120
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL89
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL90-1
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL92
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL93
	.uaword	.LVL107
	.uahalf	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xc4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.uaword	.LFB381
	.uaword	.LFE381-.LFB381
	.uaword	.LFB382
	.uaword	.LFE382-.LFB382
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.uaword	.LFB384
	.uaword	.LFE384-.LFB384
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	0
	.uaword	0
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	0
	.uaword	0
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	0
	.uaword	0
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	.LBB133
	.uaword	.LBE133
	.uaword	0
	.uaword	0
	.uaword	.LBB140
	.uaword	.LBE140
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	0
	.uaword	0
	.uaword	.LFB363
	.uaword	.LFE363
	.uaword	.LFB364
	.uaword	.LFE364
	.uaword	.LFB365
	.uaword	.LFE365
	.uaword	.LFB366
	.uaword	.LFE366
	.uaword	.LFB367
	.uaword	.LFE367
	.uaword	.LFB368
	.uaword	.LFE368
	.uaword	.LFB369
	.uaword	.LFE369
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LFB371
	.uaword	.LFE371
	.uaword	.LFB372
	.uaword	.LFE372
	.uaword	.LFB373
	.uaword	.LFE373
	.uaword	.LFB374
	.uaword	.LFE374
	.uaword	.LFB375
	.uaword	.LFE375
	.uaword	.LFB376
	.uaword	.LFE376
	.uaword	.LFB377
	.uaword	.LFE377
	.uaword	.LFB378
	.uaword	.LFE378
	.uaword	.LFB379
	.uaword	.LFE379
	.uaword	.LFB380
	.uaword	.LFE380
	.uaword	.LFB381
	.uaword	.LFE381
	.uaword	.LFB382
	.uaword	.LFE382
	.uaword	.LFB383
	.uaword	.LFE383
	.uaword	.LFB384
	.uaword	.LFE384
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"reserved_29"
.LASF24:
	.string	"oversampling"
.LASF0:
	.string	"reserved_0"
.LASF10:
	.string	"reserved_1"
.LASF3:
	.string	"reserved_2"
.LASF6:
	.string	"reserved_7"
.LASF12:
	.string	"INTLEVEL"
.LASF19:
	.string	"numerator"
.LASF14:
	.string	"reserved_4C"
.LASF4:
	.string	"reserved_4"
.LASF18:
	.string	"prescaler"
.LASF16:
	.string	"asclin"
.LASF11:
	.string	"reserved_8"
.LASF15:
	.string	"CERBERUS"
.LASF9:
	.string	"reserved_10"
.LASF1:
	.string	"reserved_12"
.LASF21:
	.string	"data"
.LASF8:
	.string	"reserved_18"
.LASF22:
	.string	"count"
.LASF17:
	.string	"clockSource"
.LASF25:
	.string	"txData"
.LASF23:
	.string	"rxData"
.LASF20:
	.string	"denominator"
.LASF13:
	.string	"reserved_21"
.LASF5:
	.string	"reserved_24"
.LASF2:
	.string	"reserved_28"
	.extern	IfxScuCcu_getBaud1Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getPllErayFrequency,STT_FUNC,0
	.extern	IfxScuCcu_getOsc0Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.extern	IfxScuCcu_getBaud2Frequency,STT_FUNC,0
	.extern	IfxAsclin_cfg_indexMap,STT_OBJECT,32
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
