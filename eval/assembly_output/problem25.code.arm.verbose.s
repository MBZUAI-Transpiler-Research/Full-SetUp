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
	str	w0, [sp, 12]	// n, n
// code.c:4:     for (int i = 2; i * i <= n; i++)
	mov	w0, 2	// tmp96,
	str	w0, [sp, 28]	// tmp96, i
// code.c:4:     for (int i = 2; i * i <= n; i++)
	b	.L2		//
.L5:
// code.c:5:         if (n % i == 0) return n / i;
	ldr	w0, [sp, 12]	// tmp97, n
	ldr	w1, [sp, 28]	// tmp110, i
	sdiv	w2, w0, w1	// tmp109, tmp97, tmp110
	ldr	w1, [sp, 28]	// tmp112, i
	mul	w1, w2, w1	// tmp111, tmp109, tmp112
	sub	w0, w0, w1	// _1, tmp97, tmp111
// code.c:5:         if (n % i == 0) return n / i;
	cmp	w0, 0	// _1,
	bne	.L3		//,
// code.c:5:         if (n % i == 0) return n / i;
	ldr	w1, [sp, 12]	// tmp113, n
	ldr	w0, [sp, 28]	// tmp114, i
	sdiv	w0, w1, w0	// _4, tmp113, tmp114
// code.c:5:         if (n % i == 0) return n / i;
	b	.L4		//
.L3:
// code.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w0, [sp, 28]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, i
.L2:
// code.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w0, [sp, 28]	// tmp117, i
	mul	w0, w0, w0	// _2, tmp117, tmp117
// code.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w1, [sp, 12]	// tmp118, n
	cmp	w1, w0	// tmp118, _2
	bge	.L5		//,
// code.c:6:     return 1;
	mov	w0, 1	// _4,
.L4:
// code.c:7: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
