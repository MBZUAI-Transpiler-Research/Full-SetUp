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
	str	x0, [sp, 8]	// lst, lst
	str	w1, [sp, 4]	// size, size
// eval/problem86//code.c:4:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	str	wzr, [sp, 28]	//, i
// eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	b	.L2		//
.L4:
// eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	ldr	w0, [sp, 28]	// tmp110, i
	lsl	w0, w0, 1	// _1, tmp110,
// eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	sxtw	x0, w0	// _2, _1
	add	x0, x0, 1	// _3, _2,
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 8]	// tmp111, lst
	add	x0, x1, x0	// _5, tmp111, _4
	ldr	w0, [x0]	// _6, *_5
// eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	and	w0, w0, 1	// _8, _7,
// eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	cmp	w0, 0	// _8,
	bne	.L3		//,
// eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	ldr	w0, [sp, 28]	// tmp112, i
	lsl	w0, w0, 1	// _9, tmp112,
// eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	sxtw	x0, w0	// _10, _9
	add	x0, x0, 1	// _11, _10,
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 8]	// tmp113, lst
	add	x0, x1, x0	// _13, tmp113, _12
	ldr	w0, [x0]	// _14, *_13
// eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	ldr	w1, [sp, 24]	// tmp115, sum
	add	w0, w1, w0	// tmp114, tmp115, _14
	str	w0, [sp, 24]	// tmp114, sum
.L3:
// eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	ldr	w0, [sp, 28]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 28]	// tmp116, i
.L2:
// eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	ldr	w0, [sp, 28]	// tmp118, i
	lsl	w0, w0, 1	// _15, tmp118,
// eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	add	w0, w0, 1	// _16, _15,
// eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	ldr	w1, [sp, 4]	// tmp119, size
	cmp	w1, w0	// tmp119, _16
	bgt	.L4		//,
// eval/problem86//code.c:7:     return sum;
	ldr	w0, [sp, 24]	// _23, sum
// eval/problem86//code.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
