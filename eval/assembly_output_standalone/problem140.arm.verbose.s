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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]	// n, n
// eval/problem140//code.c:4:     long long fact = 1, bfact = 1;
	mov	x0, 1	// tmp95,
	str	x0, [sp, 32]	// tmp95, fact
// eval/problem140//code.c:4:     long long fact = 1, bfact = 1;
	mov	x0, 1	// tmp96,
	str	x0, [sp, 40]	// tmp96, bfact
// eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	mov	w0, 1	// tmp97,
	str	w0, [sp, 28]	// tmp97, i
// eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	b	.L2		//
.L3:
// eval/problem140//code.c:6:         fact = fact * i;
	ldrsw	x0, [sp, 28]	// _1, i
// eval/problem140//code.c:6:         fact = fact * i;
	ldr	x1, [sp, 32]	// tmp99, fact
	mul	x0, x1, x0	// tmp98, tmp99, _1
	str	x0, [sp, 32]	// tmp98, fact
// eval/problem140//code.c:7:         bfact = bfact * fact;
	ldr	x1, [sp, 40]	// tmp101, bfact
	ldr	x0, [sp, 32]	// tmp102, fact
	mul	x0, x1, x0	// tmp100, tmp101, tmp102
	str	x0, [sp, 40]	// tmp100, bfact
// eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp104, i
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 28]	// tmp103, i
.L2:
// eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	ldr	w1, [sp, 28]	// tmp105, i
	ldr	w0, [sp, 12]	// tmp106, n
	cmp	w1, w0	// tmp105, tmp106
	ble	.L3		//,
// eval/problem140//code.c:9:     return bfact;
	ldr	x0, [sp, 40]	// _9, bfact
// eval/problem140//code.c:10: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
