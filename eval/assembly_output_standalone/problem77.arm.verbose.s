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
	str	w0, [sp, 12]	// x, x
	str	w1, [sp, 8]	// n, n
// eval/problem77//code.c:4:     int p = 1, count = 0;
	mov	w0, 1	// tmp94,
	str	w0, [sp, 24]	// tmp94, p
// eval/problem77//code.c:4:     int p = 1, count = 0;
	str	wzr, [sp, 28]	//, count
// eval/problem77//code.c:5:     while (p <= x && count < 100) {
	b	.L2		//
.L6:
// eval/problem77//code.c:6:         if (p == x) return 1;
	ldr	w1, [sp, 24]	// tmp95, p
	ldr	w0, [sp, 12]	// tmp96, x
	cmp	w1, w0	// tmp95, tmp96
	bne	.L3		//,
// eval/problem77//code.c:6:         if (p == x) return 1;
	mov	w0, 1	// _3,
// eval/problem77//code.c:6:         if (p == x) return 1;
	b	.L4		//
.L3:
// eval/problem77//code.c:7:         p = p * n; count += 1;
	ldr	w1, [sp, 24]	// tmp98, p
	ldr	w0, [sp, 8]	// tmp99, n
	mul	w0, w1, w0	// tmp97, tmp98, tmp99
	str	w0, [sp, 24]	// tmp97, p
// eval/problem77//code.c:7:         p = p * n; count += 1;
	ldr	w0, [sp, 28]	// tmp101, count
	add	w0, w0, 1	// tmp100, tmp101,
	str	w0, [sp, 28]	// tmp100, count
.L2:
// eval/problem77//code.c:5:     while (p <= x && count < 100) {
	ldr	w1, [sp, 24]	// tmp102, p
	ldr	w0, [sp, 12]	// tmp103, x
	cmp	w1, w0	// tmp102, tmp103
	bgt	.L5		//,
// eval/problem77//code.c:5:     while (p <= x && count < 100) {
	ldr	w0, [sp, 28]	// tmp104, count
	cmp	w0, 99	// tmp104,
	ble	.L6		//,
.L5:
// eval/problem77//code.c:9:     return 0;
	mov	w0, 0	// _3,
.L4:
// eval/problem77//code.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
