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
// code.c:5:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 24]	//, i
// code.c:5:     for (int i = 0; i < size; i++)
	b	.L2		//
.L7:
// code.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w0, [sp, 24]	// tmp104, i
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 28]	// tmp103, j
// code.c:6:         for (int j = i + 1; j < size; j++)
	b	.L3		//
.L6:
// code.c:7:             if (l[i] + l[j] == 0) return true;
	ldrsw	x0, [sp, 24]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp105, l
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	w1, [x0]	// _4, *_3
// code.c:7:             if (l[i] + l[j] == 0) return true;
	ldrsw	x0, [sp, 28]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp106, l
	add	x0, x2, x0	// _7, tmp106, _6
	ldr	w0, [x0]	// _8, *_7
// code.c:7:             if (l[i] + l[j] == 0) return true;
	add	w0, w1, w0	// _9, _4, _8
// code.c:7:             if (l[i] + l[j] == 0) return true;
	cmp	w0, 0	// _9,
	bne	.L4		//,
// code.c:7:             if (l[i] + l[j] == 0) return true;
	mov	w0, 1	// _12,
// code.c:7:             if (l[i] + l[j] == 0) return true;
	b	.L5		//
.L4:
// code.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w0, [sp, 28]	// tmp108, j
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 28]	// tmp107, j
.L3:
// code.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w1, [sp, 28]	// tmp109, j
	ldr	w0, [sp, 4]	// tmp110, size
	cmp	w1, w0	// tmp109, tmp110
	blt	.L6		//,
// code.c:5:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 24]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 24]	// tmp111, i
.L2:
// code.c:5:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 24]	// tmp113, i
	ldr	w0, [sp, 4]	// tmp114, size
	cmp	w1, w0	// tmp113, tmp114
	blt	.L7		//,
// code.c:8:     return false;
	mov	w0, 0	// _12,
.L5:
// code.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
