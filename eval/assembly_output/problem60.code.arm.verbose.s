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
// code.c:5:         while (n % i == 0 && n > i) n = n / i;
	ldr	w1, [sp, 12]	// tmp99, n
	ldr	w0, [sp, 28]	// tmp100, i
	sdiv	w0, w1, w0	// tmp98, tmp99, tmp100
	str	w0, [sp, 12]	// tmp98, n
.L3:
// code.c:5:         while (n % i == 0 && n > i) n = n / i;
	ldr	w0, [sp, 12]	// tmp101, n
	ldr	w1, [sp, 28]	// tmp114, i
	sdiv	w2, w0, w1	// tmp113, tmp101, tmp114
	ldr	w1, [sp, 28]	// tmp116, i
	mul	w1, w2, w1	// tmp115, tmp113, tmp116
	sub	w0, w0, w1	// _1, tmp101, tmp115
// code.c:5:         while (n % i == 0 && n > i) n = n / i;
	cmp	w0, 0	// _1,
	bne	.L4		//,
// code.c:5:         while (n % i == 0 && n > i) n = n / i;
	ldr	w1, [sp, 12]	// tmp117, n
	ldr	w0, [sp, 28]	// tmp118, i
	cmp	w1, w0	// tmp117, tmp118
	bgt	.L5		//,
.L4:
// code.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w0, [sp, 28]	// tmp120, i
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 28]	// tmp119, i
.L2:
// code.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w0, [sp, 28]	// tmp121, i
	mul	w0, w0, w0	// _2, tmp121, tmp121
// code.c:4:     for (int i = 2; i * i <= n; i++)
	ldr	w1, [sp, 12]	// tmp122, n
	cmp	w1, w0	// tmp122, _2
	bge	.L3		//,
// code.c:6:     return n;
	ldr	w0, [sp, 12]	// _8, n
// code.c:7: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
