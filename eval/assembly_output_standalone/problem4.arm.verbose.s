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
	str	x0, [sp, 8]	// operations, operations
	str	w1, [sp, 4]	// size, size
// eval/problem4//code.c:4:     int num = 0;
	str	wzr, [sp, 24]	//, num
// eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 28]	//, i
// eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L5:
// eval/problem4//code.c:6:         num += operations[i];
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp98, operations
	add	x0, x1, x0	// _3, tmp98, _2
	ldr	w0, [x0]	// _4, *_3
// eval/problem4//code.c:6:         num += operations[i];
	ldr	w1, [sp, 24]	// tmp100, num
	add	w0, w1, w0	// tmp99, tmp100, _4
	str	w0, [sp, 24]	// tmp99, num
// eval/problem4//code.c:7:         if (num < 0) return 1;
	ldr	w0, [sp, 24]	// tmp101, num
	cmp	w0, 0	// tmp101,
	bge	.L3		//,
// eval/problem4//code.c:7:         if (num < 0) return 1;
	mov	w0, 1	// _7,
	b	.L4		//
.L3:
// eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp103, i
	add	w0, w0, 1	// tmp102, tmp103,
	str	w0, [sp, 28]	// tmp102, i
.L2:
// eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp104, i
	ldr	w0, [sp, 4]	// tmp105, size
	cmp	w1, w0	// tmp104, tmp105
	blt	.L5		//,
// eval/problem4//code.c:9:     return 0;
	mov	w0, 0	// _7,
.L4:
// eval/problem4//code.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
