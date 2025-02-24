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
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]	// a, a
	str	s1, [sp, 8]	// b, b
	str	s2, [sp, 4]	// c, c
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 12]	// tmp115, a
	fmul	s1, s0, s0	// _1, tmp115, tmp115
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 8]	// tmp116, b
	fmul	s0, s0, s0	// _2, tmp116, tmp116
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s1, s1, s0	// _3, _1, _2
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 4]	// tmp117, c
	fmul	s0, s0, s0	// _4, tmp117, tmp117
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub	s0, s1, s0	// _5, _3, _4
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs	s0, s0	// _6, _5
	fcvt	d0, s0	// _7, _6
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	adrp	x0, .LC0	// tmp129,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp118,
	fcmpe	d0, d1	// _7, tmp118
	bmi	.L2		//,
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 12]	// tmp119, a
	fmul	s1, s0, s0	// _8, tmp119, tmp119
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 4]	// tmp120, c
	fmul	s0, s0, s0	// _9, tmp120, tmp120
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s1, s1, s0	// _10, _8, _9
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 8]	// tmp121, b
	fmul	s0, s0, s0	// _11, tmp121, tmp121
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub	s0, s1, s0	// _12, _10, _11
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs	s0, s0	// _13, _12
	fcvt	d0, s0	// _14, _13
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	adrp	x0, .LC0	// tmp130,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp122,
	fcmpe	d0, d1	// _14, tmp122
	bmi	.L2		//,
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 8]	// tmp123, b
	fmul	s1, s0, s0	// _15, tmp123, tmp123
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 4]	// tmp124, c
	fmul	s0, s0, s0	// _16, tmp124, tmp124
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd	s1, s1, s0	// _17, _15, _16
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	ldr	s0, [sp, 12]	// tmp125, a
	fmul	s0, s0, s0	// _18, tmp125, tmp125
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub	s0, s1, s0	// _19, _17, _18
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs	s0, s0	// _20, _19
	fcvt	d0, s0	// _21, _20
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	adrp	x0, .LC0	// tmp131,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp126,
	fcmpe	d0, d1	// _21, tmp126
	bmi	.L2		//,
	b	.L6		//
.L2:
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	mov	w0, 1	// _22,
// code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	b	.L5		//
.L6:
// code.c:6:     return 0;
	mov	w0, 0	// _22,
.L5:
// code.c:7: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
