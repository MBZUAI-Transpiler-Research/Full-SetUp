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
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// k, k
// eval/problem123//code.c:4:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// eval/problem123//code.c:5:     for (int i = 0; i < k; i++)
	str	wzr, [sp, 28]	//, i
// eval/problem123//code.c:5:     for (int i = 0; i < k; i++)
	b	.L2		//
.L4:
// eval/problem123//code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp106, arr
	add	x0, x1, x0	// _3, tmp106, _2
	ldr	w0, [x0]	// _4, *_3
// eval/problem123//code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	cmn	w0, #99	// _4,
	blt	.L3		//,
// eval/problem123//code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp107, arr
	add	x0, x1, x0	// _7, tmp107, _6
	ldr	w0, [x0]	// _8, *_7
// eval/problem123//code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	cmp	w0, 99	// _8,
	bgt	.L3		//,
// eval/problem123//code.c:7:             sum += arr[i];
	ldrsw	x0, [sp, 28]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 8]	// tmp108, arr
	add	x0, x1, x0	// _11, tmp108, _10
	ldr	w0, [x0]	// _12, *_11
// eval/problem123//code.c:7:             sum += arr[i];
	ldr	w1, [sp, 24]	// tmp110, sum
	add	w0, w1, w0	// tmp109, tmp110, _12
	str	w0, [sp, 24]	// tmp109, sum
.L3:
// eval/problem123//code.c:5:     for (int i = 0; i < k; i++)
	ldr	w0, [sp, 28]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 28]	// tmp111, i
.L2:
// eval/problem123//code.c:5:     for (int i = 0; i < k; i++)
	ldr	w1, [sp, 28]	// tmp113, i
	ldr	w0, [sp, 4]	// tmp114, k
	cmp	w1, w0	// tmp113, tmp114
	blt	.L4		//,
// eval/problem123//code.c:8:     return sum;
	ldr	w0, [sp, 24]	// _19, sum
// eval/problem123//code.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
