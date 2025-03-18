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
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
	str	w2, [sp]	// t, t
// eval/problem53//code.c:5:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 28]	//, i
// eval/problem53//code.c:5:     for (int i = 0; i < size; i++)
	b	.L2		//
.L5:
// eval/problem53//code.c:6:         if (l[i] >= t) return false;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp98, l
	add	x0, x1, x0	// _3, tmp98, _2
	ldr	w0, [x0]	// _4, *_3
// eval/problem53//code.c:6:         if (l[i] >= t) return false;
	ldr	w1, [sp]	// tmp99, t
	cmp	w1, w0	// tmp99, _4
	bgt	.L3		//,
// eval/problem53//code.c:6:         if (l[i] >= t) return false;
	mov	w0, 0	// _6,
// eval/problem53//code.c:6:         if (l[i] >= t) return false;
	b	.L4		//
.L3:
// eval/problem53//code.c:5:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 28]	// tmp101, i
	add	w0, w0, 1	// tmp100, tmp101,
	str	w0, [sp, 28]	// tmp100, i
.L2:
// eval/problem53//code.c:5:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 28]	// tmp102, i
	ldr	w0, [sp, 4]	// tmp103, size
	cmp	w1, w0	// tmp102, tmp103
	blt	.L5		//,
// eval/problem53//code.c:7:     return true;
	mov	w0, 1	// _6,
.L4:
// eval/problem53//code.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
