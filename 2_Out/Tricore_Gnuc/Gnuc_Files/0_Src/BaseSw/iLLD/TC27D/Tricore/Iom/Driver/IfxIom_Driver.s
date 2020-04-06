	.file	"IfxIom_Driver.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxIom_Driver_clearAllGlitch,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_clearAllGlitch
	.type	IfxIom_Driver_clearAllGlitch, @function
IfxIom_Driver_clearAllGlitch:
.LFB172:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Iom/Driver/IfxIom_Driver.c"
	.loc 1 50 0
.LVL0:
	.loc 1 51 0
	ld.a	%a15, [%a4]0
.LVL1:
	.loc 1 52 0
	mov	%d15, -1
	st.w	[%a15] 120, %d15
	ret
.LFE172:
	.size	IfxIom_Driver_clearAllGlitch, .-IfxIom_Driver_clearAllGlitch
.section .text.IfxIom_Driver_clearHistory,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_clearHistory
	.type	IfxIom_Driver_clearHistory, @function
IfxIom_Driver_clearHistory:
.LFB173:
	.loc 1 57 0
.LVL2:
	.loc 1 58 0
	ld.a	%a15, [%a4]0
.LVL3:
	.loc 1 59 0
	mov	%d15, 0
	st.w	[%a15] 56, %d15
	ret
.LFE173:
	.size	IfxIom_Driver_clearHistory, .-IfxIom_Driver_clearHistory
.section .text.IfxIom_Driver_clearLamMonGlitch,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_clearLamMonGlitch
	.type	IfxIom_Driver_clearLamMonGlitch, @function
IfxIom_Driver_clearLamMonGlitch:
.LFB174:
	.loc 1 64 0
.LVL4:
	.loc 1 67 0
	ld.bu	%d15, [%a4] 8
	.loc 1 65 0
	ld.a	%a15, [%a4]0
	ld.a	%a15, [%a15]0
.LVL5:
	.loc 1 67 0
	jnz	%d15, .L3
	.loc 1 69 0
	ld.bu	%d15, [%a4] 5
	movh	%d2, 1
	add	%d2, 1
	sh	%d15, %d2, %d15
	st.w	[%a15] 120, %d15
.L3:
	ret
.LFE174:
	.size	IfxIom_Driver_clearLamMonGlitch, .-IfxIom_Driver_clearLamMonGlitch
.section .text.IfxIom_Driver_clearLamRefGlitch,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_clearLamRefGlitch
	.type	IfxIom_Driver_clearLamRefGlitch, @function
IfxIom_Driver_clearLamRefGlitch:
.LFB175:
	.loc 1 75 0
.LVL6:
	.loc 1 78 0
	ld.bu	%d15, [%a4] 7
	.loc 1 76 0
	ld.a	%a15, [%a4]0
	ld.a	%a15, [%a15]0
.LVL7:
	.loc 1 78 0
	jnz	%d15, .L6
	.loc 1 80 0
	ld.bu	%d15, [%a4] 6
	movh	%d2, 1
	add	%d2, 1
	sh	%d15, %d2, %d15
	st.w	[%a15] 120, %d15
.L6:
	ret
.LFE175:
	.size	IfxIom_Driver_clearLamRefGlitch, .-IfxIom_Driver_clearLamRefGlitch
.section .text.IfxIom_Driver_disableEvents,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_disableEvents
	.type	IfxIom_Driver_disableEvents, @function
IfxIom_Driver_disableEvents:
.LFB176:
	.loc 1 86 0
.LVL8:
	.loc 1 88 0
	ld.a	%a15, [%a4]0
	.loc 1 89 0
	mov	%d15, 0
	.loc 1 88 0
	ld.w	%d2, [%a15] 52
.LVL9:
	.loc 1 89 0
	st.w	[%a15] 52, %d15
	.loc 1 91 0
	ret
.LFE176:
	.size	IfxIom_Driver_disableEvents, .-IfxIom_Driver_disableEvents
.section .text.IfxIom_Driver_disableLamEvent,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_disableLamEvent
	.type	IfxIom_Driver_disableLamEvent, @function
IfxIom_Driver_disableLamEvent:
.LFB177:
	.loc 1 95 0
.LVL10:
	.loc 1 100 0
	ld.bu	%d15, [%a4] 10
	.loc 1 97 0
	ld.a	%a15, [%a4]0
	ld.a	%a15, [%a15]0
.LVL11:
	.loc 1 100 0
	jeq	%d15, 1, .L12
	.loc 1 104 0
	jlt.u	%d15, 2, .L9
	.loc 1 106 0
	ld.b	%d15, [%a4] 9
	ld.w	%d2, [%a15] 52
	addi	%d15, %d15, 16
	insert	%d15, %d2, 0, %d15, 1
	st.w	[%a15] 52, %d15
.LVL12:
.L9:
	ret
.LVL13:
.L12:
	.loc 1 102 0
	ld.w	%d2, [%a15] 52
	ld.bu	%d15, [%a4] 4
	insert	%d15, %d2, 0, %d15, 1
	st.w	[%a15] 52, %d15
.LVL14:
	ret
.LFE177:
	.size	IfxIom_Driver_disableLamEvent, .-IfxIom_Driver_disableLamEvent
.section .text.IfxIom_Driver_enableLamEvent,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_enableLamEvent
	.type	IfxIom_Driver_enableLamEvent, @function
IfxIom_Driver_enableLamEvent:
.LFB178:
	.loc 1 116 0
.LVL15:
	.loc 1 121 0
	ld.bu	%d15, [%a4] 10
	.loc 1 118 0
	ld.a	%a15, [%a4]0
	ld.a	%a15, [%a15]0
.LVL16:
	.loc 1 121 0
	jeq	%d15, 1, .L16
	.loc 1 125 0
	jlt.u	%d15, 2, .L13
	.loc 1 127 0
	ld.b	%d15, [%a4] 9
	ld.w	%d2, [%a15] 52
	addi	%d15, %d15, 16
	insert	%d15, %d2, 1, %d15, 1
	st.w	[%a15] 52, %d15
.LVL17:
.L13:
	ret
.LVL18:
.L16:
	.loc 1 123 0
	ld.w	%d2, [%a15] 52
	ld.bu	%d15, [%a4] 4
	insert	%d15, %d2, 1, %d15, 1
	st.w	[%a15] 52, %d15
.LVL19:
	ret
.LFE178:
	.size	IfxIom_Driver_enableLamEvent, .-IfxIom_Driver_enableLamEvent
.section .text.IfxIom_Driver_getHistory,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_getHistory
	.type	IfxIom_Driver_getHistory, @function
IfxIom_Driver_getHistory:
.LFB179:
	.loc 1 137 0
.LVL20:
	.loc 1 138 0
	ld.a	%a15, [%a4]0
.LVL21:
	.loc 1 141 0
	ld.w	%d15, [%a15] 56
.LVL22:
	.loc 1 142 0
	st.h	[%a5]0, %d15
	.loc 1 143 0
	sh	%d15, %d15, -16
.LVL23:
	st.h	[%a6]0, %d15
	.loc 1 145 0
	ld.w	%d15, [%a15] 60
.LVL24:
	.loc 1 147 0
	ld.a	%a15, [%SP]0
.LVL25:
	.loc 1 146 0
	st.h	[%a7]0, %d15
	.loc 1 147 0
	sh	%d15, %d15, -16
.LVL26:
	st.h	[%a15]0, %d15
	ret
.LFE179:
	.size	IfxIom_Driver_getHistory, .-IfxIom_Driver_getHistory
.section .text.IfxIom_Driver_init,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_init
	.type	IfxIom_Driver_init, @function
IfxIom_Driver_init:
.LFB180:
	.loc 1 152 0
.LVL27:
	.loc 1 153 0
	ld.w	%d15, [%a5]0
	.loc 1 157 0
	mov	%d2, 1
	.loc 1 153 0
	st.w	[%a4]0, %d15
	.loc 1 154 0
	mov	%d15, 0
	st.b	[%a4] 4, %d15
	.loc 1 155 0
	mov	%d15, 0
	st.h	[%a4] 6, %d15
	.loc 1 157 0
	ret
.LFE180:
	.size	IfxIom_Driver_init, .-IfxIom_Driver_init
.section .text.IfxIom_Driver_initConfig,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_initConfig
	.type	IfxIom_Driver_initConfig, @function
IfxIom_Driver_initConfig:
.LFB181:
	.loc 1 161 0
.LVL28:
	.loc 1 162 0
	st.a	[%a4]0, %a5
	ret
.LFE181:
	.size	IfxIom_Driver_initConfig, .-IfxIom_Driver_initConfig
.section .text.IfxIom_Driver_initLam,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_initLam
	.type	IfxIom_Driver_initLam, @function
IfxIom_Driver_initLam:
.LFB182:
	.loc 1 167 0
.LVL29:
	.loc 1 169 0
	ld.a	%a14, [%a5]0
.LVL30:
	.loc 1 170 0
	ld.a	%a13, [%a14]0
.LVL31:
	.loc 1 167 0
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	.loc 1 172 0
	mov.aa	%a4, %a13
.LVL32:
	call	IfxIom_getFrequency
.LVL33:
	.loc 1 177 0
	mov	%d15, -1
	st.b	[%a12] 9, %d15
	.loc 1 178 0
	ld.bu	%d15, [%a15] 4
	.loc 1 181 0
	ld.hu	%d4, [%a14] 6
	.loc 1 178 0
	st.b	[%a12] 4, %d15
	.loc 1 181 0
	extr.u	%d5, %d4, %d15, 1
	.loc 1 179 0
	st.a	[%a12]0, %a14
	.loc 1 172 0
	mov	%d3, %d2
.LVL34:
	.loc 1 184 0
	mov	%d2, 0
.LVL35:
	.loc 1 181 0
	jnz	%d5, .L21
.LBB2:
	.loc 1 195 0
	ld.hu	%d2, [%a15] 60
.LBE2:
	.loc 1 188 0
	insert	%d15, %d4, 1, %d15, 1
.LBB3:
	.loc 1 195 0
	and	%d4, %d2, 255
.LVL36:
.LBE3:
	.loc 1 188 0
	st.h	[%a14] 6, %d15
.LBB4:
	.loc 1 197 0
	st.b	[%a12] 6, %d4
	.loc 1 196 0
	sh	%d2, -8
.LVL37:
	.loc 1 200 0
	addi	%d4, %d4, 32
.LVL38:
	.loc 1 196 0
	and	%d15, %d2, 255
.LVL39:
	.loc 1 200 0
	addsc.a	%a2, %a13, %d4, 2
	.loc 1 198 0
	st.b	[%a12] 7, %d15
	.loc 1 200 0
	ld.w	%d4, [%a2]0
.LVL40:
	insert	%d2, %d4, %d2, 24, 3
.LVL41:
	st.w	[%a2]0, %d2
	.loc 1 202 0
	jnz	%d15, .L22
	.loc 1 204 0
	ld.bu	%d15, [%a15] 48
.LVL42:
	ne	%d2, %d15, 8
	jz	%d2, .L34
	.loc 1 209 0
	add	%d2, %d15, -6
	jlt.u	%d2, 2, .L35
	.loc 1 218 0
	ld.w	%d2, [%a2]0
	insert	%d15, %d2, %d15, 16, 3
	st.w	[%a2]0, %d15
	.loc 1 219 0
	ld.w	%d15, [%a15] 56
	ld.w	%d2, [%a2]0
	mul.f	%d15, %d3, %d15
	ftouz	%d15, %d15
	insert	%d15, %d2, %d15, 0, 16
	st.w	[%a2]0, %d15
	.loc 1 220 0
	ld.bu	%d2, [%a15] 40
	movh	%d15, 64
	sel	%d2, %d2, %d15, 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 22, 1
	or	%d15, %d2
	st.w	[%a2]0, %d15
.L22:
.LBE4:
.LBB5:
	.loc 1 230 0
	ld.hu	%d2, [%a15] 36
	and	%d4, %d2, 255
.LVL43:
	.loc 1 232 0
	st.b	[%a12] 5, %d4
	.loc 1 231 0
	sh	%d2, -8
.LVL44:
	.loc 1 235 0
	addi	%d4, %d4, 32
.LVL45:
	.loc 1 231 0
	and	%d15, %d2, 255
.LVL46:
	.loc 1 235 0
	addsc.a	%a2, %a13, %d4, 2
	.loc 1 233 0
	st.b	[%a12] 8, %d15
	.loc 1 235 0
	ld.w	%d4, [%a2]0
.LVL47:
	insert	%d2, %d4, %d2, 19, 2
.LVL48:
	st.w	[%a2]0, %d2
	.loc 1 237 0
	jnz	%d15, .L25
	.loc 1 239 0
	ld.bu	%d15, [%a15] 24
.LVL49:
	ne	%d2, %d15, 8
	jz	%d2, .L36
	.loc 1 246 0
	ld.w	%d2, [%a2]0
	insert	%d15, %d2, %d15, 16, 3
	st.w	[%a2]0, %d15
	.loc 1 247 0
	ld.w	%d15, [%a15] 32
	ld.w	%d2, [%a2]0
	mul.f	%d15, %d3, %d15
	ftouz	%d15, %d15
	insert	%d15, %d2, %d15, 0, 16
	st.w	[%a2]0, %d15
	.loc 1 248 0
	ld.bu	%d2, [%a15] 16
	movh	%d15, 64
	sel	%d2, %d2, %d15, 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 22, 1
	or	%d15, %d2
	st.w	[%a2]0, %d15
.L25:
.LBE5:
	.loc 1 255 0
	ld.bu	%d15, [%a12] 4
	ld.bu	%d2, [%a15] 62
	addi	%d15, %d15, 96
	addsc.a	%a2, %a13, %d15, 2
	ld.w	%d15, [%a2]0
	andn	%d15, %d15, ~(-2)
	or.ne	%d15, %d2, 0
	st.w	[%a2]0, %d15
	.loc 1 256 0
	ld.bu	%d2, [%a12] 4
	ld.bu	%d15, [%a15] 38
	addi	%d2, %d2, 96
	addsc.a	%a2, %a13, %d2, 2
	seln	%d2, %d15, %d15, 2
	ld.w	%d15, [%a2]0
	andn	%d15, %d15, ~(-3)
	or	%d15, %d2
	st.w	[%a2]0, %d15
	.loc 1 257 0
	ld.bu	%d2, [%a12] 4
	ld.bu	%d15, [%a15] 6
	addi	%d2, %d2, 96
	addsc.a	%a2, %a13, %d2, 2
	seln	%d2, %d15, %d15, 4
	ld.w	%d15, [%a2]0
	andn	%d15, %d15, ~(-5)
	or	%d15, %d2
	st.w	[%a2]0, %d15
	.loc 1 258 0
	ld.bu	%d2, [%a12] 4
	ld.bu	%d15, [%a15] 11
	addi	%d2, %d2, 96
	addsc.a	%a2, %a13, %d2, 2
	ld.w	%d2, [%a2]0
	ins.t	%d15, %d2,3, %d15,0
	st.w	[%a2]0, %d15
	.loc 1 259 0
	ld.bu	%d2, [%a12] 4
	ld.bu	%d15, [%a15] 9
	addi	%d2, %d2, 96
	addsc.a	%a2, %a13, %d2, 2
	ld.w	%d2, [%a2]0
	ins.t	%d15, %d2,4, %d15,0
	st.w	[%a2]0, %d15
	.loc 1 262 0
	ld.bu	%d15, [%a15] 7
	.loc 1 260 0
	ld.bu	%d4, [%a12] 4
	ld.bu	%d2, [%a15] 8
	.loc 1 262 0
	sh	%d15, 2
	.loc 1 260 0
	or	%d15, %d2
	addi	%d2, %d4, 96
	addsc.a	%a2, %a13, %d2, 2
	ld.w	%d2, [%a2]0
	insert	%d15, %d2, %d15, 8, 4
	st.w	[%a2]0, %d15
	.loc 1 264 0
	ld.bu	%d4, [%a12] 4
	ld.bu	%d2, [%a15] 10
	addi	%d4, %d4, 96
	addsc.a	%a2, %a13, %d4, 2
	mov	%d15, 4096
	sel	%d2, %d2, %d15, 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 12, 1
	or	%d15, %d2
	st.w	[%a2]0, %d15
	.loc 1 265 0
	ld.bu	%d2, [%a12] 4
	ld.bu	%d15, [%a15] 36
	addi	%d2, %d2, 96
	addsc.a	%a2, %a13, %d2, 2
	ld.w	%d2, [%a2]0
	insert	%d15, %d2, %d15, 16, 4
	st.w	[%a2]0, %d15
	.loc 1 266 0
	ld.bu	%d2, [%a12] 4
	ld.bu	%d15, [%a15] 60
	addi	%d2, %d2, 96
	addsc.a	%a2, %a13, %d2, 2
	ld.w	%d2, [%a2]0
	insert	%d15, %d2, %d15, 20, 4
	st.w	[%a2]0, %d15
	.loc 1 268 0
	ld.bu	%d15, [%a12] 4
	ld.w	%d2, [%a15] 12
	addi	%d15, %d15, 112
	addsc.a	%a2, %a13, %d15, 2
	mul.f	%d3, %d3, %d2
.LVL50:
	ld.w	%d15, [%a2]0
	ftouz	%d3, %d3
	insert	%d3, %d15, %d3, 0, 24
	st.w	[%a2]0, %d3
	.loc 1 273 0
	ld.bu	%d15, [%a15] 64
	st.b	[%a12] 10, %d15
	.loc 1 275 0
	jeq	%d15, 1, .L37
	.loc 1 168 0
	mov	%d2, 1
	.loc 1 279 0
	jlt.u	%d15, 2, .L21
.LBB6:
	.loc 1 283 0
	ld.bu	%d4, [%a14] 4
.LVL51:
	mov	%d15, 0
	mov.a	%a15, 3
.LVL52:
.L30:
	.loc 1 288 0
	extr.u	%d2, %d4, %d15, 1
	extr	%d3, %d15, 0, 8
.LVL53:
	jz	%d2, .L38
.LVL54:
	add	%d15, 1
.LVL55:
	loop	%a15, .L30
	.loc 1 284 0
	mov	%d2, 0
.LVL56:
.L21:
.LBE6:
	.loc 1 313 0
	ret
.LVL57:
.L37:
	.loc 1 277 0
	ld.w	%d2, [%a13] 52
	ld.bu	%d15, [%a15] 4
	insert	%d15, %d2, 1, %d15, 1
	.loc 1 168 0
	mov	%d2, 1
	.loc 1 277 0
	st.w	[%a13] 52, %d15
	ret
.LVL58:
.L35:
.LBB7:
	.loc 1 213 0
	ld.w	%d2, [%a2]0
	insert	%d15, %d2, %d15, 16, 3
	st.w	[%a2]0, %d15
	.loc 1 214 0
	ld.w	%d15, [%a15] 52
	ld.w	%d2, [%a2]0
	add	%d15, -1
	insert	%d15, %d2, %d15, 0, 16
	st.w	[%a2]0, %d15
	j	.L22
.L34:
	.loc 1 206 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 16, 3
	st.w	[%a2]0, %d15
	.loc 1 207 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 0, 16
	st.w	[%a2]0, %d15
	j	.L22
.L36:
.LBE7:
.LBB8:
	.loc 1 241 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 16, 3
	st.w	[%a2]0, %d15
	.loc 1 242 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 0, 0, 16
	st.w	[%a2]0, %d15
	j	.L25
.LVL59:
.L38:
.LBE8:
.LBB9:
	.loc 1 291 0
	insert	%d15, %d4, 1, %d15, 1
	st.b	[%a14] 4, %d15
.LVL60:
	.loc 1 292 0
	st.b	[%a12] 9, %d3
	.loc 1 293 0
	ld.w	%d2, [%a13] 52
	addi	%d15, %d3, 16
	insert	%d15, %d2, 1, %d15, 1
	st.w	[%a13] 52, %d15
	.loc 1 297 0
	ld.bu	%d2, [%a12] 10
	.loc 1 295 0
	ld.w	%d4, [%a13] 48
.LVL61:
	.loc 1 297 0
	sh	%d15, %d2, 4
	.loc 1 296 0
	ld.bu	%d2, [%a12] 4
	.loc 1 297 0
	or	%d2, %d15
	.loc 1 298 0
	sh	%d15, %d3, 3
	sh	%d3, %d2, %d15
.LVL62:
	.loc 1 295 0
	or	%d3, %d4
	st.w	[%a13] 48, %d3
	.loc 1 290 0
	mov	%d2, 1
	.loc 1 299 0
	ret
.LBE9:
.LFE182:
	.size	IfxIom_Driver_initLam, .-IfxIom_Driver_initLam
.section .text.IfxIom_Driver_initLamConfig,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_initLamConfig
	.type	IfxIom_Driver_initLamConfig, @function
IfxIom_Driver_initLamConfig:
.LFB183:
	.loc 1 317 0
.LVL63:
	.loc 1 319 0
	mov	%d15, 0
	.loc 1 322 0
	mov	%d2, 3
	.loc 1 330 0
	mov	%d3, 1
	.loc 1 329 0
	mov	%d4, 8
	.loc 1 319 0
	st.b	[%a4] 4, %d15
	.loc 1 320 0
	st.b	[%a4] 6, %d15
	.loc 1 321 0
	st.b	[%a4] 7, %d15
	.loc 1 322 0
	st.b	[%a4] 8, %d2
	.loc 1 323 0
	st.b	[%a4] 9, %d15
	.loc 1 326 0
	mov	%d2, 0
	.loc 1 324 0
	st.b	[%a4] 10, %d15
	.loc 1 325 0
	st.b	[%a4] 11, %d15
	.loc 1 327 0
	st.b	[%a4] 16, %d15
	.loc 1 332 0
	mov	%d15, 0
	.loc 1 318 0
	st.a	[%a4]0, %a5
	.loc 1 326 0
	st.w	[%a4] 12, %d2
	.loc 1 328 0
	st.w	[%a4] 20, %d2
	.loc 1 329 0
	st.b	[%a4] 24, %d4
	.loc 1 330 0
	st.w	[%a4] 28, %d3
	.loc 1 331 0
	st.w	[%a4] 32, %d2
	.loc 1 332 0
	st.h	[%a4] 36, %d15
	.loc 1 333 0
	st.b	[%a4] 38, %d15
	.loc 1 334 0
	st.b	[%a4] 40, %d15
	.loc 1 335 0
	st.w	[%a4] 44, %d2
	.loc 1 336 0
	st.b	[%a4] 48, %d4
	.loc 1 337 0
	st.w	[%a4] 52, %d3
	.loc 1 338 0
	st.w	[%a4] 56, %d2
	.loc 1 339 0
	st.h	[%a4] 60, %d15
	.loc 1 340 0
	st.b	[%a4] 62, %d15
	.loc 1 341 0
	st.b	[%a4] 64, %d3
	ret
.LFE183:
	.size	IfxIom_Driver_initLamConfig, .-IfxIom_Driver_initLamConfig
.section .text.IfxIom_Driver_isLamMonGlitch,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_isLamMonGlitch
	.type	IfxIom_Driver_isLamMonGlitch, @function
IfxIom_Driver_isLamMonGlitch:
.LFB184:
	.loc 1 346 0
.LVL64:
	.loc 1 349 0
	ld.bu	%d15, [%a4] 8
	.loc 1 347 0
	ld.a	%a15, [%a4]0
	ld.a	%a15, [%a15]0
.LVL65:
	.loc 1 349 0
	jz	%d15, .L43
	.loc 1 358 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 359 0
	st.b	[%a6]0, %d15
	ret
.L43:
.LBB10:
	.loc 1 352 0
	ld.bu	%d2, [%a4] 5
.LVL66:
	.loc 1 353 0
	ld.w	%d15, [%a15] 120
	addi	%d3, %d2, 16
	rsub	%d4, %d3, 0
	sh	%d4, %d15, %d4
	ne	%d15, %d4, 0
	st.b	[%a5]0, %d15
	.loc 1 354 0
	ld.w	%d15, [%a15] 120
	rsub	%d3, %d2, 0
	sh	%d3, %d15, %d3
	ne	%d15, %d3, 0
	st.b	[%a6]0, %d15
.LBE10:
	ret
.LFE184:
	.size	IfxIom_Driver_isLamMonGlitch, .-IfxIom_Driver_isLamMonGlitch
.section .text.IfxIom_Driver_isLamRefGlitch,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_isLamRefGlitch
	.type	IfxIom_Driver_isLamRefGlitch, @function
IfxIom_Driver_isLamRefGlitch:
.LFB185:
	.loc 1 365 0
.LVL67:
	.loc 1 368 0
	ld.bu	%d15, [%a4] 7
	.loc 1 366 0
	ld.a	%a15, [%a4]0
	ld.a	%a15, [%a15]0
.LVL68:
	.loc 1 368 0
	jz	%d15, .L47
	.loc 1 377 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 378 0
	st.b	[%a6]0, %d15
	ret
.L47:
.LBB11:
	.loc 1 371 0
	ld.bu	%d2, [%a4] 6
.LVL69:
	.loc 1 372 0
	ld.w	%d15, [%a15] 120
	addi	%d3, %d2, 16
	rsub	%d4, %d3, 0
	sh	%d4, %d15, %d4
	ne	%d15, %d4, 0
	st.b	[%a5]0, %d15
	.loc 1 373 0
	ld.w	%d15, [%a15] 120
	rsub	%d3, %d2, 0
	sh	%d3, %d15, %d3
	ne	%d15, %d3, 0
	st.b	[%a6]0, %d15
.LBE11:
	ret
.LFE185:
	.size	IfxIom_Driver_isLamRefGlitch, .-IfxIom_Driver_isLamRefGlitch
.section .text.IfxIom_Driver_restoreEvents,"ax",@progbits
	.align 1
	.global	IfxIom_Driver_restoreEvents
	.type	IfxIom_Driver_restoreEvents, @function
IfxIom_Driver_restoreEvents:
.LFB186:
	.loc 1 384 0
.LVL70:
	.loc 1 385 0
	ld.a	%a15, [%a4]0
	st.w	[%a15] 52, %d4
	ret
.LFE186:
	.size	IfxIom_Driver_restoreEvents, .-IfxIom_Driver_restoreEvents
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
	.uaword	.LFB172
	.uaword	.LFE172-.LFB172
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB173
	.uaword	.LFE173-.LFB173
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB174
	.uaword	.LFE174-.LFB174
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB177
	.uaword	.LFE177-.LFB177
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB178
	.uaword	.LFE178-.LFB178
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB179
	.uaword	.LFE179-.LFB179
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB180
	.uaword	.LFE180-.LFB180
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB181
	.uaword	.LFE181-.LFB181
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.align 2
.LEFDE28:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxIom_cfg.h"
	.file 3 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxIom_regdef.h"
	.file 4 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/Iom/Std/IfxIom.h"
	.file 6 "0_Src/BaseSw/iLLD/TC27D/Tricore/Iom/Driver/IfxIom_Driver.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3b28
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Iom/Driver/IfxIom_Driver.c"
	.string	"C:\\\\Users\\\\user\\\\Desktop\\\\programming_PROJECTS\\\\\307\321\276\347\264\353_\300\323\272\243\265\360\265\345\275\303\275\272\305\333\\\\DevBaseEnv_vscode_TC27D"
	.uaword	.Ldebug_ranges0+0x58
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uaword	0x220
	.uleb128 0x3
	.string	"IfxIom_MonInputSignal_p"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_MonInputSignal_0"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxIom_MonInputSignal_1"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxIom_MonInputSignal_2"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_MonInputSignal"
	.byte	0x2
	.byte	0x41
	.uaword	0x1af
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.byte	0x46
	.uaword	0x2d2
	.uleb128 0x3
	.string	"IfxIom_RefInputSignal_p"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_RefInputSignal_0"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxIom_RefInputSignal_1"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxIom_RefInputSignal_2"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxIom_RefInputSignal_xorCombiner"
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_RefInputSignal"
	.byte	0x2
	.byte	0x4c
	.uaword	0x23d
	.uleb128 0x2
	.byte	0x2
	.byte	0x2
	.byte	0x55
	.uaword	0xa09
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_11"
	.sleb128 11
	.uleb128 0x3
	.string	"IfxIom_MonInput_p33_12"
	.sleb128 12
	.uleb128 0x3
	.string	"IfxIom_MonInput_p20_12"
	.sleb128 13
	.uleb128 0x3
	.string	"IfxIom_MonInput_p20_13"
	.sleb128 14
	.uleb128 0x3
	.string	"IfxIom_MonInput_p20_14"
	.sleb128 15
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout22"
	.sleb128 256
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout23"
	.sleb128 257
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout24"
	.sleb128 258
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout25"
	.sleb128 259
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout26"
	.sleb128 260
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout27"
	.sleb128 261
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout28"
	.sleb128 262
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout29"
	.sleb128 263
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout30"
	.sleb128 264
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout31"
	.sleb128 265
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout32"
	.sleb128 266
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout33"
	.sleb128 267
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout34"
	.sleb128 268
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout68"
	.sleb128 269
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout69"
	.sleb128 270
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout70"
	.sleb128 271
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu60Cc62"
	.sleb128 512
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu60Cc61"
	.sleb128 513
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu60Cc60"
	.sleb128 514
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu60Cout60"
	.sleb128 515
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu60Cout61"
	.sleb128 516
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu60Cout62"
	.sleb128 517
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu60Cout63"
	.sleb128 518
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu61Cout63"
	.sleb128 519
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu61Cc60"
	.sleb128 520
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu61Cc61"
	.sleb128 521
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu61Cc62"
	.sleb128 522
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu61Cout60"
	.sleb128 523
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu61Cout61"
	.sleb128 524
	.uleb128 0x3
	.string	"IfxIom_MonInput_ccu61Cout62"
	.sleb128 525
	.uleb128 0x3
	.string	"IfxIom_MonInput_psi5Psitx0"
	.sleb128 526
	.uleb128 0x3
	.string	"IfxIom_MonInput_psi5Psitx1"
	.sleb128 527
	.uleb128 0x3
	.string	"IfxIom_MonInput_qspi0Mrst"
	.sleb128 768
	.uleb128 0x3
	.string	"IfxIom_MonInput_qspi1Mrst"
	.sleb128 769
	.uleb128 0x3
	.string	"IfxIom_MonInput_qspi2Mrst"
	.sleb128 770
	.uleb128 0x3
	.string	"IfxIom_MonInput_qspi3Mrst"
	.sleb128 771
	.uleb128 0x3
	.string	"IfxIom_MonInput_gnd"
	.sleb128 772
	.uleb128 0x3
	.string	"IfxIom_MonInput_canNode0Txd"
	.sleb128 773
	.uleb128 0x3
	.string	"IfxIom_MonInput_canNode1Txd"
	.sleb128 774
	.uleb128 0x3
	.string	"IfxIom_MonInput_canNode2Txd"
	.sleb128 775
	.uleb128 0x3
	.string	"IfxIom_MonInput_canNode3Txd"
	.sleb128 776
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout104"
	.sleb128 777
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout105"
	.sleb128 778
	.uleb128 0x3
	.string	"IfxIom_MonInput_gtmTout106"
	.sleb128 779
	.uleb128 0x3
	.string	"IfxIom_MonInput_asclin0Atx"
	.sleb128 780
	.uleb128 0x3
	.string	"IfxIom_MonInput_asclin1Atx"
	.sleb128 781
	.uleb128 0x3
	.string	"IfxIom_MonInput_asclin2Atx"
	.sleb128 782
	.uleb128 0x3
	.string	"IfxIom_MonInput_asclin3Atx"
	.sleb128 783
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_MonInput"
	.byte	0x2
	.byte	0x96
	.uaword	0x2ef
	.uleb128 0x2
	.byte	0x2
	.byte	0x2
	.byte	0x9b
	.uaword	0x1150
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_11"
	.sleb128 11
	.uleb128 0x3
	.string	"IfxIom_RefInput_p33_12"
	.sleb128 12
	.uleb128 0x3
	.string	"IfxIom_RefInput_p20_12"
	.sleb128 13
	.uleb128 0x3
	.string	"IfxIom_RefInput_p20_13"
	.sleb128 14
	.uleb128 0x3
	.string	"IfxIom_RefInput_p20_14"
	.sleb128 15
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout0"
	.sleb128 256
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout1"
	.sleb128 257
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout2"
	.sleb128 258
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout3"
	.sleb128 259
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout4"
	.sleb128 260
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout5"
	.sleb128 261
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout6"
	.sleb128 262
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout7"
	.sleb128 263
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout8"
	.sleb128 264
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout9"
	.sleb128 265
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout10"
	.sleb128 266
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout11"
	.sleb128 267
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout12"
	.sleb128 268
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout13"
	.sleb128 269
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout14"
	.sleb128 270
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout15"
	.sleb128 271
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu60Cout63"
	.sleb128 512
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu60Cout62"
	.sleb128 513
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu60Cout61"
	.sleb128 514
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu60Cout60"
	.sleb128 515
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu60Cc62"
	.sleb128 516
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu60Cc61"
	.sleb128 517
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu60Cc60"
	.sleb128 518
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu61Cout63"
	.sleb128 519
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu61Cout62"
	.sleb128 520
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu61Cout61"
	.sleb128 521
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu61Cout60"
	.sleb128 522
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu61Cc62"
	.sleb128 523
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu61Cc61"
	.sleb128 524
	.uleb128 0x3
	.string	"IfxIom_RefInput_ccu61Cc60"
	.sleb128 525
	.uleb128 0x3
	.string	"IfxIom_RefInput_psi5Psitx0"
	.sleb128 526
	.uleb128 0x3
	.string	"IfxIom_RefInput_psi5Psitx2"
	.sleb128 527
	.uleb128 0x3
	.string	"IfxIom_RefInput_qspi0Mrst"
	.sleb128 768
	.uleb128 0x3
	.string	"IfxIom_RefInput_qspi1Mrst"
	.sleb128 769
	.uleb128 0x3
	.string	"IfxIom_RefInput_qspi2Mrst"
	.sleb128 770
	.uleb128 0x3
	.string	"IfxIom_RefInput_qspi3Mrst"
	.sleb128 771
	.uleb128 0x3
	.string	"IfxIom_RefInput_gnd"
	.sleb128 772
	.uleb128 0x3
	.string	"IfxIom_RefInput_canNode0Txd"
	.sleb128 773
	.uleb128 0x3
	.string	"IfxIom_RefInput_canNode1Txd"
	.sleb128 774
	.uleb128 0x3
	.string	"IfxIom_RefInput_canNode2Txd"
	.sleb128 775
	.uleb128 0x3
	.string	"IfxIom_RefInput_canNode3Txd"
	.sleb128 776
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout107"
	.sleb128 777
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout108"
	.sleb128 778
	.uleb128 0x3
	.string	"IfxIom_RefInput_gtmTout109"
	.sleb128 779
	.uleb128 0x3
	.string	"IfxIom_RefInput_asclin0Atx"
	.sleb128 780
	.uleb128 0x3
	.string	"IfxIom_RefInput_asclin1Atx"
	.sleb128 781
	.uleb128 0x3
	.string	"IfxIom_RefInput_asclin2Atx"
	.sleb128 782
	.uleb128 0x3
	.string	"IfxIom_RefInput_asclin3Atx"
	.sleb128 783
	.uleb128 0x3
	.string	"IfxIom_RefInput_exorCombiner"
	.sleb128 1024
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_RefInput"
	.byte	0x2
	.byte	0xdd
	.uaword	0xa20
	.uleb128 0x5
	.string	"_Ifx_IOM_ACCEN0_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x2d
	.uaword	0x137b
	.uleb128 0x6
	.string	"EN0"
	.byte	0x3
	.byte	0x2f
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"EN1"
	.byte	0x3
	.byte	0x30
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"EN2"
	.byte	0x3
	.byte	0x31
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"EN3"
	.byte	0x3
	.byte	0x32
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"EN4"
	.byte	0x3
	.byte	0x33
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"EN5"
	.byte	0x3
	.byte	0x34
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"EN6"
	.byte	0x3
	.byte	0x35
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.string	"EN7"
	.byte	0x3
	.byte	0x36
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"EN8"
	.byte	0x3
	.byte	0x37
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"EN9"
	.byte	0x3
	.byte	0x38
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"EN10"
	.byte	0x3
	.byte	0x39
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"EN11"
	.byte	0x3
	.byte	0x3a
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"EN12"
	.byte	0x3
	.byte	0x3b
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"EN13"
	.byte	0x3
	.byte	0x3c
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"EN14"
	.byte	0x3
	.byte	0x3d
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"EN15"
	.byte	0x3
	.byte	0x3e
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"EN16"
	.byte	0x3
	.byte	0x3f
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.string	"EN17"
	.byte	0x3
	.byte	0x40
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.string	"EN18"
	.byte	0x3
	.byte	0x41
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"EN19"
	.byte	0x3
	.byte	0x42
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"EN20"
	.byte	0x3
	.byte	0x43
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"EN21"
	.byte	0x3
	.byte	0x44
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.string	"EN22"
	.byte	0x3
	.byte	0x45
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.string	"EN23"
	.byte	0x3
	.byte	0x46
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.string	"EN24"
	.byte	0x3
	.byte	0x47
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"EN25"
	.byte	0x3
	.byte	0x48
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.string	"EN26"
	.byte	0x3
	.byte	0x49
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"EN27"
	.byte	0x3
	.byte	0x4a
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.string	"EN28"
	.byte	0x3
	.byte	0x4b
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"EN29"
	.byte	0x3
	.byte	0x4c
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.string	"EN30"
	.byte	0x3
	.byte	0x4d
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"EN31"
	.byte	0x3
	.byte	0x4e
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"Ifx_IOM_ACCEN0_Bits"
	.byte	0x3
	.byte	0x4f
	.uaword	0x1167
	.uleb128 0x5
	.string	"_Ifx_IOM_ACCEN1_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x52
	.uaword	0x13da
	.uleb128 0x6
	.string	"reserved_0"
	.byte	0x3
	.byte	0x54
	.uaword	0x137b
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_IOM_ACCEN1_Bits"
	.byte	0x3
	.byte	0x55
	.uaword	0x13a6
	.uleb128 0x5
	.string	"_Ifx_IOM_CLC_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x58
	.uaword	0x147c
	.uleb128 0x6
	.string	"DISR"
	.byte	0x3
	.byte	0x5a
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"DISS"
	.byte	0x3
	.byte	0x5b
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x3
	.byte	0x5c
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"EDIS"
	.byte	0x3
	.byte	0x5d
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x3
	.byte	0x5e
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"RMC"
	.byte	0x3
	.byte	0x5f
	.uaword	0x137b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x3
	.byte	0x60
	.uaword	0x137b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_IOM_CLC_Bits"
	.byte	0x3
	.byte	0x61
	.uaword	0x13f5
	.uleb128 0x5
	.string	"_Ifx_IOM_ECMCCFG_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x64
	.uaword	0x153b
	.uleb128 0x6
	.string	"SELC0"
	.byte	0x3
	.byte	0x66
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"THRC0"
	.byte	0x3
	.byte	0x67
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"SELC1"
	.byte	0x3
	.byte	0x68
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"THCR1"
	.byte	0x3
	.byte	0x69
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"SELC2"
	.byte	0x3
	.byte	0x6a
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"THCR2"
	.byte	0x3
	.byte	0x6b
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.string	"SELC3"
	.byte	0x3
	.byte	0x6c
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.string	"THCR3"
	.byte	0x3
	.byte	0x6d
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_IOM_ECMCCFG_Bits"
	.byte	0x3
	.byte	0x6e
	.uaword	0x1494
	.uleb128 0x5
	.string	"_Ifx_IOM_ECMETH0_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x71
	.uaword	0x1782
	.uleb128 0x6
	.string	"ETA0"
	.byte	0x3
	.byte	0x73
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"ETA1"
	.byte	0x3
	.byte	0x74
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"ETA2"
	.byte	0x3
	.byte	0x75
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"ETA3"
	.byte	0x3
	.byte	0x76
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"ETA4"
	.byte	0x3
	.byte	0x77
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"ETA5"
	.byte	0x3
	.byte	0x78
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"ETA6"
	.byte	0x3
	.byte	0x79
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.string	"ETA7"
	.byte	0x3
	.byte	0x7a
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"ETA8"
	.byte	0x3
	.byte	0x7b
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"ETA9"
	.byte	0x3
	.byte	0x7c
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"ETA10"
	.byte	0x3
	.byte	0x7d
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"ETA11"
	.byte	0x3
	.byte	0x7e
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"ETA12"
	.byte	0x3
	.byte	0x7f
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"ETA13"
	.byte	0x3
	.byte	0x80
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"ETA14"
	.byte	0x3
	.byte	0x81
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"ETA15"
	.byte	0x3
	.byte	0x82
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"ETB0"
	.byte	0x3
	.byte	0x83
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.string	"ETB1"
	.byte	0x3
	.byte	0x84
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.string	"ETB2"
	.byte	0x3
	.byte	0x85
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"ETB3"
	.byte	0x3
	.byte	0x86
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"ETB4"
	.byte	0x3
	.byte	0x87
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"ETB5"
	.byte	0x3
	.byte	0x88
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.string	"ETB6"
	.byte	0x3
	.byte	0x89
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.string	"ETB7"
	.byte	0x3
	.byte	0x8a
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.string	"ETB8"
	.byte	0x3
	.byte	0x8b
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"ETB9"
	.byte	0x3
	.byte	0x8c
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.string	"ETB10"
	.byte	0x3
	.byte	0x8d
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"ETB11"
	.byte	0x3
	.byte	0x8e
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.string	"ETB12"
	.byte	0x3
	.byte	0x8f
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"ETB13"
	.byte	0x3
	.byte	0x90
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.string	"ETB14"
	.byte	0x3
	.byte	0x91
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"ETB15"
	.byte	0x3
	.byte	0x92
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_IOM_ECMETH0_Bits"
	.byte	0x3
	.byte	0x93
	.uaword	0x1557
	.uleb128 0x5
	.string	"_Ifx_IOM_ECMETH1_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0x96
	.uaword	0x19c9
	.uleb128 0x6
	.string	"ETC0"
	.byte	0x3
	.byte	0x98
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"ETC1"
	.byte	0x3
	.byte	0x99
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"ETC2"
	.byte	0x3
	.byte	0x9a
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"ETC3"
	.byte	0x3
	.byte	0x9b
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"ETC4"
	.byte	0x3
	.byte	0x9c
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"ETC5"
	.byte	0x3
	.byte	0x9d
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"ETC6"
	.byte	0x3
	.byte	0x9e
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.string	"ETC7"
	.byte	0x3
	.byte	0x9f
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"ETC8"
	.byte	0x3
	.byte	0xa0
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"ETC9"
	.byte	0x3
	.byte	0xa1
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"ETC10"
	.byte	0x3
	.byte	0xa2
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"ETC11"
	.byte	0x3
	.byte	0xa3
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"ETC12"
	.byte	0x3
	.byte	0xa4
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"ETC13"
	.byte	0x3
	.byte	0xa5
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"ETC14"
	.byte	0x3
	.byte	0xa6
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"ETC15"
	.byte	0x3
	.byte	0xa7
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"ETD0"
	.byte	0x3
	.byte	0xa8
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.string	"ETD1"
	.byte	0x3
	.byte	0xa9
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.string	"ETD2"
	.byte	0x3
	.byte	0xaa
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"ETD3"
	.byte	0x3
	.byte	0xab
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"ETD4"
	.byte	0x3
	.byte	0xac
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"ETD5"
	.byte	0x3
	.byte	0xad
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.string	"ETD6"
	.byte	0x3
	.byte	0xae
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.string	"ETD7"
	.byte	0x3
	.byte	0xaf
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.string	"ETD8"
	.byte	0x3
	.byte	0xb0
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"ETD9"
	.byte	0x3
	.byte	0xb1
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.string	"ETD10"
	.byte	0x3
	.byte	0xb2
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"ETD11"
	.byte	0x3
	.byte	0xb3
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.string	"ETD12"
	.byte	0x3
	.byte	0xb4
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"ETD13"
	.byte	0x3
	.byte	0xb5
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.string	"ETD14"
	.byte	0x3
	.byte	0xb6
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"ETD15"
	.byte	0x3
	.byte	0xb7
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_IOM_ECMETH1_Bits"
	.byte	0x3
	.byte	0xb8
	.uaword	0x179e
	.uleb128 0x5
	.string	"_Ifx_IOM_ECMSELR_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xbb
	.uaword	0x1b61
	.uleb128 0x6
	.string	"CES0"
	.byte	0x3
	.byte	0xbd
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"CES1"
	.byte	0x3
	.byte	0xbe
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"CES2"
	.byte	0x3
	.byte	0xbf
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"CES3"
	.byte	0x3
	.byte	0xc0
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"CES4"
	.byte	0x3
	.byte	0xc1
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"CES5"
	.byte	0x3
	.byte	0xc2
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"CES6"
	.byte	0x3
	.byte	0xc3
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.string	"CES7"
	.byte	0x3
	.byte	0xc4
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"CES8"
	.byte	0x3
	.byte	0xc5
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"CES9"
	.byte	0x3
	.byte	0xc6
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"CES10"
	.byte	0x3
	.byte	0xc7
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"CES11"
	.byte	0x3
	.byte	0xc8
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"CES12"
	.byte	0x3
	.byte	0xc9
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"CES13"
	.byte	0x3
	.byte	0xca
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"CES14"
	.byte	0x3
	.byte	0xcb
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"CES15"
	.byte	0x3
	.byte	0xcc
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"CTS0"
	.byte	0x3
	.byte	0xcd
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.string	"CTS1"
	.byte	0x3
	.byte	0xce
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.string	"CTS2"
	.byte	0x3
	.byte	0xcf
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"CTS3"
	.byte	0x3
	.byte	0xd0
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"reserved_20"
	.byte	0x3
	.byte	0xd1
	.uaword	0x137b
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_IOM_ECMSELR_Bits"
	.byte	0x3
	.byte	0xd2
	.uaword	0x19e5
	.uleb128 0x5
	.string	"_Ifx_IOM_FPCCTR_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xd5
	.uaword	0x1c2b
	.uleb128 0x6
	.string	"CMP"
	.byte	0x3
	.byte	0xd7
	.uaword	0x137b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"MOD"
	.byte	0x3
	.byte	0xd8
	.uaword	0x137b
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"ISM"
	.byte	0x3
	.byte	0xd9
	.uaword	0x137b
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"reserved_21"
	.byte	0x3
	.byte	0xda
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.string	"RTG"
	.byte	0x3
	.byte	0xdb
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.string	"reserved_23"
	.byte	0x3
	.byte	0xdc
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.string	"ISR"
	.byte	0x3
	.byte	0xdd
	.uaword	0x137b
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"reserved_27"
	.byte	0x3
	.byte	0xde
	.uaword	0x137b
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_IOM_FPCCTR_Bits"
	.byte	0x3
	.byte	0xdf
	.uaword	0x1b7d
	.uleb128 0x5
	.string	"_Ifx_IOM_FPCESR_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xe2
	.uaword	0x1e74
	.uleb128 0x6
	.string	"FEG0"
	.byte	0x3
	.byte	0xe4
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"FEG1"
	.byte	0x3
	.byte	0xe5
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"FEG2"
	.byte	0x3
	.byte	0xe6
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"FEG3"
	.byte	0x3
	.byte	0xe7
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"FEG4"
	.byte	0x3
	.byte	0xe8
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"FEG5"
	.byte	0x3
	.byte	0xe9
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"FEG6"
	.byte	0x3
	.byte	0xea
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.string	"FEG7"
	.byte	0x3
	.byte	0xeb
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"FEG8"
	.byte	0x3
	.byte	0xec
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"FEG9"
	.byte	0x3
	.byte	0xed
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"FEG10"
	.byte	0x3
	.byte	0xee
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"FEG11"
	.byte	0x3
	.byte	0xef
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"FEG12"
	.byte	0x3
	.byte	0xf0
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"FEG13"
	.byte	0x3
	.byte	0xf1
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"FEG14"
	.byte	0x3
	.byte	0xf2
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"FEG15"
	.byte	0x3
	.byte	0xf3
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"REG0"
	.byte	0x3
	.byte	0xf4
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.string	"REG1"
	.byte	0x3
	.byte	0xf5
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.string	"REG2"
	.byte	0x3
	.byte	0xf6
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"REG3"
	.byte	0x3
	.byte	0xf7
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"REG4"
	.byte	0x3
	.byte	0xf8
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"REG5"
	.byte	0x3
	.byte	0xf9
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.string	"REG6"
	.byte	0x3
	.byte	0xfa
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.string	"REG7"
	.byte	0x3
	.byte	0xfb
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.string	"REG8"
	.byte	0x3
	.byte	0xfc
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"REG9"
	.byte	0x3
	.byte	0xfd
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.string	"REG10"
	.byte	0x3
	.byte	0xfe
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"REG11"
	.byte	0x3
	.byte	0xff
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"REG12"
	.byte	0x3
	.uahalf	0x100
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"REG13"
	.byte	0x3
	.uahalf	0x101
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"REG14"
	.byte	0x3
	.uahalf	0x102
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"REG15"
	.byte	0x3
	.uahalf	0x103
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_FPCESR_Bits"
	.byte	0x3
	.uahalf	0x104
	.uaword	0x1c46
	.uleb128 0xb
	.string	"_Ifx_IOM_FPCTIM_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x107
	.uaword	0x1ecf
	.uleb128 0x9
	.string	"TIM"
	.byte	0x3
	.uahalf	0x109
	.uaword	0x137b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x3
	.uahalf	0x10a
	.uaword	0x137b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_FPCTIM_Bits"
	.byte	0x3
	.uahalf	0x10b
	.uaword	0x1e90
	.uleb128 0xb
	.string	"_Ifx_IOM_GTMEXR_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x10e
	.uaword	0x1fa1
	.uleb128 0x9
	.string	"EN0"
	.byte	0x3
	.uahalf	0x110
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"EN1"
	.byte	0x3
	.uahalf	0x111
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"EN2"
	.byte	0x3
	.uahalf	0x112
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EN3"
	.byte	0x3
	.uahalf	0x113
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"EN4"
	.byte	0x3
	.uahalf	0x114
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"EN5"
	.byte	0x3
	.uahalf	0x115
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"EN6"
	.byte	0x3
	.uahalf	0x116
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"EN7"
	.byte	0x3
	.uahalf	0x117
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"reserved_8"
	.byte	0x3
	.uahalf	0x118
	.uaword	0x137b
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_GTMEXR_Bits"
	.byte	0x3
	.uahalf	0x119
	.uaword	0x1eeb
	.uleb128 0xb
	.string	"_Ifx_IOM_ID_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x11c
	.uaword	0x2017
	.uleb128 0x9
	.string	"MOD_REV"
	.byte	0x3
	.uahalf	0x11e
	.uaword	0x137b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"MOD_TYPE"
	.byte	0x3
	.uahalf	0x11f
	.uaword	0x137b
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"MODNUMBER"
	.byte	0x3
	.uahalf	0x120
	.uaword	0x137b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_ID_Bits"
	.byte	0x3
	.uahalf	0x121
	.uaword	0x1fbd
	.uleb128 0xb
	.string	"_Ifx_IOM_KRST0_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x124
	.uaword	0x2081
	.uleb128 0x9
	.string	"RST"
	.byte	0x3
	.uahalf	0x126
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"RSTSTAT"
	.byte	0x3
	.uahalf	0x127
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x3
	.uahalf	0x128
	.uaword	0x137b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_KRST0_Bits"
	.byte	0x3
	.uahalf	0x129
	.uaword	0x202f
	.uleb128 0xb
	.string	"_Ifx_IOM_KRST1_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x12c
	.uaword	0x20da
	.uleb128 0x9
	.string	"RST"
	.byte	0x3
	.uahalf	0x12e
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x12f
	.uaword	0x137b
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_KRST1_Bits"
	.byte	0x3
	.uahalf	0x130
	.uaword	0x209c
	.uleb128 0xb
	.string	"_Ifx_IOM_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x133
	.uaword	0x2135
	.uleb128 0x9
	.string	"CLR"
	.byte	0x3
	.uahalf	0x135
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x3
	.uahalf	0x136
	.uaword	0x137b
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_KRSTCLR_Bits"
	.byte	0x3
	.uahalf	0x137
	.uaword	0x20f5
	.uleb128 0xb
	.string	"_Ifx_IOM_LAMCFG_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x13a
	.uaword	0x2240
	.uleb128 0x9
	.string	"IVR"
	.byte	0x3
	.uahalf	0x13c
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"IVM"
	.byte	0x3
	.uahalf	0x13d
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"MOS"
	.byte	0x3
	.uahalf	0x13e
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RMS"
	.byte	0x3
	.uahalf	0x13f
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"EWS"
	.byte	0x3
	.uahalf	0x140
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"reserved_5"
	.byte	0x3
	.uahalf	0x141
	.uaword	0x137b
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"EDS"
	.byte	0x3
	.uahalf	0x142
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"IVW"
	.byte	0x3
	.uahalf	0x143
	.uaword	0x137b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"reserved_13"
	.byte	0x3
	.uahalf	0x144
	.uaword	0x137b
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"MCS"
	.byte	0x3
	.uahalf	0x145
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RCS"
	.byte	0x3
	.uahalf	0x146
	.uaword	0x137b
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x147
	.uaword	0x137b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMCFG_Bits"
	.byte	0x3
	.uahalf	0x148
	.uaword	0x2152
	.uleb128 0xb
	.string	"_Ifx_IOM_LAMEWC_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x14b
	.uaword	0x229b
	.uleb128 0x9
	.string	"CNT"
	.byte	0x3
	.uahalf	0x14d
	.uaword	0x137b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x14e
	.uaword	0x137b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMEWC_Bits"
	.byte	0x3
	.uahalf	0x14f
	.uaword	0x225c
	.uleb128 0xb
	.string	"_Ifx_IOM_LAMEWS_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x152
	.uaword	0x22f6
	.uleb128 0x9
	.string	"THR"
	.byte	0x3
	.uahalf	0x154
	.uaword	0x137b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x3
	.uahalf	0x155
	.uaword	0x137b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMEWS_Bits"
	.byte	0x3
	.uahalf	0x156
	.uaword	0x22b7
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x15e
	.uaword	0x233a
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x160
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x161
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x162
	.uaword	0x138b
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.string	"Ifx_IOM_ACCEN0"
	.byte	0x3
	.uahalf	0x163
	.uaword	0x2312
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x166
	.uaword	0x2380
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x168
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x169
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x16a
	.uaword	0x13da
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_ACCEN1"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x2358
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x23bf
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x170
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x171
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x172
	.uaword	0x147c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_CLC"
	.byte	0x3
	.uahalf	0x173
	.uaword	0x2397
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x176
	.uaword	0x23fb
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x178
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x179
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x17a
	.uaword	0x153b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_ECMCCFG"
	.byte	0x3
	.uahalf	0x17b
	.uaword	0x23d3
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x17e
	.uaword	0x243b
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x180
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x181
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x182
	.uaword	0x1782
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_ECMETH0"
	.byte	0x3
	.uahalf	0x183
	.uaword	0x2413
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x186
	.uaword	0x247b
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x188
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x189
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x18a
	.uaword	0x19c9
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_ECMETH1"
	.byte	0x3
	.uahalf	0x18b
	.uaword	0x2453
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x18e
	.uaword	0x24bb
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x190
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x191
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x192
	.uaword	0x1b61
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_ECMSELR"
	.byte	0x3
	.uahalf	0x193
	.uaword	0x2493
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x196
	.uaword	0x24fb
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x198
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x199
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x19a
	.uaword	0x1c2b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_FPCCTR"
	.byte	0x3
	.uahalf	0x19b
	.uaword	0x24d3
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x19e
	.uaword	0x253a
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1a0
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1a1
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1a2
	.uaword	0x1e74
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_FPCESR"
	.byte	0x3
	.uahalf	0x1a3
	.uaword	0x2512
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1a6
	.uaword	0x2579
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1a8
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1a9
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1aa
	.uaword	0x1ecf
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_FPCTIM"
	.byte	0x3
	.uahalf	0x1ab
	.uaword	0x2551
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ae
	.uaword	0x25b8
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1b0
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1b1
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x1fa1
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_GTMEXR"
	.byte	0x3
	.uahalf	0x1b3
	.uaword	0x2590
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1b6
	.uaword	0x25f7
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1b8
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1b9
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1ba
	.uaword	0x2017
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_ID"
	.byte	0x3
	.uahalf	0x1bb
	.uaword	0x25cf
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1be
	.uaword	0x2632
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1c0
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1c1
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1c2
	.uaword	0x2081
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_KRST0"
	.byte	0x3
	.uahalf	0x1c3
	.uaword	0x260a
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1c6
	.uaword	0x2670
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1c8
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1c9
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1ca
	.uaword	0x20da
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_KRST1"
	.byte	0x3
	.uahalf	0x1cb
	.uaword	0x2648
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ce
	.uaword	0x26ae
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1d0
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1d2
	.uaword	0x2135
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_KRSTCLR"
	.byte	0x3
	.uahalf	0x1d3
	.uaword	0x2686
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1d6
	.uaword	0x26ee
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1d8
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1d9
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1da
	.uaword	0x2240
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMCFG"
	.byte	0x3
	.uahalf	0x1db
	.uaword	0x26c6
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1de
	.uaword	0x272d
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1e0
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1e1
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1e2
	.uaword	0x229b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMEWC"
	.byte	0x3
	.uahalf	0x1e3
	.uaword	0x2705
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uahalf	0x1e6
	.uaword	0x276c
	.uleb128 0xe
	.string	"U"
	.byte	0x3
	.uahalf	0x1e8
	.uaword	0x137b
	.uleb128 0xe
	.string	"I"
	.byte	0x3
	.uahalf	0x1e9
	.uaword	0x233a
	.uleb128 0xe
	.string	"B"
	.byte	0x3
	.uahalf	0x1ea
	.uaword	0x22f6
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM_LAMEWS"
	.byte	0x3
	.uahalf	0x1eb
	.uaword	0x2744
	.uleb128 0xf
	.string	"_Ifx_IOM"
	.uahalf	0x200
	.byte	0x3
	.uahalf	0x1f6
	.uaword	0x2918
	.uleb128 0x10
	.string	"CLC"
	.byte	0x3
	.uahalf	0x1f8
	.uaword	0x23bf
	.byte	0
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x3
	.uahalf	0x1f9
	.uaword	0x2918
	.byte	0x4
	.uleb128 0x10
	.string	"ID"
	.byte	0x3
	.uahalf	0x1fa
	.uaword	0x25f7
	.byte	0x8
	.uleb128 0x10
	.string	"reserved_C"
	.byte	0x3
	.uahalf	0x1fb
	.uaword	0x2945
	.byte	0xc
	.uleb128 0x10
	.string	"KRSTCLR"
	.byte	0x3
	.uahalf	0x1fc
	.uaword	0x26ae
	.byte	0x1c
	.uleb128 0x10
	.string	"KRST1"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x2670
	.byte	0x20
	.uleb128 0x10
	.string	"KRST0"
	.byte	0x3
	.uahalf	0x1fe
	.uaword	0x2632
	.byte	0x24
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x3
	.uahalf	0x1ff
	.uaword	0x2380
	.byte	0x28
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x3
	.uahalf	0x200
	.uaword	0x2341
	.byte	0x2c
	.uleb128 0x10
	.string	"ECMCCFG"
	.byte	0x3
	.uahalf	0x201
	.uaword	0x23fb
	.byte	0x30
	.uleb128 0x10
	.string	"ECMSELR"
	.byte	0x3
	.uahalf	0x202
	.uaword	0x24bb
	.byte	0x34
	.uleb128 0x10
	.string	"ECMETH0"
	.byte	0x3
	.uahalf	0x203
	.uaword	0x243b
	.byte	0x38
	.uleb128 0x10
	.string	"ECMETH1"
	.byte	0x3
	.uahalf	0x204
	.uaword	0x247b
	.byte	0x3c
	.uleb128 0x10
	.string	"GTMEXR"
	.byte	0x3
	.uahalf	0x205
	.uaword	0x25b8
	.byte	0x40
	.uleb128 0x10
	.string	"reserved_44"
	.byte	0x3
	.uahalf	0x206
	.uaword	0x2955
	.byte	0x44
	.uleb128 0x10
	.string	"FPCESR"
	.byte	0x3
	.uahalf	0x207
	.uaword	0x253a
	.byte	0x78
	.uleb128 0x10
	.string	"reserved_7C"
	.byte	0x3
	.uahalf	0x208
	.uaword	0x2918
	.byte	0x7c
	.uleb128 0x10
	.string	"FPCCTR"
	.byte	0x3
	.uahalf	0x209
	.uaword	0x2965
	.byte	0x80
	.uleb128 0x10
	.string	"FPCTIM"
	.byte	0x3
	.uahalf	0x20a
	.uaword	0x2975
	.byte	0xc0
	.uleb128 0x12
	.string	"LAMEWC"
	.byte	0x3
	.uahalf	0x20b
	.uaword	0x2985
	.uahalf	0x100
	.uleb128 0x12
	.string	"reserved_140"
	.byte	0x3
	.uahalf	0x20c
	.uaword	0x2995
	.uahalf	0x140
	.uleb128 0x12
	.string	"LAMCFG"
	.byte	0x3
	.uahalf	0x20d
	.uaword	0x29a5
	.uahalf	0x180
	.uleb128 0x12
	.string	"LAMEWS"
	.byte	0x3
	.uahalf	0x20e
	.uaword	0x29b5
	.uahalf	0x1c0
	.byte	0
	.uleb128 0x13
	.uaword	0x2934
	.uaword	0x2928
	.uleb128 0x14
	.uaword	0x2928
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x13
	.uaword	0x2934
	.uaword	0x2955
	.uleb128 0x14
	.uaword	0x2928
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	0x2934
	.uaword	0x2965
	.uleb128 0x14
	.uaword	0x2928
	.byte	0x33
	.byte	0
	.uleb128 0x13
	.uaword	0x24fb
	.uaword	0x2975
	.uleb128 0x14
	.uaword	0x2928
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	0x2579
	.uaword	0x2985
	.uleb128 0x14
	.uaword	0x2928
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	0x272d
	.uaword	0x2995
	.uleb128 0x14
	.uaword	0x2928
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	0x2934
	.uaword	0x29a5
	.uleb128 0x14
	.uaword	0x2928
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.uaword	0x26ee
	.uaword	0x29b5
	.uleb128 0x14
	.uaword	0x2928
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	0x276c
	.uaword	0x29c5
	.uleb128 0x14
	.uaword	0x2928
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.string	"Ifx_IOM"
	.byte	0x3
	.uahalf	0x20f
	.uaword	0x29d5
	.uleb128 0x15
	.uaword	0x2783
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"sint8"
	.byte	0x4
	.byte	0x58
	.uaword	0x2a08
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x4
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x2934
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x4
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x2a3f
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x4
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x29e6
	.uleb128 0x4
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x2a72
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.string	"boolean"
	.byte	0x4
	.byte	0x68
	.uaword	0x2934
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.byte	0x38
	.uaword	0x2b0e
	.uleb128 0x3
	.string	"IfxIom_LamEventSource_mon"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_LamEventSource_monXorRef"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_LamEventSource"
	.byte	0x5
	.byte	0x3b
	.uaword	0x2ac7
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.byte	0x41
	.uaword	0x2bbc
	.uleb128 0x3
	.string	"IfxIom_LamEventTrigger_none"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_LamEventTrigger_risingEdge"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxIom_LamEventTrigger_fallingEdge"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxIom_LamEventTrigger_anyEdge"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_LamEventTrigger"
	.byte	0x5
	.byte	0x46
	.uaword	0x2b2b
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.byte	0x4c
	.uaword	0x2c8f
	.uleb128 0x3
	.string	"IfxIom_LamEventWindowClearEvent_none"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_LamEventWindowClearEvent_risingEdge"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxIom_LamEventWindowClearEvent_fallingEdge"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxIom_LamEventWindowClearEvent_anyEdge"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_LamEventWindowClearEvent"
	.byte	0x5
	.byte	0x51
	.uaword	0x2bda
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.byte	0x57
	.uaword	0x2d11
	.uleb128 0x3
	.string	"IfxIom_LamEventWindowControlSource_ref"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_LamEventWindowControlSource_mon"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_LamEventWindowControlSource"
	.byte	0x5
	.byte	0x5a
	.uaword	0x2cb6
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.byte	0x60
	.uaword	0x2d9a
	.uleb128 0x3
	.string	"IfxIom_LamEventWindowRunControl_freeRunning"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_LamEventWindowRunControl_gated"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_LamEventWindowRunControl"
	.byte	0x5
	.byte	0x63
	.uaword	0x2d3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.byte	0x69
	.uaword	0x2fa0
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_delayDebounceBothEdge"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_immediateDebounceBothEdge"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_immediateDebounceRisingEdge"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_immediateDebounceFallingEdge"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_delayDebounceRisingEdgeImmediateDebounceFallingEdge"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_immediateDebounceRisingEdgeDelayDebounceFallingEdge"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_prescalerOnRisingEdge"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_prescalerOnFallingEdge"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxIom_LamFilterMode_noFilter"
	.sleb128 8
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_LamFilterMode"
	.byte	0x5
	.byte	0x73
	.uaword	0x2dc1
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.byte	0x78
	.uaword	0x30db
	.uleb128 0x3
	.string	"IfxIom_LamId_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxIom_LamId_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxIom_LamId_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxIom_LamId_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxIom_LamId_4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxIom_LamId_5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxIom_LamId_6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxIom_LamId_7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxIom_LamId_8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxIom_LamId_9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxIom_LamId_10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxIom_LamId_11"
	.sleb128 11
	.uleb128 0x3
	.string	"IfxIom_LamId_12"
	.sleb128 12
	.uleb128 0x3
	.string	"IfxIom_LamId_13"
	.sleb128 13
	.uleb128 0x3
	.string	"IfxIom_LamId_14"
	.sleb128 14
	.uleb128 0x3
	.string	"IfxIom_LamId_15"
	.sleb128 15
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_LamId"
	.byte	0x5
	.byte	0x89
	.uaword	0x2fbc
	.uleb128 0x16
	.byte	0x14
	.byte	0x6
	.byte	0x69
	.uaword	0x3173
	.uleb128 0x17
	.string	"clearTimerOnGlitch"
	.byte	0x6
	.byte	0x6b
	.uaword	0x2a85
	.byte	0
	.uleb128 0x17
	.string	"fallingEdgeFilterTime"
	.byte	0x6
	.byte	0x6c
	.uaword	0x2a63
	.byte	0x4
	.uleb128 0x17
	.string	"mode"
	.byte	0x6
	.byte	0x6d
	.uaword	0x2fa0
	.byte	0x8
	.uleb128 0x17
	.string	"prescalerFactor"
	.byte	0x6
	.byte	0x6e
	.uaword	0x2a55
	.byte	0xc
	.uleb128 0x17
	.string	"risingEdgeFilterTime"
	.byte	0x6
	.byte	0x6f
	.uaword	0x2a63
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_Driver_LamFilterConfig"
	.byte	0x6
	.byte	0x70
	.uaword	0x30ef
	.uleb128 0x16
	.byte	0x8
	.byte	0x6
	.byte	0x78
	.uaword	0x31cd
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x6
	.byte	0x7a
	.uaword	0x31cd
	.byte	0
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x6
	.byte	0x7b
	.uaword	0x2a17
	.byte	0x4
	.uleb128 0x17
	.string	"lamUsedMask"
	.byte	0x6
	.byte	0x7c
	.uaword	0x2a31
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x29c5
	.uleb128 0x4
	.string	"IfxIom_Driver"
	.byte	0x6
	.byte	0x7d
	.uaword	0x3198
	.uleb128 0x16
	.byte	0x2
	.byte	0x6
	.byte	0x81
	.uaword	0x3210
	.uleb128 0x17
	.string	"source"
	.byte	0x6
	.byte	0x83
	.uaword	0x2b0e
	.byte	0
	.uleb128 0x17
	.string	"trigger"
	.byte	0x6
	.byte	0x84
	.uaword	0x2bbc
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_Driver_LamEventConfig"
	.byte	0x6
	.byte	0x85
	.uaword	0x31e8
	.uleb128 0x16
	.byte	0x8
	.byte	0x6
	.byte	0x89
	.uaword	0x3290
	.uleb128 0x17
	.string	"clearEvent"
	.byte	0x6
	.byte	0x8b
	.uaword	0x2c8f
	.byte	0
	.uleb128 0x17
	.string	"controlSource"
	.byte	0x6
	.byte	0x8c
	.uaword	0x2d11
	.byte	0x1
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x6
	.byte	0x8d
	.uaword	0x2a85
	.byte	0x2
	.uleb128 0x17
	.string	"run"
	.byte	0x6
	.byte	0x8e
	.uaword	0x2d9a
	.byte	0x3
	.uleb128 0x17
	.string	"threshold"
	.byte	0x6
	.byte	0x8f
	.uaword	0x2a63
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_Driver_LamEventWindowConfig"
	.byte	0x6
	.byte	0x90
	.uaword	0x3234
	.uleb128 0x16
	.byte	0x18
	.byte	0x6
	.byte	0x94
	.uaword	0x32ec
	.uleb128 0x17
	.string	"filter"
	.byte	0x6
	.byte	0x96
	.uaword	0x3173
	.byte	0
	.uleb128 0x17
	.string	"input"
	.byte	0x6
	.byte	0x97
	.uaword	0xa09
	.byte	0x14
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x6
	.byte	0x98
	.uaword	0x2a85
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_Driver_LamMonConfig"
	.byte	0x6
	.byte	0x99
	.uaword	0x32ba
	.uleb128 0x16
	.byte	0x18
	.byte	0x6
	.byte	0x9d
	.uaword	0x3340
	.uleb128 0x17
	.string	"filter"
	.byte	0x6
	.byte	0x9f
	.uaword	0x3173
	.byte	0
	.uleb128 0x17
	.string	"input"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1150
	.byte	0x14
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x6
	.byte	0xa1
	.uaword	0x2a85
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_Driver_LamRefConfig"
	.byte	0x6
	.byte	0xa2
	.uaword	0x330e
	.uleb128 0x16
	.byte	0x4
	.byte	0x6
	.byte	0xaa
	.uaword	0x3377
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x6
	.byte	0xac
	.uaword	0x31cd
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_Driver_Config"
	.byte	0x6
	.byte	0xad
	.uaword	0x3362
	.uleb128 0x16
	.byte	0xc
	.byte	0x6
	.byte	0xb1
	.uaword	0x3414
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x6
	.byte	0xb3
	.uaword	0x3414
	.byte	0
	.uleb128 0x17
	.string	"channel"
	.byte	0x6
	.byte	0xb4
	.uaword	0x30db
	.byte	0x4
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x6
	.byte	0xb5
	.uaword	0x2a17
	.byte	0x5
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x6
	.byte	0xb6
	.uaword	0x2a17
	.byte	0x6
	.uleb128 0x18
	.uaword	.LASF11
	.byte	0x6
	.byte	0xb7
	.uaword	0x2d2
	.byte	0x7
	.uleb128 0x18
	.uaword	.LASF12
	.byte	0x6
	.byte	0xb8
	.uaword	0x220
	.byte	0x8
	.uleb128 0x17
	.string	"accumulatedCounterIndex"
	.byte	0x6
	.byte	0xb9
	.uaword	0x29fb
	.byte	0x9
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0x6
	.byte	0xba
	.uaword	0x2a17
	.byte	0xa
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x31d3
	.uleb128 0x4
	.string	"IfxIom_Driver_Lam"
	.byte	0x6
	.byte	0xbb
	.uaword	0x3393
	.uleb128 0x16
	.byte	0x44
	.byte	0x6
	.byte	0xbf
	.uaword	0x349e
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x6
	.byte	0xc1
	.uaword	0x3414
	.byte	0
	.uleb128 0x17
	.string	"channel"
	.byte	0x6
	.byte	0xc2
	.uaword	0x30db
	.byte	0x4
	.uleb128 0x17
	.string	"event"
	.byte	0x6
	.byte	0xc3
	.uaword	0x3210
	.byte	0x6
	.uleb128 0x17
	.string	"eventWindow"
	.byte	0x6
	.byte	0xc4
	.uaword	0x3290
	.byte	0x8
	.uleb128 0x17
	.string	"mon"
	.byte	0x6
	.byte	0xc5
	.uaword	0x32ec
	.byte	0x10
	.uleb128 0x17
	.string	"ref"
	.byte	0x6
	.byte	0xc6
	.uaword	0x3340
	.byte	0x28
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0x6
	.byte	0xc7
	.uaword	0x2a17
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.string	"IfxIom_Driver_LamConfig"
	.byte	0x6
	.byte	0xc8
	.uaword	0x3433
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxIom_Driver_clearAllGlitch"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB172
	.uaword	.LFE172
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3509
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x31
	.uaword	0x3414
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0x33
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxIom_Driver_clearHistory"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	.LFB173
	.uaword	.LFE173
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3553
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x38
	.uaword	0x3414
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0x3a
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxIom_Driver_clearLamMonGlitch"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB174
	.uaword	.LFE174
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35a2
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x3f
	.uaword	0x35a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0x41
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x341a
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxIom_Driver_clearLamRefGlitch"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	.LFB175
	.uaword	.LFE175
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x35f7
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x4a
	.uaword	0x35a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0x4c
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxIom_Driver_disableEvents"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	0x2a55
	.uaword	.LFB176
	.uaword	.LFE176
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3648
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x55
	.uaword	0x3414
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.string	"value"
	.byte	0x1
	.byte	0x57
	.uaword	0x2a55
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxIom_Driver_disableLamEvent"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB177
	.uaword	.LFE177
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x36a4
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x5e
	.uaword	0x35a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.byte	0x60
	.uaword	0x3414
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0x61
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxIom_Driver_enableLamEvent"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	.LFB178
	.uaword	.LFE178
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x36ff
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x73
	.uaword	0x35a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	.LASF8
	.byte	0x1
	.byte	0x75
	.uaword	0x3414
	.uaword	.LLST1
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0x76
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxIom_Driver_getHistory"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	.LFB179
	.uaword	.LFE179
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3787
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x88
	.uaword	0x3414
	.byte	0x1
	.byte	0x64
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0x88
	.uaword	0x3787
	.byte	0x1
	.byte	0x65
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.byte	0x88
	.uaword	0x3787
	.byte	0x1
	.byte	0x66
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0x88
	.uaword	0x3787
	.byte	0x1
	.byte	0x67
	.uleb128 0x20
	.string	"d"
	.byte	0x1
	.byte	0x88
	.uaword	0x3787
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.uaword	.LASF5
	.byte	0x1
	.byte	0x8a
	.uaword	0x31cd
	.uaword	.LLST2
	.uleb128 0x21
	.string	"value"
	.byte	0x1
	.byte	0x8b
	.uaword	0x2a55
	.uaword	.LLST3
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x2a31
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxIom_Driver_init"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.uaword	0x2a85
	.uaword	.LFB180
	.uaword	.LFE180
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x37d3
	.uleb128 0x1b
	.uaword	.LASF14
	.byte	0x1
	.byte	0x97
	.uaword	0x3414
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.uaword	.LASF15
	.byte	0x1
	.byte	0x97
	.uaword	0x37d3
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x3377
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxIom_Driver_initConfig"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.uaword	.LFB181
	.uaword	.LFE181
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3821
	.uleb128 0x1b
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa0
	.uaword	0x37d3
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0x1
	.byte	0xa0
	.uaword	0x31cd
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxIom_Driver_initLam"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.uaword	0x2a85
	.uaword	.LFB182
	.uaword	.LFE182
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x394a
	.uleb128 0x22
	.uaword	.LASF14
	.byte	0x1
	.byte	0xa6
	.uaword	0x35a2
	.uaword	.LLST4
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa6
	.uaword	0x394a
	.uaword	.LLST5
	.uleb128 0x21
	.string	"result"
	.byte	0x1
	.byte	0xa8
	.uaword	0x2a85
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x1
	.byte	0xa9
	.uaword	0x3414
	.byte	0x1
	.byte	0x6e
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.byte	0xaa
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6d
	.uleb128 0x21
	.string	"fiom"
	.byte	0x1
	.byte	0xab
	.uaword	0x2a63
	.uaword	.LLST7
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0
	.uaword	0x38d1
	.uleb128 0x1f
	.uaword	.LASF10
	.byte	0x1
	.byte	0xc0
	.uaword	0x2a17
	.uaword	.LLST8
	.uleb128 0x1f
	.uaword	.LASF11
	.byte	0x1
	.byte	0xc1
	.uaword	0x2d2
	.uaword	.LLST9
	.byte	0
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x28
	.uaword	0x38f9
	.uleb128 0x1f
	.uaword	.LASF9
	.byte	0x1
	.byte	0xe3
	.uaword	0x2a17
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	.LASF12
	.byte	0x1
	.byte	0xe4
	.uaword	0x220
	.uaword	.LLST11
	.byte	0
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x40
	.uaword	0x3939
	.uleb128 0x24
	.string	"index"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x29fb
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x2a17
	.uaword	.LLST13
	.uleb128 0x24
	.string	"success"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x2a85
	.uaword	.LLST14
	.byte	0
	.uleb128 0x26
	.uaword	.LVL33
	.uaword	0x3b07
	.uleb128 0x27
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x349e
	.uleb128 0x28
	.byte	0x1
	.string	"IfxIom_Driver_initLamConfig"
	.byte	0x1
	.uahalf	0x13c
	.byte	0x1
	.uaword	.LFB183
	.uaword	.LFE183
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x399e
	.uleb128 0x29
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x394a
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x3414
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IfxIom_Driver_isLamMonGlitch"
	.byte	0x1
	.uahalf	0x159
	.byte	0x1
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a28
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x159
	.uaword	0x35a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x159
	.uaword	0x3a28
	.byte	0x1
	.byte	0x65
	.uleb128 0x29
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x159
	.uaword	0x3a28
	.byte	0x1
	.byte	0x66
	.uleb128 0x2a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2b
	.uaword	.LBB10
	.uaword	.LBE10
	.uleb128 0x2c
	.string	"index"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x2a55
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x2a85
	.uleb128 0x28
	.byte	0x1
	.string	"IfxIom_Driver_isLamRefGlitch"
	.byte	0x1
	.uahalf	0x16c
	.byte	0x1
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3ab8
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x35a2
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x3a28
	.byte	0x1
	.byte	0x65
	.uleb128 0x29
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x16c
	.uaword	0x3a28
	.byte	0x1
	.byte	0x66
	.uleb128 0x2a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x31cd
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2b
	.uaword	.LBB11
	.uaword	.LBE11
	.uleb128 0x2c
	.string	"index"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x2a55
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IfxIom_Driver_restoreEvents"
	.byte	0x1
	.uahalf	0x17f
	.byte	0x1
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3b07
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x3414
	.byte	0x1
	.byte	0x64
	.uleb128 0x2d
	.string	"mask"
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x2a55
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"IfxIom_getFrequency"
	.byte	0x5
	.byte	0xbd
	.byte	0x1
	.uaword	0x2a63
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x31cd
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25
	.uaword	.LFE179
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LFE182
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL29
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33-1
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL52
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL59
	.uaword	.LFE182
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL29
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LFE182
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE182
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x8c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB172
	.uaword	.LFE172-.LFB172
	.uaword	.LFB173
	.uaword	.LFE173-.LFB173
	.uaword	.LFB174
	.uaword	.LFE174-.LFB174
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.uaword	.LFB177
	.uaword	.LFE177-.LFB177
	.uaword	.LFB178
	.uaword	.LFE178-.LFB178
	.uaword	.LFB179
	.uaword	.LFE179-.LFB179
	.uaword	.LFB180
	.uaword	.LFE180-.LFB180
	.uaword	.LFB181
	.uaword	.LFE181-.LFB181
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	.LBB3
	.uaword	.LBE3
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LBB5
	.uaword	.LBE5
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	0
	.uaword	0
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LFB172
	.uaword	.LFE172
	.uaword	.LFB173
	.uaword	.LFE173
	.uaword	.LFB174
	.uaword	.LFE174
	.uaword	.LFB175
	.uaword	.LFE175
	.uaword	.LFB176
	.uaword	.LFE176
	.uaword	.LFB177
	.uaword	.LFE177
	.uaword	.LFB178
	.uaword	.LFE178
	.uaword	.LFB179
	.uaword	.LFE179
	.uaword	.LFB180
	.uaword	.LFE180
	.uaword	.LFB181
	.uaword	.LFE181
	.uaword	.LFB182
	.uaword	.LFE182
	.uaword	.LFB183
	.uaword	.LFE183
	.uaword	.LFB184
	.uaword	.LFE184
	.uaword	.LFB185
	.uaword	.LFE185
	.uaword	.LFB186
	.uaword	.LFE186
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF12:
	.string	"monInput"
.LASF5:
	.string	"module"
.LASF10:
	.string	"refIndex"
.LASF13:
	.string	"systemEventTriggerThreshold"
.LASF3:
	.string	"reserved_1"
.LASF0:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_4"
.LASF15:
	.string	"config"
.LASF4:
	.string	"reserved_24"
.LASF16:
	.string	"risingEdgeGlitch"
.LASF9:
	.string	"monIndex"
.LASF6:
	.string	"accumulatedEventUsedMask"
.LASF2:
	.string	"reserved_16"
.LASF7:
	.string	"inverted"
.LASF8:
	.string	"iomDriver"
.LASF11:
	.string	"refInput"
.LASF17:
	.string	"fallingEdgeGlitch"
.LASF14:
	.string	"driver"
	.extern	IfxIom_getFrequency,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
