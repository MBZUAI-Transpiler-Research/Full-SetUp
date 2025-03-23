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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// value, value
// eval/problem100//code.c:7:     w = atof(value);
	ldr	x0, [sp, 24]	//, value
	bl	atof		//
	str	d0, [sp, 40]	//, w
// eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	ldr	d0, [sp, 40]	// tmp98, w
	fcmpe	d0, #0.0	// tmp98
	bmi	.L6		//,
	b	.L7		//
.L6:
// eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	ldr	d1, [sp, 40]	// tmp99, w
	fmov	d0, 5.0e-1	// tmp100,
	fsub	d0, d1, d0	// _1, tmp99, tmp100
	bl	ceil		//
// eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvtzs	w0, d0	// iftmp.0_5, _2
	b	.L5		//
.L7:
// eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	ldr	d1, [sp, 40]	// tmp101, w
	fmov	d0, 5.0e-1	// tmp102,
	fadd	d0, d1, d0	// _3, tmp101, tmp102
	bl	floor		//
// eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvtzs	w0, d0	// iftmp.0_5, _4
.L5:
// eval/problem100//code.c:9: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
