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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// xs, xs
	str	w1, [sp, 20]	// xs_size, xs_size
	str	x2, [sp, 8]	// out, out
// code.c:4:     for (int i = 1; i < xs_size; i++) {
	mov	w0, 1	// tmp102,
	str	w0, [sp, 44]	// tmp102, i
// code.c:4:     for (int i = 1; i < xs_size; i++) {
	b	.L2		//
.L3:
// code.c:5:         out[i - 1] = i * xs[i];
	ldr	s0, [sp, 44]	// tmp103, i
	scvtf	s1, s0	// _1, tmp103
// code.c:5:         out[i - 1] = i * xs[i];
	ldrsw	x0, [sp, 44]	// _2, i
	lsl	x0, x0, 2	// _3, _2,
	ldr	x1, [sp, 24]	// tmp104, xs
	add	x0, x1, x0	// _4, tmp104, _3
	ldr	s0, [x0]	// _5, *_4
// code.c:5:         out[i - 1] = i * xs[i];
	ldrsw	x0, [sp, 44]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	sub	x0, x0, #4	// _8, _7,
	ldr	x1, [sp, 8]	// tmp105, out
	add	x0, x1, x0	// _9, tmp105, _8
// code.c:5:         out[i - 1] = i * xs[i];
	fmul	s0, s1, s0	// _10, _1, _5
// code.c:5:         out[i - 1] = i * xs[i];
	str	s0, [x0]	// _10, *_9
// code.c:4:     for (int i = 1; i < xs_size; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L2:
// code.c:4:     for (int i = 1; i < xs_size; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, xs_size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L3		//,
// code.c:7: }
	nop	
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
