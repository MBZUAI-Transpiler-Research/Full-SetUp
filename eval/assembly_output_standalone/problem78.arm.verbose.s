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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// a, a
// eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	str	wzr, [sp, 28]	//, i
// eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	b	.L2		//
.L5:
// eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	ldr	w0, [sp, 28]	// tmp100, i
	mul	w1, w0, w0	// _1, tmp100, tmp100
// eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	ldr	w0, [sp, 28]	// tmp101, i
	mul	w1, w1, w0	// _2, _1, tmp101
// eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	ldr	w0, [sp, 12]	// tmp102, a
	cmp	w0, 0	// tmp102,
	csneg	w0, w0, w0, ge	// _3, tmp102, tmp102,
// eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	cmp	w1, w0	// _2, _3
	bne	.L3		//,
// eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	mov	w0, 1	// _8,
	b	.L4		//
.L3:
// eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	ldr	w0, [sp, 28]	// tmp104, i
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 28]	// tmp103, i
.L2:
// eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	ldr	w0, [sp, 28]	// tmp105, i
	mul	w1, w0, w0	// _4, tmp105, tmp105
// eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	ldr	w0, [sp, 28]	// tmp106, i
	mul	w1, w1, w0	// _5, _4, tmp106
// eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	ldr	w0, [sp, 12]	// tmp107, a
	cmp	w0, 0	// tmp107,
	csneg	w0, w0, w0, ge	// _6, tmp107, tmp107,
// eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	cmp	w1, w0	// _5, _6
	ble	.L5		//,
// eval/problem78//code.c:8:     return 0;
	mov	w0, 0	// _8,
.L4:
// eval/problem78//code.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
