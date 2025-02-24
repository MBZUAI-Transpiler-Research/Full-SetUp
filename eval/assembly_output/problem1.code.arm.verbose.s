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
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// numbers, numbers
	str	w1, [sp, 4]	// size, size
	str	s0, [sp]	// threshold, threshold
// code.c:7:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 24]	//, i
// code.c:7:     for (i = 0; i < size; i++) {
	b	.L2		//
.L8:
// code.c:8:         for (j = i + 1; j < size; j++) {
	ldr	w0, [sp, 24]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 28]	// tmp104, j
// code.c:8:         for (j = i + 1; j < size; j++) {
	b	.L3		//
.L7:
// code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	ldrsw	x0, [sp, 24]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp106, numbers
	add	x0, x1, x0	// _3, tmp106, _2
	ldr	s1, [x0]	// _4, *_3
// code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	ldrsw	x0, [sp, 28]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp107, numbers
	add	x0, x1, x0	// _7, tmp107, _6
	ldr	s0, [x0]	// _8, *_7
// code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fsub	s0, s1, s0	// _9, _4, _8
// code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fabs	s0, s0	// _10, _9
// code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	ldr	s1, [sp]	// tmp108, threshold
	fcmpe	s1, s0	// tmp108, _10
	bgt	.L9		//,
	b	.L10		//
.L9:
// code.c:10:                 return 1;
	mov	w0, 1	// _13,
	b	.L6		//
.L10:
// code.c:8:         for (j = i + 1; j < size; j++) {
	ldr	w0, [sp, 28]	// tmp110, j
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 28]	// tmp109, j
.L3:
// code.c:8:         for (j = i + 1; j < size; j++) {
	ldr	w1, [sp, 28]	// tmp111, j
	ldr	w0, [sp, 4]	// tmp112, size
	cmp	w1, w0	// tmp111, tmp112
	blt	.L7		//,
// code.c:7:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 24]	// tmp114, i
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 24]	// tmp113, i
.L2:
// code.c:7:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 24]	// tmp115, i
	ldr	w0, [sp, 4]	// tmp116, size
	cmp	w1, w0	// tmp115, tmp116
	blt	.L8		//,
// code.c:14:     return 0;
	mov	w0, 0	// _13,
.L6:
// code.c:15: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
