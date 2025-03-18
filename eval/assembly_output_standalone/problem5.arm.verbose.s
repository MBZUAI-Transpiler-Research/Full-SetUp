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
	str	x0, [sp, 8]	// numbers, numbers
	str	w1, [sp, 4]	// size, size
// eval/problem5//code.c:5:     float sum = 0;
	str	wzr, [sp, 16]	//, sum
// eval/problem5//code.c:7:     int i = 0;
	str	wzr, [sp, 24]	//, i
// eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	str	wzr, [sp, 24]	//, i
// eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	b	.L2		//
.L3:
// eval/problem5//code.c:10:         sum += numbers[i];
	ldrsw	x0, [sp, 24]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp106, numbers
	add	x0, x1, x0	// _3, tmp106, _2
	ldr	s0, [x0]	// _4, *_3
// eval/problem5//code.c:10:         sum += numbers[i];
	ldr	s1, [sp, 16]	// tmp108, sum
	fadd	s0, s1, s0	// tmp107, tmp108, _4
	str	s0, [sp, 16]	// tmp107, sum
// eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	ldr	w0, [sp, 24]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 24]	// tmp109, i
.L2:
// eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	ldr	w1, [sp, 24]	// tmp111, i
	ldr	w0, [sp, 4]	// tmp112, size
	cmp	w1, w0	// tmp111, tmp112
	blt	.L3		//,
// eval/problem5//code.c:12:     avg = sum / size;
	ldr	s0, [sp, 4]	// tmp113, size
	scvtf	s0, s0	// _5, tmp113
// eval/problem5//code.c:12:     avg = sum / size;
	ldr	s1, [sp, 16]	// tmp115, sum
	fdiv	s0, s1, s0	// tmp114, tmp115, _5
	str	s0, [sp, 28]	// tmp114, avg
// eval/problem5//code.c:13:     msum = 0;
	str	wzr, [sp, 20]	//, msum
// eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	str	wzr, [sp, 24]	//, i
// eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	b	.L4		//
.L5:
// eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	ldrsw	x0, [sp, 24]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 8]	// tmp116, numbers
	add	x0, x1, x0	// _8, tmp116, _7
	ldr	s1, [x0]	// _9, *_8
// eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	ldr	s0, [sp, 28]	// tmp117, avg
	fsub	s0, s1, s0	// _10, _9, tmp117
// eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	fabs	s0, s0	// _11, _10
// eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	ldr	s1, [sp, 20]	// tmp119, msum
	fadd	s0, s1, s0	// tmp118, tmp119, _11
	str	s0, [sp, 20]	// tmp118, msum
// eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	ldr	w0, [sp, 24]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 24]	// tmp120, i
.L4:
// eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	ldr	w1, [sp, 24]	// tmp122, i
	ldr	w0, [sp, 4]	// tmp123, size
	cmp	w1, w0	// tmp122, tmp123
	blt	.L5		//,
// eval/problem5//code.c:18:     return msum / size;
	ldr	s0, [sp, 4]	// tmp124, size
	scvtf	s0, s0	// _12, tmp124
	ldr	s1, [sp, 20]	// tmp125, msum
	fdiv	s0, s1, s0	// _24, tmp125, _12
// eval/problem5//code.c:19: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
