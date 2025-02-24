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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	s0, [sp, 28]	// a, a
	str	s1, [sp, 24]	// b, b
	str	s2, [sp, 20]	// c, c
// code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 28]	// tmp107, a
	ldr	s0, [sp, 24]	// tmp108, b
	fadd	s0, s1, s0	// _1, tmp107, tmp108
// code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 20]	// tmp109, c
	fcmpe	s1, s0	// tmp109, _1
	bge	.L2		//,
// code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 28]	// tmp110, a
	ldr	s0, [sp, 20]	// tmp111, c
	fadd	s0, s1, s0	// _2, tmp110, tmp111
// code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 24]	// tmp112, b
	fcmpe	s1, s0	// tmp112, _2
	bge	.L2		//,
// code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 24]	// tmp113, b
	ldr	s0, [sp, 20]	// tmp114, c
	fadd	s0, s1, s0	// _3, tmp113, tmp114
// code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	ldr	s1, [sp, 28]	// tmp115, a
	fcmpe	s1, s0	// tmp115, _3
	bge	.L2		//,
	b	.L6		//
.L2:
// code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	fmov	s0, -1.0e+0	// _14,
// code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	b	.L5		//
.L6:
// code.c:6: float s = (a + b + c) / 2;
	ldr	s1, [sp, 28]	// tmp116, a
	ldr	s0, [sp, 24]	// tmp117, b
	fadd	s1, s1, s0	// _4, tmp116, tmp117
// code.c:6: float s = (a + b + c) / 2;
	ldr	s0, [sp, 20]	// tmp118, c
	fadd	s1, s1, s0	// _5, _4, tmp118
// code.c:6: float s = (a + b + c) / 2;
	fmov	s0, 2.0e+0	// tmp120,
	fdiv	s0, s1, s0	// tmp119, _5, tmp120
	str	s0, [sp, 40]	// tmp119, s
// code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	ldr	s1, [sp, 40]	// tmp121, s
	ldr	s0, [sp, 28]	// tmp122, a
	fsub	s1, s1, s0	// _6, tmp121, tmp122
// code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	ldr	s0, [sp, 40]	// tmp123, s
	fmul	s1, s1, s0	// _7, _6, tmp123
// code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	ldr	s2, [sp, 40]	// tmp124, s
	ldr	s0, [sp, 24]	// tmp125, b
	fsub	s0, s2, s0	// _8, tmp124, tmp125
// code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul	s1, s1, s0	// _9, _7, _8
// code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	ldr	s2, [sp, 40]	// tmp126, s
	ldr	s0, [sp, 20]	// tmp127, c
	fsub	s0, s2, s0	// _10, tmp126, tmp127
// code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul	s0, s1, s0	// _11, _9, _10
	bl	sqrtf		//
	str	s0, [sp, 44]	//, area
// code.c:8: return roundf(area * 100) / 100;
	ldr	s0, [sp, 44]	// tmp128, area
	mov	w0, 1120403456	// tmp132,
	fmov	s1, w0	// tmp129, tmp132
	fmul	s0, s0, s1	// _12, tmp128, tmp129
	bl	roundf		//
// code.c:8: return roundf(area * 100) / 100;
	mov	w0, 1120403456	// tmp133,
	fmov	s1, w0	// tmp130, tmp133
	fdiv	s0, s0, s1	// _14, _13, tmp130
.L5:
// code.c:9: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
