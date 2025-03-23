	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
// eval/problem58//code.c:6:     incr = decr = 0;
	str	wzr, [sp, 24]	//, decr
// eval/problem58//code.c:6:     incr = decr = 0;
	ldr	w0, [sp, 24]	// tmp113, decr
	str	w0, [sp, 20]	// tmp113, incr
// eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	mov	w0, 1	// tmp114,
	str	w0, [sp, 28]	// tmp114, i
// eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	b	.L2		//
.L7:
// eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp115, l
	add	x0, x1, x0	// _3, tmp115, _2
	ldr	s1, [x0]	// _4, *_3
// eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x1, [sp, 8]	// tmp116, l
	add	x0, x1, x0	// _8, tmp116, _7
	ldr	s0, [x0]	// _9, *_8
// eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	fcmpe	s1, s0	// _4, _9
	bgt	.L10		//,
	b	.L3		//
.L10:
// eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	mov	w0, 1	// tmp117,
	str	w0, [sp, 20]	// tmp117, incr
.L3:
// eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	ldrsw	x0, [sp, 28]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 8]	// tmp118, l
	add	x0, x1, x0	// _12, tmp118, _11
	ldr	s1, [x0]	// _13, *_12
// eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	ldrsw	x0, [sp, 28]	// _14, i
	lsl	x0, x0, 2	// _15, _14,
	sub	x0, x0, #4	// _16, _15,
	ldr	x1, [sp, 8]	// tmp119, l
	add	x0, x1, x0	// _17, tmp119, _16
	ldr	s0, [x0]	// _18, *_17
// eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	fcmpe	s1, s0	// _13, _18
	bmi	.L11		//,
	b	.L5		//
.L11:
// eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	mov	w0, 1	// tmp120,
	str	w0, [sp, 24]	// tmp120, decr
.L5:
// eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp122, i
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 28]	// tmp121, i
.L2:
// eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp123, i
	ldr	w0, [sp, 4]	// tmp124, size
	cmp	w1, w0	// tmp123, tmp124
	blt	.L7		//,
// eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	ldr	w1, [sp, 20]	// tmp125, incr
	ldr	w0, [sp, 24]	// tmp126, decr
	add	w0, w1, w0	// _19, tmp125, tmp126
// eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	cmp	w0, 2	// _19,
	bne	.L8		//,
// eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	mov	w0, 0	// _25,
	b	.L9		//
.L8:
// eval/problem58//code.c:13:     return true;
	mov	w0, 1	// _25,
.L9:
// eval/problem58//code.c:14: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
