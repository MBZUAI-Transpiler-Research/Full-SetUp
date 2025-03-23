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
// eval/problem41//code.c:5:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 20]	//, i
// eval/problem41//code.c:5:     for (int i = 0; i < size; i++)
	b	.L2		//
.L9:
// eval/problem41//code.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w0, [sp, 20]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 24]	// tmp108, j
// eval/problem41//code.c:6:         for (int j = i + 1; j < size; j++)
	b	.L3		//
.L8:
// eval/problem41//code.c:7:             for (int k = j + 1; k < size; k++)
	ldr	w0, [sp, 24]	// tmp111, j
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 28]	// tmp110, k
// eval/problem41//code.c:7:             for (int k = j + 1; k < size; k++)
	b	.L4		//
.L7:
// eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	ldrsw	x0, [sp, 20]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp112, l
	add	x0, x1, x0	// _3, tmp112, _2
	ldr	w1, [x0]	// _4, *_3
// eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	ldrsw	x0, [sp, 24]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp113, l
	add	x0, x2, x0	// _7, tmp113, _6
	ldr	w0, [x0]	// _8, *_7
// eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	add	w1, w1, w0	// _9, _4, _8
// eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	ldrsw	x0, [sp, 28]	// _10, k
	lsl	x0, x0, 2	// _11, _10,
	ldr	x2, [sp, 8]	// tmp114, l
	add	x0, x2, x0	// _12, tmp114, _11
	ldr	w0, [x0]	// _13, *_12
// eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	add	w0, w1, w0	// _14, _9, _13
// eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	cmp	w0, 0	// _14,
	bne	.L5		//,
// eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	mov	w0, 1	// _18,
// eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	b	.L6		//
.L5:
// eval/problem41//code.c:7:             for (int k = j + 1; k < size; k++)
	ldr	w0, [sp, 28]	// tmp116, k
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, k
.L4:
// eval/problem41//code.c:7:             for (int k = j + 1; k < size; k++)
	ldr	w1, [sp, 28]	// tmp117, k
	ldr	w0, [sp, 4]	// tmp118, size
	cmp	w1, w0	// tmp117, tmp118
	blt	.L7		//,
// eval/problem41//code.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w0, [sp, 24]	// tmp120, j
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 24]	// tmp119, j
.L3:
// eval/problem41//code.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w1, [sp, 24]	// tmp121, j
	ldr	w0, [sp, 4]	// tmp122, size
	cmp	w1, w0	// tmp121, tmp122
	blt	.L8		//,
// eval/problem41//code.c:5:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 20]	// tmp124, i
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 20]	// tmp123, i
.L2:
// eval/problem41//code.c:5:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 20]	// tmp125, i
	ldr	w0, [sp, 4]	// tmp126, size
	cmp	w1, w0	// tmp125, tmp126
	blt	.L9		//,
// eval/problem41//code.c:9:     return false;
	mov	w0, 0	// _18,
.L6:
// eval/problem41//code.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
