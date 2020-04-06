	.file	"IfxGpt12.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxGpt12_T2_getFrequency,"ax",@progbits
	.align 1
	.global	IfxGpt12_T2_getFrequency
	.type	IfxGpt12_T2_getFrequency, @function
IfxGpt12_T2_getFrequency:
.LFB316:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Gpt12/Std/IfxGpt12.c"
	.loc 1 36 0
.LVL0:
	.loc 1 36 0
	mov.aa	%a15, %a4
.LBB62:
.LBB63:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/Gpt12/Std/IfxGpt12.h"
	.loc 2 1556 0
	call	IfxScuCcu_getSpbFrequency
.LVL1:
.LBE63:
.LBE62:
	.loc 1 42 0
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 11, 2
.LVL2:
	.loc 1 44 0
	jeq	%d15, 1, .L3
	jz	%d15, .L4
	jeq	%d15, 3, .L5
	.loc 1 56 0
	movh	%d15, 15616
.LVL3:
	mul.f	%d2, %d2, %d15
.LVL4:
.L6:
.LBB64:
.LBB65:
	.loc 2 1053 0
	ld.w	%d15, [%a15] 16
.LBE65:
.LBE64:
	.loc 1 61 0
	ld.w	%d5, [%a15] 16
.LBB67:
.LBB66:
	.loc 2 1053 0
	extr.u	%d15, %d15, 3, 3
.LBE66:
.LBE67:
	.loc 1 61 0
	and	%d5, %d5, 7
.LVL5:
	.loc 1 63 0
	add	%d4, %d15, 6
	and	%d4, %d4, 7
	lt.u	%d3, %d4, 2
	or.eq	%d3, %d15, 0
	jnz	%d3, .L12
	.loc 1 69 0
	movh	%d15, 16128
	mul.f	%d2, %d2, %d15
.LVL6:
	.loc 1 73 0
	ret
.LVL7:
.L5:
	.loc 1 53 0
	movh	%d15, 15744
.LVL8:
	mul.f	%d2, %d2, %d15
.LVL9:
	.loc 1 54 0
	j	.L6
.LVL10:
.L12:
	.loc 1 65 0
	mov	%d15, 1
	sh	%d15, %d15, %d5
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL11:
	ret
.LVL12:
.L4:
	.loc 1 50 0
	movh	%d15, 15872
.LVL13:
	mul.f	%d2, %d2, %d15
.LVL14:
	.loc 1 51 0
	j	.L6
.LVL15:
.L3:
	.loc 1 47 0
	movh	%d15, 16000
.LVL16:
	mul.f	%d2, %d2, %d15
.LVL17:
	.loc 1 48 0
	j	.L6
.LFE316:
	.size	IfxGpt12_T2_getFrequency, .-IfxGpt12_T2_getFrequency
.section .text.IfxGpt12_T3_getFrequency,"ax",@progbits
	.align 1
	.global	IfxGpt12_T3_getFrequency
	.type	IfxGpt12_T3_getFrequency, @function
IfxGpt12_T3_getFrequency:
.LFB317:
	.loc 1 77 0
.LVL18:
	.loc 1 77 0
	mov.aa	%a15, %a4
.LBB68:
.LBB69:
	.loc 2 1556 0
	call	IfxScuCcu_getSpbFrequency
.LVL19:
.LBE69:
.LBE68:
	.loc 1 83 0
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 11, 2
.LVL20:
	.loc 1 85 0
	jeq	%d15, 1, .L15
	jz	%d15, .L16
	jeq	%d15, 3, .L17
	.loc 1 97 0
	movh	%d15, 15616
.LVL21:
	mul.f	%d2, %d2, %d15
.LVL22:
.L18:
	.loc 1 101 0
	ld.w	%d15, [%a15] 20
	.loc 1 102 0
	ld.w	%d5, [%a15] 20
	.loc 1 101 0
	extr.u	%d15, %d15, 3, 3
.LVL23:
	.loc 1 102 0
	and	%d5, %d5, 7
.LVL24:
	.loc 1 104 0
	add	%d4, %d15, 6
	and	%d4, %d4, 7
	lt.u	%d3, %d4, 2
	or.eq	%d3, %d15, 0
	jnz	%d3, .L23
	.loc 1 110 0
	movh	%d15, 16128
.LVL25:
	mul.f	%d2, %d2, %d15
.LVL26:
	.loc 1 114 0
	ret
.LVL27:
.L17:
	.loc 1 94 0
	movh	%d15, 15744
.LVL28:
	mul.f	%d2, %d2, %d15
.LVL29:
	.loc 1 95 0
	j	.L18
.LVL30:
.L23:
	.loc 1 106 0
	mov	%d15, 1
.LVL31:
	sh	%d15, %d15, %d5
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL32:
	ret
.LVL33:
.L16:
	.loc 1 91 0
	movh	%d15, 15872
.LVL34:
	mul.f	%d2, %d2, %d15
.LVL35:
	.loc 1 92 0
	j	.L18
.LVL36:
.L15:
	.loc 1 88 0
	movh	%d15, 16000
.LVL37:
	mul.f	%d2, %d2, %d15
.LVL38:
	.loc 1 89 0
	j	.L18
.LFE317:
	.size	IfxGpt12_T3_getFrequency, .-IfxGpt12_T3_getFrequency
.section .text.IfxGpt12_T4_getFrequency,"ax",@progbits
	.align 1
	.global	IfxGpt12_T4_getFrequency
	.type	IfxGpt12_T4_getFrequency, @function
IfxGpt12_T4_getFrequency:
.LFB318:
	.loc 1 118 0
.LVL39:
	.loc 1 118 0
	mov.aa	%a15, %a4
.LBB70:
.LBB71:
	.loc 2 1556 0
	call	IfxScuCcu_getSpbFrequency
.LVL40:
.LBE71:
.LBE70:
	.loc 1 124 0
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 11, 2
.LVL41:
	.loc 1 126 0
	jeq	%d15, 1, .L26
	jz	%d15, .L27
	jeq	%d15, 3, .L28
	.loc 1 138 0
	movh	%d15, 15616
.LVL42:
	mul.f	%d2, %d2, %d15
.LVL43:
.L29:
	.loc 1 142 0
	ld.w	%d15, [%a15] 24
	.loc 1 143 0
	ld.w	%d5, [%a15] 24
	.loc 1 142 0
	extr.u	%d15, %d15, 3, 3
.LVL44:
	.loc 1 143 0
	and	%d5, %d5, 7
.LVL45:
	.loc 1 145 0
	add	%d4, %d15, 6
	and	%d4, %d4, 7
	lt.u	%d3, %d4, 2
	or.eq	%d3, %d15, 0
	jnz	%d3, .L34
	.loc 1 151 0
	movh	%d15, 16128
.LVL46:
	mul.f	%d2, %d2, %d15
.LVL47:
	.loc 1 155 0
	ret
.LVL48:
.L28:
	.loc 1 135 0
	movh	%d15, 15744
.LVL49:
	mul.f	%d2, %d2, %d15
.LVL50:
	.loc 1 136 0
	j	.L29
.LVL51:
.L34:
	.loc 1 147 0
	mov	%d15, 1
.LVL52:
	sh	%d15, %d15, %d5
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL53:
	ret
.LVL54:
.L27:
	.loc 1 132 0
	movh	%d15, 15872
.LVL55:
	mul.f	%d2, %d2, %d15
.LVL56:
	.loc 1 133 0
	j	.L29
.LVL57:
.L26:
	.loc 1 129 0
	movh	%d15, 16000
.LVL58:
	mul.f	%d2, %d2, %d15
.LVL59:
	.loc 1 130 0
	j	.L29
.LFE318:
	.size	IfxGpt12_T4_getFrequency, .-IfxGpt12_T4_getFrequency
.section .text.IfxGpt12_T5_getFrequency,"ax",@progbits
	.align 1
	.global	IfxGpt12_T5_getFrequency
	.type	IfxGpt12_T5_getFrequency, @function
IfxGpt12_T5_getFrequency:
.LFB319:
	.loc 1 159 0
.LVL60:
	.loc 1 159 0
	mov.aa	%a15, %a4
.LBB72:
.LBB73:
	.loc 2 1556 0
	call	IfxScuCcu_getSpbFrequency
.LVL61:
.LBE73:
.LBE72:
	.loc 1 165 0
	ld.w	%d15, [%a15] 32
	extr.u	%d15, %d15, 11, 2
.LVL62:
	.loc 1 167 0
	jeq	%d15, 1, .L37
	jz	%d15, .L38
	jeq	%d15, 3, .L39
	.loc 1 179 0
	movh	%d15, 15744
.LVL63:
	mul.f	%d2, %d2, %d15
.LVL64:
.L40:
	.loc 1 183 0
	ld.w	%d15, [%a15] 28
	.loc 1 184 0
	ld.w	%d5, [%a15] 28
	.loc 1 183 0
	extr.u	%d15, %d15, 3, 3
.LVL65:
	.loc 1 184 0
	and	%d5, %d5, 7
.LVL66:
	.loc 1 186 0
	add	%d4, %d15, 6
	and	%d4, %d4, 7
	lt.u	%d3, %d4, 2
	or.eq	%d3, %d15, 0
	jnz	%d3, .L45
	.loc 1 192 0
	movh	%d15, 16128
.LVL67:
	mul.f	%d2, %d2, %d15
.LVL68:
	.loc 1 196 0
	ret
.LVL69:
.L39:
	.loc 1 176 0
	movh	%d15, 15872
.LVL70:
	mul.f	%d2, %d2, %d15
.LVL71:
	.loc 1 177 0
	j	.L40
.LVL72:
.L45:
	.loc 1 188 0
	mov	%d15, 1
.LVL73:
	sh	%d15, %d15, %d5
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL74:
	ret
.LVL75:
.L38:
	.loc 1 173 0
	movh	%d15, 16000
.LVL76:
	mul.f	%d2, %d2, %d15
.LVL77:
	.loc 1 174 0
	j	.L40
.LVL78:
.L37:
	.loc 1 170 0
	movh	%d15, 16128
.LVL79:
	mul.f	%d2, %d2, %d15
.LVL80:
	.loc 1 171 0
	j	.L40
.LFE319:
	.size	IfxGpt12_T5_getFrequency, .-IfxGpt12_T5_getFrequency
.section .text.IfxGpt12_T6_getFrequency,"ax",@progbits
	.align 1
	.global	IfxGpt12_T6_getFrequency
	.type	IfxGpt12_T6_getFrequency, @function
IfxGpt12_T6_getFrequency:
.LFB320:
	.loc 1 200 0
.LVL81:
	.loc 1 200 0
	mov.aa	%a15, %a4
.LBB74:
.LBB75:
	.loc 2 1556 0
	call	IfxScuCcu_getSpbFrequency
.LVL82:
.LBE75:
.LBE74:
	.loc 1 206 0
	ld.w	%d15, [%a15] 32
	extr.u	%d15, %d15, 11, 2
.LVL83:
	.loc 1 208 0
	jeq	%d15, 1, .L48
	jz	%d15, .L49
	jeq	%d15, 3, .L50
	.loc 1 220 0
	movh	%d15, 15744
.LVL84:
	mul.f	%d2, %d2, %d15
.LVL85:
.L51:
	.loc 1 224 0
	ld.w	%d15, [%a15] 32
	.loc 1 225 0
	ld.w	%d5, [%a15] 32
	.loc 1 224 0
	extr.u	%d15, %d15, 3, 3
.LVL86:
	.loc 1 225 0
	and	%d5, %d5, 7
.LVL87:
	.loc 1 227 0
	add	%d4, %d15, 6
	and	%d4, %d4, 7
	lt.u	%d3, %d4, 2
	or.eq	%d3, %d15, 0
	jnz	%d3, .L56
	.loc 1 233 0
	movh	%d15, 16128
.LVL88:
	mul.f	%d2, %d2, %d15
.LVL89:
	.loc 1 237 0
	ret
.LVL90:
.L50:
	.loc 1 217 0
	movh	%d15, 15872
.LVL91:
	mul.f	%d2, %d2, %d15
.LVL92:
	.loc 1 218 0
	j	.L51
.LVL93:
.L56:
	.loc 1 229 0
	mov	%d15, 1
.LVL94:
	sh	%d15, %d15, %d5
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL95:
	ret
.LVL96:
.L49:
	.loc 1 214 0
	movh	%d15, 16000
.LVL97:
	mul.f	%d2, %d2, %d15
.LVL98:
	.loc 1 215 0
	j	.L51
.LVL99:
.L48:
	.loc 1 211 0
	movh	%d15, 16128
.LVL100:
	mul.f	%d2, %d2, %d15
.LVL101:
	.loc 1 212 0
	j	.L51
.LFE320:
	.size	IfxGpt12_T6_getFrequency, .-IfxGpt12_T6_getFrequency
.section .text.IfxGpt12_disableModule,"ax",@progbits
	.align 1
	.global	IfxGpt12_disableModule
	.type	IfxGpt12_disableModule, @function
IfxGpt12_disableModule:
.LFB321:
	.loc 1 241 0
.LVL102:
	.loc 1 241 0
	mov.aa	%a15, %a4
	.loc 1 242 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL103:
	.loc 1 243 0
	mov	%d4, %d2
	.loc 1 242 0
	mov	%d15, %d2
.LVL104:
	.loc 1 243 0
	call	IfxScuWdt_clearCpuEndinit
.LVL105:
	.loc 1 244 0
	ld.w	%d2, [%a15]0
	.loc 1 245 0
	mov	%d4, %d15
	.loc 1 244 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
	.loc 1 245 0
	j	IfxScuWdt_setCpuEndinit
.LVL106:
.LFE321:
	.size	IfxGpt12_disableModule, .-IfxGpt12_disableModule
.section .text.IfxGpt12_enableModule,"ax",@progbits
	.align 1
	.global	IfxGpt12_enableModule
	.type	IfxGpt12_enableModule, @function
IfxGpt12_enableModule:
.LFB322:
	.loc 1 250 0
.LVL107:
	.loc 1 250 0
	mov.aa	%a15, %a4
	.loc 1 251 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL108:
	.loc 1 252 0
	mov	%d4, %d2
	.loc 1 251 0
	mov	%d15, %d2
.LVL109:
	.loc 1 252 0
	call	IfxScuWdt_clearCpuEndinit
.LVL110:
	.loc 1 253 0
	ld.w	%d2, [%a15]0
	.loc 1 254 0
	mov	%d4, %d15
	.loc 1 253 0
	andn	%d2, %d2, ~(-2)
	st.w	[%a15]0, %d2
	.loc 1 254 0
	j	IfxScuWdt_setCpuEndinit
.LVL111:
.LFE322:
	.size	IfxGpt12_enableModule, .-IfxGpt12_enableModule
.section .text.IfxGpt12_initTxEudInPin,"ax",@progbits
	.align 1
	.global	IfxGpt12_initTxEudInPin
	.type	IfxGpt12_initTxEudInPin, @function
IfxGpt12_initTxEudInPin:
.LFB323:
	.loc 1 259 0
.LVL112:
	.loc 1 259 0
	mov.aa	%a15, %a4
.LBB76:
.LBB77:
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Port/Std/IfxPort.h"
	.loc 3 562 0
	ld.a	%a4, [%a4] 8
.LVL113:
	and	%d5, %d4, 255
	ld.bu	%d4, [%a15] 12
.LVL114:
	call	IfxPort_setPinMode
.LVL115:
.LBE77:
.LBE76:
	.loc 1 262 0
	ld.bu	%d15, [%a15] 4
	add	%d15, -2
	jge.u	%d15, 5, .L59
	movh.a	%a2, hi:.L62
	lea	%a2, [%a2] lo:.L62
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L62:
	.code32
	j	.L61
	.code32
	j	.L63
	.code32
	j	.L64
	.code32
	j	.L65
	.code32
	j	.L66
.L66:
	.loc 1 277 0
	ld.a	%a2, [%a15]0
.LVL116:
.LBB78:
.LBB79:
	.loc 2 1506 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,13, %d15,0
	st.w	[%a2] 4, %d15
.LVL117:
.L59:
	ret
.L65:
.LBE79:
.LBE78:
	.loc 1 274 0
	ld.a	%a2, [%a15]0
.LVL118:
.LBB80:
.LBB81:
	.loc 2 1418 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,11, %d15,0
	st.w	[%a2] 4, %d15
.LVL119:
	ret
.LVL120:
.L61:
.LBE81:
.LBE80:
	.loc 1 265 0
	ld.a	%a2, [%a15]0
.LVL121:
.LBB82:
.LBB83:
	.loc 2 1096 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,1, %d15,0
	st.w	[%a2] 4, %d15
.LVL122:
	ret
.LVL123:
.L63:
.LBE83:
.LBE82:
	.loc 1 268 0
	ld.a	%a2, [%a15]0
.LVL124:
.LBB84:
.LBB85:
	.loc 2 1200 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 4, 2
	st.w	[%a2] 4, %d15
.LVL125:
	ret
.LVL126:
.L64:
.LBE85:
.LBE84:
	.loc 1 271 0
	ld.a	%a2, [%a15]0
.LVL127:
.LBB86:
.LBB87:
	.loc 2 1297 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 8, 2
	st.w	[%a2] 4, %d15
.LVL128:
	ret
.LBE87:
.LBE86:
.LFE323:
	.size	IfxGpt12_initTxEudInPin, .-IfxGpt12_initTxEudInPin
.section .text.IfxGpt12_initTxEudInPinWithPadLevel,"ax",@progbits
	.align 1
	.global	IfxGpt12_initTxEudInPinWithPadLevel
	.type	IfxGpt12_initTxEudInPinWithPadLevel, @function
IfxGpt12_initTxEudInPinWithPadLevel:
.LFB324:
	.loc 1 286 0
.LVL129:
	.loc 1 286 0
	mov.aa	%a15, %a4
.LBB88:
.LBB89:
	.loc 3 562 0
	ld.a	%a4, [%a4] 8
.LVL130:
.LBE89:
.LBE88:
	.loc 1 286 0
	mov	%d15, %d5
.LBB91:
.LBB90:
	.loc 3 562 0
	and	%d5, %d4, 255
.LVL131:
	ld.bu	%d4, [%a15] 12
.LVL132:
	call	IfxPort_setPinMode
.LVL133:
.LBE90:
.LBE91:
	.loc 1 288 0
	ld.a	%a4, [%a15] 8
	mov	%d5, %d15
	ld.bu	%d4, [%a15] 12
	call	IfxPort_setPinPadDriver
.LVL134:
	.loc 1 290 0
	ld.bu	%d15, [%a15] 4
	add	%d15, -2
	jge.u	%d15, 5, .L67
	movh.a	%a2, hi:.L70
	lea	%a2, [%a2] lo:.L70
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L70:
	.code32
	j	.L69
	.code32
	j	.L71
	.code32
	j	.L72
	.code32
	j	.L73
	.code32
	j	.L74
.L74:
	.loc 1 305 0
	ld.a	%a2, [%a15]0
.LVL135:
.LBB92:
.LBB93:
	.loc 2 1506 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,13, %d15,0
	st.w	[%a2] 4, %d15
.LVL136:
.L67:
	ret
.L73:
.LBE93:
.LBE92:
	.loc 1 302 0
	ld.a	%a2, [%a15]0
.LVL137:
.LBB94:
.LBB95:
	.loc 2 1418 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,11, %d15,0
	st.w	[%a2] 4, %d15
.LVL138:
	ret
.LVL139:
.L69:
.LBE95:
.LBE94:
	.loc 1 293 0
	ld.a	%a2, [%a15]0
.LVL140:
.LBB96:
.LBB97:
	.loc 2 1096 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,1, %d15,0
	st.w	[%a2] 4, %d15
.LVL141:
	ret
.LVL142:
.L71:
.LBE97:
.LBE96:
	.loc 1 296 0
	ld.a	%a2, [%a15]0
.LVL143:
.LBB98:
.LBB99:
	.loc 2 1200 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 4, 2
	st.w	[%a2] 4, %d15
.LVL144:
	ret
.LVL145:
.L72:
.LBE99:
.LBE98:
	.loc 1 299 0
	ld.a	%a2, [%a15]0
.LVL146:
.LBB100:
.LBB101:
	.loc 2 1297 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 8, 2
	st.w	[%a2] 4, %d15
.LVL147:
	ret
.LBE101:
.LBE100:
.LFE324:
	.size	IfxGpt12_initTxEudInPinWithPadLevel, .-IfxGpt12_initTxEudInPinWithPadLevel
.section .text.IfxGpt12_initTxInPin,"ax",@progbits
	.align 1
	.global	IfxGpt12_initTxInPin
	.type	IfxGpt12_initTxInPin, @function
IfxGpt12_initTxInPin:
.LFB325:
	.loc 1 314 0
.LVL148:
	.loc 1 314 0
	mov.aa	%a15, %a4
.LBB102:
.LBB103:
	.loc 3 562 0
	ld.a	%a4, [%a4] 8
.LVL149:
	and	%d5, %d4, 255
	ld.bu	%d4, [%a15] 12
.LVL150:
	call	IfxPort_setPinMode
.LVL151:
.LBE103:
.LBE102:
	.loc 1 317 0
	ld.bu	%d15, [%a15] 4
	add	%d15, -2
	jge.u	%d15, 5, .L75
	movh.a	%a2, hi:.L78
	lea	%a2, [%a2] lo:.L78
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L78:
	.code32
	j	.L77
	.code32
	j	.L79
	.code32
	j	.L80
	.code32
	j	.L81
	.code32
	j	.L82
.L82:
	.loc 1 332 0
	ld.a	%a2, [%a15]0
.LVL152:
.LBB104:
.LBB105:
	.loc 2 1513 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,12, %d15,0
	st.w	[%a2] 4, %d15
.LVL153:
.L75:
	ret
.L81:
.LBE105:
.LBE104:
	.loc 1 329 0
	ld.a	%a2, [%a15]0
.LVL154:
.LBB106:
.LBB107:
	.loc 2 1425 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,10, %d15,0
	st.w	[%a2] 4, %d15
.LVL155:
	ret
.LVL156:
.L77:
.LBE107:
.LBE106:
	.loc 1 320 0
	ld.a	%a2, [%a15]0
.LVL157:
.LBB108:
.LBB109:
	.loc 2 1109 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 0, 1
	st.w	[%a2] 4, %d15
.LVL158:
	ret
.LVL159:
.L79:
.LBE109:
.LBE108:
	.loc 1 323 0
	ld.a	%a2, [%a15]0
.LVL160:
.LBB110:
.LBB111:
	.loc 2 1212 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 2, 2
	st.w	[%a2] 4, %d15
.LVL161:
	ret
.LVL162:
.L80:
.LBE111:
.LBE110:
	.loc 1 326 0
	ld.a	%a2, [%a15]0
.LVL163:
.LBB112:
.LBB113:
	.loc 2 1309 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 6, 2
	st.w	[%a2] 4, %d15
.LVL164:
	ret
.LBE113:
.LBE112:
.LFE325:
	.size	IfxGpt12_initTxInPin, .-IfxGpt12_initTxInPin
.section .text.IfxGpt12_initTxInPinWithPadLevel,"ax",@progbits
	.align 1
	.global	IfxGpt12_initTxInPinWithPadLevel
	.type	IfxGpt12_initTxInPinWithPadLevel, @function
IfxGpt12_initTxInPinWithPadLevel:
.LFB326:
	.loc 1 341 0
.LVL165:
	.loc 1 341 0
	mov.aa	%a15, %a4
.LBB114:
.LBB115:
	.loc 3 562 0
	ld.a	%a4, [%a4] 8
.LVL166:
.LBE115:
.LBE114:
	.loc 1 341 0
	mov	%d15, %d5
.LBB117:
.LBB116:
	.loc 3 562 0
	and	%d5, %d4, 255
.LVL167:
	ld.bu	%d4, [%a15] 12
.LVL168:
	call	IfxPort_setPinMode
.LVL169:
.LBE116:
.LBE117:
	.loc 1 343 0
	ld.a	%a4, [%a15] 8
	mov	%d5, %d15
	ld.bu	%d4, [%a15] 12
	call	IfxPort_setPinPadDriver
.LVL170:
	.loc 1 345 0
	ld.bu	%d15, [%a15] 4
	add	%d15, -2
	jge.u	%d15, 5, .L83
	movh.a	%a2, hi:.L86
	lea	%a2, [%a2] lo:.L86
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L86:
	.code32
	j	.L85
	.code32
	j	.L87
	.code32
	j	.L88
	.code32
	j	.L89
	.code32
	j	.L90
.L90:
	.loc 1 360 0
	ld.a	%a2, [%a15]0
.LVL171:
.LBB118:
.LBB119:
	.loc 2 1513 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,12, %d15,0
	st.w	[%a2] 4, %d15
.LVL172:
.L83:
	ret
.L89:
.LBE119:
.LBE118:
	.loc 1 357 0
	ld.a	%a2, [%a15]0
.LVL173:
.LBB120:
.LBB121:
	.loc 2 1425 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	ins.t	%d15, %d2,10, %d15,0
	st.w	[%a2] 4, %d15
.LVL174:
	ret
.LVL175:
.L85:
.LBE121:
.LBE120:
	.loc 1 348 0
	ld.a	%a2, [%a15]0
.LVL176:
.LBB122:
.LBB123:
	.loc 2 1109 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 0, 1
	st.w	[%a2] 4, %d15
.LVL177:
	ret
.LVL178:
.L87:
.LBE123:
.LBE122:
	.loc 1 351 0
	ld.a	%a2, [%a15]0
.LVL179:
.LBB124:
.LBB125:
	.loc 2 1212 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 2, 2
	st.w	[%a2] 4, %d15
.LVL180:
	ret
.LVL181:
.L88:
.LBE125:
.LBE124:
	.loc 1 354 0
	ld.a	%a2, [%a15]0
.LVL182:
.LBB126:
.LBB127:
	.loc 2 1309 0
	ld.bu	%d15, [%a15] 16
	ld.w	%d2, [%a2] 4
	insert	%d15, %d2, %d15, 6, 2
	st.w	[%a2] 4, %d15
.LVL183:
	ret
.LBE127:
.LBE126:
.LFE326:
	.size	IfxGpt12_initTxInPinWithPadLevel, .-IfxGpt12_initTxInPinWithPadLevel
.section .text.IfxGpt12_resetModule,"ax",@progbits
	.align 1
	.global	IfxGpt12_resetModule
	.type	IfxGpt12_resetModule, @function
IfxGpt12_resetModule:
.LFB327:
	.loc 1 369 0
.LVL184:
	.loc 1 369 0
	mov.aa	%a15, %a4
	.loc 1 370 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL185:
	.loc 1 372 0
	mov	%d4, %d2
	.loc 1 370 0
	mov	%d8, %d2
.LVL186:
	.loc 1 372 0
	call	IfxScuWdt_clearCpuEndinit
.LVL187:
	.loc 1 373 0
	ld.w	%d15, [%a15] 244
	.loc 1 375 0
	mov	%d4, %d8
	.loc 1 373 0
	or	%d15, %d15, 1
	st.w	[%a15] 244, %d15
	.loc 1 374 0
	ld.w	%d15, [%a15] 240
	or	%d15, %d15, 1
	st.w	[%a15] 240, %d15
	.loc 1 375 0
	call	IfxScuWdt_setCpuEndinit
.LVL188:
.L92:
	.loc 1 377 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L92
	.loc 1 381 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL189:
	.loc 1 382 0
	ld.w	%d15, [%a15] 236
	.loc 1 383 0
	mov	%d4, %d8
	.loc 1 382 0
	or	%d15, %d15, 1
	st.w	[%a15] 236, %d15
	.loc 1 383 0
	j	IfxScuWdt_setCpuEndinit
.LVL190:
.LFE327:
	.size	IfxGpt12_resetModule, .-IfxGpt12_resetModule
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
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB318
	.uaword	.LFE318-.LFB318
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB319
	.uaword	.LFE319-.LFB319
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB320
	.uaword	.LFE320-.LFB320
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB321
	.uaword	.LFE321-.LFB321
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB322
	.uaword	.LFE322-.LFB322
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB323
	.uaword	.LFE323-.LFB323
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB324
	.uaword	.LFE324-.LFB324
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.align 2
.LEFDE22:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxPort_regdef.h"
	.file 7 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxGpt12_regdef.h"
	.file 8 "0_Src/BaseSw/iLLD/TC27D/Tricore/_PinMap/IfxGpt12_PinMap.h"
	.file 9 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuCcu.h"
	.file 10 "0_Src/BaseSw/iLLD/TC27D/Tricore/Scu/Std/IfxScuWdt.h"
	.file 11 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5329
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Gpt12/Std/IfxGpt12.c"
	.string	"C:\\\\Users\\\\user\\\\Desktop\\\\programming_PROJECTS\\\\\307\321\276\347\264\353_\300\323\272\243\265\360\265\345\275\303\275\272\305\333\\\\DevBaseEnv_vscode_TC27D"
	.uaword	.Ldebug_ranges0+0x48
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
	.byte	0x4
	.byte	0x59
	.uaword	0x1ed
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
	.uaword	0x219
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x1a9
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x24c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
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
	.uaword	0x298
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
	.byte	0x71
	.uaword	0x312
	.uleb128 0x7
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x7
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x7
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x7
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x7
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x7
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x7
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x7
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_RxSel"
	.byte	0x5
	.byte	0x7a
	.uaword	0x299
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.byte	0x7d
	.uaword	0x346
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x5
	.byte	0x7f
	.uaword	0x292
	.byte	0
	.uleb128 0xa
	.string	"index"
	.byte	0x5
	.byte	0x80
	.uaword	0x22f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x81
	.uaword	0x323
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xb
	.uaword	0x1ed
	.uaword	0x38c
	.uleb128 0xc
	.uaword	0x370
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.uaword	0x1ed
	.uaword	0x39c
	.uleb128 0xc
	.uaword	0x370
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.uaword	0x1ed
	.uaword	0x3ac
	.uleb128 0xc
	.uaword	0x370
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x1ed
	.uaword	0x3bc
	.uleb128 0xc
	.uaword	0x370
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.uaword	0x1ed
	.uaword	0x3cc
	.uleb128 0xc
	.uaword	0x370
	.byte	0x9f
	.byte	0
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x5de
	.uleb128 0xe
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x3cc
	.uleb128 0xd
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x622
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0x54
	.uaword	0x360
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x5f7
	.uleb128 0xd
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x759
	.uleb128 0xe
	.string	"EN0"
	.byte	0x6
	.byte	0x5a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x6
	.byte	0x5b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x6
	.byte	0x5c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x6
	.byte	0x5d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x6
	.byte	0x5e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x6
	.byte	0x5f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x6
	.byte	0x60
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x6
	.byte	0x61
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x6
	.byte	0x62
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x6
	.byte	0x63
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x6
	.byte	0x64
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x6
	.byte	0x65
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x6
	.byte	0x66
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x6
	.byte	0x67
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x6
	.byte	0x68
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x6
	.byte	0x69
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.byte	0x6a
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x6
	.byte	0x6b
	.uaword	0x63b
	.uleb128 0xd
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6e
	.uaword	0x7bb
	.uleb128 0xe
	.string	"MODREV"
	.byte	0x6
	.byte	0x70
	.uaword	0x360
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"MODTYPE"
	.byte	0x6
	.byte	0x71
	.uaword	0x360
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x6
	.byte	0x72
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x6
	.byte	0x73
	.uaword	0x76f
	.uleb128 0xd
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x76
	.uaword	0x8dd
	.uleb128 0xe
	.string	"P0"
	.byte	0x6
	.byte	0x78
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"P1"
	.byte	0x6
	.byte	0x79
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"P2"
	.byte	0x6
	.byte	0x7a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"P3"
	.byte	0x6
	.byte	0x7b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"P4"
	.byte	0x6
	.byte	0x7c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"P5"
	.byte	0x6
	.byte	0x7d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"P6"
	.byte	0x6
	.byte	0x7e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"P7"
	.byte	0x6
	.byte	0x7f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"P8"
	.byte	0x6
	.byte	0x80
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"P9"
	.byte	0x6
	.byte	0x81
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"P10"
	.byte	0x6
	.byte	0x82
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"P11"
	.byte	0x6
	.byte	0x83
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"P12"
	.byte	0x6
	.byte	0x84
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"P13"
	.byte	0x6
	.byte	0x85
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"P14"
	.byte	0x6
	.byte	0x86
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"P15"
	.byte	0x6
	.byte	0x87
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.byte	0x88
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x6
	.byte	0x89
	.uaword	0x7d0
	.uleb128 0xd
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x8c
	.uaword	0x985
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0x8e
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC0"
	.byte	0x6
	.byte	0x8f
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x6
	.byte	0x90
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC1"
	.byte	0x6
	.byte	0x91
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.byte	0x92
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC2"
	.byte	0x6
	.byte	0x93
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x6
	.byte	0x94
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC3"
	.byte	0x6
	.byte	0x95
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x6
	.byte	0x96
	.uaword	0x8f2
	.uleb128 0xd
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x99
	.uaword	0xa35
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0x9b
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC12"
	.byte	0x6
	.byte	0x9c
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x6
	.byte	0x9d
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC13"
	.byte	0x6
	.byte	0x9e
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.byte	0x9f
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC14"
	.byte	0x6
	.byte	0xa0
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x6
	.byte	0xa1
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC15"
	.byte	0x6
	.byte	0xa2
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x6
	.byte	0xa3
	.uaword	0x99d
	.uleb128 0xd
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.uaword	0xae1
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0xa8
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC4"
	.byte	0x6
	.byte	0xa9
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x6
	.byte	0xaa
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC5"
	.byte	0x6
	.byte	0xab
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.byte	0xac
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC6"
	.byte	0x6
	.byte	0xad
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x6
	.byte	0xae
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC7"
	.byte	0x6
	.byte	0xaf
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x6
	.byte	0xb0
	.uaword	0xa4e
	.uleb128 0xd
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb3
	.uaword	0xb8e
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0xb5
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"PC8"
	.byte	0x6
	.byte	0xb6
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x6
	.byte	0xb7
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"PC9"
	.byte	0x6
	.byte	0xb8
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.byte	0xb9
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PC10"
	.byte	0x6
	.byte	0xba
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x6
	.byte	0xbb
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"PC11"
	.byte	0x6
	.byte	0xbc
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x6
	.byte	0xbd
	.uaword	0xaf9
	.uleb128 0xd
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xc0
	.uaword	0xbee
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0xc2
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x6
	.byte	0xc3
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x6
	.byte	0xc4
	.uaword	0x360
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x6
	.byte	0xc5
	.uaword	0xba6
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xc8
	.uaword	0xc4e
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0xca
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x6
	.byte	0xcb
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x6
	.byte	0xcc
	.uaword	0x360
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x6
	.byte	0xcd
	.uaword	0xc06
	.uleb128 0xd
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd0
	.uaword	0xcde
	.uleb128 0xe
	.string	"RDIS_CTRL"
	.byte	0x6
	.byte	0xd2
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"RX_DIS"
	.byte	0x6
	.byte	0xd3
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"TERM"
	.byte	0x6
	.byte	0xd4
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"LRXTERM"
	.byte	0x6
	.byte	0xd5
	.uaword	0x360
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x6
	.byte	0xd6
	.uaword	0x360
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x6
	.byte	0xd7
	.uaword	0xc66
	.uleb128 0xd
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xda
	.uaword	0xdb1
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0xdc
	.uaword	0x360
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"LVDSR"
	.byte	0x6
	.byte	0xdd
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"LVDSRL"
	.byte	0x6
	.byte	0xde
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x6
	.byte	0xdf
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"TDIS_CTRL"
	.byte	0x6
	.byte	0xe0
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"TX_DIS"
	.byte	0x6
	.byte	0xe1
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"TX_PD"
	.byte	0x6
	.byte	0xe2
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"TX_PWDPD"
	.byte	0x6
	.byte	0xe3
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.byte	0xe4
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x6
	.byte	0xe5
	.uaword	0xcfa
	.uleb128 0xd
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe8
	.uaword	0xe42
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0xea
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x6
	.byte	0xeb
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x6
	.byte	0xec
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"PCL2"
	.byte	0x6
	.byte	0xed
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"PCL3"
	.byte	0x6
	.byte	0xee
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.uaword	.LASF8
	.byte	0x6
	.byte	0xef
	.uaword	0x360
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x6
	.byte	0xf0
	.uaword	0xdc9
	.uleb128 0xd
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf3
	.uaword	0xec9
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0xf5
	.uaword	0x360
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"PCL12"
	.byte	0x6
	.byte	0xf6
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"PCL13"
	.byte	0x6
	.byte	0xf7
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"PCL14"
	.byte	0x6
	.byte	0xf8
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"PCL15"
	.byte	0x6
	.byte	0xf9
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x6
	.byte	0xfa
	.uaword	0xe5a
	.uleb128 0xd
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xfd
	.uaword	0xf60
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x6
	.byte	0xff
	.uaword	0x360
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x6
	.uahalf	0x103
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x104
	.uaword	0x360
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x6
	.uahalf	0x105
	.uaword	0xee2
	.uleb128 0x13
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x108
	.uaword	0xffb
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x360
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x10f
	.uaword	0x360
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x6
	.uahalf	0x110
	.uaword	0xf79
	.uleb128 0x13
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x113
	.uaword	0x1155
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x115
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x6
	.uahalf	0x116
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x6
	.uahalf	0x117
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x6
	.uahalf	0x119
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x6
	.uahalf	0x11f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x6
	.uahalf	0x120
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x6
	.uahalf	0x121
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x6
	.uahalf	0x122
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1014
	.uleb128 0x13
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x129
	.uaword	0x13a3
	.uleb128 0x10
	.string	"PS0"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x6
	.uahalf	0x131
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x6
	.uahalf	0x133
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x6
	.uahalf	0x134
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x6
	.uahalf	0x139
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PCL0"
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.string	"PCL1"
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.string	"PCL2"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PCL3"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PCL4"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.string	"PCL5"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.string	"PCL6"
	.byte	0x6
	.uahalf	0x141
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PCL7"
	.byte	0x6
	.uahalf	0x142
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PCL8"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.string	"PCL9"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.string	"PCL10"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PCL11"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PCL12"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"PCL13"
	.byte	0x6
	.uahalf	0x148
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"PCL14"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PCL15"
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR_Bits"
	.byte	0x6
	.uahalf	0x14b
	.uaword	0x116d
	.uleb128 0x13
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1426
	.uleb128 0x10
	.string	"PS0"
	.byte	0x6
	.uahalf	0x150
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x6
	.uahalf	0x151
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x154
	.uaword	0x360
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x13ba
	.uleb128 0x13
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x158
	.uaword	0x14c0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x360
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x6
	.uahalf	0x160
	.uaword	0x143f
	.uleb128 0x13
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x163
	.uaword	0x1556
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x165
	.uaword	0x360
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x6
	.uahalf	0x166
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x6
	.uahalf	0x167
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x6
	.uahalf	0x168
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x360
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x14da
	.uleb128 0x13
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x15ed
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x170
	.uaword	0x360
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x6
	.uahalf	0x173
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x6
	.uahalf	0x174
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x175
	.uaword	0x360
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x6
	.uahalf	0x176
	.uaword	0x156f
	.uleb128 0x13
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x179
	.uaword	0x1737
	.uleb128 0x10
	.string	"PS0"
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PS1"
	.byte	0x6
	.uahalf	0x17c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PS2"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PS3"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PS4"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PS5"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PS6"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PS7"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PS8"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PS9"
	.byte	0x6
	.uahalf	0x184
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PS10"
	.byte	0x6
	.uahalf	0x185
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PS11"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PS12"
	.byte	0x6
	.uahalf	0x187
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PS13"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PS14"
	.byte	0x6
	.uahalf	0x189
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PS15"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x1606
	.uleb128 0x13
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x186f
	.uleb128 0x10
	.string	"P0"
	.byte	0x6
	.uahalf	0x191
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"P1"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"P2"
	.byte	0x6
	.uahalf	0x193
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"P3"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"P4"
	.byte	0x6
	.uahalf	0x195
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"P5"
	.byte	0x6
	.uahalf	0x196
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"P6"
	.byte	0x6
	.uahalf	0x197
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"P7"
	.byte	0x6
	.uahalf	0x198
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"P8"
	.byte	0x6
	.uahalf	0x199
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"P9"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"P10"
	.byte	0x6
	.uahalf	0x19b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"P11"
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"P12"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"P13"
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"P14"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"P15"
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT_Bits"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x174f
	.uleb128 0x13
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a5
	.uaword	0x1973
	.uleb128 0x10
	.string	"SEL0"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"SEL1"
	.byte	0x6
	.uahalf	0x1a8
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"SEL2"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"SEL3"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"SEL4"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"SEL5"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"SEL6"
	.byte	0x6
	.uahalf	0x1ad
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"reserved_7"
	.byte	0x6
	.uahalf	0x1ae
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"SEL10"
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"SEL11"
	.byte	0x6
	.uahalf	0x1b0
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0x360
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"LCK"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x6
	.uahalf	0x1b3
	.uaword	0x1886
	.uleb128 0x13
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b6
	.uaword	0x1add
	.uleb128 0x10
	.string	"PDIS0"
	.byte	0x6
	.uahalf	0x1b8
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.string	"PDIS1"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.string	"PDIS2"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PDIS3"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PDIS4"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.string	"PDIS5"
	.byte	0x6
	.uahalf	0x1bd
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"PDIS6"
	.byte	0x6
	.uahalf	0x1be
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PDIS7"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PDIS8"
	.byte	0x6
	.uahalf	0x1c0
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"PDIS9"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"PDIS10"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PDIS11"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PDIS12"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"PDIS13"
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"PDIS14"
	.byte	0x6
	.uahalf	0x1c6
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PDIS15"
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x1c8
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0x198b
	.uleb128 0x13
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x1c11
	.uleb128 0x10
	.string	"PD0"
	.byte	0x6
	.uahalf	0x1ce
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL0"
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD1"
	.byte	0x6
	.uahalf	0x1d0
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL1"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD2"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL2"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD3"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL3"
	.byte	0x6
	.uahalf	0x1d5
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD4"
	.byte	0x6
	.uahalf	0x1d6
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL4"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD5"
	.byte	0x6
	.uahalf	0x1d8
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL5"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD6"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL6"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD7"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL7"
	.byte	0x6
	.uahalf	0x1dd
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x6
	.uahalf	0x1de
	.uaword	0x1af6
	.uleb128 0x13
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x1d50
	.uleb128 0x10
	.string	"PD8"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"PL8"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.string	"PD9"
	.byte	0x6
	.uahalf	0x1e5
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"PL9"
	.byte	0x6
	.uahalf	0x1e6
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"PD10"
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"PL10"
	.byte	0x6
	.uahalf	0x1e8
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.string	"PD11"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"PL11"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.string	"PD12"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.string	"PL12"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.string	"PD13"
	.byte	0x6
	.uahalf	0x1ed
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.string	"PL13"
	.byte	0x6
	.uahalf	0x1ee
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.string	"PD14"
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.string	"PL14"
	.byte	0x6
	.uahalf	0x1f0
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.string	"PD15"
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.string	"PL15"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0x1c29
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0x1d90
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1fd
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1fe
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x5de
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN0"
	.byte	0x6
	.uahalf	0x200
	.uaword	0x1d68
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x203
	.uaword	0x1dcd
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x205
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x206
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x622
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ACCEN1"
	.byte	0x6
	.uahalf	0x208
	.uaword	0x1da5
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x1e0a
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x759
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ESR"
	.byte	0x6
	.uahalf	0x210
	.uaword	0x1de2
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x213
	.uaword	0x1e44
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x215
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x216
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x217
	.uaword	0x7bb
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_ID"
	.byte	0x6
	.uahalf	0x218
	.uaword	0x1e1c
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x21b
	.uaword	0x1e7d
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x21d
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x21e
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x8dd
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IN"
	.byte	0x6
	.uahalf	0x220
	.uaword	0x1e55
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x223
	.uaword	0x1eb6
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x225
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x226
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x227
	.uaword	0x985
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR0"
	.byte	0x6
	.uahalf	0x228
	.uaword	0x1e8e
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x1ef2
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x22d
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x22e
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0xa35
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR12"
	.byte	0x6
	.uahalf	0x230
	.uaword	0x1eca
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x233
	.uaword	0x1f2f
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x235
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x236
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x237
	.uaword	0xae1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR4"
	.byte	0x6
	.uahalf	0x238
	.uaword	0x1f07
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x1f6b
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x23d
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x23e
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x23f
	.uaword	0xb8e
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_IOCR8"
	.byte	0x6
	.uahalf	0x240
	.uaword	0x1f43
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x243
	.uaword	0x1fa7
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x245
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x246
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x247
	.uaword	0xbee
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR0"
	.byte	0x6
	.uahalf	0x248
	.uaword	0x1f7f
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x1ff1
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x24d
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x24e
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x24f
	.uaword	0xc4e
	.uleb128 0x15
	.string	"B_P21"
	.byte	0x6
	.uahalf	0x250
	.uaword	0xcde
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR1"
	.byte	0x6
	.uahalf	0x251
	.uaword	0x1fbb
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x254
	.uaword	0x202d
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x256
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x258
	.uaword	0xdb1
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_LPCR2"
	.byte	0x6
	.uahalf	0x259
	.uaword	0x2005
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x25c
	.uaword	0x2069
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x25e
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x25f
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x260
	.uaword	0x1155
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x2041
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x264
	.uaword	0x20a4
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x266
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x267
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x268
	.uaword	0xe42
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR0"
	.byte	0x6
	.uahalf	0x269
	.uaword	0x207c
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x26c
	.uaword	0x20e0
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x26e
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x26f
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x270
	.uaword	0xec9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR12"
	.byte	0x6
	.uahalf	0x271
	.uaword	0x20b8
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x274
	.uaword	0x211d
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x276
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x277
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x278
	.uaword	0xf60
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR4"
	.byte	0x6
	.uahalf	0x279
	.uaword	0x20f5
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x27c
	.uaword	0x2159
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x27e
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x27f
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x280
	.uaword	0xffb
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMCR8"
	.byte	0x6
	.uahalf	0x281
	.uaword	0x2131
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x284
	.uaword	0x2195
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x286
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x287
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x288
	.uaword	0x13a3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMR"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x216d
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x28c
	.uaword	0x21cf
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x28e
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x28f
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x290
	.uaword	0x1737
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR"
	.byte	0x6
	.uahalf	0x291
	.uaword	0x21a7
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x294
	.uaword	0x220a
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x296
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x297
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x298
	.uaword	0x1426
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR0"
	.byte	0x6
	.uahalf	0x299
	.uaword	0x21e2
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x29c
	.uaword	0x2246
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x29e
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x29f
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x2a0
	.uaword	0x14c0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR12"
	.byte	0x6
	.uahalf	0x2a1
	.uaword	0x221e
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x2a4
	.uaword	0x2283
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x2a6
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x2a8
	.uaword	0x1556
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR4"
	.byte	0x6
	.uahalf	0x2a9
	.uaword	0x225b
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x22bf
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x2ae
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x2af
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x2b0
	.uaword	0x15ed
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OMSR8"
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x2297
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x2b4
	.uaword	0x22fb
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x2b6
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x2b7
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x2b8
	.uaword	0x186f
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_OUT"
	.byte	0x6
	.uahalf	0x2b9
	.uaword	0x22d3
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x2bc
	.uaword	0x2335
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x2be
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x2bf
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x2c0
	.uaword	0x1973
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PCSR"
	.byte	0x6
	.uahalf	0x2c1
	.uaword	0x230d
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x2c4
	.uaword	0x2370
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x2c6
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x2c7
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x2c8
	.uaword	0x1add
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDISC"
	.byte	0x6
	.uahalf	0x2c9
	.uaword	0x2348
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x2cc
	.uaword	0x23ac
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x2ce
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x2cf
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x2d0
	.uaword	0x1c11
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR0"
	.byte	0x6
	.uahalf	0x2d1
	.uaword	0x2384
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x2d4
	.uaword	0x23e7
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x2d6
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x2d7
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x2d8
	.uaword	0x1d50
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P_PDR1"
	.byte	0x6
	.uahalf	0x2d9
	.uaword	0x23bf
	.uleb128 0x16
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x2e4
	.uaword	0x262c
	.uleb128 0x17
	.string	"OUT"
	.byte	0x6
	.uahalf	0x2e6
	.uaword	0x22fb
	.byte	0
	.uleb128 0x17
	.string	"OMR"
	.byte	0x6
	.uahalf	0x2e7
	.uaword	0x2195
	.byte	0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0x6
	.uahalf	0x2e8
	.uaword	0x1e44
	.byte	0x8
	.uleb128 0x18
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x2e9
	.uaword	0x39c
	.byte	0xc
	.uleb128 0x17
	.string	"IOCR0"
	.byte	0x6
	.uahalf	0x2ea
	.uaword	0x1eb6
	.byte	0x10
	.uleb128 0x17
	.string	"IOCR4"
	.byte	0x6
	.uahalf	0x2eb
	.uaword	0x1f2f
	.byte	0x14
	.uleb128 0x17
	.string	"IOCR8"
	.byte	0x6
	.uahalf	0x2ec
	.uaword	0x1f6b
	.byte	0x18
	.uleb128 0x17
	.string	"IOCR12"
	.byte	0x6
	.uahalf	0x2ed
	.uaword	0x1ef2
	.byte	0x1c
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x2ee
	.uaword	0x39c
	.byte	0x20
	.uleb128 0x17
	.string	"IN"
	.byte	0x6
	.uahalf	0x2ef
	.uaword	0x1e7d
	.byte	0x24
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x2f0
	.uaword	0x38c
	.byte	0x28
	.uleb128 0x17
	.string	"PDR0"
	.byte	0x6
	.uahalf	0x2f1
	.uaword	0x23ac
	.byte	0x40
	.uleb128 0x17
	.string	"PDR1"
	.byte	0x6
	.uahalf	0x2f2
	.uaword	0x23e7
	.byte	0x44
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x2f3
	.uaword	0x3ac
	.byte	0x48
	.uleb128 0x17
	.string	"ESR"
	.byte	0x6
	.uahalf	0x2f4
	.uaword	0x1e0a
	.byte	0x50
	.uleb128 0x17
	.string	"reserved_54"
	.byte	0x6
	.uahalf	0x2f5
	.uaword	0x37c
	.byte	0x54
	.uleb128 0x17
	.string	"PDISC"
	.byte	0x6
	.uahalf	0x2f6
	.uaword	0x2370
	.byte	0x60
	.uleb128 0x17
	.string	"PCSR"
	.byte	0x6
	.uahalf	0x2f7
	.uaword	0x2335
	.byte	0x64
	.uleb128 0x17
	.string	"reserved_68"
	.byte	0x6
	.uahalf	0x2f8
	.uaword	0x3ac
	.byte	0x68
	.uleb128 0x17
	.string	"OMSR0"
	.byte	0x6
	.uahalf	0x2f9
	.uaword	0x220a
	.byte	0x70
	.uleb128 0x17
	.string	"OMSR4"
	.byte	0x6
	.uahalf	0x2fa
	.uaword	0x2283
	.byte	0x74
	.uleb128 0x17
	.string	"OMSR8"
	.byte	0x6
	.uahalf	0x2fb
	.uaword	0x22bf
	.byte	0x78
	.uleb128 0x17
	.string	"OMSR12"
	.byte	0x6
	.uahalf	0x2fc
	.uaword	0x2246
	.byte	0x7c
	.uleb128 0x17
	.string	"OMCR0"
	.byte	0x6
	.uahalf	0x2fd
	.uaword	0x20a4
	.byte	0x80
	.uleb128 0x17
	.string	"OMCR4"
	.byte	0x6
	.uahalf	0x2fe
	.uaword	0x211d
	.byte	0x84
	.uleb128 0x17
	.string	"OMCR8"
	.byte	0x6
	.uahalf	0x2ff
	.uaword	0x2159
	.byte	0x88
	.uleb128 0x17
	.string	"OMCR12"
	.byte	0x6
	.uahalf	0x300
	.uaword	0x20e0
	.byte	0x8c
	.uleb128 0x17
	.string	"OMSR"
	.byte	0x6
	.uahalf	0x301
	.uaword	0x21cf
	.byte	0x90
	.uleb128 0x17
	.string	"OMCR"
	.byte	0x6
	.uahalf	0x302
	.uaword	0x2069
	.byte	0x94
	.uleb128 0x17
	.string	"reserved_98"
	.byte	0x6
	.uahalf	0x303
	.uaword	0x3ac
	.byte	0x98
	.uleb128 0x17
	.string	"LPCR0"
	.byte	0x6
	.uahalf	0x304
	.uaword	0x1fa7
	.byte	0xa0
	.uleb128 0x17
	.string	"LPCR1"
	.byte	0x6
	.uahalf	0x305
	.uaword	0x1ff1
	.byte	0xa4
	.uleb128 0x17
	.string	"LPCR2"
	.byte	0x6
	.uahalf	0x306
	.uaword	0x202d
	.byte	0xa8
	.uleb128 0x17
	.string	"reserved_A4"
	.byte	0x6
	.uahalf	0x307
	.uaword	0x262c
	.byte	0xac
	.uleb128 0x17
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x308
	.uaword	0x1dcd
	.byte	0xf8
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x309
	.uaword	0x1d90
	.byte	0xfc
	.byte	0
	.uleb128 0xb
	.uaword	0x1ed
	.uaword	0x263c
	.uleb128 0xc
	.uaword	0x370
	.byte	0x4b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_P"
	.byte	0x6
	.uahalf	0x30a
	.uaword	0x264a
	.uleb128 0x19
	.uaword	0x23fa
	.uleb128 0x4
	.byte	0x4
	.uaword	0x263c
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x40
	.uaword	0x26d5
	.uleb128 0x7
	.string	"IfxPort_InputMode_undefined"
	.sleb128 -1
	.uleb128 0x7
	.string	"IfxPort_InputMode_noPullDevice"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxPort_InputMode_pullDown"
	.sleb128 8
	.uleb128 0x7
	.string	"IfxPort_InputMode_pullUp"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_InputMode"
	.byte	0x3
	.byte	0x45
	.uaword	0x2655
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x4c
	.uaword	0x298e
	.uleb128 0x7
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x7
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x7
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x7
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x7
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x7
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x7
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x7
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x7
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x7
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x7
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x7
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x7
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x7
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x7
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x7
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x7
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x7
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Mode"
	.byte	0x3
	.byte	0x60
	.uaword	0x26ee
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.uaword	0x2b43
	.uleb128 0x7
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x7
	.string	"IfxPort_PadDriver_lvdsSpeed1"
	.sleb128 4
	.uleb128 0x7
	.string	"IfxPort_PadDriver_lvdsSpeed2"
	.sleb128 5
	.uleb128 0x7
	.string	"IfxPort_PadDriver_lvdsSpeed3"
	.sleb128 6
	.uleb128 0x7
	.string	"IfxPort_PadDriver_lvdsSpeed4"
	.sleb128 7
	.uleb128 0x7
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x7
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x7
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x7
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x3
	.byte	0x8a
	.uaword	0x29a2
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0xaa
	.uaword	0x2b7e
	.uleb128 0xa
	.string	"port"
	.byte	0x3
	.byte	0xac
	.uaword	0x264f
	.byte	0
	.uleb128 0x9
	.uaword	.LASF14
	.byte	0x3
	.byte	0xad
	.uaword	0x1e0
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0x3
	.byte	0xae
	.uaword	0x2b5c
	.uleb128 0xd
	.string	"_Ifx_GPT12_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x2da7
	.uleb128 0xe
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xe
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xe
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x2b91
	.uleb128 0xd
	.string	"_Ifx_GPT12_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x2df3
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x54
	.uaword	0x360
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x2dc4
	.uleb128 0xd
	.string	"_Ifx_GPT12_CAPREL_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x2e51
	.uleb128 0xe
	.string	"CAPREL"
	.byte	0x7
	.byte	0x5a
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x5b
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_CAPREL_Bits"
	.byte	0x7
	.byte	0x5c
	.uaword	0x2e10
	.uleb128 0xd
	.string	"_Ifx_GPT12_CLC_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x5f
	.uaword	0x2ed9
	.uleb128 0xe
	.string	"DISR"
	.byte	0x7
	.byte	0x61
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"DISS"
	.byte	0x7
	.byte	0x62
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.byte	0x63
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"EDIS"
	.byte	0x7
	.byte	0x64
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.uaword	.LASF10
	.byte	0x7
	.byte	0x65
	.uaword	0x360
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_CLC_Bits"
	.byte	0x7
	.byte	0x66
	.uaword	0x2e6e
	.uleb128 0xd
	.string	"_Ifx_GPT12_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x69
	.uaword	0x2f43
	.uleb128 0xe
	.string	"MODREV"
	.byte	0x7
	.byte	0x6b
	.uaword	0x360
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"MODTYPE"
	.byte	0x7
	.byte	0x6c
	.uaword	0x360
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x7
	.byte	0x6d
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_ID_Bits"
	.byte	0x7
	.byte	0x6e
	.uaword	0x2ef3
	.uleb128 0xd
	.string	"_Ifx_GPT12_KRST0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x71
	.uaword	0x2fac
	.uleb128 0xe
	.string	"RST"
	.byte	0x7
	.byte	0x73
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"RSTSTAT"
	.byte	0x7
	.byte	0x74
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x7
	.byte	0x75
	.uaword	0x360
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_KRST0_Bits"
	.byte	0x7
	.byte	0x76
	.uaword	0x2f5c
	.uleb128 0xd
	.string	"_Ifx_GPT12_KRST1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x79
	.uaword	0x3005
	.uleb128 0xe
	.string	"RST"
	.byte	0x7
	.byte	0x7b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.byte	0x7c
	.uaword	0x360
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_KRST1_Bits"
	.byte	0x7
	.byte	0x7d
	.uaword	0x2fc8
	.uleb128 0xd
	.string	"_Ifx_GPT12_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x80
	.uaword	0x3060
	.uleb128 0xe
	.string	"CLR"
	.byte	0x7
	.byte	0x82
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.uaword	.LASF15
	.byte	0x7
	.byte	0x83
	.uaword	0x360
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_KRSTCLR_Bits"
	.byte	0x7
	.byte	0x84
	.uaword	0x3021
	.uleb128 0xd
	.string	"_Ifx_GPT12_OCS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x87
	.uaword	0x30f3
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x7
	.byte	0x89
	.uaword	0x360
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.string	"SUS"
	.byte	0x7
	.byte	0x8a
	.uaword	0x360
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"SUS_P"
	.byte	0x7
	.byte	0x8b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.string	"SUSSTA"
	.byte	0x7
	.byte	0x8c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.string	"reserved_30"
	.byte	0x7
	.byte	0x8d
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_OCS_Bits"
	.byte	0x7
	.byte	0x8e
	.uaword	0x307e
	.uleb128 0xd
	.string	"_Ifx_GPT12_PISEL_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x91
	.uaword	0x3207
	.uleb128 0xe
	.string	"IST2IN"
	.byte	0x7
	.byte	0x93
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.string	"IST2EUD"
	.byte	0x7
	.byte	0x94
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.string	"IST3IN"
	.byte	0x7
	.byte	0x95
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.string	"IST3EUD"
	.byte	0x7
	.byte	0x96
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"IST4IN"
	.byte	0x7
	.byte	0x97
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"IST4EUD"
	.byte	0x7
	.byte	0x98
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"IST5IN"
	.byte	0x7
	.byte	0x99
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"IST5EUD"
	.byte	0x7
	.byte	0x9a
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"IST6IN"
	.byte	0x7
	.byte	0x9b
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"IST6EUD"
	.byte	0x7
	.byte	0x9c
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"ISCAPIN"
	.byte	0x7
	.byte	0x9d
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0x9e
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_PISEL_Bits"
	.byte	0x7
	.byte	0x9f
	.uaword	0x310d
	.uleb128 0xd
	.string	"_Ifx_GPT12_T2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa2
	.uaword	0x325c
	.uleb128 0xe
	.string	"T2"
	.byte	0x7
	.byte	0xa4
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xa5
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T2_Bits"
	.byte	0x7
	.byte	0xa6
	.uaword	0x3223
	.uleb128 0xd
	.string	"_Ifx_GPT12_T2CON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa9
	.uaword	0x335a
	.uleb128 0xe
	.string	"T2I"
	.byte	0x7
	.byte	0xab
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"T2M"
	.byte	0x7
	.byte	0xac
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"T2R"
	.byte	0x7
	.byte	0xad
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"T2UD"
	.byte	0x7
	.byte	0xae
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"T2UDE"
	.byte	0x7
	.byte	0xaf
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"T2RC"
	.byte	0x7
	.byte	0xb0
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.uaword	.LASF7
	.byte	0x7
	.byte	0xb1
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"T2IRDIS"
	.byte	0x7
	.byte	0xb2
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"T2EDGE"
	.byte	0x7
	.byte	0xb3
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"T2CHDIR"
	.byte	0x7
	.byte	0xb4
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"T2RDIR"
	.byte	0x7
	.byte	0xb5
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xb6
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T2CON_Bits"
	.byte	0x7
	.byte	0xb7
	.uaword	0x3275
	.uleb128 0xd
	.string	"_Ifx_GPT12_T3_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xba
	.uaword	0x33af
	.uleb128 0xe
	.string	"T3"
	.byte	0x7
	.byte	0xbc
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xbd
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T3_Bits"
	.byte	0x7
	.byte	0xbe
	.uaword	0x3376
	.uleb128 0xd
	.string	"_Ifx_GPT12_T3CON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc1
	.uaword	0x34ac
	.uleb128 0xe
	.string	"T3I"
	.byte	0x7
	.byte	0xc3
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"T3M"
	.byte	0x7
	.byte	0xc4
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"T3R"
	.byte	0x7
	.byte	0xc5
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"T3UD"
	.byte	0x7
	.byte	0xc6
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"T3UDE"
	.byte	0x7
	.byte	0xc7
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"T3OE"
	.byte	0x7
	.byte	0xc8
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"T3OTL"
	.byte	0x7
	.byte	0xc9
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"BPS1"
	.byte	0x7
	.byte	0xca
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"T3EDGE"
	.byte	0x7
	.byte	0xcb
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"T3CHDIR"
	.byte	0x7
	.byte	0xcc
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"T3RDIR"
	.byte	0x7
	.byte	0xcd
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xce
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T3CON_Bits"
	.byte	0x7
	.byte	0xcf
	.uaword	0x33c8
	.uleb128 0xd
	.string	"_Ifx_GPT12_T4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd2
	.uaword	0x3501
	.uleb128 0xe
	.string	"T4"
	.byte	0x7
	.byte	0xd4
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xd5
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T4_Bits"
	.byte	0x7
	.byte	0xd6
	.uaword	0x34c8
	.uleb128 0xd
	.string	"_Ifx_GPT12_T4CON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd9
	.uaword	0x3616
	.uleb128 0xe
	.string	"T4I"
	.byte	0x7
	.byte	0xdb
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"T4M"
	.byte	0x7
	.byte	0xdc
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"T4R"
	.byte	0x7
	.byte	0xdd
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"T4UD"
	.byte	0x7
	.byte	0xde
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"T4UDE"
	.byte	0x7
	.byte	0xdf
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"T4RC"
	.byte	0x7
	.byte	0xe0
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"CLRT2EN"
	.byte	0x7
	.byte	0xe1
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"CLRT3EN"
	.byte	0x7
	.byte	0xe2
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"T4IRDIS"
	.byte	0x7
	.byte	0xe3
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.string	"T4EDGE"
	.byte	0x7
	.byte	0xe4
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"T4CHDIR"
	.byte	0x7
	.byte	0xe5
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"T4RDIR"
	.byte	0x7
	.byte	0xe6
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xe7
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T4CON_Bits"
	.byte	0x7
	.byte	0xe8
	.uaword	0x351a
	.uleb128 0xd
	.string	"_Ifx_GPT12_T5_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xeb
	.uaword	0x366b
	.uleb128 0xe
	.string	"T5"
	.byte	0x7
	.byte	0xed
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xee
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T5_Bits"
	.byte	0x7
	.byte	0xef
	.uaword	0x3632
	.uleb128 0xd
	.string	"_Ifx_GPT12_T5CON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf2
	.uaword	0x3765
	.uleb128 0xe
	.string	"T5I"
	.byte	0x7
	.byte	0xf4
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.string	"T5M"
	.byte	0x7
	.byte	0xf5
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.string	"T5R"
	.byte	0x7
	.byte	0xf6
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.string	"T5UD"
	.byte	0x7
	.byte	0xf7
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.string	"T5UDE"
	.byte	0x7
	.byte	0xf8
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.string	"T5RC"
	.byte	0x7
	.byte	0xf9
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xe
	.string	"CT3"
	.byte	0x7
	.byte	0xfa
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.string	"reserved_11"
	.byte	0x7
	.byte	0xfb
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.string	"CI"
	.byte	0x7
	.byte	0xfc
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xe
	.string	"T5CLR"
	.byte	0x7
	.byte	0xfd
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.string	"T5SC"
	.byte	0x7
	.byte	0xfe
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x7
	.byte	0xff
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T5CON_Bits"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x3684
	.uleb128 0x13
	.string	"_Ifx_GPT12_T6_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x103
	.uaword	0x37be
	.uleb128 0x10
	.string	"T6"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x106
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T6_Bits"
	.byte	0x7
	.uahalf	0x107
	.uaword	0x3782
	.uleb128 0x13
	.string	"_Ifx_GPT12_T6CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x38ca
	.uleb128 0x10
	.string	"T6I"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.string	"T6M"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x360
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.string	"T6R"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.string	"T6UD"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.string	"T6UDE"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.string	"T6OE"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x10
	.string	"T6OTL"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.string	"BPS2"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x360
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x10
	.string	"T6CLR"
	.byte	0x7
	.uahalf	0x115
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.string	"T6SR"
	.byte	0x7
	.uahalf	0x116
	.uaword	0x360
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x117
	.uaword	0x360
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T6CON_Bits"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x37d8
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x120
	.uaword	0x390f
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x122
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x2da7
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_ACCEN0"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x38e7
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x128
	.uaword	0x3950
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x12a
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x2df3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_ACCEN1"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x3928
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x130
	.uaword	0x3991
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x132
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x133
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x2e51
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_CAPREL"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x3969
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x138
	.uaword	0x39d2
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x2ed9
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_CLC"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x39aa
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x140
	.uaword	0x3a10
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x144
	.uaword	0x2f43
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_ID"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x39e8
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x148
	.uaword	0x3a4d
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x2fac
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_KRST0"
	.byte	0x7
	.uahalf	0x14d
	.uaword	0x3a25
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x150
	.uaword	0x3a8d
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x3005
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_KRST1"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x3a65
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x158
	.uaword	0x3acd
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x3060
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_KRSTCLR"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x3aa5
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x160
	.uaword	0x3b0f
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x164
	.uaword	0x30f3
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_OCS"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x3ae7
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x168
	.uaword	0x3b4d
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x16a
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x3207
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_PISEL"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x3b25
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x170
	.uaword	0x3b8d
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x325c
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T2"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x3b65
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x178
	.uaword	0x3bca
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x335a
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T2CON"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x3ba2
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x3c0a
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x33af
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T3"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x3be2
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x188
	.uaword	0x3c47
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x34ac
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T3CON"
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x3c1f
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x190
	.uaword	0x3c87
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x3501
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T4"
	.byte	0x7
	.uahalf	0x195
	.uaword	0x3c5f
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x198
	.uaword	0x3cc4
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x3616
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T4CON"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x3c9c
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x3d04
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x366b
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T5"
	.byte	0x7
	.uahalf	0x1a5
	.uaword	0x3cdc
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a8
	.uaword	0x3d41
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x3765
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T5CON"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x3d19
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x3d81
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x37be
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T6"
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x3d59
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x3dbe
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x360
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x1ca
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x38ca
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12_T6CON"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x3d96
	.uleb128 0x16
	.string	"_Ifx_GPT12"
	.uahalf	0x100
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x3f2e
	.uleb128 0x17
	.string	"CLC"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x39d2
	.byte	0
	.uleb128 0x17
	.string	"PISEL"
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0x3b4d
	.byte	0x4
	.uleb128 0x17
	.string	"ID"
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x3a10
	.byte	0x8
	.uleb128 0x18
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x39c
	.byte	0xc
	.uleb128 0x17
	.string	"T2CON"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x3bca
	.byte	0x10
	.uleb128 0x17
	.string	"T3CON"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x3c47
	.byte	0x14
	.uleb128 0x17
	.string	"T4CON"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x3cc4
	.byte	0x18
	.uleb128 0x17
	.string	"T5CON"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x3d41
	.byte	0x1c
	.uleb128 0x17
	.string	"T6CON"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x3dbe
	.byte	0x20
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x37c
	.byte	0x24
	.uleb128 0x17
	.string	"CAPREL"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x3991
	.byte	0x30
	.uleb128 0x17
	.string	"T2"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x3b8d
	.byte	0x34
	.uleb128 0x17
	.string	"T3"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x3c0a
	.byte	0x38
	.uleb128 0x17
	.string	"T4"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x3c87
	.byte	0x3c
	.uleb128 0x17
	.string	"T5"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x3d04
	.byte	0x40
	.uleb128 0x17
	.string	"T6"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x3d81
	.byte	0x44
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x3bc
	.byte	0x48
	.uleb128 0x17
	.string	"OCS"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x3b0f
	.byte	0xe8
	.uleb128 0x17
	.string	"KRSTCLR"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x3acd
	.byte	0xec
	.uleb128 0x17
	.string	"KRST1"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x3a8d
	.byte	0xf0
	.uleb128 0x17
	.string	"KRST0"
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x3a4d
	.byte	0xf4
	.uleb128 0x17
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x3950
	.byte	0xf8
	.uleb128 0x17
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x390f
	.byte	0xfc
	.byte	0
	.uleb128 0x12
	.string	"Ifx_GPT12"
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x3f40
	.uleb128 0x19
	.uaword	0x3dd6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3f2e
	.uleb128 0x8
	.byte	0x14
	.byte	0x8
	.byte	0x2f
	.uaword	0x3f89
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x8
	.byte	0x31
	.uaword	0x3f45
	.byte	0
	.uleb128 0xa
	.string	"timer"
	.byte	0x8
	.byte	0x32
	.uaword	0x1e0
	.byte	0x4
	.uleb128 0xa
	.string	"pin"
	.byte	0x8
	.byte	0x33
	.uaword	0x2b7e
	.byte	0x8
	.uleb128 0xa
	.string	"select"
	.byte	0x8
	.byte	0x34
	.uaword	0x312
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_TxEud_In"
	.byte	0x8
	.byte	0x35
	.uaword	0x3fa2
	.uleb128 0x1a
	.uaword	0x3f4b
	.uleb128 0x8
	.byte	0x14
	.byte	0x8
	.byte	0x38
	.uaword	0x3fe5
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x8
	.byte	0x3a
	.uaword	0x3f45
	.byte	0
	.uleb128 0xa
	.string	"timer"
	.byte	0x8
	.byte	0x3b
	.uaword	0x1e0
	.byte	0x4
	.uleb128 0xa
	.string	"pin"
	.byte	0x8
	.byte	0x3c
	.uaword	0x2b7e
	.byte	0x8
	.uleb128 0xa
	.string	"select"
	.byte	0x8
	.byte	0x3d
	.uaword	0x312
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_TxIn_In"
	.byte	0x8
	.byte	0x3e
	.uaword	0x3ffd
	.uleb128 0x1a
	.uaword	0x3fa7
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0x73
	.uaword	0x4063
	.uleb128 0x7
	.string	"IfxGpt12_EudInput_A"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxGpt12_EudInput_B"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxGpt12_EudInput_C"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxGpt12_EudInput_D"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_EudInput"
	.byte	0x2
	.byte	0x78
	.uaword	0x4002
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0x7e
	.uaword	0x4107
	.uleb128 0x7
	.string	"IfxGpt12_Gpt1BlockPrescaler_8"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxGpt12_Gpt1BlockPrescaler_4"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxGpt12_Gpt1BlockPrescaler_32"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxGpt12_Gpt1BlockPrescaler_16"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_Gpt1BlockPrescaler"
	.byte	0x2
	.byte	0x83
	.uaword	0x407c
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0x89
	.uaword	0x41b4
	.uleb128 0x7
	.string	"IfxGpt12_Gpt2BlockPrescaler_4"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxGpt12_Gpt2BlockPrescaler_2"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxGpt12_Gpt2BlockPrescaler_16"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxGpt12_Gpt2BlockPrescaler_8"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_Gpt2BlockPrescaler"
	.byte	0x2
	.byte	0x8e
	.uaword	0x412a
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0x9f
	.uaword	0x422c
	.uleb128 0x7
	.string	"IfxGpt12_Input_A"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxGpt12_Input_B"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxGpt12_Input_C"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxGpt12_Input_D"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_Input"
	.byte	0x2
	.byte	0xa4
	.uaword	0x41d7
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0xaa
	.uaword	0x434d
	.uleb128 0x7
	.string	"IfxGpt12_Mode_timer"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxGpt12_Mode_counter"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxGpt12_Mode_lowGatedTimer"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxGpt12_Mode_highGatedTimer"
	.sleb128 3
	.uleb128 0x7
	.string	"IfxGpt12_Mode_reload"
	.sleb128 4
	.uleb128 0x7
	.string	"IfxGpt12_Mode_capture"
	.sleb128 5
	.uleb128 0x7
	.string	"IfxGpt12_Mode_incrementalInterfaceRotationDetection"
	.sleb128 6
	.uleb128 0x7
	.string	"IfxGpt12_Mode_incrementalInterfaceEdgeDetection"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_Mode"
	.byte	0x2
	.byte	0xb3
	.uaword	0x4242
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0xeb
	.uaword	0x4478
	.uleb128 0x7
	.string	"IfxGpt12_TimerInputPrescaler_1"
	.sleb128 0
	.uleb128 0x7
	.string	"IfxGpt12_TimerInputPrescaler_2"
	.sleb128 1
	.uleb128 0x7
	.string	"IfxGpt12_TimerInputPrescaler_4"
	.sleb128 2
	.uleb128 0x7
	.string	"IfxGpt12_TimerInputPrescaler_8"
	.sleb128 3
	.uleb128 0x7
	.string	"IfxGpt12_TimerInputPrescaler_16"
	.sleb128 4
	.uleb128 0x7
	.string	"IfxGpt12_TimerInputPrescaler_32"
	.sleb128 5
	.uleb128 0x7
	.string	"IfxGpt12_TimerInputPrescaler_64"
	.sleb128 6
	.uleb128 0x7
	.string	"IfxGpt12_TimerInputPrescaler_128"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_TimerInputPrescaler"
	.byte	0x2
	.byte	0xf4
	.uaword	0x4362
	.uleb128 0x1b
	.string	"IfxGpt12_getModuleFrequency"
	.byte	0x2
	.uahalf	0x612
	.byte	0x1
	.uaword	0x23d
	.byte	0x3
	.uaword	0x44d3
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x612
	.uaword	0x3f45
	.byte	0
	.uleb128 0x1b
	.string	"IfxGpt12_T2_getMode"
	.byte	0x2
	.uahalf	0x41b
	.byte	0x1
	.uaword	0x434d
	.byte	0x3
	.uaword	0x4502
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x41b
	.uaword	0x3f45
	.byte	0
	.uleb128 0x1d
	.string	"IfxPort_setPinModeInput"
	.byte	0x3
	.uahalf	0x230
	.byte	0x1
	.byte	0x3
	.uaword	0x454a
	.uleb128 0x1e
	.string	"port"
	.byte	0x3
	.uahalf	0x230
	.uaword	0x264f
	.uleb128 0x1c
	.uaword	.LASF14
	.byte	0x3
	.uahalf	0x230
	.uaword	0x1e0
	.uleb128 0x1c
	.uaword	.LASF17
	.byte	0x3
	.uahalf	0x230
	.uaword	0x26d5
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T2_setEudInput"
	.byte	0x2
	.uahalf	0x445
	.byte	0x1
	.byte	0x3
	.uaword	0x4585
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x445
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x445
	.uaword	0x4063
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T3_setEudInput"
	.byte	0x2
	.uahalf	0x4ae
	.byte	0x1
	.byte	0x3
	.uaword	0x45c0
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x4ae
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x4ae
	.uaword	0x4063
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T4_setEudInput"
	.byte	0x2
	.uahalf	0x50f
	.byte	0x1
	.byte	0x3
	.uaword	0x45fb
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x50f
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x50f
	.uaword	0x4063
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T5_setEudInput"
	.byte	0x2
	.uahalf	0x587
	.byte	0x1
	.byte	0x3
	.uaword	0x4636
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x587
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x587
	.uaword	0x4063
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T6_setEudInput"
	.byte	0x2
	.uahalf	0x5df
	.byte	0x1
	.byte	0x3
	.uaword	0x4671
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x5df
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x5df
	.uaword	0x4063
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T2_setInput"
	.byte	0x2
	.uahalf	0x452
	.byte	0x1
	.byte	0x3
	.uaword	0x46a9
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x452
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x452
	.uaword	0x422c
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T3_setInput"
	.byte	0x2
	.uahalf	0x4ba
	.byte	0x1
	.byte	0x3
	.uaword	0x46e1
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x4ba
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x4ba
	.uaword	0x422c
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T4_setInput"
	.byte	0x2
	.uahalf	0x51b
	.byte	0x1
	.byte	0x3
	.uaword	0x4719
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x51b
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x51b
	.uaword	0x422c
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T5_setInput"
	.byte	0x2
	.uahalf	0x58e
	.byte	0x1
	.byte	0x3
	.uaword	0x4751
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x58e
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x58e
	.uaword	0x422c
	.byte	0
	.uleb128 0x1d
	.string	"IfxGpt12_T6_setInput"
	.byte	0x2
	.uahalf	0x5e6
	.byte	0x1
	.byte	0x3
	.uaword	0x4789
	.uleb128 0x1c
	.uaword	.LASF16
	.byte	0x2
	.uahalf	0x5e6
	.uaword	0x3f45
	.uleb128 0x1c
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x5e6
	.uaword	0x422c
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxGpt12_T2_getFrequency"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	0x23d
	.uaword	.LFB316
	.uaword	.LFE316
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4843
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.byte	0x23
	.uaword	0x3f45
	.uaword	.LLST0
	.uleb128 0x21
	.string	"freq"
	.byte	0x1
	.byte	0x25
	.uaword	0x23d
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	.LASF17
	.byte	0x1
	.byte	0x27
	.uaword	0x434d
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0x1
	.byte	0x28
	.uaword	0x4478
	.uaword	.LLST2
	.uleb128 0x21
	.string	"bps1"
	.byte	0x1
	.byte	0x2a
	.uaword	0x4107
	.uaword	.LLST3
	.uleb128 0x24
	.uaword	0x449c
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0x25
	.uaword	0x4829
	.uleb128 0x25
	.uaword	0x44c6
	.uaword	.LLST0
	.uleb128 0x26
	.uaword	.LVL1
	.uaword	0x522c
	.byte	0
	.uleb128 0x27
	.uaword	0x44d3
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3c
	.uleb128 0x25
	.uaword	0x44f5
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxGpt12_T3_getFrequency"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.uaword	0x23d
	.uaword	.LFB317
	.uaword	.LFE317
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x48e4
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.byte	0x4c
	.uaword	0x3f45
	.uaword	.LLST6
	.uleb128 0x21
	.string	"freq"
	.byte	0x1
	.byte	0x4e
	.uaword	0x23d
	.uaword	.LLST7
	.uleb128 0x23
	.uaword	.LASF17
	.byte	0x1
	.byte	0x50
	.uaword	0x434d
	.uaword	.LLST8
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0x1
	.byte	0x51
	.uaword	0x4478
	.uaword	.LLST9
	.uleb128 0x21
	.string	"bps1"
	.byte	0x1
	.byte	0x53
	.uaword	0x4107
	.uaword	.LLST10
	.uleb128 0x28
	.uaword	0x449c
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.byte	0x4e
	.uleb128 0x25
	.uaword	0x44c6
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	.LVL19
	.uaword	0x522c
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxGpt12_T4_getFrequency"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	0x23d
	.uaword	.LFB318
	.uaword	.LFE318
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4985
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.byte	0x75
	.uaword	0x3f45
	.uaword	.LLST12
	.uleb128 0x21
	.string	"freq"
	.byte	0x1
	.byte	0x77
	.uaword	0x23d
	.uaword	.LLST13
	.uleb128 0x23
	.uaword	.LASF17
	.byte	0x1
	.byte	0x79
	.uaword	0x434d
	.uaword	.LLST14
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0x1
	.byte	0x7a
	.uaword	0x4478
	.uaword	.LLST15
	.uleb128 0x21
	.string	"bps1"
	.byte	0x1
	.byte	0x7c
	.uaword	0x4107
	.uaword	.LLST16
	.uleb128 0x28
	.uaword	0x449c
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.byte	0x77
	.uleb128 0x25
	.uaword	0x44c6
	.uaword	.LLST12
	.uleb128 0x26
	.uaword	.LVL40
	.uaword	0x522c
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxGpt12_T5_getFrequency"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	0x23d
	.uaword	.LFB319
	.uaword	.LFE319
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a26
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.byte	0x9e
	.uaword	0x3f45
	.uaword	.LLST18
	.uleb128 0x21
	.string	"freq"
	.byte	0x1
	.byte	0xa0
	.uaword	0x23d
	.uaword	.LLST19
	.uleb128 0x23
	.uaword	.LASF17
	.byte	0x1
	.byte	0xa2
	.uaword	0x434d
	.uaword	.LLST20
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0x1
	.byte	0xa3
	.uaword	0x4478
	.uaword	.LLST21
	.uleb128 0x21
	.string	"bps2"
	.byte	0x1
	.byte	0xa5
	.uaword	0x41b4
	.uaword	.LLST22
	.uleb128 0x28
	.uaword	0x449c
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0xa0
	.uleb128 0x25
	.uaword	0x44c6
	.uaword	.LLST18
	.uleb128 0x26
	.uaword	.LVL61
	.uaword	0x522c
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxGpt12_T6_getFrequency"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.uaword	0x23d
	.uaword	.LFB320
	.uaword	.LFE320
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ac7
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.byte	0xc7
	.uaword	0x3f45
	.uaword	.LLST24
	.uleb128 0x21
	.string	"freq"
	.byte	0x1
	.byte	0xc9
	.uaword	0x23d
	.uaword	.LLST25
	.uleb128 0x23
	.uaword	.LASF17
	.byte	0x1
	.byte	0xcb
	.uaword	0x434d
	.uaword	.LLST26
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0x1
	.byte	0xcc
	.uaword	0x4478
	.uaword	.LLST27
	.uleb128 0x21
	.string	"bps2"
	.byte	0x1
	.byte	0xce
	.uaword	0x41b4
	.uaword	.LLST28
	.uleb128 0x28
	.uaword	0x449c
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.byte	0xc9
	.uleb128 0x25
	.uaword	0x44c6
	.uaword	.LLST24
	.uleb128 0x26
	.uaword	.LVL82
	.uaword	0x522c
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxGpt12_disableModule"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uaword	.LFB321
	.uaword	.LFE321
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4b3f
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.byte	0xf0
	.uaword	0x3f45
	.uaword	.LLST30
	.uleb128 0x21
	.string	"psw"
	.byte	0x1
	.byte	0xf2
	.uaword	0x20b
	.uaword	.LLST31
	.uleb128 0x26
	.uaword	.LVL103
	.uaword	0x5251
	.uleb128 0x2a
	.uaword	.LVL105
	.uaword	0x527d
	.uaword	0x4b2d
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL106
	.byte	0x1
	.uaword	0x52a7
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"IfxGpt12_enableModule"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	.LFB322
	.uaword	.LFE322
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4bb6
	.uleb128 0x20
	.uaword	.LASF16
	.byte	0x1
	.byte	0xf9
	.uaword	0x3f45
	.uaword	.LLST32
	.uleb128 0x21
	.string	"psw"
	.byte	0x1
	.byte	0xfb
	.uaword	0x20b
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LVL108
	.uaword	0x5251
	.uleb128 0x2a
	.uaword	.LVL110
	.uaword	0x527d
	.uaword	0x4ba4
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL111
	.byte	0x1
	.uaword	0x52a7
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxGpt12_initTxEudInPin"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.uaword	.LFB323
	.uaword	.LFE323
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4d06
	.uleb128 0x2e
	.string	"txEudIn"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x4d06
	.uaword	.LLST34
	.uleb128 0x2f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x102
	.uaword	0x26d5
	.uaword	.LLST35
	.uleb128 0x30
	.uaword	0x4502
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.uahalf	0x104
	.uaword	0x4c48
	.uleb128 0x25
	.uaword	0x453d
	.uaword	.LLST35
	.uleb128 0x25
	.uaword	0x4531
	.uaword	.LLST37
	.uleb128 0x25
	.uaword	0x4524
	.uaword	.LLST38
	.uleb128 0x31
	.uaword	.LVL115
	.uaword	0x52cf
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x4636
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.uahalf	0x115
	.uaword	0x4c6f
	.uleb128 0x25
	.uaword	0x4664
	.uaword	.LLST39
	.uleb128 0x25
	.uaword	0x4658
	.uaword	.LLST40
	.byte	0
	.uleb128 0x30
	.uaword	0x45fb
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.uahalf	0x112
	.uaword	0x4c96
	.uleb128 0x25
	.uaword	0x4629
	.uaword	.LLST41
	.uleb128 0x25
	.uaword	0x461d
	.uaword	.LLST42
	.byte	0
	.uleb128 0x30
	.uaword	0x454a
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.uahalf	0x109
	.uaword	0x4cbd
	.uleb128 0x25
	.uaword	0x4578
	.uaword	.LLST43
	.uleb128 0x25
	.uaword	0x456c
	.uaword	.LLST44
	.byte	0
	.uleb128 0x30
	.uaword	0x4585
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x4ce4
	.uleb128 0x25
	.uaword	0x45b3
	.uaword	.LLST45
	.uleb128 0x25
	.uaword	0x45a7
	.uaword	.LLST46
	.byte	0
	.uleb128 0x32
	.uaword	0x45c0
	.uaword	.LBB86
	.uaword	.LBE86
	.byte	0x1
	.uahalf	0x10f
	.uleb128 0x25
	.uaword	0x45ee
	.uaword	.LLST47
	.uleb128 0x33
	.uaword	0x45e2
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3f89
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxGpt12_initTxEudInPinWithPadLevel"
	.byte	0x1
	.uahalf	0x11d
	.byte	0x1
	.uaword	.LFB324
	.uaword	.LFE324
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4e8c
	.uleb128 0x2e
	.string	"txEudIn"
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x4d06
	.uaword	.LLST48
	.uleb128 0x2f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x26d5
	.uaword	.LLST49
	.uleb128 0x2f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x2b43
	.uaword	.LLST50
	.uleb128 0x34
	.uaword	0x4502
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x4dba
	.uleb128 0x25
	.uaword	0x453d
	.uaword	.LLST49
	.uleb128 0x25
	.uaword	0x4531
	.uaword	.LLST52
	.uleb128 0x25
	.uaword	0x4524
	.uaword	.LLST53
	.uleb128 0x31
	.uaword	.LVL133
	.uaword	0x52cf
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x4636
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.uahalf	0x131
	.uaword	0x4de1
	.uleb128 0x25
	.uaword	0x4664
	.uaword	.LLST54
	.uleb128 0x25
	.uaword	0x4658
	.uaword	.LLST55
	.byte	0
	.uleb128 0x30
	.uaword	0x45fb
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x4e08
	.uleb128 0x25
	.uaword	0x4629
	.uaword	.LLST56
	.uleb128 0x25
	.uaword	0x461d
	.uaword	.LLST57
	.byte	0
	.uleb128 0x30
	.uaword	0x454a
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.uahalf	0x125
	.uaword	0x4e2f
	.uleb128 0x25
	.uaword	0x4578
	.uaword	.LLST58
	.uleb128 0x25
	.uaword	0x456c
	.uaword	.LLST59
	.byte	0
	.uleb128 0x30
	.uaword	0x4585
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.uahalf	0x128
	.uaword	0x4e56
	.uleb128 0x25
	.uaword	0x45b3
	.uaword	.LLST60
	.uleb128 0x25
	.uaword	0x45a7
	.uaword	.LLST61
	.byte	0
	.uleb128 0x30
	.uaword	0x45c0
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x4e7b
	.uleb128 0x25
	.uaword	0x45ee
	.uaword	.LLST62
	.uleb128 0x33
	.uaword	0x45e2
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x31
	.uaword	.LVL134
	.uaword	0x52fd
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxGpt12_initTxInPin"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	.LFB325
	.uaword	.LFE325
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4fd6
	.uleb128 0x2e
	.string	"txIn"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x4fd6
	.uaword	.LLST63
	.uleb128 0x2f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x139
	.uaword	0x26d5
	.uaword	.LLST64
	.uleb128 0x30
	.uaword	0x4502
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x4f18
	.uleb128 0x25
	.uaword	0x453d
	.uaword	.LLST64
	.uleb128 0x25
	.uaword	0x4531
	.uaword	.LLST66
	.uleb128 0x25
	.uaword	0x4524
	.uaword	.LLST67
	.uleb128 0x31
	.uaword	.LVL151
	.uaword	0x52cf
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x4751
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x4f3f
	.uleb128 0x25
	.uaword	0x477c
	.uaword	.LLST68
	.uleb128 0x25
	.uaword	0x4770
	.uaword	.LLST69
	.byte	0
	.uleb128 0x30
	.uaword	0x4719
	.uaword	.LBB106
	.uaword	.LBE106
	.byte	0x1
	.uahalf	0x149
	.uaword	0x4f66
	.uleb128 0x25
	.uaword	0x4744
	.uaword	.LLST70
	.uleb128 0x25
	.uaword	0x4738
	.uaword	.LLST71
	.byte	0
	.uleb128 0x30
	.uaword	0x4671
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.uahalf	0x140
	.uaword	0x4f8d
	.uleb128 0x25
	.uaword	0x469c
	.uaword	.LLST72
	.uleb128 0x25
	.uaword	0x4690
	.uaword	.LLST73
	.byte	0
	.uleb128 0x30
	.uaword	0x46a9
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.uahalf	0x143
	.uaword	0x4fb4
	.uleb128 0x25
	.uaword	0x46d4
	.uaword	.LLST74
	.uleb128 0x25
	.uaword	0x46c8
	.uaword	.LLST75
	.byte	0
	.uleb128 0x32
	.uaword	0x46e1
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.uahalf	0x146
	.uleb128 0x25
	.uaword	0x470c
	.uaword	.LLST76
	.uleb128 0x33
	.uaword	0x4700
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3fe5
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxGpt12_initTxInPinWithPadLevel"
	.byte	0x1
	.uahalf	0x154
	.byte	0x1
	.uaword	.LFB326
	.uaword	.LFE326
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5156
	.uleb128 0x2e
	.string	"txIn"
	.byte	0x1
	.uahalf	0x154
	.uaword	0x4fd6
	.uaword	.LLST77
	.uleb128 0x2f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x154
	.uaword	0x26d5
	.uaword	.LLST78
	.uleb128 0x2f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x154
	.uaword	0x2b43
	.uaword	.LLST79
	.uleb128 0x34
	.uaword	0x4502
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x156
	.uaword	0x5084
	.uleb128 0x25
	.uaword	0x453d
	.uaword	.LLST78
	.uleb128 0x25
	.uaword	0x4531
	.uaword	.LLST81
	.uleb128 0x25
	.uaword	0x4524
	.uaword	.LLST82
	.uleb128 0x31
	.uaword	.LVL169
	.uaword	0x52cf
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x4751
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x168
	.uaword	0x50ab
	.uleb128 0x25
	.uaword	0x477c
	.uaword	.LLST83
	.uleb128 0x25
	.uaword	0x4770
	.uaword	.LLST84
	.byte	0
	.uleb128 0x30
	.uaword	0x4719
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.uahalf	0x165
	.uaword	0x50d2
	.uleb128 0x25
	.uaword	0x4744
	.uaword	.LLST85
	.uleb128 0x25
	.uaword	0x4738
	.uaword	.LLST86
	.byte	0
	.uleb128 0x30
	.uaword	0x4671
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x50f9
	.uleb128 0x25
	.uaword	0x469c
	.uaword	.LLST87
	.uleb128 0x25
	.uaword	0x4690
	.uaword	.LLST88
	.byte	0
	.uleb128 0x30
	.uaword	0x46a9
	.uaword	.LBB124
	.uaword	.LBE124
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x5120
	.uleb128 0x25
	.uaword	0x46d4
	.uaword	.LLST89
	.uleb128 0x25
	.uaword	0x46c8
	.uaword	.LLST90
	.byte	0
	.uleb128 0x30
	.uaword	0x46e1
	.uaword	.LBB126
	.uaword	.LBE126
	.byte	0x1
	.uahalf	0x162
	.uaword	0x5145
	.uleb128 0x25
	.uaword	0x470c
	.uaword	.LLST91
	.uleb128 0x33
	.uaword	0x4700
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x31
	.uaword	.LVL170
	.uaword	0x52fd
	.uleb128 0x2b
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"IfxGpt12_resetModule"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	.LFB327
	.uaword	.LFE327
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x51fa
	.uleb128 0x2f
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x170
	.uaword	0x3f45
	.uaword	.LLST92
	.uleb128 0x35
	.string	"passwd"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x20b
	.uaword	.LLST93
	.uleb128 0x26
	.uaword	.LVL185
	.uaword	0x5251
	.uleb128 0x2a
	.uaword	.LVL187
	.uaword	0x527d
	.uaword	0x51c0
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL188
	.uaword	0x52a7
	.uaword	0x51d4
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL189
	.uaword	0x527d
	.uaword	0x51e8
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL190
	.byte	0x1
	.uaword	0x52a7
	.uleb128 0x2b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x346
	.uaword	0x520a
	.uleb128 0xc
	.uaword	0x370
	.byte	0x2
	.byte	0
	.uleb128 0x36
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xb
	.byte	0x96
	.uaword	0x5227
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x51fa
	.uleb128 0x37
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x9
	.uahalf	0x3a0
	.byte	0x1
	.uaword	0x23d
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xa
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x20b
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xa
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x52a7
	.uleb128 0x39
	.uaword	0x20b
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xa
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x52cf
	.uleb128 0x39
	.uaword	0x20b
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxPort_setPinMode"
	.byte	0x3
	.uahalf	0x163
	.byte	0x1
	.byte	0x1
	.uaword	0x52fd
	.uleb128 0x39
	.uaword	0x264f
	.uleb128 0x39
	.uaword	0x1e0
	.uleb128 0x39
	.uaword	0x298e
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"IfxPort_setPinPadDriver"
	.byte	0x3
	.uahalf	0x172
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.uaword	0x264f
	.uleb128 0x39
	.uaword	0x1e0
	.uleb128 0x39
	.uaword	0x2b43
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LFE316
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LFE317
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL38
	.uaword	.LFE317
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40-1
	.uaword	.LFE318
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL50
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LFE318
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61-1
	.uaword	.LFE319
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL64
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL71
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LFE319
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL72
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL81
	.uaword	.LVL82-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL82-1
	.uaword	.LFE320
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL85
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL92
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL101
	.uaword	.LFE320
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL86
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL87
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL102
	.uaword	.LVL103-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL103-1
	.uaword	.LFE321
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL104
	.uaword	.LVL105-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL105-1
	.uaword	.LFE321
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL107
	.uaword	.LVL108-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL108-1
	.uaword	.LFE322
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL109
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL110-1
	.uaword	.LFE322
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL113
	.uaword	.LFE323
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL112
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL114
	.uaword	.LVL115-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL115-1
	.uaword	.LFE323
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL113
	.uaword	.LVL115-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL113
	.uaword	.LVL115-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL118
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL124
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL130
	.uaword	.LFE324
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL129
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL132
	.uaword	.LVL133-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL133-1
	.uaword	.LFE324
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL129
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL131
	.uaword	.LFE324
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL130
	.uaword	.LVL133-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL130
	.uaword	.LVL133-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL137
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL140
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL149
	.uaword	.LFE325
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL148
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL150
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL151-1
	.uaword	.LFE325
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL149
	.uaword	.LVL151-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL149
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL154
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL157
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL160
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL166
	.uaword	.LFE326
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL168
	.uaword	.LVL169-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL169-1
	.uaword	.LFE326
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL165
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL167
	.uaword	.LFE326
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x2
	.byte	0x84
	.sleb128 12
	.uaword	.LVL166
	.uaword	.LVL169-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL166
	.uaword	.LVL169-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL173
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL176
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL179
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL182
	.uaword	.LVL183
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL184
	.uaword	.LVL185-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL185-1
	.uaword	.LFE327
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL186
	.uaword	.LVL187-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL187-1
	.uaword	.LFE327
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x74
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB316
	.uaword	.LFE316-.LFB316
	.uaword	.LFB317
	.uaword	.LFE317-.LFB317
	.uaword	.LFB318
	.uaword	.LFE318-.LFB318
	.uaword	.LFB319
	.uaword	.LFE319-.LFB319
	.uaword	.LFB320
	.uaword	.LFE320-.LFB320
	.uaword	.LFB321
	.uaword	.LFE321-.LFB321
	.uaword	.LFB322
	.uaword	.LFE322-.LFB322
	.uaword	.LFB323
	.uaword	.LFE323-.LFB323
	.uaword	.LFB324
	.uaword	.LFE324-.LFB324
	.uaword	.LFB325
	.uaword	.LFE325-.LFB325
	.uaword	.LFB326
	.uaword	.LFE326-.LFB326
	.uaword	.LFB327
	.uaword	.LFE327-.LFB327
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	0
	.uaword	0
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	0
	.uaword	0
	.uaword	.LFB316
	.uaword	.LFE316
	.uaword	.LFB317
	.uaword	.LFE317
	.uaword	.LFB318
	.uaword	.LFE318
	.uaword	.LFB319
	.uaword	.LFE319
	.uaword	.LFB320
	.uaword	.LFE320
	.uaword	.LFB321
	.uaword	.LFE321
	.uaword	.LFB322
	.uaword	.LFE322
	.uaword	.LFB323
	.uaword	.LFE323
	.uaword	.LFB324
	.uaword	.LFE324
	.uaword	.LFB325
	.uaword	.LFE325
	.uaword	.LFB326
	.uaword	.LFE326
	.uaword	.LFB327
	.uaword	.LFE327
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"MODNUMBER"
.LASF20:
	.string	"inputMode"
.LASF14:
	.string	"pinIndex"
.LASF7:
	.string	"reserved_10"
.LASF11:
	.string	"reserved_12"
.LASF2:
	.string	"reserved_16"
.LASF21:
	.string	"padDriver"
.LASF16:
	.string	"gpt12"
.LASF8:
	.string	"reserved_20"
.LASF5:
	.string	"reserved_24"
.LASF9:
	.string	"reserved_28"
.LASF1:
	.string	"reserved_0"
.LASF15:
	.string	"reserved_1"
.LASF6:
	.string	"reserved_2"
.LASF10:
	.string	"reserved_4"
.LASF4:
	.string	"reserved_8"
.LASF19:
	.string	"prescaler"
.LASF12:
	.string	"reserved_C"
.LASF0:
	.string	"module"
.LASF18:
	.string	"input"
.LASF13:
	.string	"reserved_48"
.LASF17:
	.string	"mode"
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
