	.file	"IfxQspi.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxQspi_calcRealBaudrate,"ax",@progbits
	.align 1
	.global	IfxQspi_calcRealBaudrate
	.type	IfxQspi_calcRealBaudrate, @function
IfxQspi_calcRealBaudrate:
.LFB284:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Qspi/Std/IfxQspi.c"
	.loc 1 36 0
.LVL0:
	sub.a	%SP, 32
.LCFI0:
	.loc 1 37 0
	and	%d8, %d4, 7
.LVL1:
	.loc 1 36 0
	mov.aa	%a15, %a4
	.loc 1 38 0
	call	IfxScuCcu_getMaxFrequency
.LVL2:
	.loc 1 40 0
	addi	%d15, %d8, 8
	addsc.a	%a2, %a15, %d15, 2
	lea	%a3, [%SP] 32
	ld.w	%d15, [%a2]0
	addsc.a	%a2, %a3, %d8, 2
	st.w	[%a2] -32, %d15
	.loc 1 41 0
	ld.w	%d3, [%a15] 16
	and	%d3, %d3, 255
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d2, %d2, %d3
.LVL3:
	.loc 1 42 0
	and	%d3, %d15, 63
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d2, %d2, %d3
.LVL4:
	.loc 1 43 0
	extr.u	%d3, %d15, 6, 2
	addi	%d4, %d3, 1
	extr.u	%d3, %d15, 8, 2
	extr.u	%d15, %d15, 10, 2
	add	%d3, %d4
	add	%d15, %d3
	itof	%d15, %d15
.LVL5:
	.loc 1 45 0
	div.f	%d2, %d2, %d15
.LVL6:
	ret
.LFE284:
	.size	IfxQspi_calcRealBaudrate, .-IfxQspi_calcRealBaudrate
	.global	__extendsfdf2
	.global	__adddf3
	.global	__fixdfsi
.section .text.IfxQspi_calculateExtendedConfigurationValue,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateExtendedConfigurationValue
	.type	IfxQspi_calculateExtendedConfigurationValue, @function
IfxQspi_calculateExtendedConfigurationValue:
.LFB286:
	.loc 1 76 0
.LVL7:
	.loc 1 76 0
	mov.aa	%a15, %a4
	mov.aa	%a13, %a5
.LBB21:
.LBB22:
.LBB23:
.LBB24:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/Qspi/Std/IfxQspi.h"
	.loc 2 955 0
	call	IfxScuCcu_getMaxFrequency
.LVL8:
.LBE24:
.LBE23:
	.loc 2 986 0
	ld.w	%d15, [%a15] 16
.LBE22:
.LBE21:
	.loc 1 80 0
	movh	%d10, 16256
.LBB27:
.LBB25:
	.loc 2 986 0
	and	%d15, 255
	add	%d15, 1
	itof	%d15, %d15
.LBE25:
.LBE27:
	.loc 1 78 0
	mov	%d8, 0
.LVL9:
.LBB28:
.LBB26:
	.loc 2 986 0
	div.f	%d2, %d2, %d15
.LBE26:
.LBE28:
	.loc 1 81 0
	ld.w	%d15, [%a13] 4
	.loc 1 80 0
	div.f	%d2, %d10, %d2
	mov.a	%a15, %d2
.LVL10:
	.loc 1 89 0
	mov	%d2, 0
.LVL11:
	cmp.f	%d2, %d15, %d2
	jnz.t	%d2, 1, .L3
	div.f	%d10, %d10, %d15
.L3:
.LVL12:
	.loc 1 84 0
	mov.a	%a12, 1
	.loc 1 97 0
	movh	%d12, 18804
	addi	%d12, %d12, 9216
	.loc 1 99 0
	mov	%d9, 8
	mov	%d13, 8
	.loc 1 120 0
	mov	%d14, 0
	j	.L11
.LVL13:
.L13:
	movh	%d15, 17024
	.loc 1 106 0
	mov	%d2, 64
.LVL14:
.L5:
	.loc 1 119 0
	mul.f	%d15, %d11, %d15
.LVL15:
	.loc 1 120 0
	sub.f	%d15, %d15, %d10
.LVL16:
	cmp.f	%d3, %d15, %d14
	extr.u	%d3, %d3, 0, 1
	addih	%d4, %d15, 0x8000
	sel	%d15, %d3, %d4, %d15
.LVL17:
	.loc 1 122 0
	cmp.f	%d3, %d15, %d12
	jnz.t	%d3, 2, .L8
.LVL18:
	mov	%e12, %d9, %d15
	mov.a	%a12, %d2
	.loc 1 128 0
	jge	%d13, 6, .L22
.LVL19:
.L8:
	.loc 1 99 0 discriminator 2
	add	%d9, -1
.LVL20:
	jeq	%d9, 1, .L9
.LVL21:
.L11:
	.loc 1 101 0
	itof	%d11, %d9
	mov.d	%d15, %a15
	mul.f	%d11, %d11, %d15
.LVL22:
	.loc 1 102 0
	div.f	%d4, %d10, %d11
	call	__extendsfdf2
.LVL23:
	imask	%e6, 0, 21, 9
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL24:
	mov	%e4, %d3, %d2
	call	__fixdfsi
.LVL25:
	.loc 1 104 0
	ge	%d15, %d2, 65
	jnz	%d15, .L13
	.loc 1 109 0
	mul	%d15, %d2, %d9
	jlt	%d15, 4, .L14
	.loc 1 114 0
	jgtz	%d2, .L23
	movh	%d15, 16256
	.loc 1 116 0
	mov	%d2, 1
.LVL26:
	j	.L5
.LVL27:
.L14:
	movh	%d15, 16384
	mov	%d2, 2
.LVL28:
	j	.L5
.LVL29:
.L23:
	itof	%d15, %d2
	j	.L5
.LVL30:
.L22:
	.loc 1 132 0
	cmp.f	%d15, %d12, %d14
	or.t	%d15, %d15,0, %d15,2
	jnz	%d15, .L8
.LVL31:
.L9:
	.loc 1 140 0
	mov.d	%d15, %a12
	.loc 1 141 0
	sh	%d2, %d13, -31
.LVL32:
	add	%d2, %d13
	.loc 1 140 0
	add	%d15, -1
	.loc 1 141 0
	sha	%d2, -1
	.loc 1 140 0
	insert	%d8, %d8, %d15, 0, 6
.LVL33:
	.loc 1 141 0
	add	%d15, %d2, -1
	and	%d15, 255
	insert	%d8, %d8, %d15, 6, 2
.LVL34:
.LBB29:
.LBB30:
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 159 0
	mov	%d3, 3
#APP
	# 159 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min %d2, %d2, %d3
	# 0 "" 2
.LVL35:
#NO_APP
.LBE30:
.LBE29:
	.loc 1 142 0
	and	%d2, %d2, 255
.LVL36:
	insert	%d8, %d8, %d2, 10, 2
	.loc 1 143 0
	and	%d2, %d2, 3
	sub	%d2, %d13, %d2
	nand	%d15, %d15, ~(-4)
	add	%d2, %d15
	insert	%d8, %d8, %d2, 8, 2
	.loc 1 144 0
	ld.w	%d15, [%a13] 8
	insn.t	%d8, %d8,12, %d15,4
	.loc 1 145 0
	ins.t	%d8, %d8,13, %d15,3
	.loc 1 146 0
	ins.t	%d8, %d8,14, %d15,13
	.loc 1 149 0
	mov	%d2, %d8
	ret
.LFE286:
	.size	IfxQspi_calculateExtendedConfigurationValue, .-IfxQspi_calculateExtendedConfigurationValue
.section .text.IfxQspi_calculatePrescaler,"ax",@progbits
	.align 1
	.global	IfxQspi_calculatePrescaler
	.type	IfxQspi_calculatePrescaler, @function
IfxQspi_calculatePrescaler:
.LFB287:
	.loc 1 153 0
.LVL37:
	.loc 1 155 0
	movh	%d8, 16128
	mul.f	%d8, %d4, %d8
.LVL38:
.LBB31:
	.loc 1 163 0
	mov.a	%a15, 7
.LBE31:
.LBB32:
.LBB33:
	.loc 2 955 0
	call	IfxScuCcu_getMaxFrequency
.LVL39:
.LBE33:
.LBE32:
	.loc 1 157 0
	movh	%d5, 19225
.LBB35:
.LBB34:
	.loc 2 955 0
	mov	%d0, %d2
.LVL40:
.LBE34:
.LBE35:
	.loc 1 160 0
	mov	%d6, 0
	.loc 1 158 0
	mov	%d2, 0
	.loc 1 157 0
	addi	%d5, %d5, -27008
.LBB36:
	.loc 1 163 0
	mov	%d1, 0
.LVL41:
.L28:
	sh	%d3, %d6, 2
	.loc 1 162 0
	mov	%d15, 1
	sh	%d15, %d15, %d3
	itof	%d15, %d15
	div.f	%d15, %d0, %d15
.LVL42:
	.loc 1 163 0
	sub.f	%d15, %d15, %d8
.LVL43:
	cmp.f	%d3, %d15, %d1
	extr.u	%d3, %d3, 0, 1
	addih	%d7, %d15, 0x8000
	sel	%d15, %d3, %d7, %d15
.LVL44:
	.loc 1 165 0
	cmp.f	%d3, %d15, %d5
	extr.u	%d3, %d3, 2, 1
	sel	%d2, %d3, %d2, %d6
.LVL45:
	sel	%d5, %d3, %d5, %d15
.LVL46:
.LBE36:
	.loc 1 160 0
	add	%d6, 1
.LVL47:
	loop	%a15, .L28
	.loc 1 173 0
	ret
.LFE287:
	.size	IfxQspi_calculatePrescaler, .-IfxQspi_calculatePrescaler
	.global	__muldf3
	.global	__divdf3
	.global	__truncdfsf2
	.global	__fixunsdfsi
.section .text.IfxQspi_calculateTimeQuantumLength,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateTimeQuantumLength
	.type	IfxQspi_calculateTimeQuantumLength, @function
IfxQspi_calculateTimeQuantumLength:
.LFB288:
	.loc 1 177 0
.LVL48:
	.loc 1 177 0
	mov	%d10, %d4
	.loc 1 183 0
	call	IfxScuCcu_getMaxFrequency
.LVL49:
	.loc 1 190 0
	mov	%d4, %d2
	.loc 1 183 0
	mov	%d11, %d2
.LVL50:
	.loc 1 190 0
	call	__extendsfdf2
.LVL51:
	mov	%d4, %d10
	mov	%e8, %d3, %d2
	call	__extendsfdf2
.LVL52:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16400
	call	__muldf3
.LVL53:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	.loc 1 191 0
	mov	%d14, 1
	.loc 1 190 0
	call	__divdf3
.LVL54:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL55:
	.loc 1 191 0
	ftoiz	%d15, %d2
	itof	%d3, %d15
	sub.f	%d2, %d2, %d3
.LVL56:
	movh	%d3, 16128
	cmp.f	%d2, %d2, %d3
	extr.u	%d2, %d2, 2, 1
	cadd	%d15, %d2, %d15, 1
.LVL57:
#APP
	# 133 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d14, %d15, %d14
	# 0 "" 2
.LVL58:
	.loc 1 192 0
#NO_APP
	utof	%d9, %d14
	mov	%d12, 0
	div.f	%d9, %d11, %d9
	.loc 1 177 0
	mov	%d8, 4
	.loc 1 194 0
	mov	%d13, 505
	.loc 1 192 0
	sub.f	%d9, %d10, %d9
	cmp.f	%d15, %d9, %d12
.LVL59:
	extr.u	%d15, %d15, 0, 1
	addih	%d2, %d9, 0x8000
	cmov	%d9, %d15, %d2
.LVL60:
.L41:
	.loc 1 196 0
	itof	%d4, %d8
	mul.f	%d4, %d4, %d10
	.loc 1 197 0
	div.f	%d4, %d11, %d4
.LVL61:
	call	__extendsfdf2
.LVL62:
	imask	%e6, 0, 21, 9
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL63:
	mov	%e4, %d3, %d2
	call	__fixunsdfsi
.LVL64:
	.loc 1 198 0
	mul	%d15, %d2, %d8
	utof	%d15, %d15
	div.f	%d15, %d11, %d15
.LVL65:
	.loc 1 199 0
	sub.f	%d15, %d10, %d15
.LVL66:
	cmp.f	%d3, %d15, %d12
	extr.u	%d3, %d3, 0, 1
	addih	%d4, %d15, 0x8000
	sel	%d15, %d3, %d4, %d15
.LVL67:
	.loc 1 201 0
	cmp.f	%d3, %d15, %d9
	jnz.t	%d3, 2, .L38
	.loc 1 201 0 is_stmt 0 discriminator 1
	jnz	%d2, .L49
.LVL68:
.L39:
	.loc 1 213 0 is_stmt 1
	add	%d14, -1
.LVL69:
	.loc 1 214 0
	mov	%d2, 0
.LVL70:
#APP
	# 133 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d2, %d14, %d2
	# 0 "" 2
#NO_APP
	ret
.LVL71:
.L49:
	.loc 1 203 0
	mov	%d9, %d15
.LVL72:
	mov	%d14, %d2
.L38:
.LVL73:
	.loc 1 207 0
	cmp.f	%d15, %d9, %d12
.LVL74:
	extr.u	%d15, %d15, 1, 1
	or.eq	%d15, %d2, 0
	jnz.t	%d15, 0, .L39
	.loc 1 194 0 discriminator 2
	add	%d8, 1
.LVL75:
	jne	%d8, %d13, .L41
.LVL76:
	.loc 1 213 0
	add	%d14, -1
.LVL77:
	.loc 1 214 0
	mov	%d2, 0
.LVL78:
#APP
	# 133 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d2, %d14, %d2
	# 0 "" 2
#NO_APP
	ret
.LFE288:
	.size	IfxQspi_calculateTimeQuantumLength, .-IfxQspi_calculateTimeQuantumLength
.section .text.IfxQspi_getAddress,"ax",@progbits
	.align 1
	.global	IfxQspi_getAddress
	.type	IfxQspi_getAddress, @function
IfxQspi_getAddress:
.LFB289:
	.loc 1 218 0
.LVL79:
	.loc 1 227 0
	mov.a	%a2, 0
	.loc 1 221 0
	jge	%d4, 4, .L51
	.loc 1 223 0
	movh.a	%a15, hi:IfxQspi_cfg_indexMap
	lea	%a15, [%a15] lo:IfxQspi_cfg_indexMap
	addsc.a	%a15, %a15, %d4, 3
	ld.a	%a2, [%a15]0
.LVL80:
.L51:
	.loc 1 231 0
	ret
.LFE289:
	.size	IfxQspi_getAddress, .-IfxQspi_getAddress
.section .text.IfxQspi_getIndex,"ax",@progbits
	.align 1
	.global	IfxQspi_getIndex
	.type	IfxQspi_getIndex, @function
IfxQspi_getIndex:
.LFB290:
	.loc 1 235 0
.LVL81:
	movh.a	%a3, hi:IfxQspi_cfg_indexMap
	.loc 1 241 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IfxQspi_cfg_indexMap
	mov.a	%a15, 3
.LVL82:
.L56:
	.loc 1 243 0
	addsc.a	%a2, %a3, %d15, 3
	ld.a	%a5, [%a2]0
	jeq.a	%a5, %a4, .L58
	.loc 1 241 0 discriminator 2
	add	%d15, 1
.LVL83:
	loop	%a15, .L56
	.loc 1 239 0
	mov	%d2, -1
.LVL84:
	.loc 1 251 0
	ret
.LVL85:
.L58:
	.loc 1 245 0
	ld.b	%d2, [%a2] 4
.LVL86:
	.loc 1 246 0
	ret
.LFE290:
	.size	IfxQspi_getIndex, .-IfxQspi_getIndex
.section .text.IfxQspi_read16,"ax",@progbits
	.align 1
	.global	IfxQspi_read16
	.type	IfxQspi_read16, @function
IfxQspi_read16:
.LFB291:
	.loc 1 255 0
.LVL87:
	.loc 1 258 0
	jlez	%d4, .L59
	add	%d4, -1
.LVL88:
	extr.u	%d15, %d4, 0, 16
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L66
.LVL89:
.L63:
	.loc 1 260 0
	ld.w	%d15, [%a4] 144
	st.h	[%a5]0, %d15
	add.a	%a5, 2
.LVL90:
	.loc 1 258 0
	loop	%a15, .L63
.L59:
	ret
.LVL91:
.L66:
	mov.a	%a15, 0
	j	.L63
.LFE291:
	.size	IfxQspi_read16, .-IfxQspi_read16
.section .text.IfxQspi_read32,"ax",@progbits
	.align 1
	.global	IfxQspi_read32
	.type	IfxQspi_read32, @function
IfxQspi_read32:
.LFB292:
	.loc 1 267 0
.LVL92:
	.loc 1 270 0
	jlez	%d4, .L67
	add	%d4, -1
.LVL93:
	extr.u	%d15, %d4, 0, 16
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L74
.LVL94:
.L71:
	.loc 1 272 0
	ld.w	%d15, [%a4] 144
	st.w	[%a5]0, %d15
	add.a	%a5, 4
.LVL95:
	.loc 1 270 0
	loop	%a15, .L71
.L67:
	ret
.LVL96:
.L74:
	mov.a	%a15, 0
	j	.L71
.LFE292:
	.size	IfxQspi_read32, .-IfxQspi_read32
.section .text.IfxQspi_read8,"ax",@progbits
	.align 1
	.global	IfxQspi_read8
	.type	IfxQspi_read8, @function
IfxQspi_read8:
.LFB293:
	.loc 1 279 0
.LVL97:
	addsc.a	%a15, %a5, %d4, 0
	.loc 1 282 0
	jlez	%d4, .L75
	mov.d	%d15, %a5
	mov.d	%d2, %a15
	not	%d15
	add	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	mov.a	%a15, %d2
	mov.d	%d2, %a5
	add	%d15, %d2
	add	%d4, %d15
.LVL98:
	jnz.t	%d4, 15, .L82
.LVL99:
.L79:
	.loc 1 284 0
	ld.w	%d15, [%a4] 144
	st.b	[%a5]0, %d15
	add.a	%a5, 1
.LVL100:
	.loc 1 282 0
	loop	%a15, .L79
.LVL101:
.L75:
	ret
.LVL102:
.L82:
	mov.a	%a15, 0
	j	.L79
.LFE293:
	.size	IfxQspi_read8, .-IfxQspi_read8
.section .text.IfxQspi_recalcBasicConfiguration,"ax",@progbits
	.align 1
	.global	IfxQspi_recalcBasicConfiguration
	.type	IfxQspi_recalcBasicConfiguration, @function
IfxQspi_recalcBasicConfiguration:
.LFB294:
	.loc 1 291 0
.LVL103:
	.loc 1 295 0
	jnz	%d6, .L84
	.loc 1 297 0
	insert	%d4, %d4, %d5, 23, 5
.LVL104:
	.loc 1 298 0
	insert	%d4, %d4, 1, 22, 1
.L84:
	.loc 1 303 0
	insert	%d2, %d4, %d7, 0, 1
	ret
.LFE294:
	.size	IfxQspi_recalcBasicConfiguration, .-IfxQspi_recalcBasicConfiguration
.section .text.IfxQspi_resetModule,"ax",@progbits
	.align 1
	.global	IfxQspi_resetModule
	.type	IfxQspi_resetModule, @function
IfxQspi_resetModule:
.LFB295:
	.loc 1 307 0
.LVL105:
	.loc 1 307 0
	mov.aa	%a15, %a4
	.loc 1 308 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL106:
	.loc 1 309 0
	mov	%d4, %d2
	.loc 1 308 0
	mov	%d8, %d2
.LVL107:
	.loc 1 309 0
	call	IfxScuWdt_clearCpuEndinit
.LVL108:
	.loc 1 310 0
	ld.w	%d15, [%a15] 244
	.loc 1 312 0
	mov	%d4, %d8
	.loc 1 310 0
	or	%d15, %d15, 1
	st.w	[%a15] 244, %d15
	.loc 1 311 0
	ld.w	%d15, [%a15] 240
	or	%d15, %d15, 1
	st.w	[%a15] 240, %d15
	.loc 1 312 0
	call	IfxScuWdt_setCpuEndinit
.LVL109:
.L86:
	.loc 1 314 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L86
	.loc 1 318 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL110:
	.loc 1 319 0
	ld.w	%d15, [%a15] 236
	.loc 1 320 0
	mov	%d4, %d8
	.loc 1 319 0
	or	%d15, %d15, 1
	st.w	[%a15] 236, %d15
	.loc 1 320 0
	j	IfxScuWdt_setCpuEndinit
.LVL111:
.LFE295:
	.size	IfxQspi_resetModule, .-IfxQspi_resetModule
.section .text.IfxQspi_setSlaveSelectOutputControl,"ax",@progbits
	.align 1
	.global	IfxQspi_setSlaveSelectOutputControl
	.type	IfxQspi_setSlaveSelectOutputControl, @function
IfxQspi_setSlaveSelectOutputControl:
.LFB296:
	.loc 1 325 0
.LVL112:
	.loc 1 326 0
	mov	%d15, 1
	sh	%d4, %d15, %d4
.LVL113:
	.loc 1 329 0
	ld.w	%d15, [%a4] 72
.LVL114:
	.loc 1 326 0
	extr.u	%d2, %d4, 0, 16
.LVL115:
	.loc 1 333 0
	extr.u	%d3, %d15, 16, 16
	.loc 1 331 0
	jz	%d5, .L90
	.loc 1 333 0
	or	%d3, %d2
	insert	%d15, %d15, %d3, 16, 32-16
.LVL116:
	.loc 1 340 0
	jnz	%d6, .L94
.L92:
.LVL117:
	.loc 1 346 0
	andn	%d4, %d15, %d4
.LVL118:
	insert	%d15, %d15, %d4, 0, 16
.LVL119:
	.loc 1 349 0
	st.w	[%a4] 72, %d15
	ret
.LVL120:
.L90:
	.loc 1 337 0
	andn	%d3, %d3, %d4
	insert	%d15, %d15, %d3, 16, 32-16
.LVL121:
	.loc 1 340 0
	jz	%d6, .L92
.L94:
.LVL122:
	.loc 1 342 0
	or	%d2, %d15
	insert	%d15, %d15, %d2, 0, 16
.LVL123:
	.loc 1 349 0
	st.w	[%a4] 72, %d15
	ret
.LFE296:
	.size	IfxQspi_setSlaveSelectOutputControl, .-IfxQspi_setSlaveSelectOutputControl
.section .text.IfxQspi_write16,"ax",@progbits
	.align 1
	.global	IfxQspi_write16
	.type	IfxQspi_write16, @function
IfxQspi_write16:
.LFB297:
	.loc 1 354 0
.LVL124:
	.loc 1 355 0
	and	%d4, %d4, 7
.LVL125:
	addi	%d4, %d4, 25
.LVL126:
	.loc 1 358 0
	jlez	%d5, .L95
	.loc 1 360 0
	add	%d5, -1
.LVL127:
	extr.u	%d15, %d5, 0, 16
	addsc.a	%a4, %a4, %d4, 2
.LVL128:
	mov.a	%a15, %d15
	jnz.t	%d5, 15, .L102
.LVL129:
.L99:
	ld.hu	%d15, [%a5]0
	add.a	%a5, 2
.LVL130:
	st.w	[%a4]0, %d15
.LVL131:
	.loc 1 358 0
	loop	%a15, .L99
.L95:
	ret
.LVL132:
.L102:
	mov.a	%a15, 0
	j	.L99
.LFE297:
	.size	IfxQspi_write16, .-IfxQspi_write16
.section .text.IfxQspi_write32,"ax",@progbits
	.align 1
	.global	IfxQspi_write32
	.type	IfxQspi_write32, @function
IfxQspi_write32:
.LFB298:
	.loc 1 367 0
.LVL133:
	.loc 1 368 0
	and	%d4, %d4, 7
.LVL134:
	addi	%d4, %d4, 25
.LVL135:
	.loc 1 371 0
	jlez	%d5, .L103
	.loc 1 373 0
	add	%d5, -1
.LVL136:
	extr.u	%d15, %d5, 0, 16
	addsc.a	%a4, %a4, %d4, 2
.LVL137:
	mov.a	%a15, %d15
	jnz.t	%d5, 15, .L110
.LVL138:
.L107:
	ld.w	%d15, [%a5]0
	add.a	%a5, 4
.LVL139:
	st.w	[%a4]0, %d15
.LVL140:
	.loc 1 371 0
	loop	%a15, .L107
.L103:
	ret
.LVL141:
.L110:
	mov.a	%a15, 0
	j	.L107
.LFE298:
	.size	IfxQspi_write32, .-IfxQspi_write32
.section .text.IfxQspi_write8,"ax",@progbits
	.align 1
	.global	IfxQspi_write8
	.type	IfxQspi_write8, @function
IfxQspi_write8:
.LFB299:
	.loc 1 380 0
.LVL142:
	.loc 1 381 0
	and	%d4, %d4, 7
.LVL143:
	addi	%d4, %d4, 25
.LVL144:
	addsc.a	%a15, %a5, %d5, 0
	.loc 1 384 0
	jlez	%d5, .L111
	.loc 1 386 0
	mov.d	%d15, %a5
	mov.d	%d2, %a15
	not	%d15
	add	%d2, %d15
	extr.u	%d2, %d2, 0, 16
	addsc.a	%a4, %a4, %d4, 2
.LVL145:
	mov.a	%a15, %d2
	mov.d	%d2, %a5
	add	%d15, %d2
	add	%d5, %d15
.LVL146:
	jnz.t	%d5, 15, .L118
.LVL147:
.L115:
	ld.bu	%d15, [%a5]0
	add.a	%a5, 1
.LVL148:
	st.w	[%a4]0, %d15
.LVL149:
	.loc 1 384 0
	loop	%a15, .L115
.L111:
	ret
.LVL150:
.L118:
	mov.a	%a15, 0
	j	.L115
.LFE299:
	.size	IfxQspi_write8, .-IfxQspi_write8
.section .text.IfxQspi_calculateDelayConstants,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateDelayConstants
	.type	IfxQspi_calculateDelayConstants, @function
IfxQspi_calculateDelayConstants:
.LFB300:
	.loc 1 393 0
.LVL151:
	.loc 1 406 0
	and	%d4, %d4, 7
.LVL152:
	addi	%d4, %d4, 8
	ld.w	%d15, [%a4] 16
	addsc.a	%a4, %a4, %d4, 2
.LVL153:
	and	%d5, %d15, 255
	ld.w	%d15, [%a4]0
	ld.w	%d4, [%a4]0
	ld.w	%d3, [%a4]0
	extr.u	%d4, %d4, 6, 2
	ld.w	%d12, [%a4]0
	extr.u	%d3, %d3, 8, 2
	extr.u	%d2, %d12, 10, 2
	and	%d15, %d15, 63
	addi	%d12, %d4, 1
	add	%d15, 1
	add	%d12, %d3
	madd	%d15, %d15, %d5, %d15
	add	%d12, %d2
	mul	%d12, %d15
.LVL154:
	.loc 1 409 0
	lea	%a15, [%a5] 4
.LVL155:
	mov.aa	%a12, %a6
	lea	%a13, [%a5] 16
	.loc 1 414 0
	movh	%d11, 16128
	mov	%d13, 0
.LVL156:
.L125:
	ld.w	%d9, [%a15]0
	mov	%d15, 0
	mul	%d9, %d12
	utof	%d9, %d9
	mul.f	%d9, %d9, %d11
.LVL157:
.L124:
	sh	%d8, %d15, 1
	.loc 1 421 0
	mov	%d4, 1
	sh	%d4, %d4, %d8
	itof	%d4, %d4
	and	%d10, %d15, 255
.LVL158:
	div.f	%d4, %d9, %d4
	call	__extendsfdf2
.LVL159:
	imask	%e6, 0, 21, 9
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL160:
	mov	%e4, %d3, %d2
	call	__fixunsdfsi
.LVL161:
	and	%d2, %d2, 255
.LVL162:
	.loc 1 423 0
	jge.u	%d2, 9, .L120
	.loc 1 425 0
	sh	%d3, %d2, %d8
	itof	%d3, %d3
	cmp.f	%d3, %d9, %d3
	or.t	%d3, %d3,0, %d3,1
	jnz	%d3, .L134
	.loc 1 432 0
	eq	%d4, %d2, 8
	jz	%d4, .L135
.L120:
.LVL163:
	add	%d15, 1
.LVL164:
	.loc 1 419 0 discriminator 2
	ne	%d2, %d15, 8
.LVL165:
	jnz	%d2, .L124
	.loc 1 450 0
	mov	%d3, 7
	.loc 1 451 0
	mov	%d10, 7
.LVL166:
.L126:
	.loc 1 455 0 discriminator 2
	st.b	[%a12] 1, %d3
	.loc 1 456 0 discriminator 2
	st.b	[%a12+]2, %d10
	add.a	%a15, 4
	.loc 1 411 0 discriminator 2
	jne.a	%a15, %a13, .L125
	.loc 1 458 0
	ret
.LVL167:
.L134:
	.loc 1 427 0
	addi	%d3, %d2, -1
.LVL168:
.LBB37:
.LBB38:
	.loc 3 133 0
#APP
	# 133 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d3, %d3, %d13
	# 0 "" 2
.LVL169:
#NO_APP
.LBE38:
.LBE37:
	.loc 1 427 0
	and	%d3, %d3, 255
.LVL170:
	.loc 1 430 0
	j	.L126
.LVL171:
.L135:
	.loc 1 434 0
	add	%d15, %d2, 1
.LVL172:
	.loc 1 435 0
	and	%d15, 255
	add	%d15, -1
.LBB39:
.LBB40:
	.loc 3 133 0
#APP
	# 133 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d3, %d15, %d3
	# 0 "" 2
.LVL173:
#NO_APP
.LBE40:
.LBE39:
	.loc 1 435 0
	and	%d3, %d3, 255
.LVL174:
	.loc 1 438 0
	j	.L126
.LFE300:
	.size	IfxQspi_calculateDelayConstants, .-IfxQspi_calculateDelayConstants
.section .text.IfxQspi_calculateBasicConfigurationValue,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateBasicConfigurationValue
	.type	IfxQspi_calculateBasicConfigurationValue, @function
IfxQspi_calculateBasicConfigurationValue:
.LFB285:
	.loc 1 49 0
.LVL175:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 54 0
	lea	%a6, [%SP] 2
	.loc 1 49 0
	mov	%d8, %d4
	mov.aa	%a15, %a5
	.loc 1 54 0
	call	IfxQspi_calculateDelayConstants
.LVL176:
	.loc 1 58 0
	ld.bu	%d2, [%SP] 2
	.loc 1 56 0
	mov	%d15, 0
.LVL177:
	.loc 1 58 0
	insert	%d15, %d15, %d2, 1, 3
.LVL178:
	.loc 1 59 0
	ld.bu	%d2, [%SP] 3
	.loc 1 64 0
	ld.w	%d3, [%a15]0
	.loc 1 59 0
	insert	%d15, %d15, %d2, 4, 3
	.loc 1 60 0
	ld.bu	%d2, [%SP] 4
	insert	%d15, %d15, %d2, 7, 3
	.loc 1 61 0
	ld.bu	%d2, [%SP] 5
	insert	%d15, %d15, %d2, 10, 3
	.loc 1 62 0
	ld.bu	%d2, [%SP] 6
	insert	%d15, %d15, %d2, 13, 3
	.loc 1 63 0
	ld.bu	%d2, [%SP] 7
	insert	%d15, %d15, %d2, 16, 3
	.loc 1 64 0
	ins.t	%d15, %d15,19, %d3,14
	.loc 1 65 0
	insert	%d15, %d15, 0, 20, 1
.LVL179:
	.loc 1 66 0
	ins.t	%d15, %d15,21, %d3,5
.LVL180:
	.loc 1 68 0
	extr.u	%d3, %d3, 6, 6
	.loc 1 67 0
	insert	%d15, %d15, 0, 22, 1
.LVL181:
	.loc 1 68 0
	add	%d3, -1
	insert	%d15, %d15, %d3, 23, 5
.LVL182:
	.loc 1 72 0
	insert	%d2, %d15, %d8, 28, 32-28
	ret
.LFE285:
	.size	IfxQspi_calculateBasicConfigurationValue, .-IfxQspi_calculateBasicConfigurationValue
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
	.uaword	.LFB284
	.uaword	.LFE284-.LFB284
	.byte	0x4
	.uaword	.LCFI0-.LFB284
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB291
	.uaword	.LFE291-.LFB291
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB298
	.uaword	.LFE298-.LFB298
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.byte	0x4
	.uaword	.LCFI1-.LFB285
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE32:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxQspi_regdef.h"
	.file 7 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxQspi_cfg.h"
	.file 8 "0_Src/BaseSw/Service/CpuGeneric/If/SpiIf.h"
	.file 9 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 10 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
	.file 11 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x318f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Qspi/Std/IfxQspi.c"
	.string	"C:\\\\Users\\\\user\\\\Desktop\\\\programming_PROJECTS\\\\\307\321\276\347\264\353_\300\323\272\243\265\360\265\345\275\303\275\272\305\333\\\\DevBaseEnv_vscode_TC27D"
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x204
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x4
	.byte	0x5a
	.uaword	0x223
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x23e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x1c7
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1d3
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x1a7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x68
	.uaword	0x204
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
	.uleb128 0x3
	.string	"pvoid"
	.byte	0x5
	.byte	0x28
	.uaword	0x2d8
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e0
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x5
	.byte	0x4a
	.uaword	0x215
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x69
	.uaword	0x326
	.uleb128 0x8
	.string	"Ifx_ParityMode_even"
	.sleb128 0
	.uleb128 0x8
	.string	"Ifx_ParityMode_odd"
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0x7d
	.uaword	0x34c
	.uleb128 0xa
	.string	"module"
	.byte	0x5
	.byte	0x7f
	.uaword	0x2da
	.byte	0
	.uleb128 0xa
	.string	"index"
	.byte	0x5
	.byte	0x80
	.uaword	0x254
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x81
	.uaword	0x326
	.uleb128 0xb
	.string	"_Ifx_QSPI_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x57b
	.uleb128 0xc
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x366
	.uleb128 0xb
	.string	"_Ifx_QSPI_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x5c5
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.byte	0x54
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x597
	.uleb128 0xb
	.string	"_Ifx_QSPI_BACON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x6cd
	.uleb128 0xc
	.string	"LAST"
	.byte	0x6
	.byte	0x5a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"IPRE"
	.byte	0x6
	.byte	0x5b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"IDLE"
	.byte	0x6
	.byte	0x5c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"LPRE"
	.byte	0x6
	.byte	0x5d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"LEAD"
	.byte	0x6
	.byte	0x5e
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"TPRE"
	.byte	0x6
	.byte	0x5f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"TRAIL"
	.byte	0x6
	.byte	0x60
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.string	"PARTYP"
	.byte	0x6
	.byte	0x61
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"UINT"
	.byte	0x6
	.byte	0x62
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"MSB"
	.byte	0x6
	.byte	0x63
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"BYTE"
	.byte	0x6
	.byte	0x64
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"DL"
	.byte	0x6
	.byte	0x65
	.uaword	0x1b7
	.byte	0x4
	.byte	0x5
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"CS"
	.byte	0x6
	.byte	0x66
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACON_Bits"
	.byte	0x6
	.byte	0x67
	.uaword	0x5e1
	.uleb128 0xb
	.string	"_Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6a
	.uaword	0x718
	.uleb128 0xc
	.string	"E"
	.byte	0x6
	.byte	0x6c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x6
	.byte	0x6d
	.uaword	0x6e8
	.uleb128 0xb
	.string	"_Ifx_QSPI_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x70
	.uaword	0x7a9
	.uleb128 0xc
	.string	"DISR"
	.byte	0x6
	.byte	0x72
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"DISS"
	.byte	0x6
	.byte	0x73
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.byte	0x74
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"EDIS"
	.byte	0x6
	.byte	0x75
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"reserved_4"
	.byte	0x6
	.byte	0x76
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_CLC_Bits"
	.byte	0x6
	.byte	0x77
	.uaword	0x738
	.uleb128 0xb
	.string	"_Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x7a
	.uaword	0x7f1
	.uleb128 0xc
	.string	"E"
	.byte	0x6
	.byte	0x7c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x6
	.byte	0x7d
	.uaword	0x7c2
	.uleb128 0xb
	.string	"_Ifx_QSPI_ECON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x80
	.uaword	0x8ae
	.uleb128 0xc
	.string	"Q"
	.byte	0x6
	.byte	0x82
	.uaword	0x1b7
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"A"
	.byte	0x6
	.byte	0x83
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"B"
	.byte	0x6
	.byte	0x84
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"C"
	.byte	0x6
	.byte	0x85
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"CPH"
	.byte	0x6
	.byte	0x86
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"CPOL"
	.byte	0x6
	.byte	0x87
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"PAREN"
	.byte	0x6
	.byte	0x88
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.byte	0x89
	.uaword	0x1b7
	.byte	0x4
	.byte	0xf
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.string	"BE"
	.byte	0x6
	.byte	0x8a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ECON_Bits"
	.byte	0x6
	.byte	0x8b
	.uaword	0x810
	.uleb128 0xb
	.string	"_Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x8e
	.uaword	0x976
	.uleb128 0xc
	.string	"ERRORCLEARS"
	.byte	0x6
	.byte	0x90
	.uaword	0x1b7
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"TXC"
	.byte	0x6
	.byte	0x91
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"RXC"
	.byte	0x6
	.byte	0x92
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PT1C"
	.byte	0x6
	.byte	0x93
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"PT2C"
	.byte	0x6
	.byte	0x94
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.byte	0x95
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"USRC"
	.byte	0x6
	.byte	0x96
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"reserved_16"
	.byte	0x6
	.byte	0x97
	.uaword	0x1b7
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x6
	.byte	0x98
	.uaword	0x8c8
	.uleb128 0xb
	.string	"_Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x9b
	.uaword	0xaa6
	.uleb128 0xc
	.string	"ERRORENS"
	.byte	0x6
	.byte	0x9d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"TXEN"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"RXEN"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"PT1EN"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"PT2EN"
	.byte	0x6
	.byte	0xa1
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x6
	.byte	0xa2
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"USREN"
	.byte	0x6
	.byte	0xa3
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"TXFIFOINT"
	.byte	0x6
	.byte	0xa4
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.string	"RXFIFOINT"
	.byte	0x6
	.byte	0xa5
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"PT1"
	.byte	0x6
	.byte	0xa6
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"PT2"
	.byte	0x6
	.byte	0xa7
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.string	"TXFM"
	.byte	0x6
	.byte	0xa8
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"RXFM"
	.byte	0x6
	.byte	0xa9
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x6
	.byte	0xaa
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x6
	.byte	0xab
	.uaword	0x996
	.uleb128 0xb
	.string	"_Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xae
	.uaword	0xbc9
	.uleb128 0xc
	.string	"TQ"
	.byte	0x6
	.byte	0xb0
	.uaword	0x1b7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x6
	.byte	0xb1
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.string	"SI"
	.byte	0x6
	.byte	0xb2
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.string	"EXPECT"
	.byte	0x6
	.byte	0xb3
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"LB"
	.byte	0x6
	.byte	0xb4
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.string	"DEL0"
	.byte	0x6
	.byte	0xb5
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"STROBE"
	.byte	0x6
	.byte	0xb6
	.uaword	0x1b7
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.string	"SRF"
	.byte	0x6
	.byte	0xb7
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.string	"STIP"
	.byte	0x6
	.byte	0xb8
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.string	"reserved_23"
	.byte	0x6
	.byte	0xb9
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"EN"
	.byte	0x6
	.byte	0xba
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.string	"MS"
	.byte	0x6
	.byte	0xbb
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.string	"AREN"
	.byte	0x6
	.byte	0xbc
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"RESETS"
	.byte	0x6
	.byte	0xbd
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x6
	.byte	0xbe
	.uaword	0xac6
	.uleb128 0xb
	.string	"_Ifx_QSPI_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xc1
	.uaword	0xc3d
	.uleb128 0xc
	.string	"MODREV"
	.byte	0x6
	.byte	0xc3
	.uaword	0x1b7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"MODTYPE"
	.byte	0x6
	.byte	0xc4
	.uaword	0x1b7
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.string	"MODNUMBER"
	.byte	0x6
	.byte	0xc5
	.uaword	0x1b7
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ID_Bits"
	.byte	0x6
	.byte	0xc6
	.uaword	0xbe8
	.uleb128 0xb
	.string	"_Ifx_QSPI_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xc9
	.uaword	0xca4
	.uleb128 0xc
	.string	"RST"
	.byte	0x6
	.byte	0xcb
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"RSTSTAT"
	.byte	0x6
	.byte	0xcc
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x6
	.byte	0xcd
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRST0_Bits"
	.byte	0x6
	.byte	0xce
	.uaword	0xc55
	.uleb128 0xb
	.string	"_Ifx_QSPI_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd1
	.uaword	0xcfb
	.uleb128 0xc
	.string	"RST"
	.byte	0x6
	.byte	0xd3
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x6
	.byte	0xd4
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRST1_Bits"
	.byte	0x6
	.byte	0xd5
	.uaword	0xcbf
	.uleb128 0xb
	.string	"_Ifx_QSPI_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd8
	.uaword	0xd54
	.uleb128 0xc
	.string	"CLR"
	.byte	0x6
	.byte	0xda
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x6
	.byte	0xdb
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRSTCLR_Bits"
	.byte	0x6
	.byte	0xdc
	.uaword	0xd16
	.uleb128 0xb
	.string	"_Ifx_QSPI_MIXENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xdf
	.uaword	0xd9f
	.uleb128 0xc
	.string	"E"
	.byte	0x6
	.byte	0xe1
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_MIXENTRY_Bits"
	.byte	0x6
	.byte	0xe2
	.uaword	0xd71
	.uleb128 0xb
	.string	"_Ifx_QSPI_OCS_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe5
	.uaword	0xe29
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x6
	.byte	0xe7
	.uaword	0x1b7
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.string	"SUS"
	.byte	0x6
	.byte	0xe8
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.string	"SUS_P"
	.byte	0x6
	.byte	0xe9
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.string	"SUSSTA"
	.byte	0x6
	.byte	0xea
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x6
	.byte	0xeb
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_OCS_Bits"
	.byte	0x6
	.byte	0xec
	.uaword	0xdbd
	.uleb128 0xb
	.string	"_Ifx_QSPI_PISEL_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xef
	.uaword	0xef3
	.uleb128 0xc
	.string	"MRIS"
	.byte	0x6
	.byte	0xf1
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"reserved_3"
	.byte	0x6
	.byte	0xf2
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"SRIS"
	.byte	0x6
	.byte	0xf3
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.string	"reserved_7"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.string	"SCIS"
	.byte	0x6
	.byte	0xf5
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.string	"reserved_11"
	.byte	0x6
	.byte	0xf6
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"SLSIS"
	.byte	0x6
	.byte	0xf7
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x6
	.byte	0xf8
	.uaword	0x1b7
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_PISEL_Bits"
	.byte	0x6
	.byte	0xf9
	.uaword	0xe42
	.uleb128 0xb
	.string	"_Ifx_QSPI_RXEXIT_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xfc
	.uaword	0xf3a
	.uleb128 0xc
	.string	"E"
	.byte	0x6
	.byte	0xfe
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_RXEXIT_Bits"
	.byte	0x6
	.byte	0xff
	.uaword	0xf0e
	.uleb128 0xe
	.string	"_Ifx_QSPI_RXEXITD_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x102
	.uaword	0xf85
	.uleb128 0xf
	.string	"E"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x1b7
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_RXEXITD_Bits"
	.byte	0x6
	.uahalf	0x105
	.uaword	0xf56
	.uleb128 0xe
	.string	"_Ifx_QSPI_SSOC_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x108
	.uaword	0xfe1
	.uleb128 0xf
	.string	"AOL"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x1b7
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"OEN"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x1b7
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_SSOC_Bits"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0xfa3
	.uleb128 0xe
	.string	"_Ifx_QSPI_STATUS1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x10f
	.uaword	0x1086
	.uleb128 0xf
	.string	"BITCOUNT"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x1b7
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1b7
	.byte	0x4
	.byte	0x14
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"BRDEN"
	.byte	0x6
	.uahalf	0x113
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"BRD"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"SPDEN"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"SPD"
	.byte	0x6
	.uahalf	0x116
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_STATUS1_Bits"
	.byte	0x6
	.uahalf	0x117
	.uaword	0xffc
	.uleb128 0xe
	.string	"_Ifx_QSPI_STATUS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x11b5
	.uleb128 0xf
	.string	"ERRORFLAGS"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1b7
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"TXF"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"RXF"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PT1F"
	.byte	0x6
	.uahalf	0x11f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"PT2F"
	.byte	0x6
	.uahalf	0x120
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x121
	.uaword	0x1b7
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"USRF"
	.byte	0x6
	.uahalf	0x122
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"TXFIFOLEVEL"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"RXFIFOLEVEL"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x1b7
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"SLAVESEL"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"RPV"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"TPV"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x1b7
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PHASE"
	.byte	0x6
	.uahalf	0x128
	.uaword	0x1b7
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_STATUS_Bits"
	.byte	0x6
	.uahalf	0x129
	.uaword	0x10a4
	.uleb128 0xe
	.string	"_Ifx_QSPI_XXLCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x1218
	.uleb128 0xf
	.string	"XDL"
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x1b7
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"BYTECOUNT"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x1b7
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_XXLCON_Bits"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x11d2
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x138
	.uaword	0x125d
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x57b
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_ACCEN0"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x1235
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x140
	.uaword	0x129d
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x142
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x5c5
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_ACCEN1"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x1275
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x148
	.uaword	0x12dd
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x14b
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x6cd
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_BACON"
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x12b5
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x150
	.uaword	0x131c
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x154
	.uaword	0x718
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_BACONENTRY"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x12f4
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1360
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x7a9
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_CLC"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x1338
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x160
	.uaword	0x139d
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x163
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x164
	.uaword	0x7f1
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_DATAENTRY"
	.byte	0x6
	.uahalf	0x165
	.uaword	0x1375
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x168
	.uaword	0x13e0
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x8ae
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_ECON"
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x13b8
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x170
	.uaword	0x141e
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x173
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x174
	.uaword	0x976
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x175
	.uaword	0x13f6
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x178
	.uaword	0x1462
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x17a
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x17c
	.uaword	0xbc9
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_GLOBALCON"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x143a
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x180
	.uaword	0x14a5
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x184
	.uaword	0xaa6
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_GLOBALCON1"
	.byte	0x6
	.uahalf	0x185
	.uaword	0x147d
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x188
	.uaword	0x14e9
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0xc3d
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_ID"
	.byte	0x6
	.uahalf	0x18d
	.uaword	0x14c1
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x190
	.uaword	0x1525
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x193
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x194
	.uaword	0xca4
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_KRST0"
	.byte	0x6
	.uahalf	0x195
	.uaword	0x14fd
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x198
	.uaword	0x1564
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x19b
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x19c
	.uaword	0xcfb
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_KRST1"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x153c
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x15a3
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1a3
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0xd54
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_KRSTCLR"
	.byte	0x6
	.uahalf	0x1a5
	.uaword	0x157b
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a8
	.uaword	0x15e4
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0xd9f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_MIXENTRY"
	.byte	0x6
	.uahalf	0x1ad
	.uaword	0x15bc
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b0
	.uaword	0x1626
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1b3
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0xe29
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_OCS"
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0x15fe
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b8
	.uaword	0x1663
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0xef3
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_PISEL"
	.byte	0x6
	.uahalf	0x1bd
	.uaword	0x163b
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c0
	.uaword	0x16a2
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0xf3a
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_RXEXIT"
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0x167a
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c8
	.uaword	0x16e2
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1cb
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0xf85
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_RXEXITD"
	.byte	0x6
	.uahalf	0x1cd
	.uaword	0x16ba
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d0
	.uaword	0x1723
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0xfe1
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_SSOC"
	.byte	0x6
	.uahalf	0x1d5
	.uaword	0x16fb
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d8
	.uaword	0x1761
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x11b5
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_STATUS"
	.byte	0x6
	.uahalf	0x1dd
	.uaword	0x1739
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e0
	.uaword	0x17a1
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x1086
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_STATUS1"
	.byte	0x6
	.uahalf	0x1e5
	.uaword	0x1779
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e8
	.uaword	0x17e2
	.uleb128 0x13
	.string	"U"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x1b7
	.uleb128 0x13
	.string	"I"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x1b0
	.uleb128 0x13
	.string	"B"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x1218
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI_XXLCON"
	.byte	0x6
	.uahalf	0x1ed
	.uaword	0x17ba
	.uleb128 0x14
	.string	"_Ifx_QSPI"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x1f8
	.uaword	0x19ec
	.uleb128 0x15
	.string	"CLC"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x1360
	.byte	0
	.uleb128 0x15
	.string	"PISEL"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0x1663
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x14e9
	.byte	0x8
	.uleb128 0x15
	.string	"reserved_C"
	.byte	0x6
	.uahalf	0x1fd
	.uaword	0x19ec
	.byte	0xc
	.uleb128 0x15
	.string	"GLOBALCON"
	.byte	0x6
	.uahalf	0x1fe
	.uaword	0x1462
	.byte	0x10
	.uleb128 0x15
	.string	"GLOBALCON1"
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x14a5
	.byte	0x14
	.uleb128 0x15
	.string	"BACON"
	.byte	0x6
	.uahalf	0x200
	.uaword	0x12dd
	.byte	0x18
	.uleb128 0x15
	.string	"reserved_1C"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x19ec
	.byte	0x1c
	.uleb128 0x15
	.string	"ECON"
	.byte	0x6
	.uahalf	0x202
	.uaword	0x1a08
	.byte	0x20
	.uleb128 0x15
	.string	"STATUS"
	.byte	0x6
	.uahalf	0x203
	.uaword	0x1761
	.byte	0x40
	.uleb128 0x15
	.string	"STATUS1"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x17a1
	.byte	0x44
	.uleb128 0x15
	.string	"SSOC"
	.byte	0x6
	.uahalf	0x205
	.uaword	0x1723
	.byte	0x48
	.uleb128 0x15
	.string	"reserved_4C"
	.byte	0x6
	.uahalf	0x206
	.uaword	0x1a18
	.byte	0x4c
	.uleb128 0x15
	.string	"FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x141e
	.byte	0x54
	.uleb128 0x15
	.string	"XXLCON"
	.byte	0x6
	.uahalf	0x208
	.uaword	0x17e2
	.byte	0x58
	.uleb128 0x15
	.string	"MIXENTRY"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x15e4
	.byte	0x5c
	.uleb128 0x15
	.string	"BACONENTRY"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x131c
	.byte	0x60
	.uleb128 0x15
	.string	"DATAENTRY"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x1a28
	.byte	0x64
	.uleb128 0x15
	.string	"reserved_84"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1a38
	.byte	0x84
	.uleb128 0x15
	.string	"RXEXIT"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x16a2
	.byte	0x90
	.uleb128 0x15
	.string	"RXEXITD"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x16e2
	.byte	0x94
	.uleb128 0x15
	.string	"reserved_98"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1a48
	.byte	0x98
	.uleb128 0x15
	.string	"OCS"
	.byte	0x6
	.uahalf	0x210
	.uaword	0x1626
	.byte	0xe8
	.uleb128 0x15
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x15a3
	.byte	0xec
	.uleb128 0x15
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x1564
	.byte	0xf0
	.uleb128 0x15
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x1525
	.byte	0xf4
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x129d
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x215
	.uaword	0x125d
	.byte	0xfc
	.byte	0
	.uleb128 0x16
	.uaword	0x204
	.uaword	0x19fc
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x16
	.uaword	0x13e0
	.uaword	0x1a18
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x204
	.uaword	0x1a28
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x139d
	.uaword	0x1a38
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.uaword	0x204
	.uaword	0x1a48
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0xb
	.byte	0
	.uleb128 0x16
	.uaword	0x204
	.uaword	0x1a58
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0x4f
	.byte	0
	.uleb128 0x10
	.string	"Ifx_QSPI"
	.byte	0x6
	.uahalf	0x216
	.uaword	0x1a69
	.uleb128 0x18
	.uaword	0x17fa
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x3d
	.uaword	0x1ad4
	.uleb128 0x8
	.string	"IfxQspi_Index_none"
	.sleb128 -1
	.uleb128 0x8
	.string	"IfxQspi_Index_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxQspi_Index_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxQspi_Index_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxQspi_Index_3"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxQspi_Index"
	.byte	0x7
	.byte	0x43
	.uaword	0x1a6e
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x32
	.uaword	0x1b2f
	.uleb128 0x8
	.string	"SpiIf_Status_ok"
	.sleb128 0
	.uleb128 0x8
	.string	"SpiIf_Status_busy"
	.sleb128 1
	.uleb128 0x8
	.string	"SpiIf_Status_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Status"
	.byte	0x8
	.byte	0x36
	.uaword	0x1ae9
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x47
	.uaword	0x1b86
	.uleb128 0x8
	.string	"SpiIf_DataHeading_lsbFirst"
	.sleb128 0
	.uleb128 0x8
	.string	"SpiIf_DataHeading_msbFirst"
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x4e
	.uaword	0x1bf4
	.uleb128 0x8
	.string	"SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge"
	.sleb128 0
	.uleb128 0x8
	.string	"SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge"
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x55
	.uaword	0x1c3a
	.uleb128 0x8
	.string	"SpiIf_ClockPolarity_idleLow"
	.sleb128 0
	.uleb128 0x8
	.string	"SpiIf_ClockPolarity_idleHigh"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Ch"
	.byte	0x8
	.byte	0x5e
	.uaword	0x1c4a
	.uleb128 0xb
	.string	"SpiIf_Ch_"
	.byte	0x30
	.byte	0x8
	.byte	0xc2
	.uaword	0x1cf4
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x8
	.byte	0xc4
	.uaword	0x1ef6
	.byte	0
	.uleb128 0xa
	.string	"flags"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1e0a
	.byte	0x4
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x8
	.byte	0xc6
	.uaword	0x1feb
	.byte	0x8
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x8
	.byte	0xc7
	.uaword	0x254
	.byte	0xc
	.uleb128 0xa
	.string	"tx"
	.byte	0x8
	.byte	0xc8
	.uaword	0x1e49
	.byte	0x10
	.uleb128 0xa
	.string	"rx"
	.byte	0x8
	.byte	0xc9
	.uaword	0x1e49
	.byte	0x18
	.uleb128 0xa
	.string	"onExchangeEnd"
	.byte	0x8
	.byte	0xca
	.uaword	0x213a
	.byte	0x20
	.uleb128 0xa
	.string	"callbackData"
	.byte	0x8
	.byte	0xcb
	.uaword	0x2d8
	.byte	0x24
	.uleb128 0xa
	.string	"txHandler"
	.byte	0x8
	.byte	0xcc
	.uaword	0x215d
	.byte	0x28
	.uleb128 0xa
	.string	"rxHandler"
	.byte	0x8
	.byte	0xcd
	.uaword	0x215d
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_ChConfig"
	.byte	0x8
	.byte	0x5f
	.uaword	0x1d0a
	.uleb128 0xb
	.string	"SpiIf_ChConfig_"
	.byte	0x1c
	.byte	0x8
	.byte	0xd0
	.uaword	0x1d54
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x8
	.byte	0xd2
	.uaword	0x1ef6
	.byte	0
	.uleb128 0x19
	.uaword	.LASF9
	.byte	0x8
	.byte	0xd3
	.uaword	0x270
	.byte	0x4
	.uleb128 0xa
	.string	"mode"
	.byte	0x8
	.byte	0xd4
	.uaword	0x2126
	.byte	0x8
	.uleb128 0x19
	.uaword	.LASF8
	.byte	0x8
	.byte	0xd5
	.uaword	0x1feb
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"SpiIf"
	.byte	0x8
	.byte	0x60
	.uaword	0x1d61
	.uleb128 0xb
	.string	"SpiIf_"
	.byte	0x28
	.byte	0x8
	.byte	0x85
	.uaword	0x1dd5
	.uleb128 0x19
	.uaword	.LASF7
	.byte	0x8
	.byte	0x87
	.uaword	0x2cb
	.byte	0
	.uleb128 0xa
	.string	"sending"
	.byte	0x8
	.byte	0x88
	.uaword	0x262
	.byte	0x4
	.uleb128 0xa
	.string	"activeChannel"
	.byte	0x8
	.byte	0x89
	.uaword	0x1e95
	.byte	0x8
	.uleb128 0xa
	.string	"txCount"
	.byte	0x8
	.byte	0x8a
	.uaword	0x262
	.byte	0xc
	.uleb128 0xa
	.string	"rxCount"
	.byte	0x8
	.byte	0x8b
	.uaword	0x262
	.byte	0x10
	.uleb128 0xa
	.string	"functions"
	.byte	0x8
	.byte	0x8c
	.uaword	0x1f74
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x62
	.uaword	0x1e0a
	.uleb128 0xc
	.string	"onTransfer"
	.byte	0x8
	.byte	0x64
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"byteAccess"
	.byte	0x8
	.byte	0x65
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Flags"
	.byte	0x8
	.byte	0x66
	.uaword	0x1e1d
	.uleb128 0x18
	.uaword	0x1dd5
	.uleb128 0x9
	.byte	0x8
	.byte	0x8
	.byte	0x68
	.uaword	0x1e49
	.uleb128 0x19
	.uaword	.LASF10
	.byte	0x8
	.byte	0x6a
	.uaword	0x2d8
	.byte	0
	.uleb128 0xa
	.string	"remaining"
	.byte	0x8
	.byte	0x6b
	.uaword	0x2e1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Job"
	.byte	0x8
	.byte	0x6c
	.uaword	0x1e22
	.uleb128 0x3
	.string	"SpiIf_Exchange"
	.byte	0x8
	.byte	0x76
	.uaword	0x1e70
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1e76
	.uleb128 0x1a
	.byte	0x1
	.uaword	0x1b2f
	.uaword	0x1e95
	.uleb128 0x1b
	.uaword	0x1e95
	.uleb128 0x1b
	.uaword	0x1e9b
	.uleb128 0x1b
	.uaword	0x2d8
	.uleb128 0x1b
	.uaword	0x2e1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1c3a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1ea1
	.uleb128 0x1c
	.uleb128 0x3
	.string	"SpiIf_GetStatus"
	.byte	0x8
	.byte	0x77
	.uaword	0x1eb9
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1ebf
	.uleb128 0x1a
	.byte	0x1
	.uaword	0x1b2f
	.uaword	0x1ecf
	.uleb128 0x1b
	.uaword	0x1e95
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_OnEvent"
	.byte	0x8
	.byte	0x78
	.uaword	0x1ee4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1eea
	.uleb128 0x1d
	.byte	0x1
	.uaword	0x1ef6
	.uleb128 0x1b
	.uaword	0x1ef6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1d54
	.uleb128 0x3
	.string	"SpiIf_SlsoTiming_HalfTsclk"
	.byte	0x8
	.byte	0x79
	.uaword	0x262
	.uleb128 0x9
	.byte	0x14
	.byte	0x8
	.byte	0x7c
	.uaword	0x1f74
	.uleb128 0xa
	.string	"exchange"
	.byte	0x8
	.byte	0x7e
	.uaword	0x1e5a
	.byte	0
	.uleb128 0xa
	.string	"getStatus"
	.byte	0x8
	.byte	0x7f
	.uaword	0x1ea2
	.byte	0x4
	.uleb128 0xa
	.string	"onTx"
	.byte	0x8
	.byte	0x80
	.uaword	0x1ecf
	.byte	0x8
	.uleb128 0xa
	.string	"onRx"
	.byte	0x8
	.byte	0x81
	.uaword	0x1ecf
	.byte	0xc
	.uleb128 0xa
	.string	"onError"
	.byte	0x8
	.byte	0x82
	.uaword	0x1ecf
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_funcs"
	.byte	0x8
	.byte	0x83
	.uaword	0x1f1e
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0x9f
	.uaword	0x1feb
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x8
	.byte	0xa1
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"phase"
	.byte	0x8
	.byte	0xa2
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"receive"
	.byte	0x8
	.byte	0xa3
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"transmit"
	.byte	0x8
	.byte	0xa4
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"reserved"
	.byte	0x8
	.byte	0xa5
	.uaword	0x262
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Spi_ErrorChecks"
	.byte	0x8
	.byte	0xa6
	.uaword	0x1f87
	.uleb128 0x9
	.byte	0x10
	.byte	0x8
	.byte	0xa9
	.uaword	0x2126
	.uleb128 0xc
	.string	"enabled"
	.byte	0x8
	.byte	0xab
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.string	"autoCS"
	.byte	0x8
	.byte	0xac
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.string	"loopback"
	.byte	0x8
	.byte	0xad
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.string	"clockPolarity"
	.byte	0x8
	.byte	0xae
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.string	"shiftClock"
	.byte	0x8
	.byte	0xaf
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.string	"dataHeading"
	.byte	0x8
	.byte	0xb0
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.string	"dataWidth"
	.byte	0x8
	.byte	0xb1
	.uaword	0x262
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.string	"csActiveLevel"
	.byte	0x8
	.byte	0xb3
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.string	"parityCheck"
	.byte	0x8
	.byte	0xb5
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.string	"parityMode"
	.byte	0x8
	.byte	0xb6
	.uaword	0x262
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.string	"csInactiveDelay"
	.byte	0x8
	.byte	0xb8
	.uaword	0x1efc
	.byte	0x4
	.uleb128 0xa
	.string	"csLeadDelay"
	.byte	0x8
	.byte	0xb9
	.uaword	0x1efc
	.byte	0x8
	.uleb128 0xa
	.string	"csTrailDelay"
	.byte	0x8
	.byte	0xba
	.uaword	0x1efc
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_ChMode"
	.byte	0x8
	.byte	0xbc
	.uaword	0x2002
	.uleb128 0x3
	.string	"SpiIf_Cbk"
	.byte	0x8
	.byte	0xbf
	.uaword	0x214b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2151
	.uleb128 0x1d
	.byte	0x1
	.uaword	0x215d
	.uleb128 0x1b
	.uaword	0x2d8
	.byte	0
	.uleb128 0x3
	.string	"TxRxHandler"
	.byte	0x8
	.byte	0xc0
	.uaword	0x2170
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2176
	.uleb128 0x1d
	.byte	0x1
	.uaword	0x2182
	.uleb128 0x1b
	.uaword	0x1e95
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1a58
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x48
	.uaword	0x22e0
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_1"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_2"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_3"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_4"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_5"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_6"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_7"
	.sleb128 7
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_8"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_9"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_10"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_11"
	.sleb128 11
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_12"
	.sleb128 12
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_13"
	.sleb128 13
	.uleb128 0x8
	.string	"IfxQspi_ChannelId_14"
	.sleb128 14
	.byte	0
	.uleb128 0x3
	.string	"IfxQspi_ChannelId"
	.byte	0x2
	.byte	0x58
	.uaword	0x2188
	.uleb128 0x1e
	.byte	0x2
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x231f
	.uleb128 0x15
	.string	"pre"
	.byte	0x2
	.uahalf	0x11f
	.uaword	0x1f7
	.byte	0
	.uleb128 0x15
	.string	"delay"
	.byte	0x2
	.uahalf	0x120
	.uaword	0x1f7
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"IfxQspi_DelayConst"
	.byte	0x2
	.uahalf	0x121
	.uaword	0x22f9
	.uleb128 0x1f
	.string	"IfxQspi_getModuleFrequency"
	.byte	0x2
	.uahalf	0x3b9
	.byte	0x1
	.uaword	0x1a7
	.byte	0x3
	.uaword	0x2370
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x3b9
	.uaword	0x2182
	.byte	0
	.uleb128 0x1f
	.string	"IfxQspi_getTimeQuantaFrequency"
	.byte	0x2
	.uahalf	0x3d8
	.byte	0x1
	.uaword	0x1a7
	.byte	0x3
	.uaword	0x23aa
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x3d8
	.uaword	0x2182
	.byte	0
	.uleb128 0x21
	.string	"__min"
	.byte	0x3
	.byte	0x9c
	.byte	0x1
	.uaword	0x254
	.byte	0x3
	.uaword	0x23db
	.uleb128 0x22
	.string	"a"
	.byte	0x3
	.byte	0x9c
	.uaword	0x254
	.uleb128 0x22
	.string	"b"
	.byte	0x3
	.byte	0x9c
	.uaword	0x254
	.uleb128 0x23
	.string	"res"
	.byte	0x3
	.byte	0x9e
	.uaword	0x254
	.byte	0
	.uleb128 0x21
	.string	"__max"
	.byte	0x3
	.byte	0x82
	.byte	0x1
	.uaword	0x254
	.byte	0x3
	.uaword	0x240c
	.uleb128 0x22
	.string	"a"
	.byte	0x3
	.byte	0x82
	.uaword	0x254
	.uleb128 0x22
	.string	"b"
	.byte	0x3
	.byte	0x82
	.uaword	0x254
	.uleb128 0x23
	.string	"res"
	.byte	0x3
	.byte	0x84
	.uaword	0x254
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxQspi_calcRealBaudrate"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	0x1a7
	.uaword	.LFB284
	.uaword	.LFE284
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2491
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0x23
	.uaword	0x2182
	.uaword	.LLST0
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.byte	0x23
	.uaword	0x22e0
	.uaword	.LLST1
	.uleb128 0x26
	.string	"cs"
	.byte	0x1
	.byte	0x25
	.uaword	0x1b0
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.string	"fQspi"
	.byte	0x1
	.byte	0x26
	.uaword	0x1a7
	.uaword	.LLST2
	.uleb128 0x26
	.string	"econ"
	.byte	0x1
	.byte	0x27
	.uaword	0x1a08
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.uaword	.LVL2
	.uaword	0x30f3
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxQspi_calculateExtendedConfigurationValue"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	0x262
	.uaword	.LFB286
	.uaword	.LFE286
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2668
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0x4b
	.uaword	0x2182
	.uaword	.LLST3
	.uleb128 0x2a
	.string	"cs"
	.byte	0x1
	.byte	0x4b
	.uaword	0x2668
	.uaword	.LLST4
	.uleb128 0x2a
	.string	"chConfig"
	.byte	0x1
	.byte	0x4b
	.uaword	0x266d
	.uaword	.LLST5
	.uleb128 0x27
	.string	"econ"
	.byte	0x1
	.byte	0x4d
	.uaword	0x13e0
	.uaword	.LLST6
	.uleb128 0x27
	.string	"tQspi"
	.byte	0x1
	.byte	0x50
	.uaword	0x270
	.uaword	.LLST7
	.uleb128 0x27
	.string	"fBaud"
	.byte	0x1
	.byte	0x51
	.uaword	0x270
	.uaword	.LLST8
	.uleb128 0x2b
	.string	"abcMin"
	.byte	0x1
	.byte	0x52
	.uaword	0x1b0
	.byte	0x2
	.uleb128 0x2b
	.string	"abcMax"
	.byte	0x1
	.byte	0x53
	.uaword	0x1b0
	.byte	0x8
	.uleb128 0x27
	.string	"q"
	.byte	0x1
	.byte	0x54
	.uaword	0x1b0
	.uaword	.LLST9
	.uleb128 0x27
	.string	"bestQ"
	.byte	0x1
	.byte	0x54
	.uaword	0x1b0
	.uaword	.LLST10
	.uleb128 0x27
	.string	"abc"
	.byte	0x1
	.byte	0x54
	.uaword	0x1b0
	.uaword	.LLST11
	.uleb128 0x27
	.string	"bestAbc"
	.byte	0x1
	.byte	0x54
	.uaword	0x1b0
	.uaword	.LLST12
	.uleb128 0x27
	.string	"error"
	.byte	0x1
	.byte	0x55
	.uaword	0x270
	.uaword	.LLST13
	.uleb128 0x2c
	.uaword	.LASF13
	.byte	0x1
	.byte	0x55
	.uaword	0x270
	.uaword	.LLST14
	.uleb128 0x27
	.string	"tTmp"
	.byte	0x1
	.byte	0x56
	.uaword	0x270
	.uaword	.LLST15
	.uleb128 0x27
	.string	"tBaudTmp"
	.byte	0x1
	.byte	0x56
	.uaword	0x270
	.uaword	.LLST16
	.uleb128 0x27
	.string	"done"
	.byte	0x1
	.byte	0x57
	.uaword	0x289
	.uaword	.LLST17
	.uleb128 0x26
	.string	"tBaud"
	.byte	0x1
	.byte	0x5f
	.uaword	0x270
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2d
	.uaword	0x2370
	.uaword	.LBB21
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x50
	.uaword	0x2635
	.uleb128 0x2e
	.uaword	0x239d
	.uaword	.LLST18
	.uleb128 0x2f
	.uaword	0x233a
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x2
	.uahalf	0x3da
	.uleb128 0x30
	.uaword	0x2363
	.uleb128 0x28
	.uaword	.LVL8
	.uaword	0x30f3
	.byte	0
	.byte	0
	.uleb128 0x31
	.uaword	0x23aa
	.uaword	.LBB29
	.uaword	.LBE29
	.byte	0x1
	.byte	0x8e
	.uleb128 0x32
	.uaword	0x23c6
	.byte	0x3
	.uleb128 0x2e
	.uaword	0x23bd
	.uaword	.LLST19
	.uleb128 0x33
	.uaword	.LBB30
	.uaword	.LBE30
	.uleb128 0x34
	.uaword	0x23cf
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x1f7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2673
	.uleb128 0x35
	.uaword	0x1cf4
	.uleb128 0x24
	.byte	0x1
	.string	"IfxQspi_calculatePrescaler"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	0x262
	.uaword	.LFB287
	.uaword	.LFE287
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x276d
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0x98
	.uaword	0x2182
	.uaword	.LLST21
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.byte	0x98
	.uaword	0x1a7
	.uaword	.LLST22
	.uleb128 0x26
	.string	"error"
	.byte	0x1
	.byte	0x9a
	.uaword	0x1a7
	.byte	0x1
	.byte	0x5f
	.uleb128 0x2c
	.uaword	.LASF13
	.byte	0x1
	.byte	0x9a
	.uaword	0x1a7
	.uaword	.LLST23
	.uleb128 0x26
	.string	"halfBaud"
	.byte	0x1
	.byte	0x9b
	.uaword	0x1a7
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.string	"fQspiIn"
	.byte	0x1
	.byte	0x9c
	.uaword	0x1a7
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0x9e
	.uaword	0x262
	.uaword	.LLST24
	.uleb128 0x27
	.string	"bestPre"
	.byte	0x1
	.byte	0x9e
	.uaword	0x262
	.uaword	.LLST25
	.uleb128 0x36
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0x274a
	.uleb128 0x27
	.string	"tempHalfBaud"
	.byte	0x1
	.byte	0xa2
	.uaword	0x1a7
	.uaword	.LLST26
	.byte	0
	.uleb128 0x37
	.uaword	0x233a
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x9c
	.uleb128 0x2e
	.uaword	0x2363
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	.LVL39
	.uaword	0x30f3
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxQspi_calculateTimeQuantumLength"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	0x262
	.uaword	.LFB288
	.uaword	.LFE288
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x286b
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0xb0
	.uaword	0x2182
	.uaword	.LLST28
	.uleb128 0x2a
	.string	"maxBaudrate"
	.byte	0x1
	.byte	0xb0
	.uaword	0x1a7
	.uaword	.LLST29
	.uleb128 0x27
	.string	"abcq"
	.byte	0x1
	.byte	0xb5
	.uaword	0x262
	.uaword	.LLST30
	.uleb128 0x27
	.string	"tq"
	.byte	0x1
	.byte	0xb5
	.uaword	0x262
	.uaword	.LLST31
	.uleb128 0x27
	.string	"bestTq"
	.byte	0x1
	.byte	0xb5
	.uaword	0x262
	.uaword	.LLST32
	.uleb128 0x27
	.string	"realTQ"
	.byte	0x1
	.byte	0xb6
	.uaword	0x1a7
	.uaword	.LLST33
	.uleb128 0x27
	.string	"deltaMax"
	.byte	0x1
	.byte	0xb6
	.uaword	0x1a7
	.uaword	.LLST34
	.uleb128 0x27
	.string	"bestDelta"
	.byte	0x1
	.byte	0xb6
	.uaword	0x1a7
	.uaword	.LLST35
	.uleb128 0x27
	.string	"achievedMax"
	.byte	0x1
	.byte	0xb6
	.uaword	0x1a7
	.uaword	.LLST36
	.uleb128 0x27
	.string	"fQspi"
	.byte	0x1
	.byte	0xb7
	.uaword	0x1a7
	.uaword	.LLST37
	.uleb128 0x28
	.uaword	.LVL49
	.uaword	0x30f3
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxQspi_getAddress"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.uaword	0x2182
	.uaword	.LFB289
	.uaword	.LFE289
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x28b4
	.uleb128 0x38
	.uaword	.LASF11
	.byte	0x1
	.byte	0xd9
	.uaword	0x1ad4
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.string	"module"
	.byte	0x1
	.byte	0xdb
	.uaword	0x2182
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxQspi_getIndex"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.uaword	0x1ad4
	.uaword	.LFB290
	.uaword	.LFE290
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x290e
	.uleb128 0x38
	.uaword	.LASF11
	.byte	0x1
	.byte	0xea
	.uaword	0x2182
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.string	"index"
	.byte	0x1
	.byte	0xec
	.uaword	0x262
	.uaword	.LLST38
	.uleb128 0x27
	.string	"result"
	.byte	0x1
	.byte	0xed
	.uaword	0x1ad4
	.uaword	.LLST39
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxQspi_read16"
	.byte	0x1
	.byte	0xfe
	.byte	0x1
	.uaword	.LFB291
	.uaword	.LFE291
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x296e
	.uleb128 0x38
	.uaword	.LASF11
	.byte	0x1
	.byte	0xfe
	.uaword	0x2182
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.uaword	.LASF10
	.byte	0x1
	.byte	0xfe
	.uaword	0x296e
	.uaword	.LLST40
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x1
	.byte	0xfe
	.uaword	0x2e1
	.uaword	.LLST41
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x100
	.uaword	0x2974
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x230
	.uleb128 0x5
	.byte	0x4
	.uaword	0x297a
	.uleb128 0x18
	.uaword	0x16a2
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxQspi_read32"
	.byte	0x1
	.uahalf	0x10a
	.byte	0x1
	.uaword	.LFB292
	.uaword	.LFE292
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x29e3
	.uleb128 0x3c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x2182
	.byte	0x1
	.byte	0x64
	.uleb128 0x3d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x29e3
	.uaword	.LLST42
	.uleb128 0x3d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x2e1
	.uaword	.LLST43
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x2974
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x262
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxQspi_read8"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.uaword	.LFB293
	.uaword	.LFE293
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2a4c
	.uleb128 0x3c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x116
	.uaword	0x2182
	.byte	0x1
	.byte	0x64
	.uleb128 0x3d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x116
	.uaword	0x2a4c
	.uaword	.LLST44
	.uleb128 0x3d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x116
	.uaword	0x2e1
	.uaword	.LLST45
	.uleb128 0x3a
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x118
	.uaword	0x2974
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1f7
	.uleb128 0x3e
	.byte	0x1
	.string	"IfxQspi_recalcBasicConfiguration"
	.byte	0x1
	.uahalf	0x122
	.byte	0x1
	.uaword	0x262
	.uaword	.LFB294
	.uaword	.LFE294
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2aed
	.uleb128 0x3f
	.string	"oldBACON"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x262
	.uaword	.LLST46
	.uleb128 0x40
	.string	"numOfData"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x2e1
	.byte	0x1
	.byte	0x55
	.uleb128 0x40
	.string	"shortData"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x289
	.byte	0x1
	.byte	0x56
	.uleb128 0x40
	.string	"lastData"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x289
	.byte	0x1
	.byte	0x57
	.uleb128 0x41
	.string	"bacon"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x12dd
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxQspi_resetModule"
	.byte	0x1
	.uahalf	0x132
	.byte	0x1
	.uaword	.LFB295
	.uaword	.LFE295
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2b90
	.uleb128 0x3d
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x132
	.uaword	0x2182
	.uaword	.LLST47
	.uleb128 0x42
	.string	"passwd"
	.byte	0x1
	.uahalf	0x134
	.uaword	0x230
	.uaword	.LLST48
	.uleb128 0x28
	.uaword	.LVL106
	.uaword	0x3118
	.uleb128 0x43
	.uaword	.LVL108
	.uaword	0x3144
	.uaword	0x2b56
	.uleb128 0x44
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL109
	.uaword	0x316e
	.uaword	0x2b6a
	.uleb128 0x44
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x43
	.uaword	.LVL110
	.uaword	0x3144
	.uaword	0x2b7e
	.uleb128 0x44
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x45
	.uaword	.LVL111
	.byte	0x1
	.uaword	0x316e
	.uleb128 0x44
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxQspi_setSlaveSelectOutputControl"
	.byte	0x1
	.uahalf	0x144
	.byte	0x1
	.uaword	.LFB296
	.uaword	.LFE296
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c37
	.uleb128 0x3c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x144
	.uaword	0x2182
	.byte	0x1
	.byte	0x64
	.uleb128 0x3d
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x144
	.uaword	0x22e0
	.uaword	.LLST49
	.uleb128 0x40
	.string	"outputEnable"
	.byte	0x1
	.uahalf	0x144
	.uaword	0x289
	.byte	0x1
	.byte	0x55
	.uleb128 0x40
	.string	"activeLevel"
	.byte	0x1
	.uahalf	0x144
	.uaword	0x289
	.byte	0x1
	.byte	0x56
	.uleb128 0x42
	.string	"mask"
	.byte	0x1
	.uahalf	0x146
	.uaword	0x230
	.uaword	.LLST50
	.uleb128 0x42
	.string	"ssoc"
	.byte	0x1
	.uahalf	0x148
	.uaword	0x1723
	.uaword	.LLST51
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxQspi_write16"
	.byte	0x1
	.uahalf	0x161
	.byte	0x1
	.uaword	.LFB297
	.uaword	.LFE297
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2cbc
	.uleb128 0x3d
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x161
	.uaword	0x2182
	.uaword	.LLST52
	.uleb128 0x3d
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x161
	.uaword	0x22e0
	.uaword	.LLST53
	.uleb128 0x3d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x161
	.uaword	0x296e
	.uaword	.LLST54
	.uleb128 0x3d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x161
	.uaword	0x2e1
	.uaword	.LLST55
	.uleb128 0x42
	.string	"cs"
	.byte	0x1
	.uahalf	0x163
	.uaword	0x1b0
	.uaword	.LLST56
	.uleb128 0x46
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x164
	.uaword	0x2cbc
	.uaword	.LLST57
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2cc2
	.uleb128 0x18
	.uaword	0x139d
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxQspi_write32"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	.LFB298
	.uaword	.LFE298
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d4c
	.uleb128 0x3d
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x2182
	.uaword	.LLST58
	.uleb128 0x3d
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x22e0
	.uaword	.LLST59
	.uleb128 0x3d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x29e3
	.uaword	.LLST60
	.uleb128 0x3d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x2e1
	.uaword	.LLST61
	.uleb128 0x42
	.string	"cs"
	.byte	0x1
	.uahalf	0x170
	.uaword	0x1b0
	.uaword	.LLST62
	.uleb128 0x46
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x171
	.uaword	0x2cbc
	.uaword	.LLST63
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxQspi_write8"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.uaword	.LFB299
	.uaword	.LFE299
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2dd0
	.uleb128 0x3d
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x2182
	.uaword	.LLST64
	.uleb128 0x3d
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x22e0
	.uaword	.LLST65
	.uleb128 0x3d
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x2a4c
	.uaword	.LLST66
	.uleb128 0x3d
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x2e1
	.uaword	.LLST67
	.uleb128 0x42
	.string	"cs"
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x1b0
	.uaword	.LLST68
	.uleb128 0x46
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x2cbc
	.uaword	.LLST69
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxQspi_calculateDelayConstants"
	.byte	0x1
	.uahalf	0x188
	.byte	0x1
	.uaword	.LFB300
	.uaword	.LFE300
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f8a
	.uleb128 0x3d
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x188
	.uaword	0x2f8a
	.uaword	.LLST70
	.uleb128 0x3d
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x188
	.uaword	0x2f95
	.uaword	.LLST71
	.uleb128 0x3f
	.string	"chMode"
	.byte	0x1
	.uahalf	0x188
	.uaword	0x2f9a
	.uaword	.LLST72
	.uleb128 0x3d
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x188
	.uaword	0x2fa5
	.uaword	.LLST73
	.uleb128 0x41
	.string	"divFactor"
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x262
	.byte	0x1
	.byte	0x5c
	.uleb128 0x42
	.string	"dlyFactorPtr"
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x2fab
	.uaword	.LLST74
	.uleb128 0x41
	.string	"scaleTemp"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x270
	.byte	0x1
	.byte	0x59
	.uleb128 0x42
	.string	"preTemp"
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x1f7
	.uaword	.LLST75
	.uleb128 0x42
	.string	"preFinal"
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x1f7
	.uaword	.LLST76
	.uleb128 0x42
	.string	"delayTemp"
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x1f7
	.uaword	.LLST77
	.uleb128 0x42
	.string	"delayFinal"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x1f7
	.uaword	.LLST78
	.uleb128 0x42
	.string	"matchFound"
	.byte	0x1
	.uahalf	0x191
	.uaword	0x289
	.uaword	.LLST79
	.uleb128 0x42
	.string	"index"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x1f7
	.uaword	.LLST80
	.uleb128 0x42
	.string	"cs"
	.byte	0x1
	.uahalf	0x193
	.uaword	0x1f7
	.uaword	.LLST81
	.uleb128 0x48
	.uaword	0x23db
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.uahalf	0x1ab
	.uaword	0x2f51
	.uleb128 0x2e
	.uaword	0x23f7
	.uaword	.LLST82
	.uleb128 0x2e
	.uaword	0x23ee
	.uaword	.LLST83
	.uleb128 0x33
	.uaword	.LBB38
	.uaword	.LBE38
	.uleb128 0x34
	.uaword	0x2400
	.uaword	.LLST84
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x23db
	.uaword	.LBB39
	.uaword	.LBE39
	.byte	0x1
	.uahalf	0x1b3
	.uleb128 0x32
	.uaword	0x23f7
	.byte	0
	.uleb128 0x49
	.uaword	0x23ee
	.byte	0x8
	.byte	0x72
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uleb128 0x33
	.uaword	.LBB40
	.uaword	.LBE40
	.uleb128 0x34
	.uaword	0x2400
	.uaword	.LLST85
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f90
	.uleb128 0x35
	.uaword	0x1a58
	.uleb128 0x35
	.uaword	0x22e0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2fa0
	.uleb128 0x35
	.uaword	0x2126
	.uleb128 0x5
	.byte	0x4
	.uaword	0x231f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2fb1
	.uleb128 0x35
	.uaword	0x1efc
	.uleb128 0x24
	.byte	0x1
	.string	"IfxQspi_calculateBasicConfigurationValue"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	0x262
	.uaword	.LFB285
	.uaword	.LFE285
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3079
	.uleb128 0x25
	.uaword	.LASF11
	.byte	0x1
	.byte	0x30
	.uaword	0x2182
	.uaword	.LLST86
	.uleb128 0x25
	.uaword	.LASF12
	.byte	0x1
	.byte	0x30
	.uaword	0x2f95
	.uaword	.LLST87
	.uleb128 0x2a
	.string	"chMode"
	.byte	0x1
	.byte	0x30
	.uaword	0x2f9a
	.uaword	.LLST88
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.byte	0x30
	.uaword	0x3079
	.uaword	.LLST89
	.uleb128 0x27
	.string	"bacon"
	.byte	0x1
	.byte	0x32
	.uaword	0x12dd
	.uaword	.LLST90
	.uleb128 0x4a
	.uaword	.LASF17
	.byte	0x1
	.byte	0x33
	.uaword	0x307e
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x4b
	.uaword	.LVL176
	.uaword	0x2dd0
	.uleb128 0x44
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x44
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x44
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x44
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x1a7
	.uleb128 0x16
	.uaword	0x231f
	.uaword	0x308e
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.uaword	0x34c
	.uaword	0x309e
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0x3
	.byte	0
	.uleb128 0x4c
	.string	"IfxQspi_cfg_indexMap"
	.byte	0x7
	.byte	0x49
	.uaword	0x30bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.uaword	0x308e
	.uleb128 0x16
	.uaword	0x34c
	.uaword	0x30d1
	.uleb128 0x17
	.uaword	0x19fc
	.byte	0x2
	.byte	0
	.uleb128 0x4c
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0x96
	.uaword	0x30ee
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.uaword	0x30c1
	.uleb128 0x4d
	.byte	0x1
	.string	"IfxScuCcu_getMaxFrequency"
	.byte	0xa
	.uahalf	0x36a
	.byte	0x1
	.uaword	0x270
	.byte	0x1
	.uleb128 0x4d
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xb
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x230
	.byte	0x1
	.uleb128 0x4e
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xb
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x316e
	.uleb128 0x1b
	.uaword	0x230
	.byte	0
	.uleb128 0x4f
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xb
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x230
	.byte	0
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE284
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LFE284
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a7
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x1a7
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE284
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LFE286
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8-1
	.uaword	.LFE286
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8-1
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL33
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL31
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x49742400
	.uaword	.LVL13
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL22
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x1a7
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x1a7
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LFE286
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LFE286
	.uahalf	0xa
	.byte	0x7d
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL37
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39-1
	.uaword	.LFE287
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL37
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39-1
	.uaword	.LFE287
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x4b189680
	.uaword	.LVL41
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x12
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1a7
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LVL47
	.uahalf	0x12
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1a7
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LFE287
	.uahalf	0x12
	.byte	0xf5
	.uleb128 0
	.uleb128 0x1a7
	.byte	0x31
	.byte	0x76
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x24
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL38
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL39-1
	.uaword	.LFE287
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49-1
	.uaword	.LFE288
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49-1
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL48
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL64
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL77
	.uaword	.LFE288
	.uahalf	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x1a7
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x1a7
	.byte	0x1e
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-1
	.uaword	.LVL75
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x1a7
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x1a7
	.byte	0x1e
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LFE288
	.uahalf	0x13
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x1a7
	.byte	0x78
	.sleb128 -1
	.byte	0xf7
	.uleb128 0x1b0
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x1a7
	.byte	0x1e
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL71
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL60
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL73
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x1a7
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x1a7
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL75
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x1a7
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x11
	.byte	0xf5
	.uleb128 0xb
	.uleb128 0x1a7
	.byte	0x78
	.sleb128 -1
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1b7
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL50
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51-1
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LFE290
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL81
	.uaword	.LVL84
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LFE290
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LFE291
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE291
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL92
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LFE292
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LFE292
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL97
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL102
	.uaword	.LFE293
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104
	.uaword	.LFE294
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL105
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL106-1
	.uaword	.LFE295
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL107
	.uaword	.LVL108-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL108-1
	.uaword	.LFE295
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL113
	.uaword	.LFE296
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL115
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL118
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL120
	.uaword	.LFE296
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL117
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL122
	.uaword	.LFE296
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL124
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL128
	.uaword	.LFE297
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL125
	.uaword	.LFE297
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL124
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL132
	.uaword	.LFE297
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL124
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LFE297
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL126
	.uaword	.LFE297
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x8
	.byte	0x74
	.sleb128 25
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL128
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LFE297
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL133
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL137
	.uaword	.LFE298
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL134
	.uaword	.LFE298
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL133
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL141
	.uaword	.LFE298
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL133
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL136
	.uaword	.LVL138
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL141
	.uaword	.LFE298
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL135
	.uaword	.LFE298
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x8
	.byte	0x74
	.sleb128 25
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL137
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LFE298
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL142
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL145
	.uaword	.LFE299
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL143
	.uaword	.LFE299
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL142
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL150
	.uaword	.LFE299
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL142
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL144
	.uaword	.LFE299
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x8
	.byte	0x74
	.sleb128 25
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL145
	.uaword	.LFE299
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL151
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL153
	.uaword	.LFE300
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL152
	.uaword	.LFE300
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL151
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL156
	.uaword	.LFE300
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL151
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL156
	.uaword	.LFE300
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL156
	.uaword	.LFE300
	.uahalf	0x3
	.byte	0x8d
	.sleb128 -12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LVL166
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL167
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL151
	.uaword	.LVL156
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL162
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL167
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL171
	.uaword	.LFE300
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL151
	.uaword	.LVL156
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL157
	.uaword	.LVL166
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL167
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LFE300
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL154
	.uaword	.LVL156
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL152
	.uaword	.LFE300
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL167
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL175
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL176-1
	.uaword	.LFE285
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL175
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL176-1
	.uaword	.LFE285
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL175
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL176-1
	.uaword	.LFE285
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL175
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL176-1
	.uaword	.LFE285
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x1a7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL178
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL182
	.uaword	.LFE285
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x9c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB284
	.uaword	.LFE284-.LFB284
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.uaword	.LFB289
	.uaword	.LFE289-.LFB289
	.uaword	.LFB290
	.uaword	.LFE290-.LFB290
	.uaword	.LFB291
	.uaword	.LFE291-.LFB291
	.uaword	.LFB292
	.uaword	.LFE292-.LFB292
	.uaword	.LFB293
	.uaword	.LFE293-.LFB293
	.uaword	.LFB294
	.uaword	.LFE294-.LFB294
	.uaword	.LFB295
	.uaword	.LFE295-.LFB295
	.uaword	.LFB296
	.uaword	.LFE296-.LFB296
	.uaword	.LFB297
	.uaword	.LFE297-.LFB297
	.uaword	.LFB298
	.uaword	.LFE298-.LFB298
	.uaword	.LFB299
	.uaword	.LFE299-.LFB299
	.uaword	.LFB300
	.uaword	.LFE300-.LFB300
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LFB284
	.uaword	.LFE284
	.uaword	.LFB286
	.uaword	.LFE286
	.uaword	.LFB287
	.uaword	.LFE287
	.uaword	.LFB288
	.uaword	.LFE288
	.uaword	.LFB289
	.uaword	.LFE289
	.uaword	.LFB290
	.uaword	.LFE290
	.uaword	.LFB291
	.uaword	.LFE291
	.uaword	.LFB292
	.uaword	.LFE292
	.uaword	.LFB293
	.uaword	.LFE293
	.uaword	.LFB294
	.uaword	.LFE294
	.uaword	.LFB295
	.uaword	.LFE295
	.uaword	.LFB296
	.uaword	.LFE296
	.uaword	.LFB297
	.uaword	.LFE297
	.uaword	.LFB298
	.uaword	.LFE298
	.uaword	.LFB299
	.uaword	.LFE299
	.uaword	.LFB300
	.uaword	.LFE300
	.uaword	.LFB285
	.uaword	.LFE285
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF11:
	.string	"qspi"
.LASF14:
	.string	"count"
.LASF10:
	.string	"data"
.LASF9:
	.string	"baudrate"
.LASF15:
	.string	"rxFifo"
.LASF0:
	.string	"reserved_0"
.LASF6:
	.string	"reserved_1"
.LASF1:
	.string	"reserved_2"
.LASF13:
	.string	"bestError"
.LASF5:
	.string	"reserved_8"
.LASF16:
	.string	"dataEntry"
.LASF12:
	.string	"channelId"
.LASF17:
	.string	"delayConst"
.LASF7:
	.string	"driver"
.LASF3:
	.string	"reserved_13"
.LASF2:
	.string	"reserved_15"
.LASF4:
	.string	"reserved_30"
.LASF8:
	.string	"errorChecks"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxQspi_cfg_indexMap,STT_OBJECT,32
	.extern	IfxScuCcu_getMaxFrequency,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
