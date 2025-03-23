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
// eval/problem36//code.c:4:     float max = -10000;
	mov	w0, 16384	// tmp111,
	movk	w0, 0xc61c, lsl 16	// tmp111,,
	fmov	s0, w0	// tmp101, tmp111
	str	s0, [sp, 24]	// tmp101, max
// eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 28]	//, i
// eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	b	.L2		//
.L5:
// eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp102, l
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	s0, [x0]	// _4, *_3
// eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	ldr	s1, [sp, 24]	// tmp103, max
	fcmpe	s1, s0	// tmp103, _4
	bmi	.L7		//,
	b	.L3		//
.L7:
// eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp104, l
	add	x0, x1, x0	// _7, tmp104, _6
// eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	ldr	s0, [x0]	// tmp105, *_7
	str	s0, [sp, 24]	// tmp105, max
.L3:
// eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 28]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 28]	// tmp106, i
.L2:
// eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 28]	// tmp108, i
	ldr	w0, [sp, 4]	// tmp109, size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L5		//,
// eval/problem36//code.c:7:     return max;
	ldr	s0, [sp, 24]	// _14, max
// eval/problem36//code.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
