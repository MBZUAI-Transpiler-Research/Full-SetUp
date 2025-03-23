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
	str	w0, [sp, 28]	// a, a
	str	w1, [sp, 24]	// b, b
	str	x2, [sp, 16]	// out, out
	str	x3, [sp, 8]	// size, size
// eval/problem164//code.c:5:     *size = 0;
	ldr	x0, [sp, 8]	// tmp99, size
	str	wzr, [x0]	//, *size_15(D)
// eval/problem164//code.c:7:     if (b < a) {
	ldr	w1, [sp, 24]	// tmp100, b
	ldr	w0, [sp, 28]	// tmp101, a
	cmp	w1, w0	// tmp100, tmp101
	bge	.L2		//,
// eval/problem164//code.c:8:         m = a;
	ldr	w0, [sp, 28]	// tmp102, a
	str	w0, [sp, 44]	// tmp102, m
// eval/problem164//code.c:9:         a = b;
	ldr	w0, [sp, 24]	// tmp103, b
	str	w0, [sp, 28]	// tmp103, a
// eval/problem164//code.c:10:         b = m;
	ldr	w0, [sp, 44]	// tmp104, m
	str	w0, [sp, 24]	// tmp104, b
.L2:
// eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	ldr	w0, [sp, 28]	// tmp105, a
	str	w0, [sp, 40]	// tmp105, i
// eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	b	.L3		//
.L5:
// eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	ldr	w0, [sp, 40]	// tmp106, i
	cmp	w0, 9	// tmp106,
	bgt	.L4		//,
// eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	ldr	w0, [sp, 40]	// i.0_1, i
	and	w0, w0, 1	// _2, i.0_1,
// eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	cmp	w0, 0	// _2,
	bne	.L4		//,
// eval/problem164//code.c:15:             out[(*size)++] = i;
	ldr	x0, [sp, 8]	// tmp107, size
	ldr	w0, [x0]	// _3, *size_15(D)
// eval/problem164//code.c:15:             out[(*size)++] = i;
	add	w2, w0, 1	// _5, _3,
	ldr	x1, [sp, 8]	// tmp108, size
	str	w2, [x1]	// _5, *size_15(D)
	sxtw	x0, w0	// _6, _3
// eval/problem164//code.c:15:             out[(*size)++] = i;
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 16]	// tmp109, out
	add	x0, x1, x0	// _8, tmp109, _7
// eval/problem164//code.c:15:             out[(*size)++] = i;
	ldr	w1, [sp, 40]	// tmp110, i
	str	w1, [x0]	// tmp110, *_8
.L4:
// eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	ldr	w0, [sp, 40]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 40]	// tmp111, i
.L3:
// eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	ldr	w1, [sp, 40]	// tmp113, i
	ldr	w0, [sp, 24]	// tmp114, b
	cmp	w1, w0	// tmp113, tmp114
	ble	.L5		//,
// eval/problem164//code.c:18: }
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
