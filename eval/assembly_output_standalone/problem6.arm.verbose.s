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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// numbers, numbers
	str	w1, [sp, 36]	// size, size
	str	w2, [sp, 32]	// delimiter, delimiter
	str	x3, [sp, 24]	// out_size, out_size
// eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ldr	w0, [sp, 36]	// tmp112, size
	cmp	w0, 0	// tmp112,
	ble	.L2		//,
// eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ldr	w0, [sp, 36]	// tmp113, size
	lsl	w0, w0, 1	// _1, tmp113,
// eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	sub	w0, w0, #1	// iftmp.0_20, _1,
	b	.L3		//
.L2:
// eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	mov	w0, 0	// iftmp.0_20,
.L3:
// eval/problem6//code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ldr	x1, [sp, 24]	// tmp114, out_size
	str	w0, [x1]	// iftmp.0_20, *out_size_27(D)
// eval/problem6//code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	ldr	x0, [sp, 24]	// tmp115, out_size
	ldr	w0, [x0]	// _2, *out_size_27(D)
	sxtw	x0, w0	// _3, _2
// eval/problem6//code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	lsl	x0, x0, 2	// _4, _3,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp116, out
// eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	ldr	w0, [sp, 36]	// tmp117, size
	cmp	w0, 0	// tmp117,
	ble	.L4		//,
// eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	ldr	x0, [sp, 40]	// tmp118, numbers
	ldr	w1, [x0]	// _5, *numbers_31(D)
// eval/problem6//code.c:7:     if (size > 0) out[0] = numbers[0];
	ldr	x0, [sp, 56]	// tmp119, out
	str	w1, [x0]	// _5, *out_30
.L4:
// eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	mov	w0, 1	// tmp120,
	str	w0, [sp, 48]	// tmp120, i
// eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	mov	w0, 1	// tmp121,
	str	w0, [sp, 52]	// tmp121, j
// eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	b	.L5		//
.L6:
// eval/problem6//code.c:9:         out[j++] = delimiter;
	ldr	w0, [sp, 52]	// j.1_6, j
	add	w1, w0, 1	// tmp122, j.1_6,
	str	w1, [sp, 52]	// tmp122, j
	sxtw	x0, w0	// _7, j.1_6
// eval/problem6//code.c:9:         out[j++] = delimiter;
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 56]	// tmp123, out
	add	x0, x1, x0	// _9, tmp123, _8
// eval/problem6//code.c:9:         out[j++] = delimiter;
	ldr	w1, [sp, 32]	// tmp124, delimiter
	str	w1, [x0]	// tmp124, *_9
// eval/problem6//code.c:10:         out[j++] = numbers[i];
	ldrsw	x0, [sp, 48]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 40]	// tmp125, numbers
	add	x1, x1, x0	// _12, tmp125, _11
// eval/problem6//code.c:10:         out[j++] = numbers[i];
	ldr	w0, [sp, 52]	// j.2_13, j
	add	w2, w0, 1	// tmp126, j.2_13,
	str	w2, [sp, 52]	// tmp126, j
	sxtw	x0, w0	// _14, j.2_13
// eval/problem6//code.c:10:         out[j++] = numbers[i];
	lsl	x0, x0, 2	// _15, _14,
	ldr	x2, [sp, 56]	// tmp127, out
	add	x0, x2, x0	// _16, tmp127, _15
// eval/problem6//code.c:10:         out[j++] = numbers[i];
	ldr	w1, [x1]	// _17, *_12
// eval/problem6//code.c:10:         out[j++] = numbers[i];
	str	w1, [x0]	// _17, *_16
// eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	ldr	w0, [sp, 48]	// tmp129, i
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp, 48]	// tmp128, i
.L5:
// eval/problem6//code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	ldr	w1, [sp, 48]	// tmp130, i
	ldr	w0, [sp, 36]	// tmp131, size
	cmp	w1, w0	// tmp130, tmp131
	blt	.L6		//,
// eval/problem6//code.c:12:     return out;
	ldr	x0, [sp, 56]	// _35, out
// eval/problem6//code.c:13: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
