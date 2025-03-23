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
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]	// n, n
// eval/problem61//code.c:4:     return n * (n + 1) / 2;
	ldr	w0, [sp, 12]	// tmp96, n
	add	w1, w0, 1	// _1, tmp96,
// eval/problem61//code.c:4:     return n * (n + 1) / 2;
	ldr	w0, [sp, 12]	// tmp97, n
	mul	w0, w1, w0	// _2, _1, tmp97
// eval/problem61//code.c:4:     return n * (n + 1) / 2;
	lsr	w1, w0, 31	// tmp98, _2,
	add	w0, w1, w0	// tmp99, tmp98, _2
	asr	w0, w0, 1	// tmp100, tmp99,
// eval/problem61//code.c:5: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
