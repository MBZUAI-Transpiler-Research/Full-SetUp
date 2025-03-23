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
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// arr_size, arr_size
// eval/problem129//code.c:5:     if (arr_size == 0) return -32768;
	ldr	w0, [sp, 4]	// tmp107, arr_size
	cmp	w0, 0	// tmp107,
	bne	.L2		//,
// eval/problem129//code.c:5:     if (arr_size == 0) return -32768;
	mov	w0, -32768	// _19,
	b	.L3		//
.L2:
// eval/problem129//code.c:6:     int sum = 0, prods = 1, i;
	str	wzr, [sp, 20]	//, sum
// eval/problem129//code.c:6:     int sum = 0, prods = 1, i;
	mov	w0, 1	// tmp108,
	str	w0, [sp, 24]	// tmp108, prods
// eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	str	wzr, [sp, 28]	//, i
// eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	b	.L4		//
.L7:
// eval/problem129//code.c:8:         sum += abs(arr[i]);
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp109, arr
	add	x0, x1, x0	// _3, tmp109, _2
	ldr	w0, [x0]	// _4, *_3
// eval/problem129//code.c:8:         sum += abs(arr[i]);
	cmp	w0, 0	// _4,
	csneg	w0, w0, w0, ge	// _5, _4, _4,
// eval/problem129//code.c:8:         sum += abs(arr[i]);
	ldr	w1, [sp, 20]	// tmp111, sum
	add	w0, w1, w0	// tmp110, tmp111, _5
	str	w0, [sp, 20]	// tmp110, sum
// eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	ldrsw	x0, [sp, 28]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 8]	// tmp112, arr
	add	x0, x1, x0	// _8, tmp112, _7
	ldr	w0, [x0]	// _9, *_8
// eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	cmp	w0, 0	// _9,
	bne	.L5		//,
// eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	str	wzr, [sp, 24]	//, prods
.L5:
// eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	ldrsw	x0, [sp, 28]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 8]	// tmp113, arr
	add	x0, x1, x0	// _12, tmp113, _11
	ldr	w0, [x0]	// _13, *_12
// eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	cmp	w0, 0	// _13,
	bge	.L6		//,
// eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	ldr	w0, [sp, 24]	// tmp115, prods
	neg	w0, w0	// tmp114, tmp115
	str	w0, [sp, 24]	// tmp114, prods
.L6:
// eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	ldr	w0, [sp, 28]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 28]	// tmp116, i
.L4:
// eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	ldr	w1, [sp, 28]	// tmp118, i
	ldr	w0, [sp, 4]	// tmp119, arr_size
	cmp	w1, w0	// tmp118, tmp119
	blt	.L7		//,
// eval/problem129//code.c:12:     return sum * prods;
	ldr	w1, [sp, 20]	// tmp120, sum
	ldr	w0, [sp, 24]	// tmp121, prods
	mul	w0, w1, w0	// _19, tmp120, tmp121
.L3:
// eval/problem129//code.c:13: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
