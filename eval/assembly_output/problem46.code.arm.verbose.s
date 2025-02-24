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
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	s0, [sp, 12]	// a, a
	str	s1, [sp, 8]	// h, h
// code.c:5:     return (a * h) * 0.5;
	ldr	s1, [sp, 12]	// tmp95, a
	ldr	s0, [sp, 8]	// tmp96, h
	fmul	s1, s1, s0	// _1, tmp95, tmp96
// code.c:5:     return (a * h) * 0.5;
	fmov	s0, 5.0e-1	// tmp97,
	fmul	s0, s1, s0	// _4, _1, tmp97
// code.c:6: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
