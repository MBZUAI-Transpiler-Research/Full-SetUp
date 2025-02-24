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
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
// code.c:4:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 28]	//, i
// code.c:4:     for (int i = 0; i < size; i++)
	b	.L2		//
.L3:
// code.c:5:         l[i] += 1;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp100, l
	add	x0, x1, x0	// _3, tmp100, _2
	ldr	w1, [x0]	// _4, *_3
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp101, l
	add	x0, x2, x0	// _7, tmp101, _6
// code.c:5:         l[i] += 1;
	add	w1, w1, 1	// _8, _4,
	str	w1, [x0]	// _8, *_7
// code.c:4:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 28]	// tmp103, i
	add	w0, w0, 1	// tmp102, tmp103,
	str	w0, [sp, 28]	// tmp102, i
.L2:
// code.c:4:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 28]	// tmp104, i
	ldr	w0, [sp, 4]	// tmp105, size
	cmp	w1, w0	// tmp104, tmp105
	blt	.L3		//,
// code.c:6: }
	nop	
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
