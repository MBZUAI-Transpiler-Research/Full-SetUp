	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// code.c:4:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// code.c:5:     for (int i = 0; i * 2 < size; i++)
	str	wzr, [sp, 28]	//, i
// code.c:5:     for (int i = 0; i * 2 < size; i++)
	b	.L2		//
.L4:
// code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	ldr	w0, [sp, 28]	// tmp106, i
	lsl	w0, w0, 1	// _1, tmp106,
	sxtw	x0, w0	// _2, _1
// code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lsl	x0, x0, 2	// _3, _2,
	ldr	x1, [sp, 8]	// tmp107, lst
	add	x0, x1, x0	// _4, tmp107, _3
	ldr	w0, [x0]	// _5, *_4
// code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmp	w0, 0	// _5,
	and	w0, w0, 1	// tmp108, _5,
	csneg	w0, w0, w0, ge	// _6, tmp108, tmp108,
// code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmp	w0, 1	// _6,
	bne	.L3		//,
// code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	ldr	w0, [sp, 28]	// tmp109, i
	lsl	w0, w0, 1	// _7, tmp109,
	sxtw	x0, w0	// _8, _7
// code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 8]	// tmp110, lst
	add	x0, x1, x0	// _10, tmp110, _9
	ldr	w0, [x0]	// _11, *_10
// code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	ldr	w1, [sp, 24]	// tmp112, sum
	add	w0, w1, w0	// tmp111, tmp112, _11
	str	w0, [sp, 24]	// tmp111, sum
.L3:
// code.c:5:     for (int i = 0; i * 2 < size; i++)
	ldr	w0, [sp, 28]	// tmp114, i
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 28]	// tmp113, i
.L2:
// code.c:5:     for (int i = 0; i * 2 < size; i++)
	ldr	w0, [sp, 28]	// tmp115, i
	lsl	w0, w0, 1	// _12, tmp115,
// code.c:5:     for (int i = 0; i * 2 < size; i++)
	ldr	w1, [sp, 4]	// tmp116, size
	cmp	w1, w0	// tmp116, _12
	bgt	.L4		//,
// code.c:7:     return sum;
	ldr	w0, [sp, 24]	// _19, sum
// code.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
