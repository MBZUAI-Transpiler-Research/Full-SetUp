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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// eval/problem101//code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	ldrsw	x0, [sp, 28]	// _1, n
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp105, out
// eval/problem101//code.c:6:     *out = n;
	ldr	x0, [sp, 40]	// tmp106, out
	ldr	w1, [sp, 28]	// tmp107, n
	str	w1, [x0]	// tmp107, *out_17
// eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	mov	w0, 1	// tmp108,
	str	w0, [sp, 36]	// tmp108, i
// eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	b	.L2		//
.L3:
// eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
// eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	sub	x0, x0, #4	// _5, _4,
	ldr	x1, [sp, 40]	// tmp109, out
	add	x0, x1, x0	// _6, tmp109, _5
// eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	ldr	w1, [x0]	// _7, *_6
// eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	ldrsw	x0, [sp, 36]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x2, [sp, 40]	// tmp110, out
	add	x0, x2, x0	// _10, tmp110, _9
// eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	add	w1, w1, 2	// _11, _7,
// eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	str	w1, [x0]	// _11, *_10
// eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	ldr	w0, [sp, 36]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 36]	// tmp111, i
.L2:
// eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	ldr	w1, [sp, 36]	// tmp113, i
	ldr	w0, [sp, 28]	// tmp114, n
	cmp	w1, w0	// tmp113, tmp114
	blt	.L3		//,
// eval/problem101//code.c:9:     return out;
	ldr	x0, [sp, 40]	// _20, out
// eval/problem101//code.c:10: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
