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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// numbers, numbers
	str	w1, [sp, 20]	// size, size
// eval/problem10//code.c:5:     if (size <= 0) {
	ldr	w0, [sp, 20]	// tmp106, size
	cmp	w0, 0	// tmp106,
	bgt	.L2		//,
// eval/problem10//code.c:6:         return NULL;
	mov	x0, 0	// _16,
	b	.L3		//
.L2:
// eval/problem10//code.c:9:     int *out = malloc(size * sizeof(int));
	ldrsw	x0, [sp, 20]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp107, out
// eval/problem10//code.c:10:     if (!out) {
	ldr	x0, [sp, 40]	// tmp108, out
	cmp	x0, 0	// tmp108,
	bne	.L4		//,
// eval/problem10//code.c:11:         return NULL;
	mov	x0, 0	// _16,
	b	.L3		//
.L4:
// eval/problem10//code.c:14:     int max = numbers[0];
	ldr	x0, [sp, 24]	// tmp109, numbers
	ldr	w0, [x0]	// tmp110, *numbers_23(D)
	str	w0, [sp, 32]	// tmp110, max
// eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 36]	//, i
// eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	b	.L5		//
.L7:
// eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 24]	// tmp111, numbers
	add	x0, x1, x0	// _5, tmp111, _4
	ldr	w0, [x0]	// _6, *_5
// eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	ldr	w1, [sp, 32]	// tmp112, max
	cmp	w1, w0	// tmp112, _6
	bge	.L6		//,
// eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	ldrsw	x0, [sp, 36]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 24]	// tmp113, numbers
	add	x0, x1, x0	// _9, tmp113, _8
// eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	ldr	w0, [x0]	// tmp114, *_9
	str	w0, [sp, 32]	// tmp114, max
.L6:
// eval/problem10//code.c:17:         out[i] = max;
	ldrsw	x0, [sp, 36]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 40]	// tmp115, out
	add	x0, x1, x0	// _12, tmp115, _11
// eval/problem10//code.c:17:         out[i] = max;
	ldr	w1, [sp, 32]	// tmp116, max
	str	w1, [x0]	// tmp116, *_12
// eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 36]	// tmp118, i
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 36]	// tmp117, i
.L5:
// eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 36]	// tmp119, i
	ldr	w0, [sp, 20]	// tmp120, size
	cmp	w1, w0	// tmp119, tmp120
	blt	.L7		//,
// eval/problem10//code.c:19:     return out;
	ldr	x0, [sp, 40]	// _16, out
.L3:
// eval/problem10//code.c:20: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
