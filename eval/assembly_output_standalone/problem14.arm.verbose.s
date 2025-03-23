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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// a, a
	str	w1, [sp, 8]	// b, b
// eval/problem14//code.c:4:     while (b != 0) {
	b	.L2		//
.L3:
// eval/problem14//code.c:5:         int m = a % b;
	ldr	w0, [sp, 12]	// tmp95, a
	ldr	w1, [sp, 8]	// tmp109, b
	sdiv	w2, w0, w1	// tmp108, tmp95, tmp109
	ldr	w1, [sp, 8]	// tmp111, b
	mul	w1, w2, w1	// tmp110, tmp108, tmp111
	sub	w0, w0, w1	// tmp112, tmp95, tmp110
	str	w0, [sp, 28]	// tmp112, m
// eval/problem14//code.c:6:         a = b;
	ldr	w0, [sp, 8]	// tmp113, b
	str	w0, [sp, 12]	// tmp113, a
// eval/problem14//code.c:7:         b = m;
	ldr	w0, [sp, 28]	// tmp114, m
	str	w0, [sp, 8]	// tmp114, b
.L2:
// eval/problem14//code.c:4:     while (b != 0) {
	ldr	w0, [sp, 8]	// tmp115, b
	cmp	w0, 0	// tmp115,
	bne	.L3		//,
// eval/problem14//code.c:9:     return a;
	ldr	w0, [sp, 12]	// _5, a
// eval/problem14//code.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
