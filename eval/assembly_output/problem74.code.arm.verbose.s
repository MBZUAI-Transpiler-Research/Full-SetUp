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
// code.c:4:     int out = 0;
	str	wzr, [sp, 24]	//, out
// code.c:5:     for (int i = 0; i < size / 2; i++) {
	str	wzr, [sp, 28]	//, i
// code.c:5:     for (int i = 0; i < size / 2; i++) {
	b	.L2		//
.L4:
// code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp105, arr
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	w1, [x0]	// _4, *_3
// code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	ldr	w0, [sp, 4]	// tmp106, size
	sub	w2, w0, #1	// _5, tmp106,
// code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	ldr	w0, [sp, 28]	// tmp107, i
	sub	w0, w2, w0	// _6, _5, tmp107
	sxtw	x0, w0	// _7, _6
// code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lsl	x0, x0, 2	// _8, _7,
	ldr	x2, [sp, 8]	// tmp108, arr
	add	x0, x2, x0	// _9, tmp108, _8
	ldr	w0, [x0]	// _10, *_9
// code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	cmp	w1, w0	// _4, _10
	beq	.L3		//,
// code.c:7:             out++;
	ldr	w0, [sp, 24]	// tmp110, out
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 24]	// tmp109, out
.L3:
// code.c:5:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 28]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 28]	// tmp111, i
.L2:
// code.c:5:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 4]	// tmp113, size
	lsr	w1, w0, 31	// tmp114, tmp113,
	add	w0, w1, w0	// tmp115, tmp114, tmp113
	asr	w0, w0, 1	// tmp116, tmp115,
	mov	w1, w0	// _11, tmp116
// code.c:5:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 28]	// tmp117, i
	cmp	w0, w1	// tmp117, _11
	blt	.L4		//,
// code.c:10:     return out;
	ldr	w0, [sp, 24]	// _18, out
// code.c:11: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
