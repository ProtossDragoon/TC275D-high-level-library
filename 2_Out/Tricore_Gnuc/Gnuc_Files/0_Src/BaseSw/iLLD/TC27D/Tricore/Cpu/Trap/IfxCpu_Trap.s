	.file	"IfxCpu_Trap.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxCpu_Trap_memoryManagementError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_memoryManagementError
	.type	IfxCpu_Trap_memoryManagementError, @function
IfxCpu_Trap_memoryManagementError:
.LFB215:
	.file 1 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c"
	.loc 1 110 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
.LBB110:
.LBB111:
.LBB112:
.LBB113:
	.file 2 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL1:
#NO_APP
.LBE113:
.LBE112:
.LBB114:
.LBB115:
.LBB116:
	.file 3 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL2:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL3:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 0, 8, 11
	and	%d15, %d15, 7
.LVL4:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE116:
.LBE115:
.LBE114:
.LBE111:
.LBE110:
	.loc 1 113 0
	ld.d	%e2, [%SP]0
.LBB117:
.LBB118:
	.loc 2 1375 0
#APP
	# 1375 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE118:
.LBE117:
	.loc 1 115 0
#APP
	# 115 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 116 0
	# 116 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE215:
	.size	IfxCpu_Trap_memoryManagementError, .-IfxCpu_Trap_memoryManagementError
.section .text.IfxCpu_Trap_internalProtectionError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_internalProtectionError
	.type	IfxCpu_Trap_internalProtectionError, @function
IfxCpu_Trap_internalProtectionError:
.LFB216:
	.loc 1 121 0
.LVL5:
	sub.a	%SP, 8
.LCFI1:
.LBB119:
.LBB120:
.LBB121:
.LBB122:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL6:
#NO_APP
.LBE122:
.LBE121:
.LBB123:
.LBB124:
.LBB125:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL7:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL8:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 1, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL9:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE125:
.LBE124:
.LBE123:
.LBE120:
.LBE119:
	.loc 1 124 0
	ld.d	%e2, [%SP]0
.LBB126:
.LBB127:
	.loc 2 1375 0
#APP
	# 1375 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE127:
.LBE126:
	.loc 1 126 0
#APP
	# 126 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 127 0
	# 127 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE216:
	.size	IfxCpu_Trap_internalProtectionError, .-IfxCpu_Trap_internalProtectionError
.section .text.IfxCpu_Trap_instructionError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_instructionError
	.type	IfxCpu_Trap_instructionError, @function
IfxCpu_Trap_instructionError:
.LFB217:
	.loc 1 132 0
.LVL10:
	sub.a	%SP, 8
.LCFI2:
.LBB128:
.LBB129:
.LBB130:
.LBB131:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL11:
#NO_APP
.LBE131:
.LBE130:
.LBB132:
.LBB133:
.LBB134:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL12:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL13:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 2, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL14:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE134:
.LBE133:
.LBE132:
.LBE129:
.LBE128:
	.loc 1 135 0
	ld.d	%e2, [%SP]0
.LBB135:
.LBB136:
	.loc 2 1375 0
#APP
	# 1375 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE136:
.LBE135:
	.loc 1 137 0
#APP
	# 137 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 138 0
	# 138 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE217:
	.size	IfxCpu_Trap_instructionError, .-IfxCpu_Trap_instructionError
.section .text.IfxCpu_Trap_contextManagementError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_contextManagementError
	.type	IfxCpu_Trap_contextManagementError, @function
IfxCpu_Trap_contextManagementError:
.LFB218:
	.loc 1 143 0
.LVL15:
	sub.a	%SP, 8
.LCFI3:
.LBB137:
.LBB138:
.LBB139:
.LBB140:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL16:
#NO_APP
.LBE140:
.LBE139:
.LBB141:
.LBB142:
.LBB143:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL17:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL18:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 3, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL19:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE143:
.LBE142:
.LBE141:
.LBE138:
.LBE137:
	.loc 1 146 0
	ld.d	%e2, [%SP]0
.LBB144:
.LBB145:
	.loc 2 1375 0
#APP
	# 1375 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE145:
.LBE144:
	.loc 1 148 0
#APP
	# 148 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 149 0
	# 149 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE218:
	.size	IfxCpu_Trap_contextManagementError, .-IfxCpu_Trap_contextManagementError
.section .text.IfxCpu_Trap_busError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_busError
	.type	IfxCpu_Trap_busError, @function
IfxCpu_Trap_busError:
.LFB219:
	.loc 1 154 0
.LVL20:
	sub.a	%SP, 8
.LCFI4:
.LBB146:
.LBB147:
.LBB148:
.LBB149:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL21:
#NO_APP
.LBE149:
.LBE148:
.LBB150:
.LBB151:
.LBB152:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL22:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL23:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 4, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL24:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE152:
.LBE151:
.LBE150:
.LBE147:
.LBE146:
	.loc 1 157 0
	ld.d	%e2, [%SP]0
.LBB153:
.LBB154:
	.loc 2 1375 0
#APP
	# 1375 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE154:
.LBE153:
	.loc 1 159 0
#APP
	# 159 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 160 0
	# 160 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE219:
	.size	IfxCpu_Trap_busError, .-IfxCpu_Trap_busError
.section .text.IfxCpu_Trap_assertion,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_assertion
	.type	IfxCpu_Trap_assertion, @function
IfxCpu_Trap_assertion:
.LFB220:
	.loc 1 165 0
.LVL25:
	sub.a	%SP, 8
.LCFI5:
.LBB155:
.LBB156:
.LBB157:
.LBB158:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL26:
#NO_APP
.LBE158:
.LBE157:
.LBB159:
.LBB160:
.LBB161:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL27:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL28:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 5, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL29:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE161:
.LBE160:
.LBE159:
.LBE156:
.LBE155:
	.loc 1 168 0
	ld.d	%e2, [%SP]0
.LBB162:
.LBB163:
	.loc 2 1375 0
#APP
	# 1375 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE163:
.LBE162:
	.loc 1 170 0
#APP
	# 170 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 171 0
	# 171 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE220:
	.size	IfxCpu_Trap_assertion, .-IfxCpu_Trap_assertion
.section .text.IfxCpu_Trap_systemCall_Cpu0,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu0
	.type	IfxCpu_Trap_systemCall_Cpu0, @function
IfxCpu_Trap_systemCall_Cpu0:
.LFB221:
	.loc 1 176 0
.LVL30:
	sub.a	%SP, 8
.LCFI6:
.LBB164:
.LBB165:
.LBB166:
.LBB167:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL31:
#NO_APP
.LBE167:
.LBE166:
.LBB168:
.LBB169:
.LBB170:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL32:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL33:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 6, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL34:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE170:
.LBE169:
.LBE168:
.LBE165:
.LBE164:
	.loc 1 179 0
	ld.d	%e2, [%SP]0
	.loc 1 180 0
#APP
	# 180 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 181 0
	# 181 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE221:
	.size	IfxCpu_Trap_systemCall_Cpu0, .-IfxCpu_Trap_systemCall_Cpu0
.section .text.IfxCpu_Trap_systemCall_Cpu1,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu1
	.type	IfxCpu_Trap_systemCall_Cpu1, @function
IfxCpu_Trap_systemCall_Cpu1:
.LFB222:
	.loc 1 186 0
.LVL35:
	sub.a	%SP, 8
.LCFI7:
.LBB171:
.LBB172:
.LBB173:
.LBB174:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL36:
#NO_APP
.LBE174:
.LBE173:
.LBB175:
.LBB176:
.LBB177:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL37:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL38:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 6, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL39:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE177:
.LBE176:
.LBE175:
.LBE172:
.LBE171:
	.loc 1 189 0
	ld.d	%e2, [%SP]0
	.loc 1 190 0
#APP
	# 190 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 191 0
	# 191 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE222:
	.size	IfxCpu_Trap_systemCall_Cpu1, .-IfxCpu_Trap_systemCall_Cpu1
.section .text.IfxCpu_Trap_systemCall_Cpu2,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu2
	.type	IfxCpu_Trap_systemCall_Cpu2, @function
IfxCpu_Trap_systemCall_Cpu2:
.LFB223:
	.loc 1 196 0
.LVL40:
	sub.a	%SP, 8
.LCFI8:
.LBB178:
.LBB179:
.LBB180:
.LBB181:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL41:
#NO_APP
.LBE181:
.LBE180:
.LBB182:
.LBB183:
.LBB184:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL42:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL43:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 6, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL44:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE184:
.LBE183:
.LBE182:
.LBE179:
.LBE178:
	.loc 1 199 0
	ld.d	%e2, [%SP]0
	.loc 1 200 0
#APP
	# 200 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 201 0
	# 201 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE223:
	.size	IfxCpu_Trap_systemCall_Cpu2, .-IfxCpu_Trap_systemCall_Cpu2
.section .text.IfxCpu_Trap_nonMaskableInterrupt,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_nonMaskableInterrupt
	.type	IfxCpu_Trap_nonMaskableInterrupt, @function
IfxCpu_Trap_nonMaskableInterrupt:
.LFB227:
	.loc 1 236 0
.LVL45:
	sub.a	%SP, 8
.LCFI9:
.LBB185:
.LBB186:
.LBB187:
.LBB188:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL46:
#NO_APP
.LBE188:
.LBE187:
.LBB189:
.LBB190:
.LBB191:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL47:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL48:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 7, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL49:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE191:
.LBE190:
.LBE189:
.LBE186:
.LBE185:
	.loc 1 239 0
	ld.d	%e2, [%SP]0
	.loc 1 240 0
#APP
	# 240 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 241 0
	# 241 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE227:
	.size	IfxCpu_Trap_nonMaskableInterrupt, .-IfxCpu_Trap_nonMaskableInterrupt
.section .text.IfxCpu_Trap_systemCall_Cpu3,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu3
	.type	IfxCpu_Trap_systemCall_Cpu3, @function
IfxCpu_Trap_systemCall_Cpu3:
.LFB224:
	.loc 1 206 0
.LVL50:
	sub.a	%SP, 8
.LCFI10:
.LBB192:
.LBB193:
.LBB194:
.LBB195:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL51:
#NO_APP
.LBE195:
.LBE194:
.LBB196:
.LBB197:
.LBB198:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL52:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL53:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 6, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL54:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE198:
.LBE197:
.LBE196:
.LBE193:
.LBE192:
	.loc 1 209 0
	ld.d	%e2, [%SP]0
	.loc 1 210 0
#APP
	# 210 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 211 0
	# 211 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE224:
	.size	IfxCpu_Trap_systemCall_Cpu3, .-IfxCpu_Trap_systemCall_Cpu3
.section .text.IfxCpu_Trap_systemCall_Cpu4,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu4
	.type	IfxCpu_Trap_systemCall_Cpu4, @function
IfxCpu_Trap_systemCall_Cpu4:
.LFB225:
	.loc 1 216 0
.LVL55:
	sub.a	%SP, 8
.LCFI11:
.LBB199:
.LBB200:
.LBB201:
.LBB202:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL56:
#NO_APP
.LBE202:
.LBE201:
.LBB203:
.LBB204:
.LBB205:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL57:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL58:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 6, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL59:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE205:
.LBE204:
.LBE203:
.LBE200:
.LBE199:
	.loc 1 219 0
	ld.d	%e2, [%SP]0
	.loc 1 220 0
#APP
	# 220 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 221 0
	# 221 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE225:
	.size	IfxCpu_Trap_systemCall_Cpu4, .-IfxCpu_Trap_systemCall_Cpu4
.section .text.IfxCpu_Trap_systemCall_Cpu5,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu5
	.type	IfxCpu_Trap_systemCall_Cpu5, @function
IfxCpu_Trap_systemCall_Cpu5:
.LFB226:
	.loc 1 226 0
.LVL60:
	sub.a	%SP, 8
.LCFI12:
.LBB206:
.LBB207:
.LBB208:
.LBB209:
	.loc 2 1503 0
#APP
	# 1503 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a15, %a11
	# 0 "" 2
.LVL61:
#NO_APP
.LBE209:
.LBE208:
.LBB210:
.LBB211:
.LBB212:
	.loc 3 754 0
#APP
	# 754 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL62:
#NO_APP
	mov	%e2, 0
	and	%d4, %d4, 255
.LVL63:
	andn	%d5, %d3, ~(-256)
	or	%d4, %d5
	insert	%d4, %d4, 6, 8, 8
	insert	%d4, %d4, 0, 16, 3
	and	%d15, %d15, 7
.LVL64:
	mov.d	%d2, %a15
	sh	%d15, %d15, 16
	or	%d3, %d4, %d15
	st.d	[%SP]0, %e2
.LBE212:
.LBE211:
.LBE210:
.LBE207:
.LBE206:
	.loc 1 229 0
	ld.d	%e2, [%SP]0
	.loc 1 230 0
#APP
	# 230 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rslcx
	# 0 "" 2
	.loc 1 231 0
	# 231 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE226:
	.size	IfxCpu_Trap_systemCall_Cpu5, .-IfxCpu_Trap_systemCall_Cpu5
.section .traptab_cpu0,"awx",@progbits
	.align 1
	.global	IfxCpu_Trap_vectorTable0
	.type	IfxCpu_Trap_vectorTable0, @function
IfxCpu_Trap_vectorTable0:
.LFB228:
	.loc 1 263 0
	.loc 1 264 0
#APP
	# 264 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 264 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 264 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_memoryManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_memoryManagementError
#APP
	# 264 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 264 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 265 0
	# 265 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 265 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 265 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_internalProtectionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_internalProtectionError
#APP
	# 265 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 265 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 266 0
	# 266 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 266 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 266 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_instructionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_instructionError
#APP
	# 266 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 266 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 267 0
	# 267 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 267 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 267 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_contextManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_contextManagementError
#APP
	# 267 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 267 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 268 0
	# 268 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 268 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 268 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_busError
	lea	%a15, [%a15] lo:IfxCpu_Trap_busError
#APP
	# 268 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 268 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 269 0
	# 269 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 269 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 269 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_assertion
	lea	%a15, [%a15] lo:IfxCpu_Trap_assertion
#APP
	# 269 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 269 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 270 0
	# 270 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 270 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 270 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_systemCall_Cpu0
	lea	%a15, [%a15] lo:IfxCpu_Trap_systemCall_Cpu0
#APP
	# 270 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 270 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 271 0
	# 271 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 271 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 271 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_nonMaskableInterrupt
	lea	%a15, [%a15] lo:IfxCpu_Trap_nonMaskableInterrupt
#APP
	# 271 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 271 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE228:
	.size	IfxCpu_Trap_vectorTable0, .-IfxCpu_Trap_vectorTable0
.section .traptab_cpu1,"awx",@progbits
	.align 1
	.global	IfxCpu_Trap_vectorTable1
	.type	IfxCpu_Trap_vectorTable1, @function
IfxCpu_Trap_vectorTable1:
.LFB229:
	.loc 1 292 0
	.loc 1 293 0
#APP
	# 293 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 293 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 293 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_memoryManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_memoryManagementError
#APP
	# 293 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 293 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 294 0
	# 294 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 294 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 294 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_internalProtectionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_internalProtectionError
#APP
	# 294 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 294 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 295 0
	# 295 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 295 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 295 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_instructionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_instructionError
#APP
	# 295 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 295 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 296 0
	# 296 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 296 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 296 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_contextManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_contextManagementError
#APP
	# 296 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 296 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 297 0
	# 297 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 297 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 297 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_busError
	lea	%a15, [%a15] lo:IfxCpu_Trap_busError
#APP
	# 297 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 297 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 298 0
	# 298 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 298 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 298 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_assertion
	lea	%a15, [%a15] lo:IfxCpu_Trap_assertion
#APP
	# 298 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 298 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 299 0
	# 299 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 299 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 299 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_systemCall_Cpu1
	lea	%a15, [%a15] lo:IfxCpu_Trap_systemCall_Cpu1
#APP
	# 299 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 299 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 300 0
	# 300 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 300 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 300 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_nonMaskableInterrupt
	lea	%a15, [%a15] lo:IfxCpu_Trap_nonMaskableInterrupt
#APP
	# 300 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 300 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE229:
	.size	IfxCpu_Trap_vectorTable1, .-IfxCpu_Trap_vectorTable1
.section .traptab_cpu2,"awx",@progbits
	.align 1
	.global	IfxCpu_Trap_vectorTable2
	.type	IfxCpu_Trap_vectorTable2, @function
IfxCpu_Trap_vectorTable2:
.LFB230:
	.loc 1 324 0
	.loc 1 325 0
#APP
	# 325 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 325 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 325 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_memoryManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_memoryManagementError
#APP
	# 325 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 325 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 326 0
	# 326 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 326 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 326 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_internalProtectionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_internalProtectionError
#APP
	# 326 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 326 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 327 0
	# 327 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 327 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 327 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_instructionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_instructionError
#APP
	# 327 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 327 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 328 0
	# 328 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 328 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 328 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_contextManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_contextManagementError
#APP
	# 328 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 328 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 329 0
	# 329 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 329 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 329 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_busError
	lea	%a15, [%a15] lo:IfxCpu_Trap_busError
#APP
	# 329 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 329 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 330 0
	# 330 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 330 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 330 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_assertion
	lea	%a15, [%a15] lo:IfxCpu_Trap_assertion
#APP
	# 330 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 330 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 331 0
	# 331 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 331 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 331 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_systemCall_Cpu2
	lea	%a15, [%a15] lo:IfxCpu_Trap_systemCall_Cpu2
#APP
	# 331 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 331 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 332 0
	# 332 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 332 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	svlcx

	# 0 "" 2
	# 332 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_nonMaskableInterrupt
	lea	%a15, [%a15] lo:IfxCpu_Trap_nonMaskableInterrupt
#APP
	# 332 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 332 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LFE230:
	.size	IfxCpu_Trap_vectorTable2, .-IfxCpu_Trap_vectorTable2
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
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.byte	0x4
	.uaword	.LCFI0-.LFB215
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.byte	0x4
	.uaword	.LCFI1-.LFB216
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.byte	0x4
	.uaword	.LCFI2-.LFB217
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.byte	0x4
	.uaword	.LCFI3-.LFB218
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.byte	0x4
	.uaword	.LCFI4-.LFB219
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.byte	0x4
	.uaword	.LCFI5-.LFB220
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.byte	0x4
	.uaword	.LCFI6-.LFB221
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.byte	0x4
	.uaword	.LCFI7-.LFB222
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.byte	0x4
	.uaword	.LCFI8-.LFB223
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.byte	0x4
	.uaword	.LCFI9-.LFB227
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.byte	0x4
	.uaword	.LCFI10-.LFB224
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.byte	0x4
	.uaword	.LCFI11-.LFB225
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.byte	0x4
	.uaword	.LCFI12-.LFB226
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE30:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.h"
	.file 7 "0_Src/BaseSw/Infra/Sfr/TC27D/_Reg/IfxCpu_regdef.h"
	.file 8 "0_Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1215
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Trap/IfxCpu_Trap.c"
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
	.byte	0x4
	.byte	0x59
	.uaword	0x1ef
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
	.byte	0x4
	.byte	0x5c
	.uaword	0x1ab
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1b7
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
	.uleb128 0x5
	.byte	0x4
	.uaword	0x28d
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x7d
	.uaword	0x2b4
	.uleb128 0x8
	.string	"module"
	.byte	0x5
	.byte	0x7f
	.uaword	0x287
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x5
	.byte	0x80
	.uaword	0x223
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x81
	.uaword	0x28e
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x37
	.uaword	0x3ed
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_memoryManagement"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_internalProtection"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_instructionErrors"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_contextManagement"
	.sleb128 3
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_bus"
	.sleb128 4
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_assertion"
	.sleb128 5
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_systemCall"
	.sleb128 6
	.uleb128 0xa
	.string	"IfxCpu_Trap_Class_nonMaskableInterrupt"
	.sleb128 7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0xa6
	.uaword	0x435
	.uleb128 0x8
	.string	"tAddr"
	.byte	0x6
	.byte	0xa8
	.uaword	0x435
	.byte	0
	.uleb128 0xb
	.string	"tId"
	.byte	0x6
	.byte	0xa9
	.uaword	0x435
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.uleb128 0xb
	.string	"tClass"
	.byte	0x6
	.byte	0xaa
	.uaword	0x435
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x4
	.uleb128 0xb
	.string	"tCpu"
	.byte	0x6
	.byte	0xab
	.uaword	0x435
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"IfxCpu_Trap"
	.byte	0x6
	.byte	0xac
	.uaword	0x3ed
	.uleb128 0xc
	.uaword	0x435
	.uleb128 0xd
	.string	"_Ifx_CPU_CORE_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x5c
	.uaword	0x4a5
	.uleb128 0xb
	.string	"CORE_ID"
	.byte	0x7
	.byte	0x5e
	.uaword	0x458
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x7
	.byte	0x5f
	.uaword	0x458
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CPU_CORE_ID_Bits"
	.byte	0x7
	.byte	0x60
	.uaword	0x45d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x4e9
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x435
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x1cc
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x4a5
	.byte	0
	.uleb128 0x10
	.string	"Ifx_CPU_CORE_ID"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x4c1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x6c
	.uaword	0x551
	.uleb128 0xa
	.string	"IfxCpu_Id_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Id_1"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Id_2"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Id_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_Id"
	.byte	0x8
	.byte	0x71
	.uaword	0x50d
	.uleb128 0x11
	.string	"__getA11"
	.byte	0x2
	.uahalf	0x5dc
	.byte	0x1
	.uaword	0x285
	.byte	0x3
	.uaword	0x586
	.uleb128 0x12
	.string	"res"
	.byte	0x2
	.uahalf	0x5de
	.uaword	0x586
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x231
	.uleb128 0x11
	.string	"IfxCpu_getCoreId"
	.byte	0x3
	.uahalf	0x2ef
	.byte	0x1
	.uaword	0x551
	.byte	0x3
	.uaword	0x5c8
	.uleb128 0x12
	.string	"reg"
	.byte	0x3
	.uahalf	0x2f1
	.uaword	0x4e9
	.uleb128 0x13
	.uleb128 0x12
	.string	"__res"
	.byte	0x3
	.uahalf	0x2f2
	.uaword	0x435
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"IfxCpu_Trap_extractTrapInfo"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	0x445
	.byte	0x3
	.uaword	0x61e
	.uleb128 0x15
	.string	"trapClass"
	.byte	0x1
	.byte	0x62
	.uaword	0x1e2
	.uleb128 0x15
	.string	"tin"
	.byte	0x1
	.byte	0x62
	.uaword	0x231
	.uleb128 0x16
	.string	"trapInfo"
	.byte	0x1
	.byte	0x64
	.uaword	0x445
	.byte	0
	.uleb128 0x17
	.string	"__debug"
	.byte	0x2
	.uahalf	0x55d
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_memoryManagementError"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x718
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0x6d
	.uaword	0x231
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6f
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x5c8
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0x70
	.uaword	0x708
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0
	.uleb128 0x1e
	.uaword	.LBB111
	.uaword	.LBE111
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0x65
	.uaword	0x6d4
	.uleb128 0x1e
	.uaword	.LBB113
	.uaword	.LBE113
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB115
	.uaword	.LBE115
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB116
	.uaword	.LBE116
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x61e
	.uaword	.LBB117
	.uaword	.LBE117
	.byte	0x1
	.byte	0x72
	.byte	0
	.uleb128 0xc
	.uaword	0x445
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_internalProtectionError"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x80b
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0x78
	.uaword	0x231
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7a
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x5c8
	.uaword	.LBB119
	.uaword	.LBE119
	.byte	0x1
	.byte	0x7b
	.uaword	0x7fb
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x1
	.uleb128 0x1e
	.uaword	.LBB120
	.uaword	.LBE120
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x1
	.byte	0x65
	.uaword	0x7c7
	.uleb128 0x1e
	.uaword	.LBB122
	.uaword	.LBE122
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB123
	.uaword	.LBE123
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB124
	.uaword	.LBE124
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB125
	.uaword	.LBE125
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x61e
	.uaword	.LBB126
	.uaword	.LBE126
	.byte	0x1
	.byte	0x7d
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_instructionError"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8f2
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0x83
	.uaword	0x231
	.uaword	.LLST6
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x85
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x5c8
	.uaword	.LBB128
	.uaword	.LBE128
	.byte	0x1
	.byte	0x86
	.uaword	0x8e2
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x2
	.uleb128 0x1e
	.uaword	.LBB129
	.uaword	.LBE129
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB130
	.uaword	.LBE130
	.byte	0x1
	.byte	0x65
	.uaword	0x8ae
	.uleb128 0x1e
	.uaword	.LBB131
	.uaword	.LBE131
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB133
	.uaword	.LBE133
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB134
	.uaword	.LBE134
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x61e
	.uaword	.LBB135
	.uaword	.LBE135
	.byte	0x1
	.byte	0x88
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_contextManagementError"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9df
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0x8e
	.uaword	0x231
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x90
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x5c8
	.uaword	.LBB137
	.uaword	.LBE137
	.byte	0x1
	.byte	0x91
	.uaword	0x9cf
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST9
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x3
	.uleb128 0x1e
	.uaword	.LBB138
	.uaword	.LBE138
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB139
	.uaword	.LBE139
	.byte	0x1
	.byte	0x65
	.uaword	0x99b
	.uleb128 0x1e
	.uaword	.LBB140
	.uaword	.LBE140
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB141
	.uaword	.LBE141
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB142
	.uaword	.LBE142
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB143
	.uaword	.LBE143
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x61e
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x1
	.byte	0x93
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_busError"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xabe
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0x99
	.uaword	0x231
	.uaword	.LLST12
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9b
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x5c8
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x1
	.byte	0x9c
	.uaword	0xaae
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST12
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x4
	.uleb128 0x1e
	.uaword	.LBB147
	.uaword	.LBE147
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.byte	0x65
	.uaword	0xa7a
	.uleb128 0x1e
	.uaword	.LBB149
	.uaword	.LBE149
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB150
	.uaword	.LBE150
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB151
	.uaword	.LBE151
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB152
	.uaword	.LBE152
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x61e
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x1
	.byte	0x9e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_assertion"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb9e
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xa4
	.uaword	0x231
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa6
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1b
	.uaword	0x5c8
	.uaword	.LBB155
	.uaword	.LBE155
	.byte	0x1
	.byte	0xa7
	.uaword	0xb8e
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST15
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x5
	.uleb128 0x1e
	.uaword	.LBB156
	.uaword	.LBE156
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB157
	.uaword	.LBE157
	.byte	0x1
	.byte	0x65
	.uaword	0xb5a
	.uleb128 0x1e
	.uaword	.LBB158
	.uaword	.LBE158
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB159
	.uaword	.LBE159
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB160
	.uaword	.LBE160
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB161
	.uaword	.LBE161
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x61e
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.byte	0xa9
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu0"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc71
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xaf
	.uaword	0x231
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb1
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	0x5c8
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x1
	.byte	0xb2
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST18
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x6
	.uleb128 0x1e
	.uaword	.LBB165
	.uaword	.LBE165
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB166
	.uaword	.LBE166
	.byte	0x1
	.byte	0x65
	.uaword	0xc3c
	.uleb128 0x1e
	.uaword	.LBB167
	.uaword	.LBE167
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB168
	.uaword	.LBE168
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB169
	.uaword	.LBE169
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB170
	.uaword	.LBE170
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu1"
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd44
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xb9
	.uaword	0x231
	.uaword	.LLST21
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbb
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	0x5c8
	.uaword	.LBB171
	.uaword	.LBE171
	.byte	0x1
	.byte	0xbc
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST21
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x6
	.uleb128 0x1e
	.uaword	.LBB172
	.uaword	.LBE172
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x1
	.byte	0x65
	.uaword	0xd0f
	.uleb128 0x1e
	.uaword	.LBB174
	.uaword	.LBE174
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB176
	.uaword	.LBE176
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB177
	.uaword	.LBE177
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu2"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe17
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xc3
	.uaword	0x231
	.uaword	.LLST24
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc5
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	0x5c8
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x1
	.byte	0xc6
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST24
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x6
	.uleb128 0x1e
	.uaword	.LBB179
	.uaword	.LBE179
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.byte	0x65
	.uaword	0xde2
	.uleb128 0x1e
	.uaword	.LBB181
	.uaword	.LBE181
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB183
	.uaword	.LBE183
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB184
	.uaword	.LBE184
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_nonMaskableInterrupt"
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xeef
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xeb
	.uaword	0x231
	.uaword	.LLST27
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xed
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	0x5c8
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x1
	.byte	0xee
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST27
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x7
	.uleb128 0x1e
	.uaword	.LBB186
	.uaword	.LBE186
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x1
	.byte	0x65
	.uaword	0xeba
	.uleb128 0x1e
	.uaword	.LBB188
	.uaword	.LBE188
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB190
	.uaword	.LBE190
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB191
	.uaword	.LBE191
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu3"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xfc2
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xcd
	.uaword	0x231
	.uaword	.LLST30
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xcf
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	0x5c8
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.byte	0xd0
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST30
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x6
	.uleb128 0x1e
	.uaword	.LBB193
	.uaword	.LBE193
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x1
	.byte	0x65
	.uaword	0xf8d
	.uleb128 0x1e
	.uaword	.LBB195
	.uaword	.LBE195
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB197
	.uaword	.LBE197
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB198
	.uaword	.LBE198
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu4"
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1095
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xd7
	.uaword	0x231
	.uaword	.LLST33
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xd9
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	0x5c8
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x1
	.byte	0xda
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST33
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x6
	.uleb128 0x1e
	.uaword	.LBB200
	.uaword	.LBE200
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x1
	.byte	0x65
	.uaword	0x1060
	.uleb128 0x1e
	.uaword	.LBB202
	.uaword	.LBE202
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB204
	.uaword	.LBE204
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB205
	.uaword	.LBE205
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu5"
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x1168
	.uleb128 0x19
	.string	"tin"
	.byte	0x1
	.byte	0xe1
	.uaword	0x231
	.uaword	.LLST36
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe3
	.uaword	0x718
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x21
	.uaword	0x5c8
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x1
	.byte	0xe4
	.uleb128 0x1c
	.uaword	0x602
	.uaword	.LLST36
	.uleb128 0x1d
	.uaword	0x5f1
	.byte	0x6
	.uleb128 0x1e
	.uaword	.LBB207
	.uaword	.LBE207
	.uleb128 0x1f
	.uaword	0x60d
	.uleb128 0x1b
	.uaword	0x562
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x1
	.byte	0x65
	.uaword	0x1133
	.uleb128 0x1e
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x20
	.uaword	0x579
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x58c
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x1
	.byte	0x68
	.uleb128 0x1e
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x1f
	.uaword	0x5ab
	.uleb128 0x1e
	.uaword	.LBB212
	.uaword	.LBE212
	.uleb128 0x22
	.uaword	0x5b8
	.uaword	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"IfxCpu_Trap_vectorTable0"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	.LFB228
	.uaword	.LFE228
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"IfxCpu_Trap_vectorTable1"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	.LFB229
	.uaword	.LFE229
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"IfxCpu_Trap_vectorTable2"
	.byte	0x1
	.uahalf	0x143
	.byte	0x1
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x25
	.uaword	0x2b4
	.uaword	0x11f6
	.uleb128 0x26
	.uaword	0x501
	.byte	0x2
	.byte	0
	.uleb128 0x27
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0x96
	.uaword	0x1213
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.uaword	0x11e6
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE215
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE216
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LFE217
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE218
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23
	.uaword	.LFE219
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LFE220
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33
	.uaword	.LFE221
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL38
	.uaword	.LFE222
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43
	.uaword	.LFE223
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LFE227
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LFE224
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL55
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL58
	.uaword	.LFE225
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LFE226
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x94
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	.LFB221
	.uaword	.LFE221
	.uaword	.LFB222
	.uaword	.LFE222
	.uaword	.LFB223
	.uaword	.LFE223
	.uaword	.LFB227
	.uaword	.LFE227
	.uaword	.LFB224
	.uaword	.LFE224
	.uaword	.LFB225
	.uaword	.LFE225
	.uaword	.LFB226
	.uaword	.LFE226
	.uaword	.LFB228
	.uaword	.LFE228
	.uaword	.LFB229
	.uaword	.LFE229
	.uaword	.LFB230
	.uaword	.LFE230
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"trapWatch"
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
