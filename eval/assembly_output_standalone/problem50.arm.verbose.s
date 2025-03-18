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
	str	w0, [sp, 12]	// n, n
	str	w1, [sp, 8]	// p, p
// eval/problem50//code.c:4:     int out = 1;
	mov	w0, 1	// tmp95,
	str	w0, [sp, 24]	// tmp95, out
// eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	str	wzr, [sp, 28]	//, i
// eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	b	.L2		//
.L3:
// eval/problem50//code.c:6:         out = (out * 2) % p;
	ldr	w0, [sp, 24]	// tmp96, out
	lsl	w0, w0, 1	// _1, tmp96,
// eval/problem50//code.c:6:         out = (out * 2) % p;
	ldr	w1, [sp, 8]	// tmp111, p
	sdiv	w2, w0, w1	// tmp110, _1, tmp111
	ldr	w1, [sp, 8]	// tmp113, p
	mul	w1, w2, w1	// tmp112, tmp110, tmp113
	sub	w0, w0, w1	// tmp114, _1, tmp112
	str	w0, [sp, 24]	// tmp114, out
// eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	ldr	w0, [sp, 28]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, i
.L2:
// eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	ldr	w1, [sp, 28]	// tmp117, i
	ldr	w0, [sp, 12]	// tmp118, n
	cmp	w1, w0	// tmp117, tmp118
	blt	.L3		//,
// eval/problem50//code.c:7:     return out;
	ldr	w0, [sp, 24]	// _7, out
// eval/problem50//code.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
