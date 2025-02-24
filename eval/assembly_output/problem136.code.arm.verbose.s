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
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// size, size
// code.c:4:     int max = -1;
	mov	w0, -1	// tmp103,
	str	w0, [sp, 24]	// tmp103, max
// code.c:5:     for (int i = 1; i < size; ++i) {
	mov	w0, 1	// tmp104,
	str	w0, [sp, 28]	// tmp104, i
// code.c:5:     for (int i = 1; i < size; ++i) {
	b	.L2		//
.L4:
// code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp105, arr
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	w1, [x0]	// _4, *_3
// code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x2, [sp, 8]	// tmp106, arr
	add	x0, x2, x0	// _8, tmp106, _7
	ldr	w0, [x0]	// _9, *_8
// code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	cmp	w1, w0	// _4, _9
	bge	.L3		//,
// code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	ldr	w0, [sp, 28]	// tmp107, i
	str	w0, [sp, 24]	// tmp107, max
.L3:
// code.c:5:     for (int i = 1; i < size; ++i) {
	ldr	w0, [sp, 28]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 28]	// tmp108, i
.L2:
// code.c:5:     for (int i = 1; i < size; ++i) {
	ldr	w1, [sp, 28]	// tmp110, i
	ldr	w0, [sp, 4]	// tmp111, size
	cmp	w1, w0	// tmp110, tmp111
	blt	.L4		//,
// code.c:8:     return max;
	ldr	w0, [sp, 24]	// _16, max
// code.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
