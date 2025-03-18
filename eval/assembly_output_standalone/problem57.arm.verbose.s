	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// brackets, brackets
// eval/problem57//code.c:6:     int level = 0;
	str	wzr, [sp, 24]	//, level
// eval/problem57//code.c:7:     int i = 0;
	str	wzr, [sp, 28]	//, i
// eval/problem57//code.c:8:     while (brackets[i]) {
	b	.L2		//
.L7:
// eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	ldrsw	x0, [sp, 28]	// _1, i
	ldr	x1, [sp, 8]	// tmp103, brackets
	add	x0, x1, x0	// _2, tmp103, _1
	ldrb	w0, [x0]	// _3, *_2
// eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	cmp	w0, 60	// _3,
	bne	.L3		//,
// eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	ldr	w0, [sp, 24]	// tmp105, level
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 24]	// tmp104, level
.L3:
// eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	ldrsw	x0, [sp, 28]	// _4, i
	ldr	x1, [sp, 8]	// tmp106, brackets
	add	x0, x1, x0	// _5, tmp106, _4
	ldrb	w0, [x0]	// _6, *_5
// eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	cmp	w0, 62	// _6,
	bne	.L4		//,
// eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	ldr	w0, [sp, 24]	// tmp108, level
	sub	w0, w0, #1	// tmp107, tmp108,
	str	w0, [sp, 24]	// tmp107, level
.L4:
// eval/problem57//code.c:11:         if (level < 0) return false;
	ldr	w0, [sp, 24]	// tmp109, level
	cmp	w0, 0	// tmp109,
	bge	.L5		//,
// eval/problem57//code.c:11:         if (level < 0) return false;
	mov	w0, 0	// _14,
// eval/problem57//code.c:11:         if (level < 0) return false;
	b	.L6		//
.L5:
// eval/problem57//code.c:12:         i++;
	ldr	w0, [sp, 28]	// tmp111, i
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 28]	// tmp110, i
.L2:
// eval/problem57//code.c:8:     while (brackets[i]) {
	ldrsw	x0, [sp, 28]	// _7, i
	ldr	x1, [sp, 8]	// tmp112, brackets
	add	x0, x1, x0	// _8, tmp112, _7
	ldrb	w0, [x0]	// _9, *_8
// eval/problem57//code.c:8:     while (brackets[i]) {
	cmp	w0, 0	// _9,
	bne	.L7		//,
// eval/problem57//code.c:14:     if (level != 0) return false;
	ldr	w0, [sp, 24]	// tmp113, level
	cmp	w0, 0	// tmp113,
	beq	.L8		//,
// eval/problem57//code.c:14:     if (level != 0) return false;
	mov	w0, 0	// _14,
// eval/problem57//code.c:14:     if (level != 0) return false;
	b	.L6		//
.L8:
// eval/problem57//code.c:15:     return true;
	mov	w0, 1	// _14,
.L6:
// eval/problem57//code.c:16: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
