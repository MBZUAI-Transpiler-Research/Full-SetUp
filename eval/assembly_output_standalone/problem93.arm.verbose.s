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
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	s0, [sp, 28]	// a, a
	str	s1, [sp, 24]	// b, b
	str	s2, [sp, 20]	// c, c
// eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	ldr	s0, [sp, 28]	//, a
	bl	roundf		//
	fmov	s1, s0	// _1,
// eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	ldr	s0, [sp, 28]	// tmp100, a
	fcmp	s0, s1	// tmp100, _1
	beq	.L2		//,
// eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	mov	w0, 0	// _7,
	b	.L3		//
.L2:
// eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	ldr	s0, [sp, 24]	//, b
	bl	roundf		//
	fmov	s1, s0	// _2,
// eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	ldr	s0, [sp, 24]	// tmp101, b
	fcmp	s0, s1	// tmp101, _2
	beq	.L4		//,
// eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	mov	w0, 0	// _7,
	b	.L3		//
.L4:
// eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	ldr	s0, [sp, 20]	//, c
	bl	roundf		//
	fmov	s1, s0	// _3,
// eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	ldr	s0, [sp, 20]	// tmp102, c
	fcmp	s0, s1	// tmp102, _3
	beq	.L5		//,
// eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	mov	w0, 0	// _7,
	b	.L3		//
.L5:
// eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 28]	// tmp103, a
	ldr	s0, [sp, 24]	// tmp104, b
	fadd	s0, s1, s0	// _4, tmp103, tmp104
// eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 20]	// tmp105, c
	fcmp	s1, s0	// tmp105, _4
	beq	.L6		//,
// eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 28]	// tmp106, a
	ldr	s0, [sp, 20]	// tmp107, c
	fadd	s0, s1, s0	// _5, tmp106, tmp107
// eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 24]	// tmp108, b
	fcmp	s1, s0	// tmp108, _5
	beq	.L6		//,
// eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 24]	// tmp109, b
	ldr	s0, [sp, 20]	// tmp110, c
	fadd	s0, s1, s0	// _6, tmp109, tmp110
// eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	ldr	s1, [sp, 28]	// tmp111, a
	fcmp	s1, s0	// tmp111, _6
	bne	.L7		//,
.L6:
// eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	mov	w0, 1	// _7,
	b	.L3		//
.L7:
// eval/problem93//code.c:9:     return 0;
	mov	w0, 0	// _7,
.L3:
// eval/problem93//code.c:10: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
