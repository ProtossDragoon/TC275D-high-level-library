	.file	"IfxScuCcu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxScuCcu_getOscFrequency.part.0,"ax",@progbits
	.align 1
	.type	IfxScuCcu_getOscFrequency.part.0, @function
IfxScuCcu_getOscFrequency.part.0:
.LFB245:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.c"
	.loc 1 421 0
	.loc 1 429 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 436 0
	mov	%d2, 0
	.loc 1 429 0
	extr.u	%d15, %d15, 28, 2
	jeq	%d15, 1, .L5
.LVL0:
	.loc 1 440 0
	ret
.LVL1:
.L5:
	.loc 1 431 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	utof	%d2, %d2
.LVL2:
	.loc 1 440 0
	ret
.LFE245:
	.size	IfxScuCcu_getOscFrequency.part.0, .-IfxScuCcu_getOscFrequency.part.0
.section .text.IfxScuCcu_calculateSysPllDividers,"ax",@progbits
	.align 1
	.global	IfxScuCcu_calculateSysPllDividers
	.type	IfxScuCcu_calculateSysPllDividers, @function
IfxScuCcu_calculateSysPllDividers:
.LFB214:
	.loc 1 94 0
.LVL3:
.LBB28:
	.loc 1 133 0
	movh	%d3, 3662
	addi	%d3, %d3, 7169
	lt.u	%d14, %d4, %d3
	mov	%d15, 2
	sel	%d14, %d14, %d15, 1
	sh	%d5, %d14, 4
	.loc 1 126 0
	movh	%d6, 3052
	.loc 1 140 0
	movh.a	%a6, 244
	.loc 1 146 0
	movh	%d12, 59432
	movh.a	%a5, 6104
.LBE28:
	.loc 1 97 0
	ld.w	%d10, [%a4] 80
.LVL4:
	mov.a	%a3, %d5
.LBB31:
	.loc 1 126 0
	addi	%d6, %d6, -15872
	.loc 1 121 0
	mov	%e0, 0
	mov	%d7, 0
	.loc 1 136 0
	mov	%d9, 16
	.loc 1 140 0
	lea	%a6, [%a6] 9217
	.loc 1 146 0
	mov	%d13, -1
	addi	%d12, %d12, 31744
	lea	%a5, [%a5] -31743
	mov.a	%a2, 15
.LVL5:
.L14:
	.loc 1 138 0
	div.u	%e2, %d10, %d9
	.loc 1 140 0
	movh	%d5, 65414
	addi	%d5, %d5, -4608
	.loc 1 138 0
	mov	%d3, 0
	.loc 1 140 0
	addx	%d5, %d2, %d5
	addc	%d2, %d3, -1
	mov.d	%d3, %a6
	eq	%d15, %d2, 0
	and.ge.u	%d15, %d5, %d3
	or.ne	%d15, %d2, 0
	jnz	%d15, .L8
	mov	%d11, %d9
	mov	%d8, 1
.LVL6:
.L13:
	.loc 1 146 0
	madd.u	%e2, %e12, %d8, %d4
	mov.d	%d5, %a5
	eq	%d15, %d3, 0
	and.ge.u	%d15, %d2, %d5
	or.ne	%d15, %d3, 0
	jnz	%d15, .L9
	mov	%d5, 1
	lea	%a15, 127
.LVL7:
.L12:
.LBB29:
	.loc 1 151 0
	div.u	%e2, %d5, %d11
	mul	%d2, %d10
	sub	%d2, %d4
.LVL8:
	.loc 1 153 0
	jz	%d2, .L17
	.loc 1 163 0
	mov	%d15, 1
	and.ge.u	%d15, %d2, %d6
	cmovn	%d0, %d15, %d5
.LVL9:
	cmovn	%d6, %d15, %d2
.LVL10:
	cmovn	%d1, %d15, %d9
.LVL11:
	cmovn	%d7, %d15, %d8
.LVL12:
.LBE29:
	.loc 1 148 0
	add	%d5, 1
.LVL13:
	loop	%a15, .L12
.LVL14:
.L9:
	mov.d	%d15, %a3
	.loc 1 142 0 discriminator 2
	add	%d8, %d14
.LVL15:
	add	%d11, %d15
	lt.u	%d15, %d8, 129
	jnz	%d15, .L13
.LVL16:
.L8:
	mov.a	%a15, %d14
	.loc 1 136 0 discriminator 2
	add	%d9, -1
.LVL17:
	sub.a	%a3, %a3, %a15
	loop	%a2, .L14
	mov	%d9, %d1
.LVL18:
	mov	%d5, %d0
	mov	%d8, %d7
	j	.L10
.LVL19:
.L17:
.LBB30:
	.loc 1 155 0
	mov	%d6, 0
.LVL20:
.L10:
.LBE30:
	.loc 1 178 0
	movh	%d2, 20972
	sh	%d4, 1
.LVL21:
	addi	%d2, %d2, -31457
	mul.u	%e2, %d4, %d2
	mov	%d15, 1
	sh	%d2, %d3, -5
	and.ge.u	%d15, %d6, %d2
	.loc 1 188 0
	mov	%d2, 1
	.loc 1 178 0
	jnz	%d15, .L15
	.loc 1 183 0
	mov	%d2, 0
	.loc 1 180 0
	add	%d5, -1
.LVL22:
	.loc 1 181 0
	add	%d9, -1
.LVL23:
	.loc 1 182 0
	add	%d8, -1
.LVL24:
	.loc 1 183 0
	st.w	[%a4] 12, %d2
	.loc 1 180 0
	st.b	[%a4] 9, %d5
	.loc 1 181 0
	st.b	[%a4] 8, %d9
	.loc 1 182 0
	st.b	[%a4] 10, %d8
	.loc 1 184 0
	st.b	[%a4]0, %d15
.LBE31:
	.loc 1 95 0
	mov	%d2, 0
.LVL25:
.L15:
	.loc 1 192 0
	ret
.LFE214:
	.size	IfxScuCcu_calculateSysPllDividers, .-IfxScuCcu_calculateSysPllDividers
.section .text.IfxScuCcu_getOsc0Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getOsc0Frequency
	.type	IfxScuCcu_getOsc0Frequency, @function
IfxScuCcu_getOsc0Frequency:
.LFB223:
	.loc 1 416 0
	.loc 1 417 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	.loc 1 418 0
	utof	%d2, %d2
	ret
.LFE223:
	.size	IfxScuCcu_getOsc0Frequency, .-IfxScuCcu_getOsc0Frequency
.section .text.IfxScuCcu_getOscFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getOscFrequency
	.type	IfxScuCcu_getOscFrequency, @function
IfxScuCcu_getOscFrequency:
.LFB224:
	.loc 1 422 0
	.loc 1 425 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jz	%d15, .L24
	j	IfxScuCcu_getOscFrequency.part.0
.LVL26:
.L24:
	.loc 1 440 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	ret
.LFE224:
	.size	IfxScuCcu_getOscFrequency, .-IfxScuCcu_getOscFrequency
	.global	__floatsidf
	.global	__divdf3
	.global	__truncdfsf2
.section .text.IfxScuCcu_getPllErayFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllErayFrequency
	.type	IfxScuCcu_getPllErayFrequency, @function
IfxScuCcu_getPllErayFrequency:
.LFB225:
	.loc 1 444 0
.LVL27:
.LBB32:
.LBB33:
	.loc 1 425 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 427 0
	movh	%d2, 19647
	.loc 1 425 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 427 0
	addi	%d2, %d2, -17376
	.loc 1 425 0
	jnz	%d15, .L32
.LVL28:
.LBE33:
.LBE32:
	.loc 1 451 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 0, .L33
.L27:
	.loc 1 456 0
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 3, .L34
	.loc 1 464 0
	ld.w	%d3, [%a15] 40
	ld.w	%d15, [%a15] 44
	extr.u	%d3, %d3, 9, 5
	and	%d15, %d15, 127
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL29:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL30:
	.loc 1 468 0
	ret
.LVL31:
.L32:
	.loc 1 451 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.LBB35:
.LBB34:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL32:
.LBE34:
.LBE35:
	ld.w	%d15, [%a15] 36
	jz.t	%d15, 0, .L27
.L33:
	.loc 1 454 0
	ld.w	%d15, [%a15] 44
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL33:
	ret
.LVL34:
.L34:
	.loc 1 459 0
	ld.w	%d4, [%a15] 44
	and	%d4, %d4, 127
	add	%d4, 1
	call	__floatsidf
.LVL35:
	movh	%d5, 16792
	mov	%e6, %d3, %d2
	mov	%d4, 0
	addi	%d5, %d5, -10364
	call	__divdf3
.LVL36:
	mov	%e4, %d3, %d2
	j	__truncdfsf2
.LVL37:
.LFE225:
	.size	IfxScuCcu_getPllErayFrequency, .-IfxScuCcu_getPllErayFrequency
.section .text.IfxScuCcu_getPllErayVcoFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllErayVcoFrequency
	.type	IfxScuCcu_getPllErayVcoFrequency, @function
IfxScuCcu_getPllErayVcoFrequency:
.LFB226:
	.loc 1 472 0
	.loc 1 475 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	.loc 1 478 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 475 0
	jnz.t	%d15, 3, .L36
.LBB36:
.LBB37:
	.loc 1 425 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L42
.L37:
.LVL38:
.LBE37:
.LBE36:
	.loc 1 483 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 5
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL39:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL40:
.L36:
	.loc 1 487 0
	ret
.LVL41:
.L42:
.LBB39:
.LBB38:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL42:
	j	.L37
.LBE38:
.LBE39:
.LFE226:
	.size	IfxScuCcu_getPllErayVcoFrequency, .-IfxScuCcu_getPllErayVcoFrequency
.section .text.IfxScuCcu_getPllFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllFrequency
	.type	IfxScuCcu_getPllFrequency, @function
IfxScuCcu_getPllFrequency:
.LFB227:
	.loc 1 491 0
.LVL43:
.LBB46:
.LBB47:
	.loc 1 425 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	.loc 1 427 0
	movh	%d2, 19647
	.loc 1 425 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 427 0
	addi	%d2, %d2, -17376
	.loc 1 425 0
	jnz	%d15, .L50
.LVL44:
.LBE47:
.LBE46:
	.loc 1 498 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 0, .L51
.L45:
	.loc 1 503 0
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 3, .L52
	.loc 1 511 0
	ld.w	%d4, [%a15] 24
	ld.w	%d15, [%a15] 28
	extr.u	%d4, %d4, 9, 7
	and	%d3, %d15, 127
	ld.w	%d15, [%a15] 24
	add	%d4, 1
	extr.u	%d15, %d15, 24, 4
	itof	%d4, %d4
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	mul.f	%d2, %d4, %d2
.LVL45:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL46:
	.loc 1 515 0
	ret
.LVL47:
.L50:
	.loc 1 498 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.LBB49:
.LBB48:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL48:
.LBE48:
.LBE49:
	ld.w	%d15, [%a15] 20
	jz.t	%d15, 0, .L45
.L51:
	.loc 1 501 0
	ld.w	%d15, [%a15] 28
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL49:
	ret
.LVL50:
.L52:
.LBB50:
.LBB51:
	.loc 1 506 0
	ld.w	%d4, [%a15] 28
	and	%d4, %d4, 127
	add	%d4, 1
	call	__floatsidf
.LVL51:
	movh	%d5, 16792
	mov	%e6, %d3, %d2
	mov	%d4, 0
	addi	%d5, %d5, -10364
	call	__divdf3
.LVL52:
	mov	%e4, %d3, %d2
	j	__truncdfsf2
.LVL53:
.LBE51:
.LBE50:
.LFE227:
	.size	IfxScuCcu_getPllFrequency, .-IfxScuCcu_getPllFrequency
.section .text.IfxScuCcu_getPllVcoFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllVcoFrequency
	.type	IfxScuCcu_getPllVcoFrequency, @function
IfxScuCcu_getPllVcoFrequency:
.LFB228:
	.loc 1 519 0
	.loc 1 522 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	ld.w	%d15, [%a15]0
	.loc 1 525 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 522 0
	jnz.t	%d15, 3, .L54
.LBB52:
.LBB53:
	.loc 1 425 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L60
.L55:
.LVL54:
.LBE53:
.LBE52:
	.loc 1 530 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 7
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL55:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL56:
.L54:
	.loc 1 534 0
	ret
.LVL57:
.L60:
.LBB55:
.LBB54:
	call	IfxScuCcu_getOscFrequency.part.0
.LVL58:
	j	.L55
.LBE54:
.LBE55:
.LFE228:
	.size	IfxScuCcu_getPllVcoFrequency, .-IfxScuCcu_getPllVcoFrequency
.section .text.IfxScuCcu_getSourceFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSourceFrequency
	.type	IfxScuCcu_getSourceFrequency, @function
IfxScuCcu_getSourceFrequency:
.LFB229:
	.loc 1 538 0
	.loc 1 541 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jz	%d15, .L65
	jne	%d15, 1, .L66
	.loc 1 547 0
	j	IfxScuCcu_getPllFrequency
.LVL59:
.L66:
	.loc 1 550 0
	mov	%d2, 0
	ret
.L65:
	.loc 1 544 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
.LVL60:
	.loc 1 555 0
	ret
.LFE229:
	.size	IfxScuCcu_getSourceFrequency, .-IfxScuCcu_getSourceFrequency
.section .text.IfxScuCcu_wait,"ax",@progbits
	.align 1
	.type	IfxScuCcu_wait, @function
IfxScuCcu_wait:
.LFB244:
	.loc 1 1346 0
.LVL61:
	.loc 1 1346 0
	mov	%d15, %d4
.LBB56:
.LBB57:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
	.loc 2 1105 0
	call	IfxScuCcu_getSourceFrequency
.LVL62:
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d4, [%a15]0
	extr.u	%d4, %d4, 8, 4
	itof	%d4, %d4
	div.f	%d2, %d2, %d4
.LBE57:
.LBE56:
	.loc 1 1347 0
	mul.f	%d4, %d15, %d2
	.loc 1 1348 0
	ld.w	%d2, 0xf0000010
	.loc 1 1347 0
	ftouz	%d4, %d4
.LVL63:
.L68:
	.loc 1 1350 0 discriminator 1
	ld.w	%d15, 0xf0000010
	sub	%d15, %d2
	jlt.u	%d15, %d4, .L68
	.loc 1 1359 0
	ret
.LFE244:
	.size	IfxScuCcu_wait, .-IfxScuCcu_wait
.section .text.IfxScuCcu_getBbbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getBbbFrequency
	.type	IfxScuCcu_getBbbFrequency, @function
IfxScuCcu_getBbbFrequency:
.LFB217:
	.loc 1 232 0
	.loc 1 236 0
	call	IfxScuCcu_getSourceFrequency
.LVL64:
	.loc 1 238 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 236 0
	mov	%d15, %d2
.LVL65:
	.loc 1 238 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 265 0
	mov	%d2, 0
.LVL66:
	.loc 1 238 0
	jge.u	%d3, 5, .L71
	movh.a	%a15, hi:.L73
	lea	%a15, [%a15] lo:.L73
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L73:
	.code32
	j	.L72
	.code32
	j	.L74
	.code32
	j	.L75
	.code32
	j	.L76
	.code32
	j	.L77
.L77:
	.loc 1 262 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL67:
.L71:
	.loc 1 270 0
	ret
.LVL68:
.L76:
	.loc 1 259 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL69:
	.loc 1 260 0
	ret
.LVL70:
.L72:
	.loc 1 242 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24640
	ld.w	%d3, [%a15]0
	.loc 1 244 0
	mov	%d2, 0
	.loc 1 242 0
	and	%d3, %d3, 15
	jz	%d3, .L71
	.loc 1 248 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL71:
	ret
.LVL72:
.L74:
	.loc 1 253 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL73:
	.loc 1 254 0
	ret
.LVL74:
.L75:
	.loc 1 256 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL75:
	.loc 1 257 0
	ret
.LFE217:
	.size	IfxScuCcu_getBbbFrequency, .-IfxScuCcu_getBbbFrequency
.section .text.IfxScuCcu_getMaxFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getMaxFrequency
	.type	IfxScuCcu_getMaxFrequency, @function
IfxScuCcu_getMaxFrequency:
.LFB221:
	.loc 1 350 0
	.loc 1 355 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	.loc 1 353 0
	call	IfxScuCcu_getSourceFrequency
.LVL76:
	.loc 1 355 0
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 12, 4
	jlt.u	%d15, 5, .L93
	.loc 1 382 0
	mov	%d2, 0
.LVL77:
.L82:
	.loc 1 387 0
	ret
.LVL78:
.L93:
	.loc 1 355 0
	movh.a	%a15, hi:.L84
	lea	%a15, [%a15] lo:.L84
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L84:
	.code32
	j	.L83
	.code32
	j	.L85
	.code32
	j	.L86
	.code32
	j	.L87
	.code32
	j	.L88
.L87:
	.loc 1 376 0
	movh	%d15, 17008
	div.f	%d2, %d2, %d15
.LVL79:
	.loc 1 377 0
	ret
.LVL80:
.L88:
	.loc 1 379 0
	movh	%d15, 17136
	div.f	%d2, %d2, %d15
.LVL81:
	.loc 1 380 0
	ret
.LVL82:
.L83:
	.loc 1 359 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24652
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 15
	jz	%d15, .L82
	.loc 1 365 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 15
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL83:
	ret
.LVL84:
.L85:
	.loc 1 370 0
	movh	%d15, 16752
	div.f	%d2, %d2, %d15
.LVL85:
	.loc 1 371 0
	ret
.LVL86:
.L86:
	.loc 1 373 0
	movh	%d15, 16880
	div.f	%d2, %d2, %d15
.LVL87:
	.loc 1 374 0
	ret
.LFE221:
	.size	IfxScuCcu_getMaxFrequency, .-IfxScuCcu_getMaxFrequency
.section .text.IfxScuCcu_getBaud1Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getBaud1Frequency
	.type	IfxScuCcu_getBaud1Frequency, @function
IfxScuCcu_getBaud1Frequency:
.LFB215:
	.loc 1 196 0
	.loc 1 198 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL88:
	.loc 1 202 0
	mov	%d2, 0
	.loc 1 198 0
	and	%d8, %d15, 15
.LVL89:
	.loc 1 200 0
	jnz	%d8, .L98
.LVL90:
	.loc 1 210 0
	ret
.LVL91:
.L98:
	.loc 1 206 0
	call	IfxScuCcu_getMaxFrequency
.LVL92:
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL93:
	.loc 1 210 0
	ret
.LFE215:
	.size	IfxScuCcu_getBaud1Frequency, .-IfxScuCcu_getBaud1Frequency
.section .text.IfxScuCcu_getBaud2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getBaud2Frequency
	.type	IfxScuCcu_getBaud2Frequency, @function
IfxScuCcu_getBaud2Frequency:
.LFB216:
	.loc 1 214 0
	.loc 1 216 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL94:
	.loc 1 220 0
	mov	%d2, 0
	.loc 1 216 0
	extr.u	%d8, %d15, 4, 4
.LVL95:
	.loc 1 218 0
	and	%d15, %d15, 240
.LVL96:
	jnz	%d15, .L103
.LVL97:
	.loc 1 228 0
	ret
.LVL98:
.L103:
	.loc 1 224 0
	call	IfxScuCcu_getMaxFrequency
.LVL99:
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL100:
	.loc 1 228 0
	ret
.LFE216:
	.size	IfxScuCcu_getBaud2Frequency, .-IfxScuCcu_getBaud2Frequency
.section .text.IfxScuCcu_getSpbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSpbFrequency
	.type	IfxScuCcu_getSpbFrequency, @function
IfxScuCcu_getSpbFrequency:
.LFB230:
	.loc 1 559 0
	.loc 1 563 0
	call	IfxScuCcu_getSourceFrequency
.LVL101:
	.loc 1 565 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 563 0
	mov	%d15, %d2
.LVL102:
	.loc 1 565 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 592 0
	mov	%d2, 0
.LVL103:
	.loc 1 565 0
	jge.u	%d3, 5, .L105
	movh.a	%a15, hi:.L107
	lea	%a15, [%a15] lo:.L107
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L107:
	.code32
	j	.L106
	.code32
	j	.L108
	.code32
	j	.L109
	.code32
	j	.L110
	.code32
	j	.L111
.L111:
	.loc 1 589 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL104:
.L105:
	.loc 1 597 0
	ret
.LVL105:
.L110:
	.loc 1 586 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL106:
	.loc 1 587 0
	ret
.LVL107:
.L106:
	.loc 1 569 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 571 0
	mov	%d2, 0
	.loc 1 569 0
	extr.u	%d3, %d3, 16, 4
	jz	%d3, .L105
	.loc 1 575 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL108:
	ret
.LVL109:
.L108:
	.loc 1 580 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL110:
	.loc 1 581 0
	ret
.LVL111:
.L109:
	.loc 1 583 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL112:
	.loc 1 584 0
	ret
.LFE230:
	.size	IfxScuCcu_getSpbFrequency, .-IfxScuCcu_getSpbFrequency
.section .text.IfxScuCcu_getModuleFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getModuleFrequency
	.type	IfxScuCcu_getModuleFrequency, @function
IfxScuCcu_getModuleFrequency:
.LFB222:
	.loc 1 391 0
	.loc 1 395 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24632
	ld.w	%d15, [%a15]0
.LVL113:
	.loc 1 396 0
	call	IfxScuCcu_getSpbFrequency
.LVL114:
	mov	%d3, %d2
	.loc 1 398 0
	mov.u	%d2, 49152
	.loc 1 395 0
	insert	%d8, %d15, 0, 10, 22
.LVL115:
	.loc 1 398 0
	and	%d15, %d2
.LVL116:
	mov	%d2, 16384
	jeq	%d15, %d2, .L119
	.loc 1 402 0
	mov.u	%d4, 32768
	.loc 1 408 0
	mov	%d2, 0
	.loc 1 402 0
	jeq	%d15, %d4, .L120
.LVL117:
	.loc 1 412 0
	ret
.LVL118:
.L120:
	.loc 1 404 0
	itof	%d2, %d8
	movh	%d15, 14976
	mul.f	%d2, %d2, %d3
	mul.f	%d2, %d2, %d15
.LVL119:
	.loc 1 412 0
	ret
.LVL120:
.L119:
	.loc 1 400 0
	mov	%d2, 1024
	sub	%d2, %d8
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL121:
	ret
.LFE222:
	.size	IfxScuCcu_getModuleFrequency, .-IfxScuCcu_getModuleFrequency
.section .text.IfxScuCcu_getSriFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSriFrequency
	.type	IfxScuCcu_getSriFrequency, @function
IfxScuCcu_getSriFrequency:
.LFB231:
	.loc 1 601 0
	.loc 1 605 0
	call	IfxScuCcu_getSourceFrequency
.LVL122:
	.loc 1 607 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 605 0
	mov	%d15, %d2
.LVL123:
	.loc 1 607 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 634 0
	mov	%d2, 0
.LVL124:
	.loc 1 607 0
	jge.u	%d3, 5, .L122
	movh.a	%a15, hi:.L124
	lea	%a15, [%a15] lo:.L124
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L124:
	.code32
	j	.L123
	.code32
	j	.L125
	.code32
	j	.L126
	.code32
	j	.L127
	.code32
	j	.L128
.L128:
	.loc 1 631 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL125:
.L122:
	.loc 1 639 0
	ret
.LVL126:
.L127:
	.loc 1 628 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL127:
	.loc 1 629 0
	ret
.LVL128:
.L123:
	.loc 1 611 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d3, [%a15]0
	.loc 1 613 0
	mov	%d2, 0
	.loc 1 611 0
	extr.u	%d3, %d3, 8, 4
	jz	%d3, .L122
	.loc 1 617 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL129:
	ret
.LVL130:
.L125:
	.loc 1 622 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL131:
	.loc 1 623 0
	ret
.LVL132:
.L126:
	.loc 1 625 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL133:
	.loc 1 626 0
	ret
.LFE231:
	.size	IfxScuCcu_getSriFrequency, .-IfxScuCcu_getSriFrequency
.section .text.IfxScuCcu_getCpuFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getCpuFrequency
	.type	IfxScuCcu_getCpuFrequency, @function
IfxScuCcu_getCpuFrequency:
.LFB218:
	.loc 1 274 0
.LVL134:
	.loc 1 274 0
	mov	%d15, %d4
	.loc 1 275 0
	call	IfxScuCcu_getSriFrequency
.LVL135:
	.loc 1 278 0
	jeq	%d15, 1, .L134
	jz	%d15, .L135
	jne	%d15, 2, .L144
	.loc 1 287 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d15, [%a15]0
.LVL136:
.L137:
	.loc 1 294 0
	jz	%d15, .L133
	.loc 1 296 0
	utof	%d15, %d15
.LVL137:
	movh	%d3, 15488
	mul.f	%d15, %d15, %d3
	mul.f	%d2, %d2, %d15
.LVL138:
	ret
.LVL139:
.L144:
	.loc 1 290 0
	mov	%d2, 0
.LVL140:
.L133:
	.loc 1 300 0
	ret
.LVL141:
.L135:
	.loc 1 281 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	ld.w	%d15, [%a15]0
.LVL142:
	.loc 1 282 0
	j	.L137
.LVL143:
.L134:
	.loc 1 284 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d15, [%a15]0
.LVL144:
	.loc 1 285 0
	j	.L137
.LFE218:
	.size	IfxScuCcu_getCpuFrequency, .-IfxScuCcu_getCpuFrequency
.section .text.IfxScuCcu_getFsi2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getFsi2Frequency
	.type	IfxScuCcu_getFsi2Frequency, @function
IfxScuCcu_getFsi2Frequency:
.LFB219:
	.loc 1 304 0
	.loc 1 306 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL145:
	.loc 1 308 0
	movh	%d3, 48
	and	%d3, %d15
	.loc 1 306 0
	extr.u	%d8, %d15, 20, 2
.LVL146:
	.loc 1 310 0
	mov	%d2, 0
	.loc 1 308 0
	jnz	%d3, .L149
.LVL147:
.L146:
	.loc 1 323 0
	ret
.LVL148:
.L149:
	.loc 1 314 0
	call	IfxScuCcu_getSriFrequency
.LVL149:
	.loc 1 316 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL150:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L146
	.loc 1 318 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL151:
	.loc 1 323 0
	ret
.LFE219:
	.size	IfxScuCcu_getFsi2Frequency, .-IfxScuCcu_getFsi2Frequency
.section .text.IfxScuCcu_getFsiFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getFsiFrequency
	.type	IfxScuCcu_getFsiFrequency, @function
IfxScuCcu_getFsiFrequency:
.LFB220:
	.loc 1 327 0
	.loc 1 329 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
.LVL152:
	.loc 1 331 0
	movh	%d3, 768
	and	%d3, %d15
	.loc 1 329 0
	extr.u	%d8, %d15, 24, 2
.LVL153:
	.loc 1 333 0
	mov	%d2, 0
	.loc 1 331 0
	jnz	%d3, .L154
.LVL154:
.L151:
	.loc 1 346 0
	ret
.LVL155:
.L154:
	.loc 1 337 0
	call	IfxScuCcu_getSriFrequency
.LVL156:
	.loc 1 339 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL157:
	addi	%d15, %d15, -256
	andn	%d15, %d15, ~(-257)
	jnz	%d15, .L151
	.loc 1 341 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL158:
	.loc 1 346 0
	ret
.LFE220:
	.size	IfxScuCcu_getFsiFrequency, .-IfxScuCcu_getFsiFrequency
.section .text.IfxScuCcu_init,"ax",@progbits
	.align 1
	.global	IfxScuCcu_init
	.type	IfxScuCcu_init, @function
IfxScuCcu_init:
.LFB232:
	.loc 1 643 0
.LVL159:
	.loc 1 648 0
	ld.w	%d2, [%a4] 80
	movh.a	%a13, hi:IfxScuCcu_xtalFrequency
	.loc 1 643 0
	mov.aa	%a12, %a4
	.loc 1 648 0
	st.w	[%a13] lo:IfxScuCcu_xtalFrequency, %d2
	.loc 1 650 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL160:
	mov	%d10, %d2
.LVL161:
	.loc 1 651 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL162:
	.loc 1 655 0
	mov	%d4, %d10
	.loc 1 651 0
	mov	%d8, %d2
.LVL163:
	.loc 1 655 0
	call	IfxScuWdt_clearCpuEndinit
.LVL164:
	.loc 1 656 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d12, [%a15]0
	.loc 1 657 0
	ld.w	%d15, [%a15]0
	.loc 1 658 0
	mov	%d4, %d10
	.loc 1 657 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 658 0
	call	IfxScuWdt_setCpuEndinit
.LVL165:
	.loc 1 663 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL166:
	.loc 1 656 0
	extr.u	%d12, %d12, 3, 1
.LVL167:
	.loc 1 665 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
.L156:
	.loc 1 665 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	jltz	%d15, .L156
	.loc 1 671 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 672 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 675 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 679 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L157:
	.loc 1 679 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L157
	.loc 1 685 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 686 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
.LVL168:
.LBB69:
.LBB70:
	.loc 1 1025 0
	movh.a	%a15, 61443
	.loc 1 1020 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL169:
	.loc 1 1025 0
	lea	%a15, [%a15] 24592
	ld.w	%d15, [%a15]0
	.loc 1 1020 0
	mov	%d9, %d2
.LVL170:
	.loc 1 1025 0
	andn	%d15, %d15, ~(-97)
	st.w	[%a15]0, %d15
	.loc 1 1031 0
	ld.w	%d6, [%a13] lo:IfxScuCcu_xtalFrequency
	movh	%d15, 27488
	addi	%d15, %d15, -13717
	mul.u	%e6, %d6, %d15
	ld.w	%d2, [%a15]0
.LVL171:
	.loc 1 1037 0
	mov.aa	%a2, %a15
	.loc 1 1031 0
	sh	%d15, %d7, -20
	add	%d15, -1
	insert	%d15, %d2, %d15, 16, 5
	st.w	[%a15]0, %d15
	.loc 1 1034 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 4
	st.w	[%a15]0, %d15
	.loc 1 1037 0
	lea	%a15, 639
.LVL172:
.L158:
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L160
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 8, .L201
.L160:
	loop	%a15, .L158
.LVL173:
	.loc 1 1051 0
	movh.a	%a15, 61443
	.loc 1 1050 0
	mov	%d4, %d9
	.loc 1 1051 0
	lea	%a15, [%a15] 24876
	.loc 1 1050 0
	call	IfxScuWdt_clearCpuEndinit
.LVL174:
	.loc 1 1051 0
	ld.w	%d15, [%a15]0
	.loc 1 1053 0
	mov	%d4, %d9
	.loc 1 1051 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1052 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	.loc 1 1043 0
	mov	%d9, 1
.LVL175:
	.loc 1 1052 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1053 0
	call	IfxScuWdt_setCpuEndinit
.LVL176:
.LBE70:
.LBE69:
	.loc 1 690 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL177:
	j	.L170
.LVL178:
.L201:
.LBB73:
.LBB71:
	.loc 1 1051 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	.loc 1 1050 0
	mov	%d4, %d9
	call	IfxScuWdt_clearCpuEndinit
.LVL179:
	.loc 1 1051 0
	ld.w	%d15, [%a15]0
	.loc 1 1053 0
	mov	%d4, %d9
	.loc 1 1051 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1052 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1053 0
	call	IfxScuWdt_setCpuEndinit
.LVL180:
.LBE71:
.LBE73:
	.loc 1 690 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL181:
.LBB74:
	.loc 1 702 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL182:
	.loc 1 704 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L162:
	.loc 1 704 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L162
	.loc 1 710 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 10
	.loc 1 729 0
	movh	%d4, 14418
	.loc 1 710 0
	insert	%d15, %d2, %d15, 0, 7
	.loc 1 729 0
	addi	%d4, %d4, -18665
	.loc 1 710 0
	st.w	[%a15]0, %d15
	.loc 1 714 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 8
	insert	%d15, %d2, %d15, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 715 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 9
	insert	%d15, %d2, %d15, 9, 7
	st.w	[%a15]0, %d15
	.loc 1 719 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 64
	st.w	[%a15]0, %d15
	.loc 1 721 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 723 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 724 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 727 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 729 0
	call	IfxScuCcu_wait
.LVL183:
	.loc 1 731 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
.L163:
	.loc 1 731 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L163
	.loc 1 737 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 739 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L164:
	.loc 1 739 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L164
	.loc 1 745 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 748 0
	mov.aa	%a15, %a2
	.loc 1 745 0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a2]0, %d15
.L165:
	.loc 1 748 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a13, 61443
	lea	%a13, [%a13] 24624
	jltz	%d15, .L165
	.loc 1 755 0
	ld.w	%d4, [%a12] 12
	call	IfxScuCcu_wait
.LVL184:
.LBB75:
	.loc 1 759 0
	ld.w	%d15, [%a12] 20
	ld.w	%d2, [%a13]0
	.loc 1 761 0
	ld.w	%d3, [%a12] 16
	.loc 1 759 0
	andn	%d2, %d2, %d15
	.loc 1 761 0
	and	%d15, %d3
	or	%d15, %d2
.LVL185:
	.loc 1 762 0
	insert	%d15, %d15, 1, 28, 2
.LVL186:
	.loc 1 763 0
	insert	%d15, %d15, 1, 30, 1
.LBE75:
	.loc 1 767 0
	movh.a	%a15, 61443
.LBB76:
	.loc 1 764 0
	st.w	[%a13]0, %d15
.LBE76:
	.loc 1 767 0
	lea	%a15, [%a15] 24628
.L166:
	.loc 1 767 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL187:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24628
	jltz	%d15, .L166
.LBB77:
	.loc 1 776 0 is_stmt 1
	ld.w	%d15, [%a12] 28
	ld.w	%d2, [%a2]0
	.loc 1 778 0
	ld.w	%d3, [%a12] 24
	.loc 1 776 0
	andn	%d2, %d2, %d15
	.loc 1 778 0
	and	%d15, %d3
	or	%d15, %d2
.LVL188:
	.loc 1 779 0
	insert	%d15, %d15, 1, 28, 2
.LVL189:
	.loc 1 780 0
	insert	%d15, %d15, 1, 30, 1
.LBE77:
	.loc 1 784 0
	movh.a	%a15, 61443
.LBB78:
	.loc 1 781 0
	st.w	[%a2]0, %d15
.LBE78:
	.loc 1 784 0
	lea	%a15, [%a15] 24640
.L167:
	.loc 1 784 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL190:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24640
	jltz	%d15, .L167
.LBB79:
	.loc 1 793 0 is_stmt 1
	ld.w	%d15, [%a12] 36
	ld.w	%d2, [%a2]0
	.loc 1 795 0
	ld.w	%d3, [%a12] 32
	.loc 1 793 0
	andn	%d2, %d2, %d15
	.loc 1 795 0
	and	%d15, %d3
	or	%d15, %d2
.LVL191:
	.loc 1 796 0
	insert	%d15, %d15, 1, 30, 1
.LVL192:
.LBE79:
	.loc 1 800 0
	movh.a	%a15, 61443
.LBB80:
	.loc 1 797 0
	st.w	[%a2]0, %d15
.LBE80:
	.loc 1 800 0
	lea	%a15, [%a15] 24652
.L168:
	.loc 1 800 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL193:
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24652
	jltz	%d15, .L168
.LBB81:
	.loc 1 807 0 is_stmt 1
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a12] 44
	.loc 1 809 0
	ld.w	%d3, [%a12] 40
	.loc 1 807 0
	andn	%d2, %d2, %d15
	.loc 1 809 0
	and	%d15, %d3
	or	%d15, %d2
.LVL194:
	.loc 1 810 0
	insert	%d15, %d15, 1, 30, 1
.LVL195:
.LBE81:
.LBB82:
	.loc 1 816 0
	movh.a	%a15, 61443
.LBE82:
.LBB83:
	.loc 1 811 0
	st.w	[%a2]0, %d15
.LBE83:
.LBB84:
	.loc 1 816 0
	lea	%a15, [%a15] 24704
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 52
.LVL196:
	.loc 1 818 0
	ld.w	%d3, [%a12] 48
	.loc 1 816 0
	andn	%d2, %d2, %d15
.LVL197:
	.loc 1 818 0
	and	%d15, %d3
	or	%d15, %d2
.LVL198:
	.loc 1 819 0
	st.w	[%a15]0, %d15
.LBE84:
.LBB85:
	.loc 1 825 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 60
.LVL199:
	.loc 1 827 0
	ld.w	%d3, [%a12] 56
	.loc 1 825 0
	andn	%d2, %d2, %d15
.LVL200:
	.loc 1 827 0
	and	%d15, %d3
	or	%d15, %d2
.LVL201:
	.loc 1 828 0
	st.w	[%a15]0, %d15
.LVL202:
.LBE85:
.LBB86:
	.loc 1 834 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 68
.LVL203:
	.loc 1 836 0
	ld.w	%d3, [%a12] 64
	.loc 1 834 0
	andn	%d2, %d2, %d15
.LVL204:
	.loc 1 836 0
	and	%d15, %d3
	or	%d15, %d2
.LVL205:
	.loc 1 837 0
	st.w	[%a15]0, %d15
.LVL206:
.LBE86:
	.loc 1 841 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LVL207:
.LBB87:
	.loc 1 847 0
	movh.a	%a15, 63488
	lea	%a15, [%a15] 8212
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 76
.LVL208:
	.loc 1 851 0
	ld.w	%d3, [%a12] 72
	.loc 1 850 0
	andn	%d2, %d2, %d15
.LVL209:
	.loc 1 853 0
	mov	%d4, %d10
	.loc 1 851 0
	and	%d15, %d3
	or	%d15, %d2
.LVL210:
	.loc 1 853 0
	call	IfxScuWdt_clearCpuEndinit
.LVL211:
	.loc 1 854 0
	st.w	[%a15]0, %d15
	.loc 1 855 0
	mov	%d4, %d10
	call	IfxScuWdt_setCpuEndinit
.LVL212:
.LBE87:
	.loc 1 860 0
	ld.bu	%d15, [%a12]0
.LVL213:
	.loc 1 866 0
	movh.a	%a15, 61443
	.loc 1 873 0
	movh.a	%a13, 61443
	.loc 1 860 0
	mov	%d9, 0
.LVL214:
	.loc 1 866 0
	lea	%a15, [%a15] 24596
	.loc 1 873 0
	lea	%a13, [%a13] 24604
	.loc 1 860 0
	jz	%d15, .L173
.LVL215:
.L182:
	.loc 1 863 0
	mov	%d4, %d8
	and	%d11, %d9, 255
.LVL216:
	call	IfxScuWdt_clearSafetyEndinit
.LVL217:
.L171:
	.loc 1 866 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L171
	.loc 1 873 0
	and	%d15, %d9, 255
	ld.a	%a3, [%a12] 4
	mul	%d15, %d15, 12
	ld.w	%d3, [%a13]0
	.loc 1 874 0
	mov	%d4, %d8
	.loc 1 873 0
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d2, [%a2]0
	insert	%d2, %d3, %d2, 0, 7
	st.w	[%a13]0, %d2
	.loc 1 874 0
	call	IfxScuWdt_setSafetyEndinit
.LVL218:
	.loc 1 878 0
	ld.a	%a3, [%a12] 4
	addsc.a	%a2, %a3, %d15, 0
	ld.a	%a3, [%a2] 8
	jz.a	%a3, .L172
	.loc 1 880 0
	calli	%a3
.LVL219:
	ld.a	%a3, [%a12] 4
	addsc.a	%a2, %a3, %d15, 0
.L172:
	.loc 1 884 0 discriminator 2
	ld.w	%d4, [%a2] 4
	call	IfxScuCcu_wait
.LVL220:
	addi	%d2, %d11, 1
	.loc 1 860 0 discriminator 2
	ld.bu	%d15, [%a12]0
	and	%d2, %d2, 255
	add	%d9, 1
	jlt.u	%d2, %d15, .L182
.LVL221:
.L173:
.LBE74:
.LBB88:
.LBB72:
	.loc 1 1018 0
	mov	%d9, 0
.LVL222:
.L170:
.LBE72:
.LBE88:
	.loc 1 889 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL223:
	.loc 1 890 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	.loc 1 891 0
	mov	%d4, %d8
	.loc 1 890 0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 891 0
	call	IfxScuWdt_setSafetyEndinit
.LVL224:
	.loc 1 896 0
	movh.a	%a15, 61443
	.loc 1 895 0
	mov	%d4, %d10
	.loc 1 896 0
	lea	%a15, [%a15] 24876
	.loc 1 895 0
	call	IfxScuWdt_clearCpuEndinit
.LVL225:
	.loc 1 896 0
	ld.w	%d15, [%a15]0
	.loc 1 897 0
	sh	%d12, 3
.LVL226:
	.loc 1 896 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 897 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	.loc 1 898 0
	mov	%d4, %d10
	.loc 1 897 0
	andn	%d15, %d15, ~(-9)
	or	%d12, %d15
	st.w	[%a15]0, %d12
	.loc 1 898 0
	call	IfxScuWdt_setCpuEndinit
.LVL227:
	.loc 1 901 0
	mov	%d2, %d9
	ret
.LFE232:
	.size	IfxScuCcu_init, .-IfxScuCcu_init
.section .text.IfxScuCcu_initConfig,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initConfig
	.type	IfxScuCcu_initConfig, @function
IfxScuCcu_initConfig:
.LFB233:
	.loc 1 905 0
.LVL228:
	.loc 1 906 0
	movh	%d2, hi:IfxScuCcu_defaultClockConfig
	mov.a	%a2, %d2
	lea	%a15, [%a2] lo:IfxScuCcu_defaultClockConfig
		# #chunks=10, chunksize=8, remains=4
	lea	%a2, 10-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	loop	%a2, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL229:
	ret
.LFE233:
	.size	IfxScuCcu_initConfig, .-IfxScuCcu_initConfig
.section .text.IfxScuCcu_initErayPll,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initErayPll
	.type	IfxScuCcu_initErayPll, @function
IfxScuCcu_initErayPll:
.LFB234:
	.loc 1 911 0
.LVL230:
	.loc 1 911 0
	mov.aa	%a12, %a4
	.loc 1 916 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL231:
	mov	%d8, %d2
.LVL232:
	.loc 1 917 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL233:
	.loc 1 920 0
	mov	%d4, %d8
	.loc 1 917 0
	mov	%d9, %d2
.LVL234:
	.loc 1 920 0
	call	IfxScuWdt_clearCpuEndinit
.LVL235:
	.loc 1 921 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d2, [%a15]0
	.loc 1 922 0
	ld.w	%d15, [%a15]0
	.loc 1 923 0
	mov	%d4, %d8
	.loc 1 922 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 921 0
	extr.u	%d11, %d2, 3, 1
.LVL236:
	.loc 1 923 0
	call	IfxScuWdt_setCpuEndinit
.LVL237:
	.loc 1 928 0
	movh.a	%a15, 61443
	.loc 1 925 0
	mov	%d4, %d9
	.loc 1 928 0
	lea	%a15, [%a15] 24616
	.loc 1 925 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL238:
	.loc 1 928 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 16, .L204
	.loc 1 928 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L231
.L204:
	.loc 1 931 0 is_stmt 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 932 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 934 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L206:
	.loc 1 934 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 1, .L206
	.loc 1 938 0 is_stmt 1
	ld.w	%d4, [%a12] 4
	call	IfxScuCcu_wait
.LVL239:
.L205:
	.loc 1 943 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L208
.L207:
	.loc 1 954 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L209:
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L209
	.loc 1 957 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 2
	.loc 1 970 0
	mov	%d4, %d9
	.loc 1 957 0
	insert	%d15, %d2, %d15, 0, 7
	st.w	[%a15]0, %d15
	.loc 1 958 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12]0
	insert	%d15, %d2, %d15, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 959 0
	ld.w	%d2, [%a15]0
	ld.bu	%d15, [%a12] 1
	insert	%d15, %d2, %d15, 9, 5
	st.w	[%a15]0, %d15
	.loc 1 967 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 968 0
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 32
	st.w	[%a15]0, %d15
	.loc 1 970 0
	call	IfxScuWdt_setSafetyEndinit
.LVL240:
	.loc 1 975 0
	movh.a	%a15, 1
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24612
	lea	%a15, [%a15] -15538
.LVL241:
.L210:
	.loc 1 975 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 2, .L232
	loop	%a15, .L210
	.loc 1 981 0 is_stmt 1
	mov	%d10, 1
	j	.L211
.L208:
	.loc 1 945 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 4, .L208
	.loc 1 948 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 16, 7
	st.w	[%a15]0, %d15
	.loc 1 951 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	ld.w	%d15, [%a15]0
	or	%d15, %d15, 1
	st.w	[%a15]0, %d15
	j	.L207
.L232:
	.loc 1 914 0
	mov	%d10, 0
.L211:
.LVL242:
	.loc 1 986 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24616
	.loc 1 984 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL243:
	.loc 1 986 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 989 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
.L213:
	.loc 1 989 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L213
	.loc 1 992 0 is_stmt 1
	movh.a	%a15, 61443
	.loc 1 997 0
	mov	%d4, %d9
	.loc 1 992 0
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	.loc 1 997 0
	call	IfxScuWdt_setSafetyEndinit
.LVL244:
	.loc 1 992 0
	extr.u	%d15, %d15, 2, 1
	.loc 1 1001 0
	movh.a	%a15, 61443
	.loc 1 1000 0
	mov	%d4, %d8
	.loc 1 1001 0
	lea	%a15, [%a15] 24876
	.loc 1 1000 0
	call	IfxScuWdt_clearCpuEndinit
.LVL245:
	.loc 1 994 0
	cmovn	%d10, %d15, 1
.LVL246:
	.loc 1 1001 0
	ld.w	%d15, [%a15]0
	.loc 1 1002 0
	sh	%d2, %d11, 3
	.loc 1 1001 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1002 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	.loc 1 1003 0
	mov	%d4, %d8
	.loc 1 1002 0
	andn	%d15, %d15, ~(-9)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1003 0
	call	IfxScuWdt_setCpuEndinit
.LVL247:
	.loc 1 1006 0
	mov	%d2, %d10
	ret
.LVL248:
.L231:
	.loc 1 928 0 discriminator 2
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24612
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L205
	j	.L204
.LFE234:
	.size	IfxScuCcu_initErayPll, .-IfxScuCcu_initErayPll
.section .text.IfxScuCcu_initErayPllConfig,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initErayPllConfig
	.type	IfxScuCcu_initErayPllConfig, @function
IfxScuCcu_initErayPllConfig:
.LFB235:
	.loc 1 1010 0
.LVL249:
	.loc 1 1011 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	mov	%d15, 23
	st.b	[%a4] 1, %d15
	mov	%d15, 5
	st.b	[%a4] 2, %d15
	mov	%d15, 0
	st.w	[%a4] 4, %d15
	ret
.LFE235:
	.size	IfxScuCcu_initErayPllConfig, .-IfxScuCcu_initErayPllConfig
.section .text.IfxScuCcu_setCpuFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setCpuFrequency
	.type	IfxScuCcu_setCpuFrequency, @function
IfxScuCcu_setCpuFrequency:
.LFB237:
	.loc 1 1061 0
.LVL250:
	.loc 1 1061 0
	mov	%e8, %d4, %d5
	.loc 1 1066 0
	call	IfxScuCcu_getSriFrequency
.LVL251:
	mov	%d15, %d2
.LVL252:
	.loc 1 1068 0
	cmp.f	%d2, %d2, %d8
.LVL253:
	or.t	%d2, %d2,0, %d2,1
	jnz	%d2, .L235
	.loc 1 1074 0
	movh	%d2, 17024
	mul.f	%d8, %d8, %d2
.LVL254:
	div.f	%d8, %d8, %d15
	ftouz	%d8, %d8
.LVL255:
	.loc 1 1077 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL256:
	.loc 1 1080 0
	mov	%d4, %d2
	.loc 1 1077 0
	mov	%d10, %d2
.LVL257:
	.loc 1 1080 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL258:
	.loc 1 1082 0
	jeq	%d9, 1, .L237
	jz	%d9, .L238
	jeq	%d9, 2, .L239
.LVL259:
.L236:
	.loc 1 1098 0
	mov	%d4, %d10
	call	IfxScuWdt_setSafetyEndinit
.LVL260:
	.loc 1 1101 0
	jz	%d8, .L249
	.loc 1 1103 0
	utof	%d8, %d8
	movh	%d2, 15488
	mul.f	%d8, %d8, %d2
	mul.f	%d15, %d15, %d8
.LVL261:
.L249:
	.loc 1 1107 0
	mov	%d2, %d15
	ret
.LVL262:
.L235:
	.loc 1 1077 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL263:
	.loc 1 1080 0
	mov	%d4, %d2
	.loc 1 1077 0
	mov	%d10, %d2
.LVL264:
	.loc 1 1080 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL265:
	.loc 1 1082 0
	jeq	%d9, 1, .L243
	jz	%d9, .L242
	jne	%d9, 2, .L260
	.loc 1 1070 0
	mov	%d8, 0
.LVL266:
.L239:
	.loc 1 1091 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24712
	st.w	[%a15]0, %d8
	.loc 1 1092 0
	j	.L236
.LVL267:
.L243:
	.loc 1 1070 0
	mov	%d8, 0
.LVL268:
.L237:
	.loc 1 1088 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24708
	st.w	[%a15]0, %d8
	.loc 1 1089 0
	j	.L236
.LVL269:
.L242:
	.loc 1 1070 0
	mov	%d8, 0
.LVL270:
.L238:
	.loc 1 1085 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24704
	st.w	[%a15]0, %d8
	.loc 1 1086 0
	j	.L236
.LVL271:
.L260:
	.loc 1 1098 0
	mov	%d4, %d10
	call	IfxScuWdt_setSafetyEndinit
.LVL272:
	j	.L249
.LFE237:
	.size	IfxScuCcu_setCpuFrequency, .-IfxScuCcu_setCpuFrequency
.section .text.IfxScuCcu_setGtmFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setGtmFrequency
	.type	IfxScuCcu_setGtmFrequency, @function
IfxScuCcu_setGtmFrequency:
.LFB238:
	.loc 1 1111 0
.LVL273:
	.loc 1 1113 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
	.loc 1 1111 0
	mov	%d15, %d4
	.loc 1 1113 0
	ld.w	%d8, [%a15]0
.LVL274:
	.loc 1 1115 0
	call	IfxScuCcu_getSourceFrequency
.LVL275:
	.loc 1 1116 0
	div.f	%d2, %d2, %d15
.LVL276:
	ftoiz	%d3, %d2
	itof	%d15, %d3
.LVL277:
	sub.f	%d2, %d2, %d15
	movh	%d15, 16128
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
.LBB89:
.LBB90:
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 150 0
	mov	%d2, 1
.LBE90:
.LBE89:
	.loc 1 1116 0
	add	%d15, %d3
.LVL278:
.LBB92:
.LBB91:
	.loc 3 150 0
#APP
	# 150 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL279:
#NO_APP
.LBE91:
.LBE92:
	.loc 1 1120 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L265
	.loc 1 1122 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL280:
.L269:
	and	%d10, %d15, 15
.L267:
.LVL281:
	.loc 1 1130 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL282:
	.loc 1 1131 0
	mov	%d4, %d2
	.loc 1 1130 0
	mov	%d9, %d2
.LVL283:
	.loc 1 1131 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL284:
	.loc 1 1133 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24628
.L268:
	.loc 1 1133 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a12, 61443
	lea	%a12, [%a12] 24628
	jltz	%d15, .L268
	.loc 1 1136 0 is_stmt 1
	insert	%d8, %d8, %d10, 12, 4
	.loc 1 1137 0
	insert	%d8, %d8, 1, 30, 1
	.loc 1 1140 0
	mov	%d4, %d9
	.loc 1 1138 0
	st.w	[%a12]0, %d8
	.loc 1 1140 0
	call	IfxScuWdt_setSafetyEndinit
.LVL285:
.LBB93:
.LBB94:
	.loc 2 1074 0
	call	IfxScuCcu_getSourceFrequency
.LVL286:
	ld.w	%d15, [%a12]0
	extr.u	%d15, %d15, 12, 4
	itof	%d15, %d15
.LBE94:
.LBE93:
	.loc 1 1143 0
	div.f	%d2, %d2, %d15
	ret
.LVL287:
.L265:
	.loc 1 1125 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L267
	j	.L269
.LFE238:
	.size	IfxScuCcu_setGtmFrequency, .-IfxScuCcu_setGtmFrequency
.section .text.IfxScuCcu_setPll2ErayFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setPll2ErayFrequency
	.type	IfxScuCcu_setPll2ErayFrequency, @function
IfxScuCcu_setPll2ErayFrequency:
.LFB239:
	.loc 1 1147 0
.LVL288:
	.loc 1 1147 0
	mov	%d8, %d4
	.loc 1 1148 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL289:
	mov	%d15, %d2
.LVL290:
	.loc 1 1149 0
	call	IfxScuCcu_getPllErayVcoFrequency
.LVL291:
	.loc 1 1151 0
	mov	%d4, %d15
	.loc 1 1149 0
	mov	%d9, %d2
.LVL292:
	.loc 1 1151 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL293:
	.loc 1 1149 0
	div.f	%d8, %d9, %d8
.LVL294:
	.loc 1 1152 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24620
	ld.w	%d2, [%a15]0
	.loc 1 1149 0
	movh	%d3, 16256
	.loc 1 1153 0
	mov	%d4, %d15
	.loc 1 1149 0
	sub.f	%d8, %d8, %d3
	ftouz	%d8, %d8
.LVL295:
	.loc 1 1152 0
	insert	%d8, %d2, %d8, 8, 4
.LVL296:
	st.w	[%a15]0, %d8
	.loc 1 1153 0
	call	IfxScuWdt_setSafetyEndinit
.LVL297:
.LBB95:
.LBB96:
	.loc 2 1082 0
	call	IfxScuCcu_getPllErayVcoFrequency
.LVL298:
	ld.w	%d15, [%a15]0
.LVL299:
	extr.u	%d15, %d15, 8, 4
.LVL300:
	add	%d15, 1
.LVL301:
	itof	%d15, %d15
.LVL302:
.LBE96:
.LBE95:
	.loc 1 1156 0
	div.f	%d2, %d2, %d15
	ret
.LFE239:
	.size	IfxScuCcu_setPll2ErayFrequency, .-IfxScuCcu_setPll2ErayFrequency
.section .text.IfxScuCcu_setPll2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setPll2Frequency
	.type	IfxScuCcu_setPll2Frequency, @function
IfxScuCcu_setPll2Frequency:
.LFB240:
	.loc 1 1160 0
.LVL303:
	.loc 1 1160 0
	mov	%d8, %d4
	.loc 1 1161 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL304:
	mov	%d15, %d2
.LVL305:
	.loc 1 1162 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL306:
	.loc 1 1164 0
	mov	%d4, %d15
	.loc 1 1162 0
	mov	%d9, %d2
.LVL307:
	.loc 1 1164 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL308:
	.loc 1 1162 0
	div.f	%d8, %d9, %d8
.LVL309:
	.loc 1 1165 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24604
	ld.w	%d2, [%a15]0
	.loc 1 1162 0
	movh	%d3, 16256
	.loc 1 1166 0
	mov	%d4, %d15
	.loc 1 1162 0
	sub.f	%d8, %d8, %d3
	ftouz	%d8, %d8
.LVL310:
	.loc 1 1165 0
	insert	%d8, %d2, %d8, 8, 7
.LVL311:
	st.w	[%a15]0, %d8
	.loc 1 1166 0
	call	IfxScuWdt_setSafetyEndinit
.LVL312:
.LBB97:
.LBB98:
	.loc 2 1091 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL313:
	ld.w	%d15, [%a15]0
.LVL314:
	extr.u	%d15, %d15, 8, 7
.LVL315:
	add	%d15, 1
.LVL316:
	itof	%d15, %d15
.LVL317:
.LBE98:
.LBE97:
	.loc 1 1169 0
	div.f	%d2, %d2, %d15
	ret
.LFE240:
	.size	IfxScuCcu_setPll2Frequency, .-IfxScuCcu_setPll2Frequency
.section .text.IfxScuCcu_setSpbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setSpbFrequency
	.type	IfxScuCcu_setSpbFrequency, @function
IfxScuCcu_setSpbFrequency:
.LFB241:
	.loc 1 1173 0
.LVL318:
	.loc 1 1173 0
	mov	%d15, %d4
	.loc 1 1178 0
	call	IfxScuCcu_getSourceFrequency
.LVL319:
	.loc 1 1179 0
	div.f	%d2, %d2, %d15
.LVL320:
.LBB99:
.LBB100:
	.loc 3 150 0
	mov	%d15, 2
.LVL321:
.LBE100:
.LBE99:
	.loc 1 1179 0
	ftouz	%d2, %d2
.LVL322:
.LBB102:
.LBB101:
	.loc 3 150 0
#APP
	# 150 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d2, %d15
	# 0 "" 2
.LVL323:
#NO_APP
.LBE101:
.LBE102:
	.loc 1 1182 0
	add	%d2, %d15, -7
.LVL324:
	jge.u	%d2, 7, .L279
	.loc 1 1184 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL325:
.L284:
	and	%d10, %d15, 15
.L281:
.LVL326:
	.loc 1 1192 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL327:
	mov	%d8, %d2
.LVL328:
	.loc 1 1193 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL329:
	.loc 1 1195 0
	mov	%d4, %d8
	.loc 1 1193 0
	mov	%d9, %d2
.LVL330:
	.loc 1 1195 0
	call	IfxScuWdt_clearCpuEndinit
.LVL331:
	.loc 1 1196 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d2, [%a15]0
	mov	%d15, 992
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1197 0
	mov	%d4, %d8
	call	IfxScuWdt_setCpuEndinit
.LVL332:
	.loc 1 1199 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
.LVL333:
	.loc 1 1201 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L282:
	.loc 1 1201 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L282
	.loc 1 1204 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 1208 0
	mov	%d4, %d9
	.loc 1 1205 0
	insert	%d15, %d15, %d10, 16, 4
.LVL334:
	.loc 1 1206 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1211 0
	movh.a	%a15, 61443
	.loc 1 1207 0
	st.w	[%a2]0, %d15
	.loc 1 1208 0
	call	IfxScuWdt_setSafetyEndinit
.LVL335:
	.loc 1 1210 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL336:
	.loc 1 1211 0
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
.LVL337:
	.loc 1 1212 0
	mov	%d4, %d8
	.loc 1 1211 0
	insert	%d15, %d15, 0, 5, 5
	st.w	[%a15]0, %d15
	.loc 1 1212 0
	call	IfxScuWdt_setCpuEndinit
.LVL338:
	.loc 1 1214 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L283:
	.loc 1 1214 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L283
	.loc 1 1217 0 is_stmt 1
	j	IfxScuCcu_getSpbFrequency
.LVL339:
.L279:
	.loc 1 1187 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L281
	j	.L284
.LFE241:
	.size	IfxScuCcu_setSpbFrequency, .-IfxScuCcu_setSpbFrequency
.section .text.IfxScuCcu_setSriFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setSriFrequency
	.type	IfxScuCcu_setSriFrequency, @function
IfxScuCcu_setSriFrequency:
.LFB242:
	.loc 1 1222 0
.LVL340:
	.loc 1 1222 0
	mov	%d15, %d4
	.loc 1 1224 0
	call	IfxScuCcu_getSourceFrequency
.LVL341:
	.loc 1 1227 0
	div.f	%d2, %d2, %d15
.LVL342:
	ftoiz	%d3, %d2
	itof	%d15, %d3
.LVL343:
	sub.f	%d2, %d2, %d15
	movh	%d15, 16128
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
.LBB103:
.LBB104:
	.loc 3 150 0
	mov	%d2, 1
.LBE104:
.LBE103:
	.loc 1 1227 0
	add	%d15, %d3
.LVL344:
.LBB106:
.LBB105:
	.loc 3 150 0
#APP
	# 150 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL345:
#NO_APP
.LBE105:
.LBE106:
	.loc 1 1230 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L295
	.loc 1 1232 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL346:
.L300:
	and	%d9, %d15, 15
.L297:
.LVL347:
	.loc 1 1240 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL348:
	.loc 1 1241 0
	mov	%d4, %d2
	.loc 1 1240 0
	mov	%d8, %d2
.LVL349:
	.loc 1 1241 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL350:
	.loc 1 1243 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
.L298:
	.loc 1 1243 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
	jltz	%d15, .L298
	.loc 1 1246 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 1251 0
	mov	%d4, %d8
	.loc 1 1247 0
	insert	%d15, %d15, %d9, 8, 4
.LVL351:
	.loc 1 1248 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1253 0
	movh.a	%a15, 61443
	.loc 1 1249 0
	st.w	[%a2]0, %d15
	.loc 1 1251 0
	call	IfxScuWdt_setSafetyEndinit
.LVL352:
	.loc 1 1253 0
	lea	%a15, [%a15] 24624
.L299:
	.loc 1 1253 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL353:
	jltz	%d15, .L299
	.loc 1 1256 0 is_stmt 1
	j	IfxScuCcu_getSriFrequency
.LVL354:
.L295:
	.loc 1 1235 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L297
	j	.L300
.LFE242:
	.size	IfxScuCcu_setSriFrequency, .-IfxScuCcu_setSriFrequency
.section .text.IfxScuCcu_switchToBackupClock,"ax",@progbits
	.align 1
	.global	IfxScuCcu_switchToBackupClock
	.type	IfxScuCcu_switchToBackupClock, @function
IfxScuCcu_switchToBackupClock:
.LFB243:
	.loc 1 1262 0
.LVL355:
	.loc 1 1267 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 28, 2
	jnz	%d15, .L322
	ret
.L322:
	mov.aa	%a12, %a4
	.loc 1 1272 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL356:
	mov	%d8, %d2
.LVL357:
	.loc 1 1273 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL358:
	.loc 1 1276 0
	ld.bu	%d9, [%a12]0
	.loc 1 1289 0
	movh.a	%a14, 61443
	mul	%d15, %d9, 12
	.loc 1 1273 0
	mov	%d10, %d2
.LVL359:
	.loc 1 1289 0
	lea	%a14, [%a14] 24604
	mov.a	%a15, %d15
	lea	%a13, [%a15] -12
	.loc 1 1282 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24596
	.loc 1 1276 0
	jz	%d9, .L314
.LVL360:
.L317:
	.loc 1 1279 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL361:
.L312:
	.loc 1 1282 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L312
	.loc 1 1289 0 discriminator 2
	ld.a	%a2, [%a12] 4
	ld.w	%d3, [%a14]0
	.loc 1 1291 0 discriminator 2
	mov	%d4, %d8
	.loc 1 1289 0 discriminator 2
	add.a	%a2, %a13
	ld.bu	%d15, [%a2]0
	.loc 1 1276 0 discriminator 2
	add	%d9, -1
.LVL362:
	.loc 1 1289 0 discriminator 2
	insert	%d15, %d3, %d15, 0, 7
	st.w	[%a14]0, %d15
	.loc 1 1291 0 discriminator 2
	call	IfxScuWdt_setSafetyEndinit
.LVL363:
	.loc 1 1294 0 discriminator 2
	ld.a	%a2, [%a12] 4
	add.a	%a2, %a13
	ld.w	%d4, [%a2] 4
	call	IfxScuCcu_wait
.LVL364:
	lea	%a13, [%a13] -12
	.loc 1 1276 0 discriminator 2
	jnz	%d9, .L317
.L314:
	.loc 1 1300 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
.LVL365:
	.loc 1 1302 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d2, [%a15]0
	.loc 1 1303 0
	ld.w	%d15, [%a15]0
	.loc 1 1305 0
	mov	%d4, %d10
	.loc 1 1303 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1302 0
	extr.u	%d9, %d2, 3, 1
.LVL366:
	.loc 1 1305 0
	call	IfxScuWdt_setCpuEndinit
.LVL367:
	.loc 1 1310 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.LVL368:
	.loc 1 1312 0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 24624
.L311:
	.loc 1 1312 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24624
	jltz	%d15, .L311
	.loc 1 1318 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 1319 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 15, 30, 1
	st.w	[%a15]0, %d15
.L315:
	.loc 1 1321 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L315
	.loc 1 1328 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24600
	ld.w	%d15, [%a15]0
	.loc 1 1332 0
	mov	%d4, %d8
	.loc 1 1328 0
	or	%d15, %d15, 16
	st.w	[%a15]0, %d15
	.loc 1 1331 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 1332 0
	call	IfxScuWdt_setSafetyEndinit
.LVL369:
	.loc 1 1337 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24876
	.loc 1 1336 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
.LVL370:
	.loc 1 1337 0
	ld.w	%d15, [%a15]0
	.loc 1 1339 0
	sh	%d2, %d9, 3
	.loc 1 1337 0
	or	%d15, %d15, 8
	st.w	[%a15]0, %d15
	.loc 1 1339 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24880
	ld.w	%d15, [%a15]0
	.loc 1 1340 0
	mov	%d4, %d10
	.loc 1 1339 0
	andn	%d15, %d15, ~(-9)
	or	%d15, %d2
	st.w	[%a15]0, %d15
	.loc 1 1340 0
	j	IfxScuWdt_setCpuEndinit
.LVL371:
.LFE243:
	.size	IfxScuCcu_switchToBackupClock, .-IfxScuCcu_switchToBackupClock
	.global	IfxScuCcu_defaultErayPllConfig
.section .rodata.IfxScuCcu_defaultErayPllConfig,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultErayPllConfig, @object
	.size	IfxScuCcu_defaultErayPllConfig, 8
IfxScuCcu_defaultErayPllConfig:
	.byte	0
	.byte	23
	.byte	5
	.zero	1
	.word	0
	.global	IfxScuCcu_defaultClockConfig
.section .rodata.IfxScuCcu_defaultClockConfig,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultClockConfig, @object
	.size	IfxScuCcu_defaultClockConfig, 84
IfxScuCcu_defaultClockConfig:
	.byte	3
	.zero	3
	.word	IfxScuCcu_aDefaultPllConfigSteps
	.byte	1
	.byte	59
	.byte	5
	.zero	1
	.word	961656599
	.word	34734354
	.word	54464511
	.word	34873874
	.word	268435455
	.word	2
	.word	15
	.word	1
	.word	15
	.word	0
	.word	63
	.word	0
	.word	63
	.word	0
	.word	63
	.word	5333
	.word	32767
	.word	20000000
.section .data.IfxScuCcu_xtalFrequency,"aw",@progbits
	.align 2
	.type	IfxScuCcu_xtalFrequency, @object
	.size	IfxScuCcu_xtalFrequency, 4
IfxScuCcu_xtalFrequency:
	.word	20000000
.section .rodata.IfxScuCcu_aDefaultPllConfigSteps,"a",@progbits
	.align 2
	.type	IfxScuCcu_aDefaultPllConfigSteps, @object
	.size	IfxScuCcu_aDefaultPllConfigSteps, 36
IfxScuCcu_aDefaultPllConfigSteps:
	.byte	4
	.zero	3
	.word	953267991
	.word	0
	.byte	3
	.zero	3
	.word	953267991
	.word	0
	.byte	2
	.zero	3
	.word	953267991
	.word	0
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
	.uaword	.LFB245
	.uaword	.LFE245-.LFB245
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB234
	.uaword	.LFE234-.LFB234
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.align 2
.LEFDE60:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxScu_cfg.h"
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxScu_regdef.h"
	.file 8 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxStm_regdef.h"
	.file 10 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxFlash_regdef.h"
	.file 11 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x88de
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.c"
	.string	"C:\\\\Users\\\\user\\\\Desktop\\\\programming_PROJECTS\\\\\307\321\276\347\264\353_\300\323\272\243\265\360\265\345\275\303\275\272\305\333\\\\DevBaseEnv_vscode_TC27D"
	.uaword	.Ldebug_ranges0+0x170
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
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x4
	.uahalf	0x584
	.uaword	0x227
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fBack"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON0_CLKSEL_fPll"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x4
	.uahalf	0x58b
	.uaword	0x26b
	.uleb128 0x4
	.string	"IfxScu_CCUCON1_INSEL_fOsc1"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxScu_CCUCON1_INSEL_fOsc0"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0x2a8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x2d4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x26b
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x277
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x1a8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0x2a8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.string	"uint64"
	.byte	0x6
	.byte	0x25
	.uaword	0x1c1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x35b
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.uaword	0x382
	.uleb128 0x9
	.string	"module"
	.byte	0x6
	.byte	0x7f
	.uaword	0x355
	.byte	0
	.uleb128 0x9
	.string	"index"
	.byte	0x6
	.byte	0x80
	.uaword	0x2ea
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x81
	.uaword	0x35c
	.uleb128 0xa
	.string	"_Ifx_SCU_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x5b0
	.uleb128 0xb
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x39c
	.uleb128 0xa
	.string	"_Ifx_SCU_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x5f8
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.byte	0x54
	.uaword	0x1b1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x5cb
	.uleb128 0xa
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x67a
	.uleb128 0xb
	.string	"STM0DIS"
	.byte	0x7
	.byte	0x5a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"STM1DIS"
	.byte	0x7
	.byte	0x5b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.string	"STM2DIS"
	.byte	0x7
	.byte	0x5c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.byte	0x5d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0x7
	.byte	0x5e
	.uaword	0x613
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x61
	.uaword	0x784
	.uleb128 0xb
	.string	"BAUD1DIV"
	.byte	0x7
	.byte	0x63
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"BAUD2DIV"
	.byte	0x7
	.byte	0x64
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x65
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"LPDIV"
	.byte	0x7
	.byte	0x66
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x67
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"FSI2DIV"
	.byte	0x7
	.byte	0x68
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x7
	.byte	0x69
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"FSIDIV"
	.byte	0x7
	.byte	0x6a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x7
	.byte	0x6b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"CLKSEL"
	.byte	0x7
	.byte	0x6c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"UP"
	.byte	0x7
	.byte	0x6d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.byte	0x6e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0x7
	.byte	0x6f
	.uaword	0x696
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x874
	.uleb128 0xb
	.string	"CANDIV"
	.byte	0x7
	.byte	0x74
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"ERAYDIV"
	.byte	0x7
	.byte	0x75
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"STMDIV"
	.byte	0x7
	.byte	0x76
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x77
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"ETHDIV"
	.byte	0x7
	.byte	0x78
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"ASCLINFDIV"
	.byte	0x7
	.byte	0x79
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"ASCLINSDIV"
	.byte	0x7
	.byte	0x7a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"INSEL"
	.byte	0x7
	.byte	0x7b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"UP"
	.byte	0x7
	.byte	0x7c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.byte	0x7d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0x7
	.byte	0x7e
	.uaword	0x7a0
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x81
	.uaword	0x8ed
	.uleb128 0xb
	.string	"BBBDIV"
	.byte	0x7
	.byte	0x83
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.byte	0x84
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"UP"
	.byte	0x7
	.byte	0x85
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.byte	0x86
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0x7
	.byte	0x87
	.uaword	0x890
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8a
	.uaword	0x9d7
	.uleb128 0xb
	.string	"PLLDIV"
	.byte	0x7
	.byte	0x8c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"PLLSEL"
	.byte	0x7
	.byte	0x8d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"PLLERAYDIV"
	.byte	0x7
	.byte	0x8e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"PLLERAYSEL"
	.byte	0x7
	.byte	0x8f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x90
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"SRISEL"
	.byte	0x7
	.byte	0x91
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.byte	0x92
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x7
	.byte	0x93
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"UP"
	.byte	0x7
	.byte	0x94
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.byte	0x95
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x7
	.byte	0x96
	.uaword	0x909
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x99
	.uaword	0xab9
	.uleb128 0xb
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x9b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"SPBSEL"
	.byte	0x7
	.byte	0x9c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x9d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"GTMSEL"
	.byte	0x7
	.byte	0x9e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"STMDIV"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"STMSEL"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.byte	0xa1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x7
	.byte	0xa2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"UP"
	.byte	0x7
	.byte	0xa3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.byte	0xa4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x7
	.byte	0xa5
	.uaword	0x9f3
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa8
	.uaword	0xb32
	.uleb128 0xb
	.string	"MAXDIV"
	.byte	0x7
	.byte	0xaa
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.byte	0xab
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"UP"
	.byte	0x7
	.byte	0xac
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"LCK"
	.byte	0x7
	.byte	0xad
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0x7
	.byte	0xae
	.uaword	0xad5
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb1
	.uaword	0xb8f
	.uleb128 0xb
	.string	"CPU0DIV"
	.byte	0x7
	.byte	0xb3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x7
	.byte	0xb4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0x7
	.byte	0xb5
	.uaword	0xb4e
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON7_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb8
	.uaword	0xbec
	.uleb128 0xb
	.string	"CPU1DIV"
	.byte	0x7
	.byte	0xba
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x7
	.byte	0xbb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON7_Bits"
	.byte	0x7
	.byte	0xbc
	.uaword	0xbab
	.uleb128 0xa
	.string	"_Ifx_SCU_CCUCON8_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xbf
	.uaword	0xc49
	.uleb128 0xb
	.string	"CPU2DIV"
	.byte	0x7
	.byte	0xc1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x7
	.byte	0xc2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON8_Bits"
	.byte	0x7
	.byte	0xc3
	.uaword	0xc08
	.uleb128 0xa
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc6
	.uaword	0xd12
	.uleb128 0xb
	.string	"CHREV"
	.byte	0x7
	.byte	0xc8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"CHTEC"
	.byte	0x7
	.byte	0xc9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"CHID"
	.byte	0x7
	.byte	0xca
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"EEA"
	.byte	0x7
	.byte	0xcb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"UCODE"
	.byte	0x7
	.byte	0xcc
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"FSIZE"
	.byte	0x7
	.byte	0xcd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"SP"
	.byte	0x7
	.byte	0xce
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"SEC"
	.byte	0x7
	.byte	0xcf
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x7
	.byte	0xd0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0x7
	.byte	0xd1
	.uaword	0xc65
	.uleb128 0xa
	.string	"_Ifx_SCU_DTSCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd4
	.uaword	0xda7
	.uleb128 0xb
	.string	"PWD"
	.byte	0x7
	.byte	0xd6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"START"
	.byte	0x7
	.byte	0xd7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.byte	0xd8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"CAL"
	.byte	0x7
	.byte	0xd9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x16
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x7
	.byte	0xda
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x7
	.byte	0xdb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSCON_Bits"
	.byte	0x7
	.byte	0xdc
	.uaword	0xd2d
	.uleb128 0xa
	.string	"_Ifx_SCU_DTSLIM_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xdf
	.uaword	0xe4d
	.uleb128 0xb
	.string	"LOWER"
	.byte	0x7
	.byte	0xe1
	.uaword	0x1b1
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x7
	.byte	0xe2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"LLU"
	.byte	0x7
	.byte	0xe3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"UPPER"
	.byte	0x7
	.byte	0xe4
	.uaword	0x1b1
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x7
	.byte	0xe5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x7
	.byte	0xe6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"UOF"
	.byte	0x7
	.byte	0xe7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSLIM_Bits"
	.byte	0x7
	.byte	0xe8
	.uaword	0xdc2
	.uleb128 0xa
	.string	"_Ifx_SCU_DTSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xeb
	.uaword	0xed6
	.uleb128 0xb
	.string	"RESULT"
	.byte	0x7
	.byte	0xed
	.uaword	0x1b1
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x7
	.byte	0xee
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.string	"RDY"
	.byte	0x7
	.byte	0xef
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"BUSY"
	.byte	0x7
	.byte	0xf0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x7
	.byte	0xf1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSSTAT_Bits"
	.byte	0x7
	.byte	0xf2
	.uaword	0xe68
	.uleb128 0xa
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf5
	.uaword	0x1027
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.byte	0xf7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"EXIS0"
	.byte	0x7
	.byte	0xf8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.byte	0xf9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"FEN0"
	.byte	0x7
	.byte	0xfa
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"REN0"
	.byte	0x7
	.byte	0xfb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.string	"LDEN0"
	.byte	0x7
	.byte	0xfc
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.string	"EIEN0"
	.byte	0x7
	.byte	0xfd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"INP0"
	.byte	0x7
	.byte	0xfe
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x7
	.byte	0xff
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"EXIS1"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x101
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"FEN1"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"REN1"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"LDEN1"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"EIEN1"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"INP1"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x107
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0x7
	.uahalf	0x108
	.uaword	0xef2
	.uleb128 0x10
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x10fe
	.uleb128 0xd
	.string	"INTF0"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"INTF1"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"INTF2"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"INTF3"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"INTF4"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"INTF5"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"INTF6"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"INTF7"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x115
	.uaword	0x1b1
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0x7
	.uahalf	0x116
	.uaword	0x1041
	.uleb128 0x10
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x119
	.uaword	0x11f0
	.uleb128 0xd
	.string	"POL"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"MODE"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"ENON"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PSEL"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x1b1
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"EMSF"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"SEMSF"
	.byte	0x7
	.uahalf	0x121
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x122
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EMSFM"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"SEMSFM"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x125
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x1118
	.uleb128 0x10
	.string	"_Ifx_SCU_ESRCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x129
	.uaword	0x125b
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"EDCON"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ESRCFG_Bits"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x120a
	.uleb128 0x10
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x131
	.uaword	0x12c7
	.uleb128 0xd
	.string	"ARI"
	.byte	0x7
	.uahalf	0x133
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"ARC"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x135
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x1277
	.uleb128 0x10
	.string	"_Ifx_SCU_EVR13CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1361
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"EVR13OFF"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"BPEVR13OFF"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVR13CON_Bits"
	.byte	0x7
	.uahalf	0x140
	.uaword	0x12e4
	.uleb128 0x10
	.string	"_Ifx_SCU_EVR33CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x143
	.uaword	0x13fc
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x145
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"EVR33OFF"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"BPEVR33OFF"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x148
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVR33CON_Bits"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x137f
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14d
	.uaword	0x1497
	.uleb128 0xd
	.string	"ADC13V"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"ADC33V"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"ADCSWDV"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x152
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"VAL"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x141a
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRDVSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x157
	.uaword	0x1535
	.uleb128 0xd
	.string	"DVS13TRIM"
	.byte	0x7
	.uahalf	0x159
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"DVS33TRIM"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"VAL"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRDVSTAT_Bits"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x14b7
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x161
	.uaword	0x167d
	.uleb128 0xd
	.string	"EVR13OVMOD"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x164
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"EVR13UVMOD"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x166
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EVR33OVMOD"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x168
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"EVR33UVMOD"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x16a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"SWDOVMOD"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"SWDUVMOD"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x170
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x1554
	.uleb128 0x10
	.string	"_Ifx_SCU_EVROVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1731
	.uleb128 0xd
	.string	"EVR13OVVAL"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EVR33OVVAL"
	.byte	0x7
	.uahalf	0x177
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"SWDOVVAL"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x179
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVROVMON_Bits"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x169d
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x183d
	.uleb128 0xd
	.string	"RST13TRIM"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x182
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"RST13OFF"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"BPRST13OFF"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"RST33OFF"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"BPRST33OFF"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"RSTSWDOFF"
	.byte	0x7
	.uahalf	0x187
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"BPRSTSWDOFF"
	.byte	0x7
	.uahalf	0x188
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x189
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x174f
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCOEFF1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x18d3
	.uleb128 0xd
	.string	"SD5P"
	.byte	0x7
	.uahalf	0x190
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"SD5I"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"SD5D"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF1_Bits"
	.byte	0x7
	.uahalf	0x195
	.uaword	0x185c
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x198
	.uaword	0x196e
	.uleb128 0xd
	.string	"SD33P"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"SD33I"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"SD33D"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x18f4
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCOEFF3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1a0f
	.uleb128 0xd
	.string	"CT5REG0"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"CT5REG1"
	.byte	0x7
	.uahalf	0x1a5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"CT5REG2"
	.byte	0x7
	.uahalf	0x1a6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF3_Bits"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x198f
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCOEFF4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x1a9c
	.uleb128 0xd
	.string	"CT5REG3"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"CT5REG4"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x1b1
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF4_Bits"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x1a30
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCOEFF5_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x1b40
	.uleb128 0xd
	.string	"CT33REG0"
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"CT33REG1"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"CT33REG2"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF5_Bits"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1abd
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCOEFF6_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x1bcf
	.uleb128 0xd
	.string	"CT33REG3"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"CT33REG4"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x1b1
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF6_Bits"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x1b61
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x1c85
	.uleb128 0xd
	.string	"SDFREQSPRD"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"SDFREQ"
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"SDSTEP"
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"SDSAMPLE"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x1bf0
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x1d33
	.uleb128 0xd
	.string	"DRVP"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"SDMINMAXDC"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"DRVN"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"SDLUT"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x1ca5
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x1dd2
	.uleb128 0xd
	.string	"SDPWMPRE"
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"SDPID"
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"SDVOKLVL"
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x1d53
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSDCTRL4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x1e59
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"SYNCDIV"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x1b1
	.byte	0x4
	.byte	0x14
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCTRL4_Bits"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x1df2
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x1f74
	.uleb128 0xd
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"OV13"
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"OV33"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"OVSWD"
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"UV13"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"UV33"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"UVSWD"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EXTPASS13"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"EXTPASS33"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"BGPROK"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x1b1
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSTAT_Bits"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x1e79
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRTRIM_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x202
	.uaword	0x200d
	.uleb128 0xd
	.string	"EVR13TRIM"
	.byte	0x7
	.uahalf	0x204
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"SDVOUTSEL"
	.byte	0x7
	.uahalf	0x205
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x206
	.uaword	0x1b1
	.byte	0x4
	.byte	0xe
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x207
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRTRIM_Bits"
	.byte	0x7
	.uahalf	0x209
	.uaword	0x1f91
	.uleb128 0x10
	.string	"_Ifx_SCU_EVRUVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x20c
	.uaword	0x20be
	.uleb128 0xd
	.string	"EVR13UVVAL"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"EVR33UVVAL"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"SWDUVVAL"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x211
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x212
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x213
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRUVMON_Bits"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x202a
	.uleb128 0x10
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x217
	.uaword	0x218f
	.uleb128 0xd
	.string	"EN0"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x1b1
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"EN1"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"NSEL"
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x220
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"DIV1"
	.byte	0x7
	.uahalf	0x221
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0x7
	.uahalf	0x222
	.uaword	0x20dc
	.uleb128 0x10
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x225
	.uaword	0x222d
	.uleb128 0xd
	.string	"STEP"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x1b1
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x228
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"DM"
	.byte	0x7
	.uahalf	0x229
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"RESULT"
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x1b1
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"DISCLK"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x21ab
	.uleb128 0x10
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x230
	.uaword	0x2382
	.uleb128 0xd
	.string	"FS0"
	.byte	0x7
	.uahalf	0x232
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"FS1"
	.byte	0x7
	.uahalf	0x233
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"FS2"
	.byte	0x7
	.uahalf	0x234
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"FS3"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"FS4"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"FS5"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"FS6"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"FS7"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x23a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"FC0"
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"FC1"
	.byte	0x7
	.uahalf	0x23c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"FC2"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"FC3"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"FC4"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"FC5"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"FC6"
	.byte	0x7
	.uahalf	0x241
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"FC7"
	.byte	0x7
	.uahalf	0x242
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x243
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0x7
	.uahalf	0x244
	.uaword	0x2246
	.uleb128 0x10
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x247
	.uaword	0x23f3
	.uleb128 0xd
	.string	"MODREV"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"MODTYPE"
	.byte	0x7
	.uahalf	0x24a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"MODNUMBER"
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ID_Bits"
	.byte	0x7
	.uahalf	0x24c
	.uaword	0x239b
	.uleb128 0x10
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x25be
	.uleb128 0xd
	.string	"IPEN00"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"IPEN01"
	.byte	0x7
	.uahalf	0x252
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"IPEN02"
	.byte	0x7
	.uahalf	0x253
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"IPEN03"
	.byte	0x7
	.uahalf	0x254
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"IPEN04"
	.byte	0x7
	.uahalf	0x255
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"IPEN05"
	.byte	0x7
	.uahalf	0x256
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"IPEN06"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"IPEN07"
	.byte	0x7
	.uahalf	0x258
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x259
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"GEEN0"
	.byte	0x7
	.uahalf	0x25a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"IGP0"
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"IPEN10"
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"IPEN11"
	.byte	0x7
	.uahalf	0x25d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"IPEN12"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"IPEN13"
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"IPEN14"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"IPEN15"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"IPEN16"
	.byte	0x7
	.uahalf	0x262
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"IPEN17"
	.byte	0x7
	.uahalf	0x263
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x264
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"GEEN1"
	.byte	0x7
	.uahalf	0x265
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"IGP1"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x240b
	.uleb128 0x10
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x26a
	.uaword	0x2621
	.uleb128 0xd
	.string	"P0"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"P1"
	.byte	0x7
	.uahalf	0x26d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_IN_Bits"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x25d8
	.uleb128 0x10
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x272
	.uaword	0x26a6
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x274
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"PC0"
	.byte	0x7
	.uahalf	0x275
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x276
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"PC1"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x278
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x2639
	.uleb128 0x10
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x2733
	.uleb128 0xd
	.string	"LBISTREQ"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"LBISTREQP"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"PATTERNS"
	.byte	0x7
	.uahalf	0x280
	.uaword	0x1b1
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x281
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x7
	.uahalf	0x282
	.uaword	0x26c0
	.uleb128 0x10
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x285
	.uaword	0x27d3
	.uleb128 0xd
	.string	"SEED"
	.byte	0x7
	.uahalf	0x287
	.uaword	0x1b1
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x288
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"SPLITSH"
	.byte	0x7
	.uahalf	0x289
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"BODY"
	.byte	0x7
	.uahalf	0x28a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"LBISTFREQU"
	.byte	0x7
	.uahalf	0x28b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x2753
	.uleb128 0x10
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x2852
	.uleb128 0xd
	.string	"SIGNATURE"
	.byte	0x7
	.uahalf	0x291
	.uaword	0x1b1
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x292
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LBISTDONE"
	.byte	0x7
	.uahalf	0x293
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x7
	.uahalf	0x294
	.uaword	0x27f3
	.uleb128 0x10
	.string	"_Ifx_SCU_LCLCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x297
	.uaword	0x28d1
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x299
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"LS"
	.byte	0x7
	.uahalf	0x29a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x29b
	.uaword	0x1b1
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LSEN"
	.byte	0x7
	.uahalf	0x29c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LCLCON_Bits"
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x2872
	.uleb128 0x10
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x2941
	.uleb128 0xd
	.string	"LCLT0"
	.byte	0x7
	.uahalf	0x2a2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"LCLT1"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x7
	.uahalf	0x2a5
	.uaword	0x28ed
	.uleb128 0x10
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x29af
	.uleb128 0xd
	.string	"DEPT"
	.byte	0x7
	.uahalf	0x2aa
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"MANUF"
	.byte	0x7
	.uahalf	0x2ab
	.uaword	0x1b1
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x2ac
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0x7
	.uahalf	0x2ad
	.uaword	0x295e
	.uleb128 0x10
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x2a48
	.uleb128 0xd
	.string	"PS0"
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"PS1"
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x1b1
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x1b1
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x29ca
	.uleb128 0x10
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x2bd0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x2bd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"PLLLV"
	.byte	0x7
	.uahalf	0x2be
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"OSCRES"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"GAINSEL"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"MODE"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"SHBY"
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"PLLHV"
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"X1D"
	.byte	0x7
	.uahalf	0x2c5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"X1DEN"
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"OSCVAL"
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x2c9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"APREN"
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"CAP0EN"
	.byte	0x7
	.uahalf	0x2cb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"CAP1EN"
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"CAP2EN"
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"CAP3EN"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x2a61
	.uleb128 0x10
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x2c36
	.uleb128 0xd
	.string	"P0"
	.byte	0x7
	.uahalf	0x2d5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"P1"
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x2bec
	.uleb128 0x10
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x2d34
	.uleb128 0xd
	.string	"CSEL0"
	.byte	0x7
	.uahalf	0x2dd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"CSEL1"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"CSEL2"
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x1b1
	.byte	0x4
	.byte	0xd
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"OVSTRT"
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"OVSTP"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"DCINVAL"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"OVCONF"
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"POVCONF"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x2c4f
	.uleb128 0x10
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x2db8
	.uleb128 0xd
	.string	"OVEN0"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"OVEN1"
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"OVEN2"
	.byte	0x7
	.uahalf	0x2ef
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0x7
	.uahalf	0x2f1
	.uaword	0x2d50
	.uleb128 0x10
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x2e29
	.uleb128 0xd
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x2dd7
	.uleb128 0x10
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x2eb0
	.uleb128 0xd
	.string	"PD0"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PL0"
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"PD1"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"PL1"
	.byte	0x7
	.uahalf	0x301
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x302
	.uaword	0x1b1
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0x7
	.uahalf	0x303
	.uaword	0x2e44
	.uleb128 0x10
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x306
	.uaword	0x2f7e
	.uleb128 0xd
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x308
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x309
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"PDR2"
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"PDR3"
	.byte	0x7
	.uahalf	0x30b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"PDR4"
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"PDR5"
	.byte	0x7
	.uahalf	0x30d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"PDR6"
	.byte	0x7
	.uahalf	0x30e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"PDR7"
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x310
	.uaword	0x1b1
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0x7
	.uahalf	0x311
	.uaword	0x2ec9
	.uleb128 0x10
	.string	"_Ifx_SCU_PLLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x314
	.uaword	0x30b7
	.uleb128 0xd
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x316
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x317
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"MODEN"
	.byte	0x7
	.uahalf	0x318
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x319
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x31a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x31b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x31d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x31e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x320
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x321
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x322
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x324
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLCON0_Bits"
	.byte	0x7
	.uahalf	0x325
	.uaword	0x2f98
	.uleb128 0x10
	.string	"_Ifx_SCU_PLLCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x328
	.uaword	0x315a
	.uleb128 0xd
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x32a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x32b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x32c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x32d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x32f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLCON1_Bits"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x30d4
	.uleb128 0x10
	.string	"_Ifx_SCU_PLLCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x333
	.uaword	0x31ba
	.uleb128 0xd
	.string	"MODCFG"
	.byte	0x7
	.uahalf	0x335
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x336
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLCON2_Bits"
	.byte	0x7
	.uahalf	0x337
	.uaword	0x3177
	.uleb128 0x10
	.string	"_Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x32f8
	.uleb128 0xd
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x33d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x33f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x340
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x341
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x342
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x343
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x344
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x345
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x346
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x347
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x348
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x34a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x7
	.uahalf	0x34b
	.uaword	0x31d7
	.uleb128 0x10
	.string	"_Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x33a3
	.uleb128 0xd
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x351
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x352
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x353
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x354
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x355
	.uaword	0x1b1
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x3319
	.uleb128 0x10
	.string	"_Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x359
	.uaword	0x346b
	.uleb128 0xd
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"PWDSTAT"
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x35d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x360
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x361
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x7
	.uahalf	0x362
	.uaword	0x33c4
	.uleb128 0x10
	.string	"_Ifx_SCU_PLLSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x365
	.uaword	0x354e
	.uleb128 0xd
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x368
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x369
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"MODRUN"
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLSTAT_Bits"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x348c
	.uleb128 0x10
	.string	"_Ifx_SCU_PMCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x373
	.uaword	0x35e0
	.uleb128 0xd
	.string	"REQSLP"
	.byte	0x7
	.uahalf	0x375
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"SMUSLP"
	.byte	0x7
	.uahalf	0x376
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x377
	.uaword	0x1b1
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"PMST"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x379
	.uaword	0x1b1
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMCSR_Bits"
	.byte	0x7
	.uahalf	0x37a
	.uaword	0x356b
	.uleb128 0x10
	.string	"_Ifx_SCU_PMSWCR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x37d
	.uaword	0x37e8
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x380
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x381
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x382
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"ESR0DFEN"
	.byte	0x7
	.uahalf	0x383
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"ESR0EDCON"
	.byte	0x7
	.uahalf	0x384
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"ESR1DFEN"
	.byte	0x7
	.uahalf	0x385
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"ESR1EDCON"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"PINADFEN"
	.byte	0x7
	.uahalf	0x387
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.string	"PINAEDCON"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"PINBDFEN"
	.byte	0x7
	.uahalf	0x389
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"PINBEDCON"
	.byte	0x7
	.uahalf	0x38a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x38b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"STBYRAMSEL"
	.byte	0x7
	.uahalf	0x38c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x38d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"TRISTEN"
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.string	"TRISTREQ"
	.byte	0x7
	.uahalf	0x38f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x390
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"PWRWKEN"
	.byte	0x7
	.uahalf	0x391
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"DCDCSYNC"
	.byte	0x7
	.uahalf	0x392
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.string	"BLNKFIL"
	.byte	0x7
	.uahalf	0x393
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x394
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x395
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x396
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMSWCR0_Bits"
	.byte	0x7
	.uahalf	0x397
	.uaword	0x35fb
	.uleb128 0x10
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x39a
	.uaword	0x38d1
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x39c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"CPUIDLSEL"
	.byte	0x7
	.uahalf	0x39d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"IRADIS"
	.byte	0x7
	.uahalf	0x39f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x1b1
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"CPUSEL"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.string	"STBYEVEN"
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"STBYEV"
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x3805
	.uleb128 0x10
	.string	"_Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x3a87
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"ESR1WKP"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"ESR1OVRUN"
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"PINAWKP"
	.byte	0x7
	.uahalf	0x3ad
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"PINAOVRUN"
	.byte	0x7
	.uahalf	0x3ae
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"PINBWKP"
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"PINBOVRUN"
	.byte	0x7
	.uahalf	0x3b0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"PWRWKP"
	.byte	0x7
	.uahalf	0x3b1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x3b2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"HWCFGEVR"
	.byte	0x7
	.uahalf	0x3b3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"STBYRAM"
	.byte	0x7
	.uahalf	0x3b4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"TRIST"
	.byte	0x7
	.uahalf	0x3b5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x3b7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x3b8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"PWRWKEN"
	.byte	0x7
	.uahalf	0x3ba
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"BLNKFIL"
	.byte	0x7
	.uahalf	0x3bb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x3bc
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x3bd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x7
	.uahalf	0x3be
	.uaword	0x38ee
	.uleb128 0x10
	.string	"_Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3c1
	.uaword	0x3b8f
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"ESR1WKPCLR"
	.byte	0x7
	.uahalf	0x3c4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"ESR1OVRUNCLR"
	.byte	0x7
	.uahalf	0x3c5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"PINAWKPCLR"
	.byte	0x7
	.uahalf	0x3c6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"PINAOVRUNCLR"
	.byte	0x7
	.uahalf	0x3c7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"PINBWKPCLR"
	.byte	0x7
	.uahalf	0x3c8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"PINBOVRUNCLR"
	.byte	0x7
	.uahalf	0x3c9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"PWRWKPCLR"
	.byte	0x7
	.uahalf	0x3ca
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x3cb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x3aa5
	.uleb128 0x10
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3cf
	.uaword	0x3c58
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3d1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"CLRC"
	.byte	0x7
	.uahalf	0x3d2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x3d3
	.uaword	0x1b1
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"CSS0"
	.byte	0x7
	.uahalf	0x3d4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.string	"CSS1"
	.byte	0x7
	.uahalf	0x3d5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"CSS2"
	.byte	0x7
	.uahalf	0x3d6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x3d7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"USRINFO"
	.byte	0x7
	.uahalf	0x3d8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x7
	.uahalf	0x3d9
	.uaword	0x3bb0
	.uleb128 0x10
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3dc
	.uaword	0x3d28
	.uleb128 0xd
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x3de
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x3df
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3e0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"SMU"
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"SW"
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.string	"STM0"
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.string	"STM1"
	.byte	0x7
	.uahalf	0x3e4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.string	"STM2"
	.byte	0x7
	.uahalf	0x3e5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x3e6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0x7
	.uahalf	0x3e7
	.uaword	0x3c75
	.uleb128 0x10
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3ea
	.uaword	0x3ec8
	.uleb128 0xd
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x3ec
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x3ee
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"SMU"
	.byte	0x7
	.uahalf	0x3ef
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"SW"
	.byte	0x7
	.uahalf	0x3f0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"STM0"
	.byte	0x7
	.uahalf	0x3f1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"STM1"
	.byte	0x7
	.uahalf	0x3f2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"STM2"
	.byte	0x7
	.uahalf	0x3f3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x3f4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"PORST"
	.byte	0x7
	.uahalf	0x3f5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x3f6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"CB0"
	.byte	0x7
	.uahalf	0x3f7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"CB1"
	.byte	0x7
	.uahalf	0x3f8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"CB3"
	.byte	0x7
	.uahalf	0x3f9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x3fa
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x3fc
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"SWD"
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x3fe
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"STBYR"
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"reserved_29"
	.byte	0x7
	.uahalf	0x400
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x7
	.uahalf	0x401
	.uaword	0x3d44
	.uleb128 0x10
	.string	"_Ifx_SCU_SAFECON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x404
	.uaword	0x3f25
	.uleb128 0xd
	.string	"HBT"
	.byte	0x7
	.uahalf	0x406
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x407
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_SAFECON_Bits"
	.byte	0x7
	.uahalf	0x408
	.uaword	0x3ee5
	.uleb128 0x10
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x40b
	.uaword	0x4025
	.uleb128 0xd
	.string	"HWCFG"
	.byte	0x7
	.uahalf	0x40d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"FTM"
	.byte	0x7
	.uahalf	0x40e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.string	"MODE"
	.byte	0x7
	.uahalf	0x40f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x410
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"LUDIS"
	.byte	0x7
	.uahalf	0x411
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x412
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.string	"TRSTL"
	.byte	0x7
	.uahalf	0x413
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"SPDEN"
	.byte	0x7
	.uahalf	0x414
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x415
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"RAMINT"
	.byte	0x7
	.uahalf	0x416
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"reserved_25"
	.byte	0x7
	.uahalf	0x417
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0x7
	.uahalf	0x418
	.uaword	0x3f42
	.uleb128 0x10
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x41b
	.uaword	0x4097
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x41d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"SWRSTREQ"
	.byte	0x7
	.uahalf	0x41e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x41f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0x7
	.uahalf	0x420
	.uaword	0x4041
	.uleb128 0x10
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x423
	.uaword	0x4159
	.uleb128 0xd
	.string	"CCTRIG0"
	.byte	0x7
	.uahalf	0x425
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x426
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"RAMINTM"
	.byte	0x7
	.uahalf	0x427
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"SETLUDIS"
	.byte	0x7
	.uahalf	0x428
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"reserved_5"
	.byte	0x7
	.uahalf	0x429
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"DATM"
	.byte	0x7
	.uahalf	0x42a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x42b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0x7
	.uahalf	0x42c
	.uaword	0x40b5
	.uleb128 0x10
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x42f
	.uaword	0x41e6
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x431
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x432
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x433
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x434
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x435
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0x7
	.uahalf	0x436
	.uaword	0x4175
	.uleb128 0x10
	.string	"_Ifx_SCU_TRAPDIS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x439
	.uaword	0x4274
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x43b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x43c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x43d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x43e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x43f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_TRAPDIS_Bits"
	.byte	0x7
	.uahalf	0x440
	.uaword	0x4203
	.uleb128 0x10
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x443
	.uaword	0x4302
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x445
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x446
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x447
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x448
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x449
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0x7
	.uahalf	0x44a
	.uaword	0x4291
	.uleb128 0x10
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x44d
	.uaword	0x4391
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x44f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x450
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x451
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x452
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x453
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x7
	.uahalf	0x454
	.uaword	0x431f
	.uleb128 0x10
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x457
	.uaword	0x4416
	.uleb128 0xd
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x459
	.uaword	0x4416
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x45a
	.uaword	0x4416
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"PW"
	.byte	0x7
	.uahalf	0x45b
	.uaword	0x4416
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"REL"
	.byte	0x7
	.uahalf	0x45c
	.uaword	0x4416
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x1b1
	.uleb128 0xf
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x7
	.uahalf	0x45d
	.uaword	0x43af
	.uleb128 0x10
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x460
	.uaword	0x44ff
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x462
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"IR0"
	.byte	0x7
	.uahalf	0x463
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"DR"
	.byte	0x7
	.uahalf	0x464
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x465
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"IR1"
	.byte	0x7
	.uahalf	0x466
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"UR"
	.byte	0x7
	.uahalf	0x467
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"PAR"
	.byte	0x7
	.uahalf	0x468
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"TCR"
	.byte	0x7
	.uahalf	0x469
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x46a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x46b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x7
	.uahalf	0x46c
	.uaword	0x443c
	.uleb128 0x10
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x46f
	.uaword	0x45ed
	.uleb128 0xd
	.string	"AE"
	.byte	0x7
	.uahalf	0x471
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"OE"
	.byte	0x7
	.uahalf	0x472
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"IS0"
	.byte	0x7
	.uahalf	0x473
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"DS"
	.byte	0x7
	.uahalf	0x474
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"TO"
	.byte	0x7
	.uahalf	0x475
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"IS1"
	.byte	0x7
	.uahalf	0x476
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"US"
	.byte	0x7
	.uahalf	0x477
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"PAS"
	.byte	0x7
	.uahalf	0x478
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"TCS"
	.byte	0x7
	.uahalf	0x479
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"TCT"
	.byte	0x7
	.uahalf	0x47a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"TIM"
	.byte	0x7
	.uahalf	0x47b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x7
	.uahalf	0x47c
	.uaword	0x4520
	.uleb128 0x10
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x47f
	.uaword	0x4671
	.uleb128 0xd
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x481
	.uaword	0x4416
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"LCK"
	.byte	0x7
	.uahalf	0x482
	.uaword	0x4416
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"PW"
	.byte	0x7
	.uahalf	0x483
	.uaword	0x4416
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"REL"
	.byte	0x7
	.uahalf	0x484
	.uaword	0x4416
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x7
	.uahalf	0x485
	.uaword	0x460c
	.uleb128 0x10
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x488
	.uaword	0x4764
	.uleb128 0xd
	.string	"CLRIRF"
	.byte	0x7
	.uahalf	0x48a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x48b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"IR0"
	.byte	0x7
	.uahalf	0x48c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"DR"
	.byte	0x7
	.uahalf	0x48d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x48e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"IR1"
	.byte	0x7
	.uahalf	0x48f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"UR"
	.byte	0x7
	.uahalf	0x490
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"PAR"
	.byte	0x7
	.uahalf	0x491
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"TCR"
	.byte	0x7
	.uahalf	0x492
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x493
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x494
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x7
	.uahalf	0x495
	.uaword	0x4690
	.uleb128 0x10
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x498
	.uaword	0x484e
	.uleb128 0xd
	.string	"AE"
	.byte	0x7
	.uahalf	0x49a
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.string	"OE"
	.byte	0x7
	.uahalf	0x49b
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.string	"IS0"
	.byte	0x7
	.uahalf	0x49c
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.string	"DS"
	.byte	0x7
	.uahalf	0x49d
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.string	"TO"
	.byte	0x7
	.uahalf	0x49e
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.string	"IS1"
	.byte	0x7
	.uahalf	0x49f
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.string	"US"
	.byte	0x7
	.uahalf	0x4a0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.string	"PAS"
	.byte	0x7
	.uahalf	0x4a1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.string	"TCS"
	.byte	0x7
	.uahalf	0x4a2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.string	"TCT"
	.byte	0x7
	.uahalf	0x4a3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"TIM"
	.byte	0x7
	.uahalf	0x4a4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0x7
	.uahalf	0x4a5
	.uaword	0x4783
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4ad
	.uaword	0x4893
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4af
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4b0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4b1
	.uaword	0x5b0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ACCEN0"
	.byte	0x7
	.uahalf	0x4b2
	.uaword	0x486b
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4b5
	.uaword	0x48d2
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4b7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4b8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4b9
	.uaword	0x5f8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ACCEN1"
	.byte	0x7
	.uahalf	0x4ba
	.uaword	0x48aa
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4bd
	.uaword	0x4911
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4bf
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4c0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4c1
	.uaword	0x67a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0x7
	.uahalf	0x4c2
	.uaword	0x48e9
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4c5
	.uaword	0x4951
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4c7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4c8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4c9
	.uaword	0x784
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON0"
	.byte	0x7
	.uahalf	0x4ca
	.uaword	0x4929
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4cd
	.uaword	0x4991
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4cf
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4d0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4d1
	.uaword	0x874
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON1"
	.byte	0x7
	.uahalf	0x4d2
	.uaword	0x4969
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4d5
	.uaword	0x49d1
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4d7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4d8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4d9
	.uaword	0x8ed
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON2"
	.byte	0x7
	.uahalf	0x4da
	.uaword	0x49a9
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4dd
	.uaword	0x4a11
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4df
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4e0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4e1
	.uaword	0x9d7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x7
	.uahalf	0x4e2
	.uaword	0x49e9
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4e5
	.uaword	0x4a51
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4e7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4e8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4e9
	.uaword	0xab9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x7
	.uahalf	0x4ea
	.uaword	0x4a29
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4ed
	.uaword	0x4a91
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4ef
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4f0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4f1
	.uaword	0xb32
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON5"
	.byte	0x7
	.uahalf	0x4f2
	.uaword	0x4a69
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4f5
	.uaword	0x4ad1
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4f7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x4f8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x4f9
	.uaword	0xb8f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON6"
	.byte	0x7
	.uahalf	0x4fa
	.uaword	0x4aa9
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x4fd
	.uaword	0x4b11
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x4ff
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x500
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x501
	.uaword	0xbec
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON7"
	.byte	0x7
	.uahalf	0x502
	.uaword	0x4ae9
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x505
	.uaword	0x4b51
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x507
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x508
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x509
	.uaword	0xc49
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CCUCON8"
	.byte	0x7
	.uahalf	0x50a
	.uaword	0x4b29
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x50d
	.uaword	0x4b91
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x50f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x510
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x511
	.uaword	0xd12
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_CHIPID"
	.byte	0x7
	.uahalf	0x512
	.uaword	0x4b69
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x515
	.uaword	0x4bd0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x517
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x518
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x519
	.uaword	0xda7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_DTSCON"
	.byte	0x7
	.uahalf	0x51a
	.uaword	0x4ba8
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x51d
	.uaword	0x4c0f
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x51f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x520
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x521
	.uaword	0xe4d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_DTSLIM"
	.byte	0x7
	.uahalf	0x522
	.uaword	0x4be7
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x525
	.uaword	0x4c4e
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x527
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x528
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x529
	.uaword	0xed6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_DTSSTAT"
	.byte	0x7
	.uahalf	0x52a
	.uaword	0x4c26
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x52d
	.uaword	0x4c8e
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x52f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x530
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x531
	.uaword	0x1027
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EICR"
	.byte	0x7
	.uahalf	0x532
	.uaword	0x4c66
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x535
	.uaword	0x4ccb
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x537
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x538
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x539
	.uaword	0x10fe
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EIFR"
	.byte	0x7
	.uahalf	0x53a
	.uaword	0x4ca3
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x53d
	.uaword	0x4d08
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x53f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x540
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x541
	.uaword	0x11f0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EMSR"
	.byte	0x7
	.uahalf	0x542
	.uaword	0x4ce0
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x545
	.uaword	0x4d45
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x547
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x548
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x549
	.uaword	0x125b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ESRCFG"
	.byte	0x7
	.uahalf	0x54a
	.uaword	0x4d1d
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x54d
	.uaword	0x4d84
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x54f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x550
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x551
	.uaword	0x12c7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ESROCFG"
	.byte	0x7
	.uahalf	0x552
	.uaword	0x4d5c
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x555
	.uaword	0x4dc4
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x557
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x558
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x559
	.uaword	0x1361
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVR13CON"
	.byte	0x7
	.uahalf	0x55a
	.uaword	0x4d9c
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x55d
	.uaword	0x4e05
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x55f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x560
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x561
	.uaword	0x13fc
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVR33CON"
	.byte	0x7
	.uahalf	0x562
	.uaword	0x4ddd
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x565
	.uaword	0x4e46
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x567
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x568
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x569
	.uaword	0x1497
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRADCSTAT"
	.byte	0x7
	.uahalf	0x56a
	.uaword	0x4e1e
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x56d
	.uaword	0x4e89
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x56f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x570
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x571
	.uaword	0x1535
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRDVSTAT"
	.byte	0x7
	.uahalf	0x572
	.uaword	0x4e61
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x575
	.uaword	0x4ecb
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x577
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x578
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x579
	.uaword	0x167d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRMONCTRL"
	.byte	0x7
	.uahalf	0x57a
	.uaword	0x4ea3
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x57d
	.uaword	0x4f0e
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x57f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x580
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x581
	.uaword	0x1731
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVROVMON"
	.byte	0x7
	.uahalf	0x582
	.uaword	0x4ee6
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x585
	.uaword	0x4f4f
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x587
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x588
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x589
	.uaword	0x183d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRRSTCON"
	.byte	0x7
	.uahalf	0x58a
	.uaword	0x4f27
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x58d
	.uaword	0x4f91
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x58f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x590
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x591
	.uaword	0x18d3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF1"
	.byte	0x7
	.uahalf	0x592
	.uaword	0x4f69
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x595
	.uaword	0x4fd5
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x597
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x598
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x599
	.uaword	0x196e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x59a
	.uaword	0x4fad
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x59d
	.uaword	0x5019
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x59f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5a0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5a1
	.uaword	0x1a0f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF3"
	.byte	0x7
	.uahalf	0x5a2
	.uaword	0x4ff1
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5a5
	.uaword	0x505d
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5a7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5a8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5a9
	.uaword	0x1a9c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF4"
	.byte	0x7
	.uahalf	0x5aa
	.uaword	0x5035
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ad
	.uaword	0x50a1
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5af
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5b0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5b1
	.uaword	0x1b40
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF5"
	.byte	0x7
	.uahalf	0x5b2
	.uaword	0x5079
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5b5
	.uaword	0x50e5
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5b7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5b8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5b9
	.uaword	0x1bcf
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCOEFF6"
	.byte	0x7
	.uahalf	0x5ba
	.uaword	0x50bd
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5bd
	.uaword	0x5129
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5bf
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5c0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5c1
	.uaword	0x1c85
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x5c2
	.uaword	0x5101
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5c5
	.uaword	0x516c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5c7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5c8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5c9
	.uaword	0x1d33
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x5ca
	.uaword	0x5144
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5cd
	.uaword	0x51af
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5cf
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5d0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5d1
	.uaword	0x1dd2
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x5d2
	.uaword	0x5187
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5d5
	.uaword	0x51f2
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5d7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5d8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5d9
	.uaword	0x1e59
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSDCTRL4"
	.byte	0x7
	.uahalf	0x5da
	.uaword	0x51ca
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5dd
	.uaword	0x5235
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5df
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5e0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5e1
	.uaword	0x1f74
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRSTAT"
	.byte	0x7
	.uahalf	0x5e2
	.uaword	0x520d
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5e5
	.uaword	0x5275
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5e7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5e8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5e9
	.uaword	0x200d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRTRIM"
	.byte	0x7
	.uahalf	0x5ea
	.uaword	0x524d
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ed
	.uaword	0x52b5
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5ef
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5f0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5f1
	.uaword	0x20be
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EVRUVMON"
	.byte	0x7
	.uahalf	0x5f2
	.uaword	0x528d
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5f5
	.uaword	0x52f6
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5f7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x5f8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x5f9
	.uaword	0x218f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_EXTCON"
	.byte	0x7
	.uahalf	0x5fa
	.uaword	0x52ce
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x5fd
	.uaword	0x5335
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x5ff
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x600
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x601
	.uaword	0x222d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_FDR"
	.byte	0x7
	.uahalf	0x602
	.uaword	0x530d
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x605
	.uaword	0x5371
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x607
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x608
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x609
	.uaword	0x2382
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_FMR"
	.byte	0x7
	.uahalf	0x60a
	.uaword	0x5349
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x60d
	.uaword	0x53ad
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x60f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x610
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x611
	.uaword	0x23f3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_ID"
	.byte	0x7
	.uahalf	0x612
	.uaword	0x5385
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x615
	.uaword	0x53e8
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x617
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x618
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x619
	.uaword	0x25be
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_IGCR"
	.byte	0x7
	.uahalf	0x61a
	.uaword	0x53c0
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x61d
	.uaword	0x5425
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x61f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x620
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x621
	.uaword	0x2621
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_IN"
	.byte	0x7
	.uahalf	0x622
	.uaword	0x53fd
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x625
	.uaword	0x5460
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x627
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x628
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x629
	.uaword	0x26a6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_IOCR"
	.byte	0x7
	.uahalf	0x62a
	.uaword	0x5438
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x62d
	.uaword	0x549d
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x62f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x630
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x631
	.uaword	0x2733
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0x7
	.uahalf	0x632
	.uaword	0x5475
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x635
	.uaword	0x54e0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x637
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x638
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x639
	.uaword	0x27d3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0x7
	.uahalf	0x63a
	.uaword	0x54b8
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x63d
	.uaword	0x5523
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x63f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x640
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x641
	.uaword	0x2852
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0x7
	.uahalf	0x642
	.uaword	0x54fb
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x645
	.uaword	0x5566
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x647
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x648
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x649
	.uaword	0x28d1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LCLCON"
	.byte	0x7
	.uahalf	0x64a
	.uaword	0x553e
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x64d
	.uaword	0x55a5
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x64f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x650
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x651
	.uaword	0x2941
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x7
	.uahalf	0x652
	.uaword	0x557d
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x655
	.uaword	0x55e5
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x657
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x658
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x659
	.uaword	0x29af
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_MANID"
	.byte	0x7
	.uahalf	0x65a
	.uaword	0x55bd
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x65d
	.uaword	0x5623
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x65f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x660
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x661
	.uaword	0x2a48
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OMR"
	.byte	0x7
	.uahalf	0x662
	.uaword	0x55fb
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x665
	.uaword	0x565f
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x667
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x668
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x669
	.uaword	0x2bd0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OSCCON"
	.byte	0x7
	.uahalf	0x66a
	.uaword	0x5637
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x66d
	.uaword	0x569e
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x66f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x670
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x671
	.uaword	0x2c36
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OUT"
	.byte	0x7
	.uahalf	0x672
	.uaword	0x5676
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x675
	.uaword	0x56da
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x677
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x678
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x679
	.uaword	0x2d34
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OVCCON"
	.byte	0x7
	.uahalf	0x67a
	.uaword	0x56b2
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x67d
	.uaword	0x5719
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x67f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x680
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x681
	.uaword	0x2db8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0x7
	.uahalf	0x682
	.uaword	0x56f1
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x685
	.uaword	0x575b
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x687
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x688
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x689
	.uaword	0x2e29
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PDISC"
	.byte	0x7
	.uahalf	0x68a
	.uaword	0x5733
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x68d
	.uaword	0x5799
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x68f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x690
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x691
	.uaword	0x2eb0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PDR"
	.byte	0x7
	.uahalf	0x692
	.uaword	0x5771
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x695
	.uaword	0x57d5
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x697
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x698
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x699
	.uaword	0x2f7e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PDRR"
	.byte	0x7
	.uahalf	0x69a
	.uaword	0x57ad
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x69d
	.uaword	0x5812
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x69f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6a0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6a1
	.uaword	0x30b7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLCON0"
	.byte	0x7
	.uahalf	0x6a2
	.uaword	0x57ea
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6a5
	.uaword	0x5852
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6a7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6a8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6a9
	.uaword	0x315a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLCON1"
	.byte	0x7
	.uahalf	0x6aa
	.uaword	0x582a
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6ad
	.uaword	0x5892
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6af
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6b0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6b1
	.uaword	0x31ba
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLCON2"
	.byte	0x7
	.uahalf	0x6b2
	.uaword	0x586a
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6b5
	.uaword	0x58d2
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6b7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6b8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6b9
	.uaword	0x32f8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLERAYCON0"
	.byte	0x7
	.uahalf	0x6ba
	.uaword	0x58aa
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6bd
	.uaword	0x5916
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6bf
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6c0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6c1
	.uaword	0x33a3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLERAYCON1"
	.byte	0x7
	.uahalf	0x6c2
	.uaword	0x58ee
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6c5
	.uaword	0x595a
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6c7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6c8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6c9
	.uaword	0x346b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x6ca
	.uaword	0x5932
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6cd
	.uaword	0x599e
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6cf
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6d0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6d1
	.uaword	0x354e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PLLSTAT"
	.byte	0x7
	.uahalf	0x6d2
	.uaword	0x5976
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6d5
	.uaword	0x59de
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6d7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6d8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6d9
	.uaword	0x35e0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMCSR"
	.byte	0x7
	.uahalf	0x6da
	.uaword	0x59b6
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6dd
	.uaword	0x5a1c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6df
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6e0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6e1
	.uaword	0x37e8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMSWCR0"
	.byte	0x7
	.uahalf	0x6e2
	.uaword	0x59f4
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6e5
	.uaword	0x5a5c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6e7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6e8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6e9
	.uaword	0x38d1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0x7
	.uahalf	0x6ea
	.uaword	0x5a34
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6ed
	.uaword	0x5a9c
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6ef
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6f0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6f1
	.uaword	0x3a87
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMSWSTAT"
	.byte	0x7
	.uahalf	0x6f2
	.uaword	0x5a74
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6f5
	.uaword	0x5add
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6f7
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x6f8
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x6f9
	.uaword	0x3b8f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x6fa
	.uaword	0x5ab5
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x6fd
	.uaword	0x5b21
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x6ff
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x700
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x701
	.uaword	0x3d28
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_RSTCON"
	.byte	0x7
	.uahalf	0x702
	.uaword	0x5af9
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x705
	.uaword	0x5b60
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x707
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x708
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x709
	.uaword	0x3c58
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x7
	.uahalf	0x70a
	.uaword	0x5b38
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x70d
	.uaword	0x5ba0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x70f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x710
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x711
	.uaword	0x3ec8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x7
	.uahalf	0x712
	.uaword	0x5b78
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x715
	.uaword	0x5be0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x717
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x718
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x719
	.uaword	0x3f25
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_SAFECON"
	.byte	0x7
	.uahalf	0x71a
	.uaword	0x5bb8
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x71d
	.uaword	0x5c20
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x71f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x720
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x721
	.uaword	0x4025
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_STSTAT"
	.byte	0x7
	.uahalf	0x722
	.uaword	0x5bf8
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x725
	.uaword	0x5c5f
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x727
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x728
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x729
	.uaword	0x4097
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0x7
	.uahalf	0x72a
	.uaword	0x5c37
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x72d
	.uaword	0x5ca0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x72f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x730
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x731
	.uaword	0x4159
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_SYSCON"
	.byte	0x7
	.uahalf	0x732
	.uaword	0x5c78
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x735
	.uaword	0x5cdf
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x737
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x738
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x739
	.uaword	0x41e6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0x7
	.uahalf	0x73a
	.uaword	0x5cb7
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x73d
	.uaword	0x5d1f
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x73f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x740
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x741
	.uaword	0x4274
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_TRAPDIS"
	.byte	0x7
	.uahalf	0x742
	.uaword	0x5cf7
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x745
	.uaword	0x5d5f
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x747
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x748
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x749
	.uaword	0x4302
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_TRAPSET"
	.byte	0x7
	.uahalf	0x74a
	.uaword	0x5d37
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x74d
	.uaword	0x5d9f
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x74f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x750
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x751
	.uaword	0x4391
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0x7
	.uahalf	0x752
	.uaword	0x5d77
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x755
	.uaword	0x5de0
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x757
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x758
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x759
	.uaword	0x441b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x7
	.uahalf	0x75a
	.uaword	0x5db8
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x75d
	.uaword	0x5e24
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x75f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x760
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x761
	.uaword	0x44ff
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0x7
	.uahalf	0x762
	.uaword	0x5dfc
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x765
	.uaword	0x5e68
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x767
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x768
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x769
	.uaword	0x45ed
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x7
	.uahalf	0x76a
	.uaword	0x5e40
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x76d
	.uaword	0x5eaa
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x76f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x770
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x771
	.uaword	0x4671
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x7
	.uahalf	0x772
	.uaword	0x5e82
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x775
	.uaword	0x5eec
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x777
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x778
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x779
	.uaword	0x4764
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x7
	.uahalf	0x77a
	.uaword	0x5ec4
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uahalf	0x77d
	.uaword	0x5f2e
	.uleb128 0x13
	.string	"U"
	.byte	0x7
	.uahalf	0x77f
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x7
	.uahalf	0x780
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x7
	.uahalf	0x781
	.uaword	0x484e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0x7
	.uahalf	0x782
	.uaword	0x5f06
	.uleb128 0x10
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0x7
	.uahalf	0x78d
	.uaword	0x5f88
	.uleb128 0x14
	.string	"CON0"
	.byte	0x7
	.uahalf	0x78f
	.uaword	0x5de0
	.byte	0
	.uleb128 0x14
	.string	"CON1"
	.byte	0x7
	.uahalf	0x790
	.uaword	0x5e24
	.byte	0x4
	.uleb128 0x14
	.string	"SR"
	.byte	0x7
	.uahalf	0x791
	.uaword	0x5e68
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTCPU"
	.byte	0x7
	.uahalf	0x792
	.uaword	0x5f9f
	.uleb128 0x11
	.uaword	0x5f46
	.uleb128 0x10
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0x7
	.uahalf	0x795
	.uaword	0x5fe4
	.uleb128 0x14
	.string	"CON0"
	.byte	0x7
	.uahalf	0x797
	.uaword	0x5eaa
	.byte	0
	.uleb128 0x14
	.string	"CON1"
	.byte	0x7
	.uahalf	0x798
	.uaword	0x5eec
	.byte	0x4
	.uleb128 0x14
	.string	"SR"
	.byte	0x7
	.uahalf	0x799
	.uaword	0x5f2e
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU_WDTS"
	.byte	0x7
	.uahalf	0x79a
	.uaword	0x5ff9
	.uleb128 0x11
	.uaword	0x5fa4
	.uleb128 0x15
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0x7
	.uahalf	0x7a7
	.uaword	0x6775
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x7a9
	.uaword	0x6775
	.byte	0
	.uleb128 0x14
	.string	"ID"
	.byte	0x7
	.uahalf	0x7aa
	.uaword	0x53ad
	.byte	0x8
	.uleb128 0x14
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x7ab
	.uaword	0x6791
	.byte	0xc
	.uleb128 0x14
	.string	"OSCCON"
	.byte	0x7
	.uahalf	0x7ac
	.uaword	0x565f
	.byte	0x10
	.uleb128 0x14
	.string	"PLLSTAT"
	.byte	0x7
	.uahalf	0x7ad
	.uaword	0x599e
	.byte	0x14
	.uleb128 0x14
	.string	"PLLCON0"
	.byte	0x7
	.uahalf	0x7ae
	.uaword	0x5812
	.byte	0x18
	.uleb128 0x14
	.string	"PLLCON1"
	.byte	0x7
	.uahalf	0x7af
	.uaword	0x5852
	.byte	0x1c
	.uleb128 0x14
	.string	"PLLCON2"
	.byte	0x7
	.uahalf	0x7b0
	.uaword	0x5892
	.byte	0x20
	.uleb128 0x14
	.string	"PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x7b1
	.uaword	0x595a
	.byte	0x24
	.uleb128 0x14
	.string	"PLLERAYCON0"
	.byte	0x7
	.uahalf	0x7b2
	.uaword	0x58d2
	.byte	0x28
	.uleb128 0x14
	.string	"PLLERAYCON1"
	.byte	0x7
	.uahalf	0x7b3
	.uaword	0x5916
	.byte	0x2c
	.uleb128 0x14
	.string	"CCUCON0"
	.byte	0x7
	.uahalf	0x7b4
	.uaword	0x4951
	.byte	0x30
	.uleb128 0x14
	.string	"CCUCON1"
	.byte	0x7
	.uahalf	0x7b5
	.uaword	0x4991
	.byte	0x34
	.uleb128 0x14
	.string	"FDR"
	.byte	0x7
	.uahalf	0x7b6
	.uaword	0x5335
	.byte	0x38
	.uleb128 0x14
	.string	"EXTCON"
	.byte	0x7
	.uahalf	0x7b7
	.uaword	0x52f6
	.byte	0x3c
	.uleb128 0x14
	.string	"CCUCON2"
	.byte	0x7
	.uahalf	0x7b8
	.uaword	0x49d1
	.byte	0x40
	.uleb128 0x14
	.string	"CCUCON3"
	.byte	0x7
	.uahalf	0x7b9
	.uaword	0x4a11
	.byte	0x44
	.uleb128 0x14
	.string	"CCUCON4"
	.byte	0x7
	.uahalf	0x7ba
	.uaword	0x4a51
	.byte	0x48
	.uleb128 0x14
	.string	"CCUCON5"
	.byte	0x7
	.uahalf	0x7bb
	.uaword	0x4a91
	.byte	0x4c
	.uleb128 0x14
	.string	"RSTSTAT"
	.byte	0x7
	.uahalf	0x7bc
	.uaword	0x5ba0
	.byte	0x50
	.uleb128 0x14
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x7bd
	.uaword	0x6791
	.byte	0x54
	.uleb128 0x14
	.string	"RSTCON"
	.byte	0x7
	.uahalf	0x7be
	.uaword	0x5b21
	.byte	0x58
	.uleb128 0x14
	.string	"ARSTDIS"
	.byte	0x7
	.uahalf	0x7bf
	.uaword	0x4911
	.byte	0x5c
	.uleb128 0x14
	.string	"SWRSTCON"
	.byte	0x7
	.uahalf	0x7c0
	.uaword	0x5c5f
	.byte	0x60
	.uleb128 0x14
	.string	"RSTCON2"
	.byte	0x7
	.uahalf	0x7c1
	.uaword	0x5b60
	.byte	0x64
	.uleb128 0x14
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x7c2
	.uaword	0x6791
	.byte	0x68
	.uleb128 0x14
	.string	"EVRRSTCON"
	.byte	0x7
	.uahalf	0x7c3
	.uaword	0x4f4f
	.byte	0x6c
	.uleb128 0x14
	.string	"ESRCFG"
	.byte	0x7
	.uahalf	0x7c4
	.uaword	0x67a1
	.byte	0x70
	.uleb128 0x14
	.string	"ESROCFG"
	.byte	0x7
	.uahalf	0x7c5
	.uaword	0x4d84
	.byte	0x78
	.uleb128 0x14
	.string	"SYSCON"
	.byte	0x7
	.uahalf	0x7c6
	.uaword	0x5ca0
	.byte	0x7c
	.uleb128 0x14
	.string	"CCUCON6"
	.byte	0x7
	.uahalf	0x7c7
	.uaword	0x4ad1
	.byte	0x80
	.uleb128 0x14
	.string	"CCUCON7"
	.byte	0x7
	.uahalf	0x7c8
	.uaword	0x4b11
	.byte	0x84
	.uleb128 0x14
	.string	"CCUCON8"
	.byte	0x7
	.uahalf	0x7c9
	.uaword	0x4b51
	.byte	0x88
	.uleb128 0x14
	.string	"reserved_8C"
	.byte	0x7
	.uahalf	0x7ca
	.uaword	0x67b1
	.byte	0x8c
	.uleb128 0x14
	.string	"PDR"
	.byte	0x7
	.uahalf	0x7cb
	.uaword	0x5799
	.byte	0x9c
	.uleb128 0x14
	.string	"IOCR"
	.byte	0x7
	.uahalf	0x7cc
	.uaword	0x5460
	.byte	0xa0
	.uleb128 0x14
	.string	"OUT"
	.byte	0x7
	.uahalf	0x7cd
	.uaword	0x569e
	.byte	0xa4
	.uleb128 0x14
	.string	"OMR"
	.byte	0x7
	.uahalf	0x7ce
	.uaword	0x5623
	.byte	0xa8
	.uleb128 0x14
	.string	"IN"
	.byte	0x7
	.uahalf	0x7cf
	.uaword	0x5425
	.byte	0xac
	.uleb128 0x14
	.string	"EVRSTAT"
	.byte	0x7
	.uahalf	0x7d0
	.uaword	0x5235
	.byte	0xb0
	.uleb128 0x14
	.string	"EVRDVSTAT"
	.byte	0x7
	.uahalf	0x7d1
	.uaword	0x4e89
	.byte	0xb4
	.uleb128 0x14
	.string	"EVR13CON"
	.byte	0x7
	.uahalf	0x7d2
	.uaword	0x4dc4
	.byte	0xb8
	.uleb128 0x14
	.string	"EVR33CON"
	.byte	0x7
	.uahalf	0x7d3
	.uaword	0x4e05
	.byte	0xbc
	.uleb128 0x14
	.string	"STSTAT"
	.byte	0x7
	.uahalf	0x7d4
	.uaword	0x5c20
	.byte	0xc0
	.uleb128 0x14
	.string	"reserved_C4"
	.byte	0x7
	.uahalf	0x7d5
	.uaword	0x6791
	.byte	0xc4
	.uleb128 0x14
	.string	"PMSWCR0"
	.byte	0x7
	.uahalf	0x7d6
	.uaword	0x5a1c
	.byte	0xc8
	.uleb128 0x14
	.string	"PMSWSTAT"
	.byte	0x7
	.uahalf	0x7d7
	.uaword	0x5a9c
	.byte	0xcc
	.uleb128 0x14
	.string	"PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x7d8
	.uaword	0x5add
	.byte	0xd0
	.uleb128 0x14
	.string	"PMCSR"
	.byte	0x7
	.uahalf	0x7d9
	.uaword	0x67c1
	.byte	0xd4
	.uleb128 0x14
	.string	"DTSSTAT"
	.byte	0x7
	.uahalf	0x7da
	.uaword	0x4c4e
	.byte	0xe0
	.uleb128 0x14
	.string	"DTSCON"
	.byte	0x7
	.uahalf	0x7db
	.uaword	0x4bd0
	.byte	0xe4
	.uleb128 0x14
	.string	"PMSWCR1"
	.byte	0x7
	.uahalf	0x7dc
	.uaword	0x5a5c
	.byte	0xe8
	.uleb128 0x14
	.string	"reserved_EC"
	.byte	0x7
	.uahalf	0x7dd
	.uaword	0x6791
	.byte	0xec
	.uleb128 0x14
	.string	"WDTS"
	.byte	0x7
	.uahalf	0x7de
	.uaword	0x5fe4
	.byte	0xf0
	.uleb128 0x14
	.string	"EMSR"
	.byte	0x7
	.uahalf	0x7df
	.uaword	0x4d08
	.byte	0xfc
	.uleb128 0x17
	.string	"WDTCPU"
	.byte	0x7
	.uahalf	0x7e0
	.uaword	0x67e1
	.uahalf	0x100
	.uleb128 0x17
	.string	"TRAPSTAT"
	.byte	0x7
	.uahalf	0x7e1
	.uaword	0x5d9f
	.uahalf	0x124
	.uleb128 0x17
	.string	"TRAPSET"
	.byte	0x7
	.uahalf	0x7e2
	.uaword	0x5d5f
	.uahalf	0x128
	.uleb128 0x17
	.string	"TRAPCLR"
	.byte	0x7
	.uahalf	0x7e3
	.uaword	0x5cdf
	.uahalf	0x12c
	.uleb128 0x17
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x7e4
	.uaword	0x5d1f
	.uahalf	0x130
	.uleb128 0x17
	.string	"LCLCON0"
	.byte	0x7
	.uahalf	0x7e5
	.uaword	0x5566
	.uahalf	0x134
	.uleb128 0x17
	.string	"LCLCON1"
	.byte	0x7
	.uahalf	0x7e6
	.uaword	0x5566
	.uahalf	0x138
	.uleb128 0x17
	.string	"LCLTEST"
	.byte	0x7
	.uahalf	0x7e7
	.uaword	0x55a5
	.uahalf	0x13c
	.uleb128 0x17
	.string	"CHIPID"
	.byte	0x7
	.uahalf	0x7e8
	.uaword	0x4b91
	.uahalf	0x140
	.uleb128 0x17
	.string	"MANID"
	.byte	0x7
	.uahalf	0x7e9
	.uaword	0x55e5
	.uahalf	0x144
	.uleb128 0x17
	.string	"reserved_148"
	.byte	0x7
	.uahalf	0x7ea
	.uaword	0x6775
	.uahalf	0x148
	.uleb128 0x17
	.string	"SAFECON"
	.byte	0x7
	.uahalf	0x7eb
	.uaword	0x5be0
	.uahalf	0x150
	.uleb128 0x17
	.string	"reserved_154"
	.byte	0x7
	.uahalf	0x7ec
	.uaword	0x67b1
	.uahalf	0x154
	.uleb128 0x17
	.string	"LBISTCTRL0"
	.byte	0x7
	.uahalf	0x7ed
	.uaword	0x549d
	.uahalf	0x164
	.uleb128 0x17
	.string	"LBISTCTRL1"
	.byte	0x7
	.uahalf	0x7ee
	.uaword	0x54e0
	.uahalf	0x168
	.uleb128 0x17
	.string	"LBISTCTRL2"
	.byte	0x7
	.uahalf	0x7ef
	.uaword	0x5523
	.uahalf	0x16c
	.uleb128 0x17
	.string	"reserved_170"
	.byte	0x7
	.uahalf	0x7f0
	.uaword	0x67e6
	.uahalf	0x170
	.uleb128 0x17
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x7f1
	.uaword	0x575b
	.uahalf	0x18c
	.uleb128 0x17
	.string	"reserved_190"
	.byte	0x7
	.uahalf	0x7f2
	.uaword	0x6775
	.uahalf	0x190
	.uleb128 0x17
	.string	"EVRTRIM"
	.byte	0x7
	.uahalf	0x7f3
	.uaword	0x5275
	.uahalf	0x198
	.uleb128 0x17
	.string	"EVRADCSTAT"
	.byte	0x7
	.uahalf	0x7f4
	.uaword	0x4e46
	.uahalf	0x19c
	.uleb128 0x17
	.string	"EVRUVMON"
	.byte	0x7
	.uahalf	0x7f5
	.uaword	0x52b5
	.uahalf	0x1a0
	.uleb128 0x17
	.string	"EVROVMON"
	.byte	0x7
	.uahalf	0x7f6
	.uaword	0x4f0e
	.uahalf	0x1a4
	.uleb128 0x17
	.string	"EVRMONCTRL"
	.byte	0x7
	.uahalf	0x7f7
	.uaword	0x4ecb
	.uahalf	0x1a8
	.uleb128 0x17
	.string	"reserved_1AC"
	.byte	0x7
	.uahalf	0x7f8
	.uaword	0x6791
	.uahalf	0x1ac
	.uleb128 0x17
	.string	"EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x7f9
	.uaword	0x5129
	.uahalf	0x1b0
	.uleb128 0x17
	.string	"EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x7fa
	.uaword	0x516c
	.uahalf	0x1b4
	.uleb128 0x17
	.string	"EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x7fb
	.uaword	0x51af
	.uahalf	0x1b8
	.uleb128 0x17
	.string	"EVRSDCTRL4"
	.byte	0x7
	.uahalf	0x7fc
	.uaword	0x51f2
	.uahalf	0x1bc
	.uleb128 0x17
	.string	"EVRSDCOEFF1"
	.byte	0x7
	.uahalf	0x7fd
	.uaword	0x4f91
	.uahalf	0x1c0
	.uleb128 0x17
	.string	"EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x7fe
	.uaword	0x4fd5
	.uahalf	0x1c4
	.uleb128 0x17
	.string	"EVRSDCOEFF3"
	.byte	0x7
	.uahalf	0x7ff
	.uaword	0x5019
	.uahalf	0x1c8
	.uleb128 0x17
	.string	"EVRSDCOEFF4"
	.byte	0x7
	.uahalf	0x800
	.uaword	0x505d
	.uahalf	0x1cc
	.uleb128 0x17
	.string	"EVRSDCOEFF5"
	.byte	0x7
	.uahalf	0x801
	.uaword	0x50a1
	.uahalf	0x1d0
	.uleb128 0x17
	.string	"EVRSDCOEFF6"
	.byte	0x7
	.uahalf	0x802
	.uaword	0x50e5
	.uahalf	0x1d4
	.uleb128 0x17
	.string	"reserved_1D8"
	.byte	0x7
	.uahalf	0x803
	.uaword	0x6775
	.uahalf	0x1d8
	.uleb128 0x17
	.string	"OVCENABLE"
	.byte	0x7
	.uahalf	0x804
	.uaword	0x5719
	.uahalf	0x1e0
	.uleb128 0x17
	.string	"OVCCON"
	.byte	0x7
	.uahalf	0x805
	.uaword	0x56da
	.uahalf	0x1e4
	.uleb128 0x17
	.string	"reserved_1E8"
	.byte	0x7
	.uahalf	0x806
	.uaword	0x67f6
	.uahalf	0x1e8
	.uleb128 0x17
	.string	"EICR"
	.byte	0x7
	.uahalf	0x807
	.uaword	0x6806
	.uahalf	0x210
	.uleb128 0x17
	.string	"EIFR"
	.byte	0x7
	.uahalf	0x808
	.uaword	0x4ccb
	.uahalf	0x220
	.uleb128 0x17
	.string	"FMR"
	.byte	0x7
	.uahalf	0x809
	.uaword	0x5371
	.uahalf	0x224
	.uleb128 0x17
	.string	"PDRR"
	.byte	0x7
	.uahalf	0x80a
	.uaword	0x57d5
	.uahalf	0x228
	.uleb128 0x17
	.string	"IGCR"
	.byte	0x7
	.uahalf	0x80b
	.uaword	0x6816
	.uahalf	0x22c
	.uleb128 0x17
	.string	"reserved_23C"
	.byte	0x7
	.uahalf	0x80c
	.uaword	0x6791
	.uahalf	0x23c
	.uleb128 0x17
	.string	"DTSLIM"
	.byte	0x7
	.uahalf	0x80d
	.uaword	0x4c0f
	.uahalf	0x240
	.uleb128 0x17
	.string	"reserved_244"
	.byte	0x7
	.uahalf	0x80e
	.uaword	0x6826
	.uahalf	0x244
	.uleb128 0x17
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x80f
	.uaword	0x48d2
	.uahalf	0x3f8
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x810
	.uaword	0x4893
	.uahalf	0x3fc
	.byte	0
	.uleb128 0x18
	.uaword	0x2a8
	.uaword	0x6785
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x18
	.uaword	0x2a8
	.uaword	0x67a1
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.uaword	0x4d45
	.uaword	0x67b1
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.uaword	0x2a8
	.uaword	0x67c1
	.uleb128 0x19
	.uaword	0x6785
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.uaword	0x59de
	.uaword	0x67d1
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.uaword	0x5f88
	.uaword	0x67e1
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.uaword	0x67d1
	.uleb128 0x18
	.uaword	0x2a8
	.uaword	0x67f6
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x1b
	.byte	0
	.uleb128 0x18
	.uaword	0x2a8
	.uaword	0x6806
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x27
	.byte	0
	.uleb128 0x18
	.uaword	0x4c8e
	.uaword	0x6816
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.uaword	0x53e8
	.uaword	0x6826
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.uaword	0x2a8
	.uaword	0x6837
	.uleb128 0x1a
	.uaword	0x6785
	.uahalf	0x1b3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_SCU"
	.byte	0x7
	.uahalf	0x811
	.uaword	0x6847
	.uleb128 0x11
	.uaword	0x5ffe
	.uleb128 0x1b
	.byte	0x1
	.byte	0x8
	.byte	0x76
	.uaword	0x689c
	.uleb128 0x4
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x8
	.byte	0x8b
	.uaword	0x6904
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_1"
	.sleb128 1
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_2"
	.sleb128 2
	.uleb128 0x4
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.string	"IfxCpu_ResourceCpu"
	.byte	0x8
	.byte	0x90
	.uaword	0x689c
	.uleb128 0xa
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0x694d
	.uleb128 0xb
	.string	"STM31_0"
	.byte	0x9
	.byte	0xc2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x9
	.byte	0xc3
	.uaword	0x691e
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x165
	.uaword	0x698e
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x167
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x694d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_STM_TIM0"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x6966
	.uleb128 0xa
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xae
	.uaword	0x6af2
	.uleb128 0xb
	.string	"WSPFLASH"
	.byte	0xa
	.byte	0xb0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"WSECPF"
	.byte	0xa
	.byte	0xb1
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"WSDFLASH"
	.byte	0xa
	.byte	0xb2
	.uaword	0x1b1
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"WSECDF"
	.byte	0xa
	.byte	0xb3
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"IDLE"
	.byte	0xa
	.byte	0xb4
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"ESLDIS"
	.byte	0xa
	.byte	0xb5
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.string	"SLEEP"
	.byte	0xa
	.byte	0xb6
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"NSAFECC"
	.byte	0xa
	.byte	0xb7
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"STALL"
	.byte	0xa
	.byte	0xb8
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"RES21"
	.byte	0xa
	.byte	0xb9
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"RES23"
	.byte	0xa
	.byte	0xba
	.uaword	0x1b1
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"VOPERM"
	.byte	0xa
	.byte	0xbb
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"SQERM"
	.byte	0xa
	.byte	0xbc
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"PROERM"
	.byte	0xa
	.byte	0xbd
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"reserved_27"
	.byte	0xa
	.byte	0xbe
	.uaword	0x1b1
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"PR5V"
	.byte	0xa
	.byte	0xbf
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"EOBM"
	.byte	0xa
	.byte	0xc0
	.uaword	0x1b1
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0xa
	.byte	0xc1
	.uaword	0x69a3
	.uleb128 0x12
	.byte	0x4
	.byte	0xa
	.uahalf	0x2bd
	.uaword	0x6b35
	.uleb128 0x13
	.string	"U"
	.byte	0xa
	.uahalf	0x2bf
	.uaword	0x1b1
	.uleb128 0x13
	.string	"I"
	.byte	0xa
	.uahalf	0x2c0
	.uaword	0x1db
	.uleb128 0x13
	.string	"B"
	.byte	0xa
	.uahalf	0x2c1
	.uaword	0x6af2
	.byte	0
	.uleb128 0xf
	.string	"Ifx_FLASH_FCON"
	.byte	0xa
	.uahalf	0x2c2
	.uaword	0x6b0d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6837
	.uleb128 0x5
	.string	"IfxScuCcu_PllStepsFunctionHook"
	.byte	0x2
	.byte	0x80
	.uaword	0x6b78
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6b7e
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x1d
	.byte	0x8
	.byte	0x2
	.uahalf	0x2c0
	.uaword	0x6ba7
	.uleb128 0x14
	.string	"value"
	.byte	0x2
	.uahalf	0x2c2
	.uaword	0x2f8
	.byte	0
	.uleb128 0x14
	.string	"mask"
	.byte	0x2
	.uahalf	0x2c3
	.uaword	0x2f8
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"IfxScuCcu_CcuconRegConfig"
	.byte	0x2
	.uahalf	0x2c4
	.uaword	0x6b80
	.uleb128 0x1d
	.byte	0x8
	.byte	0x2
	.uahalf	0x2c9
	.uaword	0x6c17
	.uleb128 0x14
	.string	"pDivider"
	.byte	0x2
	.uahalf	0x2cb
	.uaword	0x29b
	.byte	0
	.uleb128 0x14
	.string	"nDivider"
	.byte	0x2
	.uahalf	0x2cc
	.uaword	0x29b
	.byte	0x1
	.uleb128 0x14
	.string	"k2Initial"
	.byte	0x2
	.uahalf	0x2cd
	.uaword	0x29b
	.byte	0x2
	.uleb128 0x16
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x2ce
	.uaword	0x306
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"IfxScuCcu_InitialStepConfig"
	.byte	0x2
	.uahalf	0x2cf
	.uaword	0x6bc9
	.uleb128 0x1d
	.byte	0xc
	.byte	0x2
	.uahalf	0x2d3
	.uaword	0x6c78
	.uleb128 0x14
	.string	"k2Step"
	.byte	0x2
	.uahalf	0x2d5
	.uaword	0x29b
	.byte	0
	.uleb128 0x16
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x2d6
	.uaword	0x306
	.byte	0x4
	.uleb128 0x14
	.string	"hookFunction"
	.byte	0x2
	.uahalf	0x2d7
	.uaword	0x6b52
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"IfxScuCcu_PllStepsConfig"
	.byte	0x2
	.uahalf	0x2d8
	.uaword	0x6c3b
	.uleb128 0x1d
	.byte	0x38
	.byte	0x2
	.uahalf	0x2e0
	.uaword	0x6d12
	.uleb128 0x16
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2e2
	.uaword	0x6ba7
	.byte	0
	.uleb128 0x16
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x2e3
	.uaword	0x6ba7
	.byte	0x8
	.uleb128 0x14
	.string	"ccucon2"
	.byte	0x2
	.uahalf	0x2e4
	.uaword	0x6ba7
	.byte	0x10
	.uleb128 0x14
	.string	"ccucon5"
	.byte	0x2
	.uahalf	0x2e5
	.uaword	0x6ba7
	.byte	0x18
	.uleb128 0x14
	.string	"ccucon6"
	.byte	0x2
	.uahalf	0x2e6
	.uaword	0x6ba7
	.byte	0x20
	.uleb128 0x14
	.string	"ccucon7"
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0x6ba7
	.byte	0x28
	.uleb128 0x14
	.string	"ccucon8"
	.byte	0x2
	.uahalf	0x2e8
	.uaword	0x6ba7
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.string	"IfxScuCcu_ClockDistributionConfig"
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x6c99
	.uleb128 0x1d
	.byte	0x8
	.byte	0x2
	.uahalf	0x2ed
	.uaword	0x6d63
	.uleb128 0x14
	.string	"value"
	.byte	0x2
	.uahalf	0x2ef
	.uaword	0x2f8
	.byte	0
	.uleb128 0x14
	.string	"mask"
	.byte	0x2
	.uahalf	0x2f0
	.uaword	0x2f8
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"IfxScuCcu_FlashWaitstateConfig"
	.byte	0x2
	.uahalf	0x2f1
	.uaword	0x6d3c
	.uleb128 0x1d
	.byte	0x10
	.byte	0x2
	.uahalf	0x2f6
	.uaword	0x6dd7
	.uleb128 0x14
	.string	"numOfPllDividerSteps"
	.byte	0x2
	.uahalf	0x2f8
	.uaword	0x29b
	.byte	0
	.uleb128 0x14
	.string	"pllDividerStep"
	.byte	0x2
	.uahalf	0x2f9
	.uaword	0x6dd7
	.byte	0x4
	.uleb128 0x16
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x2fa
	.uaword	0x6c17
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6c78
	.uleb128 0xf
	.string	"IfxScuCcu_SysPllConfig"
	.byte	0x2
	.uahalf	0x2fb
	.uaword	0x6d8a
	.uleb128 0x1d
	.byte	0x54
	.byte	0x2
	.uahalf	0x303
	.uaword	0x6e6a
	.uleb128 0x14
	.string	"sysPll"
	.byte	0x2
	.uahalf	0x305
	.uaword	0x6ddd
	.byte	0
	.uleb128 0x14
	.string	"clockDistribution"
	.byte	0x2
	.uahalf	0x306
	.uaword	0x6d12
	.byte	0x10
	.uleb128 0x14
	.string	"flashFconWaitStateConfig"
	.byte	0x2
	.uahalf	0x307
	.uaword	0x6d63
	.byte	0x48
	.uleb128 0x14
	.string	"xtalFrequency"
	.byte	0x2
	.uahalf	0x308
	.uaword	0x2f8
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.string	"IfxScuCcu_Config"
	.byte	0x2
	.uahalf	0x309
	.uaword	0x6dfc
	.uleb128 0x1d
	.byte	0x8
	.byte	0x2
	.uahalf	0x30d
	.uaword	0x6e9a
	.uleb128 0x16
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x30f
	.uaword	0x6c17
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"IfxScuCcu_ErayPllConfig"
	.byte	0x2
	.uahalf	0x310
	.uaword	0x6e83
	.uleb128 0x1e
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x2
	.uahalf	0x44f
	.byte	0x1
	.uaword	0x306
	.byte	0x3
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxScuCcu_getOscFrequency"
	.byte	0x1
	.uahalf	0x1a5
	.byte	0x1
	.uaword	0x306
	.byte	0x1
	.uaword	0x6f15
	.uleb128 0x20
	.string	"freq"
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x306
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxScuCcu_getPllFrequency"
	.byte	0x1
	.uahalf	0x1ea
	.byte	0x1
	.uaword	0x306
	.byte	0x1
	.uaword	0x6f68
	.uleb128 0x20
	.string	"scu"
	.byte	0x1
	.uahalf	0x1ec
	.uaword	0x6b4c
	.uleb128 0x20
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x306
	.uleb128 0x20
	.string	"freq"
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x306
	.byte	0
	.uleb128 0x1e
	.string	"IfxScuCcu_getEvrFrequency"
	.byte	0x2
	.uahalf	0x42a
	.byte	0x1
	.uaword	0x306
	.byte	0x3
	.uleb128 0x21
	.string	"__maxu"
	.byte	0x3
	.byte	0x93
	.byte	0x1
	.uaword	0x2f8
	.byte	0x3
	.uaword	0x6fbe
	.uleb128 0x22
	.string	"a"
	.byte	0x3
	.byte	0x93
	.uaword	0x2f8
	.uleb128 0x22
	.string	"b"
	.byte	0x3
	.byte	0x93
	.uaword	0x2f8
	.uleb128 0x23
	.string	"res"
	.byte	0x3
	.byte	0x95
	.uaword	0x2f8
	.byte	0
	.uleb128 0x1e
	.string	"IfxScuCcu_getGtmFrequency"
	.byte	0x2
	.uahalf	0x430
	.byte	0x1
	.uaword	0x306
	.byte	0x3
	.uleb128 0x24
	.string	"IfxScuCcu_getPll2ErayFrequency"
	.byte	0x2
	.uahalf	0x436
	.byte	0x1
	.uaword	0x306
	.byte	0x3
	.uaword	0x702a
	.uleb128 0x20
	.string	"pll2ErayFrequency"
	.byte	0x2
	.uahalf	0x438
	.uaword	0x306
	.byte	0
	.uleb128 0x24
	.string	"IfxScuCcu_getPll2Frequency"
	.byte	0x2
	.uahalf	0x440
	.byte	0x1
	.uaword	0x306
	.byte	0x3
	.uaword	0x706a
	.uleb128 0x20
	.string	"pll2Frequency"
	.byte	0x2
	.uahalf	0x442
	.uaword	0x306
	.byte	0
	.uleb128 0x25
	.uaword	0x6ede
	.uaword	.LFB245
	.uaword	.LFE245
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7088
	.uleb128 0x26
	.uaword	0x6f07
	.uaword	.LLST0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"IfxScuCcu_calculateSysPllDividers"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x31f
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x72a7
	.uleb128 0x28
	.string	"cfg"
	.byte	0x1
	.byte	0x5d
	.uaword	0x72a7
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.string	"fPll"
	.byte	0x1
	.byte	0x5d
	.uaword	0x2f8
	.uaword	.LLST1
	.uleb128 0x2a
	.string	"retVal"
	.byte	0x1
	.byte	0x5f
	.uaword	0x31f
	.uaword	.LLST2
	.uleb128 0x2b
	.string	"deviationAllowed"
	.byte	0x1
	.byte	0x60
	.uaword	0x29b
	.byte	0x2
	.uleb128 0x2c
	.string	"fOsc"
	.byte	0x1
	.byte	0x61
	.uaword	0x2f8
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2d
	.string	"EXITCALC_LOOP"
	.byte	0x1
	.byte	0xb0
	.uaword	.L10
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2f
	.string	"fPllMax"
	.byte	0x1
	.byte	0x69
	.uaword	0x72ad
	.uaword	0xbebc200
	.uleb128 0x2f
	.string	"fRefMax"
	.byte	0x1
	.byte	0x6a
	.uaword	0x72ad
	.uaword	0x16e3600
	.uleb128 0x2f
	.string	"fRefMin"
	.byte	0x1
	.byte	0x6b
	.uaword	0x72ad
	.uaword	0x7a1200
	.uleb128 0x2f
	.string	"fVcoMin"
	.byte	0x1
	.byte	0x6c
	.uaword	0x72ad
	.uaword	0x17d78400
	.uleb128 0x2f
	.string	"fVcoMax"
	.byte	0x1
	.byte	0x6d
	.uaword	0x72ad
	.uaword	0x2faf0800
	.uleb128 0x2b
	.string	"pMin"
	.byte	0x1
	.byte	0x6e
	.uaword	0x72b2
	.byte	0x1
	.uleb128 0x2b
	.string	"pMax"
	.byte	0x1
	.byte	0x6f
	.uaword	0x72b2
	.byte	0x10
	.uleb128 0x2b
	.string	"k2Min"
	.byte	0x1
	.byte	0x70
	.uaword	0x72b2
	.byte	0x1
	.uleb128 0x30
	.string	"k2Max"
	.byte	0x1
	.byte	0x71
	.uaword	0x72b2
	.sleb128 -128
	.uleb128 0x2b
	.string	"nMin"
	.byte	0x1
	.byte	0x72
	.uaword	0x72b2
	.byte	0x1
	.uleb128 0x30
	.string	"nMax"
	.byte	0x1
	.byte	0x73
	.uaword	0x72b2
	.sleb128 -128
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.byte	0x75
	.uaword	0x2f8
	.uaword	.LLST3
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x76
	.uaword	0x2f8
	.uaword	.LLST4
	.uleb128 0x2a
	.string	"k2"
	.byte	0x1
	.byte	0x77
	.uaword	0x2f8
	.uaword	.LLST5
	.uleb128 0x2c
	.string	"k2Steps"
	.byte	0x1
	.byte	0x78
	.uaword	0x2f8
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.string	"bestK2"
	.byte	0x1
	.byte	0x79
	.uaword	0x2f8
	.uaword	.LLST6
	.uleb128 0x2a
	.string	"bestN"
	.byte	0x1
	.byte	0x79
	.uaword	0x2f8
	.uaword	.LLST7
	.uleb128 0x2a
	.string	"bestP"
	.byte	0x1
	.byte	0x79
	.uaword	0x2f8
	.uaword	.LLST8
	.uleb128 0x2a
	.string	"fRef"
	.byte	0x1
	.byte	0x7b
	.uaword	0x33f
	.uaword	.LLST9
	.uleb128 0x2a
	.string	"fVco"
	.byte	0x1
	.byte	0x7b
	.uaword	0x33f
	.uaword	.LLST10
	.uleb128 0x2a
	.string	"fPllLeastError"
	.byte	0x1
	.byte	0x7c
	.uaword	0x33f
	.uaword	.LLST11
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.string	"fPllError"
	.byte	0x1
	.byte	0x96
	.uaword	0x33f
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6e6a
	.uleb128 0x31
	.uaword	0x2f8
	.uleb128 0x31
	.uaword	0x29b
	.uleb128 0x32
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0x1
	.uahalf	0x19f
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x25
	.uaword	0x6ede
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7310
	.uleb128 0x33
	.uaword	0x6f07
	.byte	0x4
	.uaword	0x4cbebc20
	.uleb128 0x34
	.uaword	.LVL26
	.byte	0x1
	.uaword	0x706a
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0x1
	.uahalf	0x1bb
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x1
	.byte	0x9c
	.uaword	0x73a4
	.uleb128 0x36
	.string	"scu"
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x6b4c
	.sleb128 -268214272
	.uleb128 0x37
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x306
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.string	"freq"
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x306
	.uaword	.LLST13
	.uleb128 0x39
	.uaword	0x6ede
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x1c1
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x26
	.uaword	0x6f07
	.uaword	.LLST14
	.uleb128 0x3a
	.uaword	.LVL32
	.uaword	0x706a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getPllErayVcoFrequency"
	.byte	0x1
	.uahalf	0x1d7
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x741c
	.uleb128 0x38
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x306
	.uaword	.LLST15
	.uleb128 0x39
	.uaword	0x6ede
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x1e3
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x26
	.uaword	0x6f07
	.uaword	.LLST16
	.uleb128 0x3a
	.uaword	.LVL42
	.uaword	0x706a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0x6f15
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x1
	.byte	0x9c
	.uaword	0x7490
	.uleb128 0x3d
	.uaword	0x6f3e
	.sleb128 -268214272
	.uleb128 0x3e
	.uaword	0x6f4a
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.uaword	0x6f5a
	.uaword	.LLST17
	.uleb128 0x3f
	.uaword	0x6ede
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x7476
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x26
	.uaword	0x6f07
	.uaword	.LLST18
	.uleb128 0x3a
	.uaword	.LVL48
	.uaword	0x706a
	.byte	0
	.byte	0
	.uleb128 0x40
	.uaword	.LBB51
	.uaword	.LBE51
	.uleb128 0x41
	.uaword	0x6f3e
	.uleb128 0x41
	.uaword	0x6f4a
	.uleb128 0x41
	.uaword	0x6f5a
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getPllVcoFrequency"
	.byte	0x1
	.uahalf	0x206
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB228
	.uaword	.LFE228
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7504
	.uleb128 0x38
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x306
	.uaword	.LLST19
	.uleb128 0x39
	.uaword	0x6ede
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.uahalf	0x212
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x26
	.uaword	0x6f07
	.uaword	.LLST20
	.uleb128 0x3a
	.uaword	.LVL58
	.uaword	0x706a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x1
	.uahalf	0x219
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB229
	.uaword	.LFE229
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x755a
	.uleb128 0x37
	.string	"sourcefreq"
	.byte	0x1
	.uahalf	0x21b
	.uaword	0x306
	.byte	0x1
	.byte	0x52
	.uleb128 0x34
	.uaword	.LVL59
	.byte	0x1
	.uaword	0x6f15
	.byte	0
	.uleb128 0x42
	.string	"IfxScuCcu_wait"
	.byte	0x1
	.uahalf	0x541
	.byte	0x1
	.uaword	.LFB244
	.uaword	.LFE244
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x75d7
	.uleb128 0x43
	.string	"timeSec"
	.byte	0x1
	.uahalf	0x541
	.uaword	0x306
	.uaword	.LLST21
	.uleb128 0x37
	.string	"stmCount"
	.byte	0x1
	.uahalf	0x543
	.uaword	0x2f8
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"stmCountBegin"
	.byte	0x1
	.uahalf	0x544
	.uaword	0x2f8
	.byte	0x1
	.byte	0x52
	.uleb128 0x44
	.uaword	0x6eba
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.uahalf	0x543
	.uleb128 0x3a
	.uaword	.LVL62
	.uaword	0x7504
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"IfxScuCcu_getBbbFrequency"
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x763a
	.uleb128 0x2a
	.string	"bbbFrequency"
	.byte	0x1
	.byte	0xe9
	.uaword	0x306
	.uaword	.LLST22
	.uleb128 0x45
	.uaword	.LASF40
	.byte	0x1
	.byte	0xea
	.uaword	0x306
	.uaword	.LLST23
	.uleb128 0x3a
	.uaword	.LVL64
	.uaword	0x7504
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getMaxFrequency"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x76a0
	.uleb128 0x38
	.string	"maxFrequency"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x306
	.uaword	.LLST24
	.uleb128 0x46
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x160
	.uaword	0x306
	.uaword	.LLST25
	.uleb128 0x3a
	.uaword	.LVL76
	.uaword	0x7504
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"IfxScuCcu_getBaud1Frequency"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x76fc
	.uleb128 0x45
	.uaword	.LASF41
	.byte	0x1
	.byte	0xc5
	.uaword	0x306
	.uaword	.LLST26
	.uleb128 0x45
	.uaword	.LASF37
	.byte	0x1
	.byte	0xc6
	.uaword	0x4951
	.uaword	.LLST27
	.uleb128 0x3a
	.uaword	.LVL92
	.uaword	0x763a
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7758
	.uleb128 0x45
	.uaword	.LASF41
	.byte	0x1
	.byte	0xd7
	.uaword	0x306
	.uaword	.LLST28
	.uleb128 0x45
	.uaword	.LASF37
	.byte	0x1
	.byte	0xd8
	.uaword	0x4951
	.uaword	.LLST29
	.uleb128 0x3a
	.uaword	.LVL99
	.uaword	0x763a
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x1
	.uahalf	0x22e
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x77be
	.uleb128 0x38
	.string	"spbFrequency"
	.byte	0x1
	.uahalf	0x230
	.uaword	0x306
	.uaword	.LLST30
	.uleb128 0x46
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x231
	.uaword	0x306
	.uaword	.LLST31
	.uleb128 0x3a
	.uaword	.LVL101
	.uaword	0x7504
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getModuleFrequency"
	.byte	0x1
	.uahalf	0x186
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x783a
	.uleb128 0x37
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x188
	.uaword	0x306
	.byte	0x1
	.byte	0x53
	.uleb128 0x38
	.string	"moduleFreq"
	.byte	0x1
	.uahalf	0x189
	.uaword	0x306
	.uaword	.LLST32
	.uleb128 0x38
	.string	"scuFdr"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x5335
	.uaword	.LLST33
	.uleb128 0x3a
	.uaword	.LVL114
	.uaword	0x7758
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getSriFrequency"
	.byte	0x1
	.uahalf	0x258
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x78a0
	.uleb128 0x38
	.string	"sriFrequency"
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x306
	.uaword	.LLST34
	.uleb128 0x46
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x25b
	.uaword	0x306
	.uaword	.LLST35
	.uleb128 0x3a
	.uaword	.LVL122
	.uaword	0x7504
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getCpuFrequency"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x790e
	.uleb128 0x43
	.string	"cpu"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x790e
	.uaword	.LLST36
	.uleb128 0x47
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x113
	.uaword	0x306
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x114
	.uaword	0x2f8
	.uaword	.LLST37
	.uleb128 0x3a
	.uaword	.LVL135
	.uaword	0x783a
	.byte	0
	.uleb128 0x31
	.uaword	0x6904
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getFsi2Frequency"
	.byte	0x1
	.uahalf	0x12f
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7971
	.uleb128 0x46
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x131
	.uaword	0x306
	.uaword	.LLST38
	.uleb128 0x46
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x132
	.uaword	0x4951
	.uaword	.LLST39
	.uleb128 0x3a
	.uaword	.LVL149
	.uaword	0x783a
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_getFsiFrequency"
	.byte	0x1
	.uahalf	0x146
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x79ce
	.uleb128 0x46
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x148
	.uaword	0x306
	.uaword	.LLST40
	.uleb128 0x46
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x149
	.uaword	0x4951
	.uaword	.LLST41
	.uleb128 0x3a
	.uaword	.LVL156
	.uaword	0x783a
	.byte	0
	.uleb128 0x24
	.string	"IfxScuCcu_isOscillatorStable"
	.byte	0x1
	.uahalf	0x3f7
	.byte	0x1
	.uaword	0x31f
	.byte	0x1
	.uaword	0x7a2b
	.uleb128 0x20
	.string	"TimeoutCtr"
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x2ea
	.uleb128 0x48
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x3fa
	.uaword	0x31f
	.uleb128 0x20
	.string	"endinitPw"
	.byte	0x1
	.uahalf	0x3fc
	.uaword	0x2c6
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"IfxScuCcu_init"
	.byte	0x1
	.uahalf	0x282
	.byte	0x1
	.uaword	0x31f
	.uaword	.LFB232
	.uaword	.LFE232
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7d84
	.uleb128 0x43
	.string	"cfg"
	.byte	0x1
	.uahalf	0x282
	.uaword	0x7d84
	.uaword	.LLST42
	.uleb128 0x46
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x284
	.uaword	0x29b
	.uaword	.LLST43
	.uleb128 0x46
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x285
	.uaword	0x2c6
	.uaword	.LLST44
	.uleb128 0x46
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x285
	.uaword	0x2c6
	.uaword	.LLST45
	.uleb128 0x46
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x286
	.uaword	0x31f
	.uaword	.LLST46
	.uleb128 0x3f
	.uaword	0x79ce
	.uaword	.LBB69
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x2b0
	.uaword	0x7b23
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x26
	.uaword	0x79f9
	.uaword	.LLST47
	.uleb128 0x26
	.uaword	0x7a0c
	.uaword	.LLST48
	.uleb128 0x26
	.uaword	0x7a18
	.uaword	.LLST49
	.uleb128 0x3a
	.uaword	.LVL169
	.uaword	0x87dc
	.uleb128 0x4a
	.uaword	.LVL174
	.uaword	0x8808
	.uaword	0x7af4
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL176
	.uaword	0x8832
	.uleb128 0x4a
	.uaword	.LVL179
	.uaword	0x8808
	.uaword	0x7b11
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL180
	.uaword	0x8832
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0x7cc1
	.uleb128 0x46
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x2b8
	.uaword	0x29b
	.uaword	.LLST50
	.uleb128 0x4e
	.uaword	.Ldebug_ranges0+0xb0
	.uaword	0x7b5a
	.uleb128 0x46
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x4951
	.uaword	.LLST51
	.byte	0
	.uleb128 0x4e
	.uaword	.Ldebug_ranges0+0xc8
	.uaword	0x7b74
	.uleb128 0x46
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x307
	.uaword	0x4991
	.uaword	.LLST52
	.byte	0
	.uleb128 0x4e
	.uaword	.Ldebug_ranges0+0xe0
	.uaword	0x7b92
	.uleb128 0x38
	.string	"ccucon2"
	.byte	0x1
	.uahalf	0x318
	.uaword	0x49d1
	.uaword	.LLST53
	.byte	0
	.uleb128 0x4e
	.uaword	.Ldebug_ranges0+0xf8
	.uaword	0x7bb0
	.uleb128 0x38
	.string	"ccucon5"
	.byte	0x1
	.uahalf	0x326
	.uaword	0x4a91
	.uaword	.LLST54
	.byte	0
	.uleb128 0x4e
	.uaword	.Ldebug_ranges0+0x110
	.uaword	0x7bce
	.uleb128 0x38
	.string	"ccucon6"
	.byte	0x1
	.uahalf	0x32f
	.uaword	0x4ad1
	.uaword	.LLST55
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0x7bf0
	.uleb128 0x38
	.string	"ccucon7"
	.byte	0x1
	.uahalf	0x338
	.uaword	0x4b11
	.uaword	.LLST56
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	0x7c12
	.uleb128 0x38
	.string	"ccucon8"
	.byte	0x1
	.uahalf	0x341
	.uaword	0x4b51
	.uaword	.LLST57
	.byte	0
	.uleb128 0x4d
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0x7c55
	.uleb128 0x38
	.string	"fcon"
	.byte	0x1
	.uahalf	0x34e
	.uaword	0x6b35
	.uaword	.LLST58
	.uleb128 0x4a
	.uaword	.LVL211
	.uaword	0x8808
	.uaword	0x7c44
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL212
	.uaword	0x8832
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL182
	.uaword	0x885a
	.uaword	0x7c69
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL183
	.uaword	0x755a
	.uleb128 0x3a
	.uaword	.LVL184
	.uaword	0x755a
	.uleb128 0x4a
	.uaword	.LVL207
	.uaword	0x8887
	.uaword	0x7c8f
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL217
	.uaword	0x885a
	.uaword	0x7ca3
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL218
	.uaword	0x8887
	.uaword	0x7cb7
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL220
	.uaword	0x755a
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL160
	.uaword	0x87dc
	.uleb128 0x3a
	.uaword	.LVL162
	.uaword	0x88b2
	.uleb128 0x4a
	.uaword	.LVL164
	.uaword	0x8808
	.uaword	0x7ce7
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL165
	.uaword	0x8832
	.uaword	0x7cfb
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL166
	.uaword	0x885a
	.uaword	0x7d0f
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL177
	.uaword	0x8887
	.uaword	0x7d23
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL181
	.uaword	0x8887
	.uaword	0x7d37
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL223
	.uaword	0x885a
	.uaword	0x7d4b
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL224
	.uaword	0x8887
	.uaword	0x7d5f
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL225
	.uaword	0x8808
	.uaword	0x7d73
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL227
	.uaword	0x8832
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7d8a
	.uleb128 0x31
	.uaword	0x6e6a
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxScuCcu_initConfig"
	.byte	0x1
	.uahalf	0x388
	.byte	0x1
	.uaword	.LFB233
	.uaword	.LFE233
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7dca
	.uleb128 0x43
	.string	"cfg"
	.byte	0x1
	.uahalf	0x388
	.uaword	0x72a7
	.uaword	.LLST59
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_initErayPll"
	.byte	0x1
	.uahalf	0x38e
	.byte	0x1
	.uaword	0x31f
	.uaword	.LFB234
	.uaword	.LFE234
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7f18
	.uleb128 0x43
	.string	"cfg"
	.byte	0x1
	.uahalf	0x38e
	.uaword	0x7f18
	.uaword	.LLST60
	.uleb128 0x47
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x390
	.uaword	0x29b
	.byte	0x1
	.byte	0x5b
	.uleb128 0x46
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x391
	.uaword	0x2c6
	.uaword	.LLST61
	.uleb128 0x46
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x391
	.uaword	0x2c6
	.uaword	.LLST62
	.uleb128 0x46
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x392
	.uaword	0x31f
	.uaword	.LLST63
	.uleb128 0x38
	.string	"time_out_ctr"
	.byte	0x1
	.uahalf	0x3cd
	.uaword	0x2f8
	.uaword	.LLST64
	.uleb128 0x3a
	.uaword	.LVL231
	.uaword	0x87dc
	.uleb128 0x3a
	.uaword	.LVL233
	.uaword	0x88b2
	.uleb128 0x4a
	.uaword	.LVL235
	.uaword	0x8808
	.uaword	0x7e86
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL237
	.uaword	0x8832
	.uaword	0x7e9a
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL238
	.uaword	0x885a
	.uaword	0x7eae
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL239
	.uaword	0x755a
	.uleb128 0x4a
	.uaword	.LVL240
	.uaword	0x8887
	.uaword	0x7ecb
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL243
	.uaword	0x885a
	.uaword	0x7edf
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL244
	.uaword	0x8887
	.uaword	0x7ef3
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL245
	.uaword	0x8808
	.uaword	0x7f07
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL247
	.uaword	0x8832
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x7f1e
	.uleb128 0x31
	.uaword	0x6e9a
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxScuCcu_initErayPllConfig"
	.byte	0x1
	.uahalf	0x3f1
	.byte	0x1
	.uaword	.LFB235
	.uaword	.LFE235
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7f63
	.uleb128 0x50
	.string	"cfg"
	.byte	0x1
	.uahalf	0x3f1
	.uaword	0x7f63
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x6e9a
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_setCpuFrequency"
	.byte	0x1
	.uahalf	0x424
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB237
	.uaword	.LFE237
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x805f
	.uleb128 0x43
	.string	"cpu"
	.byte	0x1
	.uahalf	0x424
	.uaword	0x6904
	.uaword	.LLST65
	.uleb128 0x43
	.string	"cpuFreq"
	.byte	0x1
	.uahalf	0x424
	.uaword	0x306
	.uaword	.LLST66
	.uleb128 0x46
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x426
	.uaword	0x2c6
	.uaword	.LLST67
	.uleb128 0x38
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x427
	.uaword	0x306
	.uaword	.LLST68
	.uleb128 0x38
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x428
	.uaword	0x2f8
	.uaword	.LLST69
	.uleb128 0x3a
	.uaword	.LVL251
	.uaword	0x783a
	.uleb128 0x3a
	.uaword	.LVL256
	.uaword	0x88b2
	.uleb128 0x4a
	.uaword	.LVL258
	.uaword	0x885a
	.uaword	0x801d
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL260
	.uaword	0x8887
	.uaword	0x8031
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL263
	.uaword	0x88b2
	.uleb128 0x4a
	.uaword	.LVL265
	.uaword	0x885a
	.uaword	0x804e
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL272
	.uaword	0x8887
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_setGtmFrequency"
	.byte	0x1
	.uahalf	0x456
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB238
	.uaword	.LFE238
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x816f
	.uleb128 0x43
	.string	"gtmFreq"
	.byte	0x1
	.uahalf	0x456
	.uaword	0x306
	.uaword	.LLST70
	.uleb128 0x46
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x458
	.uaword	0x2c6
	.uaword	.LLST71
	.uleb128 0x47
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x459
	.uaword	0x4991
	.byte	0x1
	.byte	0x58
	.uleb128 0x46
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x45b
	.uaword	0x306
	.uaword	.LLST72
	.uleb128 0x38
	.string	"gtmDiv"
	.byte	0x1
	.uahalf	0x45c
	.uaword	0x2f8
	.uaword	.LLST73
	.uleb128 0x3f
	.uaword	0x6f8c
	.uaword	.LBB89
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.uahalf	0x45d
	.uaword	0x811a
	.uleb128 0x51
	.uaword	0x6fa9
	.byte	0x1
	.uleb128 0x52
	.uaword	0x6fa0
	.uaword	.LLST74
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x128
	.uleb128 0x26
	.uaword	0x6fb2
	.uaword	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x53
	.uaword	0x6fbe
	.uaword	.LBB93
	.uaword	.LBE93
	.byte	0x1
	.uahalf	0x476
	.uaword	0x8138
	.uleb128 0x3a
	.uaword	.LVL286
	.uaword	0x7504
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL275
	.uaword	0x7504
	.uleb128 0x3a
	.uaword	.LVL282
	.uaword	0x88b2
	.uleb128 0x4a
	.uaword	.LVL284
	.uaword	0x885a
	.uaword	0x815e
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL285
	.uaword	0x8887
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_setPll2ErayFrequency"
	.byte	0x1
	.uahalf	0x47a
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB239
	.uaword	.LFE239
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8251
	.uleb128 0x43
	.string	"pll2ErayFreq"
	.byte	0x1
	.uahalf	0x47a
	.uaword	0x306
	.uaword	.LLST76
	.uleb128 0x38
	.string	"password"
	.byte	0x1
	.uahalf	0x47c
	.uaword	0x2c6
	.uaword	.LLST77
	.uleb128 0x38
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x47d
	.uaword	0x2f8
	.uaword	.LLST78
	.uleb128 0x53
	.uaword	0x6fe2
	.uaword	.LBB95
	.uaword	.LBE95
	.byte	0x1
	.uahalf	0x483
	.uaword	0x821a
	.uleb128 0x40
	.uaword	.LBB96
	.uaword	.LBE96
	.uleb128 0x26
	.uaword	0x700f
	.uaword	.LLST79
	.uleb128 0x3a
	.uaword	.LVL298
	.uaword	0x73a4
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL289
	.uaword	0x88b2
	.uleb128 0x3a
	.uaword	.LVL291
	.uaword	0x73a4
	.uleb128 0x4a
	.uaword	.LVL293
	.uaword	0x885a
	.uaword	0x8240
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL297
	.uaword	0x8887
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_setPll2Frequency"
	.byte	0x1
	.uahalf	0x487
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB240
	.uaword	.LFE240
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8326
	.uleb128 0x43
	.string	"pll2Freq"
	.byte	0x1
	.uahalf	0x487
	.uaword	0x306
	.uaword	.LLST80
	.uleb128 0x46
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x489
	.uaword	0x2c6
	.uaword	.LLST81
	.uleb128 0x38
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x48a
	.uaword	0x2f8
	.uaword	.LLST82
	.uleb128 0x53
	.uaword	0x702a
	.uaword	.LBB97
	.uaword	.LBE97
	.byte	0x1
	.uahalf	0x490
	.uaword	0x82ef
	.uleb128 0x40
	.uaword	.LBB98
	.uaword	.LBE98
	.uleb128 0x26
	.uaword	0x7053
	.uaword	.LLST83
	.uleb128 0x3a
	.uaword	.LVL313
	.uaword	0x7490
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL304
	.uaword	0x88b2
	.uleb128 0x3a
	.uaword	.LVL306
	.uaword	0x7490
	.uleb128 0x4a
	.uaword	.LVL308
	.uaword	0x885a
	.uaword	0x8315
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x4c
	.uaword	.LVL312
	.uaword	0x8887
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_setSpbFrequency"
	.byte	0x1
	.uahalf	0x494
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB241
	.uaword	.LFE241
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8499
	.uleb128 0x43
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x494
	.uaword	0x306
	.uaword	.LLST84
	.uleb128 0x38
	.string	"l_EndInitPW"
	.byte	0x1
	.uahalf	0x497
	.uaword	0x2c6
	.uaword	.LLST85
	.uleb128 0x46
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x498
	.uaword	0x2c6
	.uaword	.LLST86
	.uleb128 0x46
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x499
	.uaword	0x4951
	.uaword	.LLST87
	.uleb128 0x46
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x49a
	.uaword	0x306
	.uaword	.LLST88
	.uleb128 0x38
	.string	"spbDiv"
	.byte	0x1
	.uahalf	0x49b
	.uaword	0x2f8
	.uaword	.LLST89
	.uleb128 0x3f
	.uaword	0x6f8c
	.uaword	.LBB99
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.uahalf	0x49c
	.uaword	0x83fb
	.uleb128 0x51
	.uaword	0x6fa9
	.byte	0x2
	.uleb128 0x52
	.uaword	0x6fa0
	.uaword	.LLST90
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x140
	.uleb128 0x26
	.uaword	0x6fb2
	.uaword	.LLST91
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL319
	.uaword	0x7504
	.uleb128 0x3a
	.uaword	.LVL327
	.uaword	0x87dc
	.uleb128 0x3a
	.uaword	.LVL329
	.uaword	0x88b2
	.uleb128 0x4a
	.uaword	.LVL331
	.uaword	0x8808
	.uaword	0x842a
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL332
	.uaword	0x8832
	.uaword	0x843e
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL333
	.uaword	0x885a
	.uaword	0x8452
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL335
	.uaword	0x8887
	.uaword	0x8466
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL336
	.uaword	0x8808
	.uaword	0x847a
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL338
	.uaword	0x8832
	.uaword	0x848e
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL339
	.byte	0x1
	.uaword	0x7758
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxScuCcu_setSriFrequency"
	.byte	0x1
	.uahalf	0x4c5
	.byte	0x1
	.uaword	0x306
	.uaword	.LFB242
	.uaword	.LFE242
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x85b0
	.uleb128 0x43
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x4c5
	.uaword	0x306
	.uaword	.LLST92
	.uleb128 0x54
	.string	"freq"
	.byte	0x1
	.uahalf	0x4c7
	.uaword	0x306
	.byte	0x4
	.uaword	0
	.uleb128 0x38
	.string	"source"
	.byte	0x1
	.uahalf	0x4c8
	.uaword	0x306
	.uaword	.LLST93
	.uleb128 0x46
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x4c9
	.uaword	0x4951
	.uaword	.LLST94
	.uleb128 0x46
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x4ca
	.uaword	0x2c6
	.uaword	.LLST95
	.uleb128 0x38
	.string	"sriDiv"
	.byte	0x1
	.uahalf	0x4cb
	.uaword	0x2f8
	.uaword	.LLST96
	.uleb128 0x3f
	.uaword	0x6f8c
	.uaword	.LBB103
	.uaword	.Ldebug_ranges0+0x158
	.byte	0x1
	.uahalf	0x4cc
	.uaword	0x856b
	.uleb128 0x51
	.uaword	0x6fa9
	.byte	0x1
	.uleb128 0x52
	.uaword	0x6fa0
	.uaword	.LLST97
	.uleb128 0x2e
	.uaword	.Ldebug_ranges0+0x158
	.uleb128 0x26
	.uaword	0x6fb2
	.uaword	.LLST98
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL341
	.uaword	0x7504
	.uleb128 0x3a
	.uaword	.LVL348
	.uaword	0x88b2
	.uleb128 0x4a
	.uaword	.LVL350
	.uaword	0x885a
	.uaword	0x8591
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL352
	.uaword	0x8887
	.uaword	0x85a5
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL354
	.byte	0x1
	.uaword	0x783a
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxScuCcu_switchToBackupClock"
	.byte	0x1
	.uahalf	0x4ed
	.byte	0x1
	.uaword	.LFB243
	.uaword	.LFE243
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x86ea
	.uleb128 0x43
	.string	"cfg"
	.byte	0x1
	.uahalf	0x4ed
	.uaword	0x7d84
	.uaword	.LLST99
	.uleb128 0x46
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x4ef
	.uaword	0x2c6
	.uaword	.LLST100
	.uleb128 0x46
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x4ef
	.uaword	0x2c6
	.uaword	.LLST101
	.uleb128 0x46
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x4f0
	.uaword	0x1db
	.uaword	.LLST102
	.uleb128 0x47
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x4f1
	.uaword	0x29b
	.byte	0x1
	.byte	0x59
	.uleb128 0x3a
	.uaword	.LVL356
	.uaword	0x88b2
	.uleb128 0x3a
	.uaword	.LVL358
	.uaword	0x87dc
	.uleb128 0x4a
	.uaword	.LVL361
	.uaword	0x885a
	.uaword	0x8657
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL363
	.uaword	0x8887
	.uaword	0x866b
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL364
	.uaword	0x755a
	.uleb128 0x4a
	.uaword	.LVL365
	.uaword	0x8808
	.uaword	0x8688
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL367
	.uaword	0x8832
	.uaword	0x869c
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL368
	.uaword	0x885a
	.uaword	0x86b0
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL369
	.uaword	0x8887
	.uaword	0x86c4
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.uaword	.LVL370
	.uaword	0x8808
	.uaword	0x86d8
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x55
	.uaword	.LVL371
	.byte	0x1
	.uaword	0x8832
	.uleb128 0x4b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x6c78
	.uaword	0x86fa
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x2
	.byte	0
	.uleb128 0x2c
	.string	"IfxScuCcu_aDefaultPllConfigSteps"
	.byte	0x1
	.byte	0x3d
	.uaword	0x8728
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_aDefaultPllConfigSteps
	.uleb128 0x31
	.uaword	0x86ea
	.uleb128 0x2c
	.string	"IfxScuCcu_xtalFrequency"
	.byte	0x1
	.byte	0x43
	.uaword	0x2f8
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_xtalFrequency
	.uleb128 0x18
	.uaword	0x382
	.uaword	0x8762
	.uleb128 0x19
	.uaword	0x6785
	.byte	0x2
	.byte	0
	.uleb128 0x56
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0x96
	.uaword	0x877f
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.uaword	0x8752
	.uleb128 0x57
	.string	"IfxScuCcu_defaultClockConfig"
	.byte	0x1
	.byte	0x49
	.uaword	0x7d8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultClockConfig
	.uleb128 0x57
	.string	"IfxScuCcu_defaultErayPllConfig"
	.byte	0x1
	.byte	0x54
	.uaword	0x7f1e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultErayPllConfig
	.uleb128 0x58
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xb
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x2c6
	.byte	0x1
	.uleb128 0x59
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xb
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x8832
	.uleb128 0x5a
	.uaword	0x2c6
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xb
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x885a
	.uleb128 0x5a
	.uaword	0x2c6
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0xb
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uaword	0x8887
	.uleb128 0x5a
	.uaword	0x2c6
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0xb
	.byte	0xe5
	.byte	0x1
	.byte	0x1
	.uaword	0x88b2
	.uleb128 0x5a
	.uaword	0x2c6
	.byte	0
	.uleb128 0x58
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0xb
	.uahalf	0x17b
	.byte	0x1
	.uaword	0x2c6
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x50
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL2
	.uaword	.LFE245
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE214
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE214
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL12
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL12
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL17
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x79
	.sleb128 1
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x12
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x12
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0xf7
	.uleb128 0x1c1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-1
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LFE244
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87
	.uaword	.LFE221
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL93
	.uaword	.LFE215
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL89
	.uaword	.LFE215
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x9d
	.uleb128 0x1c
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL100
	.uaword	.LFE216
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0xe
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x4
	.uleb128 0
	.byte	0x93
	.uleb128 0x3
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL112
	.uaword	.LFE230
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL103
	.uaword	.LFE230
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL121
	.uaword	.LFE222
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL113
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x3ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x16
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL133
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL124
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL134
	.uaword	.LVL135-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL135-1
	.uaword	.LFE218
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL144
	.uaword	.LFE218
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL149
	.uaword	.LFE219
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x14
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.uaword	.LVL148
	.uaword	.LVL150
	.uahalf	0x11
	.byte	0x9d
	.uleb128 0x14
	.uleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL156
	.uaword	.LFE220
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	.LVL155
	.uaword	.LVL157
	.uahalf	0x10
	.byte	0x93
	.uleb128 0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xea
	.byte	0x24
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x2
	.uleb128 0
	.byte	0x9d
	.uleb128 0x6
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL159
	.uaword	.LVL160-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL160-1
	.uaword	.LFE232
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL167
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL161
	.uaword	.LVL162-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL162-1
	.uaword	.LFE232
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL163
	.uaword	.LVL164-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL164-1
	.uaword	.LFE232
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL159
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x280
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL168
	.uaword	.LVL173
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL173
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL222
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL171
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL175
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL178
	.uaword	.LVL214
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL212
	.uaword	.LVL215
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL216
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL196
	.uaword	.LVL197
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL199
	.uaword	.LVL202
	.uahalf	0x8
	.byte	0x11
	.sleb128 -268214144
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL200
	.uaword	.LVL201
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL201
	.uaword	.LVL203
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL203
	.uaword	.LVL206
	.uahalf	0x8
	.byte	0x11
	.sleb128 -268214140
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL204
	.uaword	.LVL205
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL205
	.uaword	.LVL208
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL208
	.uaword	.LVL209
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL210
	.uaword	.LVL213
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL230
	.uaword	.LVL231-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL231-1
	.uaword	.LFE234
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL232
	.uaword	.LVL233-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL233-1
	.uaword	.LFE234
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL234
	.uaword	.LVL235-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL235-1
	.uaword	.LFE234
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL230
	.uaword	.LVL242
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL248
	.uaword	.LFE234
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc34f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL250
	.uaword	.LVL251-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL251-1
	.uaword	.LFE237
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL250
	.uaword	.LVL251-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL251-1
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL254
	.uaword	.LVL262
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	.LVL262
	.uaword	.LVL266
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL266
	.uaword	.LVL267
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL268
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL268
	.uaword	.LVL269
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	.LVL269
	.uaword	.LVL270
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL270
	.uaword	.LVL271
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LFE237
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL257
	.uaword	.LVL258-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL258-1
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL264
	.uaword	.LVL265-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL265-1
	.uaword	.LVL266
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL267
	.uaword	.LVL268
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL269
	.uaword	.LVL270
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL271
	.uaword	.LFE237
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL252
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL253
	.uaword	.LFE237
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL255
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL262
	.uaword	.LVL266
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL268
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL269
	.uaword	.LVL270
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LFE237
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL273
	.uaword	.LVL275-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL275-1
	.uaword	.LVL277
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL277
	.uaword	.LFE238
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL283
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL284-1
	.uaword	.LVL287
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL280
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL287
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL279
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL287
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL288
	.uaword	.LVL289-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL289-1
	.uaword	.LVL294
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL294
	.uaword	.LFE239
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL290
	.uaword	.LVL291-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL291-1
	.uaword	.LVL299
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL292
	.uaword	.LVL293-1
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a8
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a8
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x9f
	.uaword	.LVL293-1
	.uaword	.LVL294
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x1a8
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a8
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x9f
	.uaword	.LVL294
	.uaword	.LVL295
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x1a8
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a8
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL296
	.uaword	.LFE239
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x1a8
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a8
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL300
	.uaword	.LVL301
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1db
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL301
	.uaword	.LVL302
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a8
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1db
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL303
	.uaword	.LVL304-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL304-1
	.uaword	.LVL309
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL309
	.uaword	.LFE240
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL305
	.uaword	.LVL306-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL306-1
	.uaword	.LVL314
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL307
	.uaword	.LVL308-1
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a8
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a8
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x9f
	.uaword	.LVL308-1
	.uaword	.LVL309
	.uahalf	0x16
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x1a8
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a8
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x9f
	.uaword	.LVL309
	.uaword	.LVL310
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x1a8
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a8
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x9f
	.uaword	.LVL310
	.uaword	.LVL311
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL311
	.uaword	.LFE240
	.uahalf	0x18
	.byte	0xf5
	.uleb128 0x9
	.uleb128 0x1a8
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x1a8
	.byte	0x4
	.uaword	0x3f800000
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1b1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL315
	.uaword	.LVL316
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1db
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL316
	.uaword	.LVL317
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a8
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x1db
	.byte	0xf7
	.uleb128 0x1a8
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL318
	.uaword	.LVL319-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL319-1
	.uaword	.LVL321
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL321
	.uaword	.LFE241
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL328
	.uaword	.LVL329-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL329-1
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL330
	.uaword	.LVL331-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL331-1
	.uaword	.LVL339
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL334
	.uaword	.LVL337
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL319
	.uaword	.LVL320
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL322
	.uaword	.LVL323
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL325
	.uaword	.LVL326
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL339
	.uaword	.LFE241
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL322
	.uaword	.LVL324
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL323
	.uaword	.LVL325
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL339
	.uaword	.LFE241
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL340
	.uaword	.LVL341-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL341-1
	.uaword	.LVL343
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL343
	.uaword	.LFE242
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL341
	.uaword	.LVL342
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL351
	.uaword	.LVL353
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL349
	.uaword	.LVL350-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL350-1
	.uaword	.LVL354
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL344
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL346
	.uaword	.LVL347
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL354
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL344
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL354
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL355
	.uaword	.LVL356-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL356-1
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL359
	.uaword	.LVL360
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL360
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL357
	.uaword	.LVL358-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL358-1
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL359
	.uaword	.LVL362
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL362
	.uaword	.LVL364
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL364
	.uaword	.LVL366
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x10c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB245
	.uaword	.LFE245-.LFB245
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.uaword	.LFB234
	.uaword	.LFE234-.LFB234
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	0
	.uaword	0
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0
	.uaword	0
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	0
	.uaword	0
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	0
	.uaword	0
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	0
	.uaword	0
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	0
	.uaword	0
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	0
	.uaword	0
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	0
	.uaword	0
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	0
	.uaword	0
	.uaword	.LFB245
	.uaword	.LFE245
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LFB223
	.uaword	.LFE223
	.uaword	.LFB224
	.uaword	.LFE224
	.uaword	.LFB225
	.uaword	.LFE225
	.uaword	.LFB226
	.uaword	.LFE226
	.uaword	.LFB227
	.uaword	.LFE227
	.uaword	.LFB228
	.uaword	.LFE228
	.uaword	.LFB229
	.uaword	.LFE229
	.uaword	.LFB244
	.uaword	.LFE244
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB221
	.uaword	.LFE221
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB230
	.uaword	.LFE230
	.uaword	.LFB222
	.uaword	.LFE222
	.uaword	.LFB231
	.uaword	.LFE231
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	.LFB232
	.uaword	.LFE232
	.uaword	.LFB233
	.uaword	.LFE233
	.uaword	.LFB234
	.uaword	.LFE234
	.uaword	.LFB235
	.uaword	.LFE235
	.uaword	.LFB237
	.uaword	.LFE237
	.uaword	.LFB238
	.uaword	.LFE238
	.uaword	.LFB239
	.uaword	.LFE239
	.uaword	.LFB240
	.uaword	.LFE240
	.uaword	.LFB241
	.uaword	.LFE241
	.uaword	.LFB242
	.uaword	.LFE242
	.uaword	.LFB243
	.uaword	.LFE243
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF32:
	.string	"PINBWKEN"
.LASF41:
	.string	"frequency"
.LASF37:
	.string	"ccucon0"
.LASF45:
	.string	"endinitSfty_pw"
.LASF30:
	.string	"ESR1WKEN"
.LASF34:
	.string	"ESR0T"
.LASF10:
	.string	"reserved_10"
.LASF21:
	.string	"reserved_11"
.LASF24:
	.string	"reserved_12"
.LASF36:
	.string	"waitTime"
.LASF20:
	.string	"reserved_14"
.LASF13:
	.string	"reserved_15"
.LASF11:
	.string	"reserved_16"
.LASF23:
	.string	"reserved_17"
.LASF16:
	.string	"reserved_18"
.LASF26:
	.string	"reserved_19"
.LASF31:
	.string	"PINAWKEN"
.LASF38:
	.string	"ccucon1"
.LASF43:
	.string	"smuTrapEnable"
.LASF35:
	.string	"ESR1T"
.LASF25:
	.string	"reserved_21"
.LASF2:
	.string	"reserved_22"
.LASF14:
	.string	"reserved_23"
.LASF5:
	.string	"reserved_24"
.LASF3:
	.string	"reserved_26"
.LASF17:
	.string	"reserved_28"
.LASF40:
	.string	"sourceFrequency"
.LASF29:
	.string	"OSCDISCDIS"
.LASF48:
	.string	"inputFreq"
.LASF39:
	.string	"pllInitialStep"
.LASF6:
	.string	"SLCK"
.LASF46:
	.string	"pllStepsCount"
.LASF0:
	.string	"reserved_0"
.LASF22:
	.string	"reserved_1"
.LASF9:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_3"
.LASF4:
	.string	"reserved_4"
.LASF7:
	.string	"reserved_6"
.LASF12:
	.string	"reserved_7"
.LASF15:
	.string	"reserved_8"
.LASF18:
	.string	"reserved_9"
.LASF28:
	.string	"CLRFINDIS"
.LASF19:
	.string	"reserved_30"
.LASF8:
	.string	"reserved_31"
.LASF44:
	.string	"endinit_pw"
.LASF27:
	.string	"SETFINDIS"
.LASF33:
	.string	"ESR0TRIST"
.LASF42:
	.string	"status"
.LASF47:
	.string	"l_SEndInitPW"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
