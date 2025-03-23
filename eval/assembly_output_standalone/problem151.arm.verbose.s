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
	str	w0, [sp, 12]	// n, n
	str	w1, [sp, 8]	// x, x
	str	w2, [sp, 4]	// y, y
// eval/problem151//code.c:4:     int isp = 1;
	mov	w0, 1	// tmp96,
	str	w0, [sp, 24]	// tmp96, isp
// eval/problem151//code.c:5:     if (n < 2) isp = 0;
	ldr	w0, [sp, 12]	// tmp97, n
	cmp	w0, 1	// tmp97,
	bgt	.L2		//,
// eval/problem151//code.c:5:     if (n < 2) isp = 0;
	str	wzr, [sp, 24]	//, isp
.L2:
// eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	mov	w0, 2	// tmp98,
	str	w0, [sp, 28]	// tmp98, i
// eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	b	.L3		//
.L5:
// eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	ldr	w0, [sp, 12]	// tmp99, n
	ldr	w1, [sp, 28]	// tmp112, i
	sdiv	w2, w0, w1	// tmp111, tmp99, tmp112
	ldr	w1, [sp, 28]	// tmp114, i
	mul	w1, w2, w1	// tmp113, tmp111, tmp114
	sub	w0, w0, w1	// _1, tmp99, tmp113
// eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	cmp	w0, 0	// _1,
	bne	.L4		//,
// eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	str	wzr, [sp, 24]	//, isp
.L4:
// eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, i
.L3:
// eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp117, i
	mul	w0, w0, w0	// _2, tmp117, tmp117
// eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	ldr	w1, [sp, 12]	// tmp118, n
	cmp	w1, w0	// tmp118, _2
	bge	.L5		//,
// eval/problem151//code.c:9:     if (isp) return x;
	ldr	w0, [sp, 24]	// tmp119, isp
	cmp	w0, 0	// tmp119,
	beq	.L6		//,
// eval/problem151//code.c:9:     if (isp) return x;
	ldr	w0, [sp, 8]	// _7, x
	b	.L7		//
.L6:
// eval/problem151//code.c:10:     return y;
	ldr	w0, [sp, 4]	// _7, y
.L7:
// eval/problem151//code.c:11: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
