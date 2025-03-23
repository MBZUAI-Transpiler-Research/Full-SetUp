	.arch armv8-a
	.file	"problem4.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem4.c:12:   unsigned int i, j, max = 0;
	str	wzr, [sp, 24]	//, max
// problem4.c:13:   for (i = 100; i <= 999; i++) {
	mov	w0, 100	// tmp95,
	str	w0, [sp, 16]	// tmp95, i
// problem4.c:13:   for (i = 100; i <= 999; i++) {
	b	.L2		//
.L6:
// problem4.c:14:     for (j = 100; j <= 999; j++) {
	mov	w0, 100	// tmp96,
	str	w0, [sp, 20]	// tmp96, j
// problem4.c:14:     for (j = 100; j <= 999; j++) {
	b	.L3		//
.L5:
// problem4.c:15:       unsigned int p = i*j;
	ldr	w1, [sp, 16]	// tmp98, i
	ldr	w0, [sp, 20]	// tmp99, j
	mul	w0, w1, w0	// tmp97, tmp98, tmp99
	str	w0, [sp, 28]	// tmp97, p
// problem4.c:16:       if (is_palindromic(p) && p > max) {
	ldr	w0, [sp, 28]	//, p
	bl	is_palindromic		//
// problem4.c:16:       if (is_palindromic(p) && p > max) {
	cmp	w0, 0	// _1,
	beq	.L4		//,
// problem4.c:16:       if (is_palindromic(p) && p > max) {
	ldr	w1, [sp, 28]	// tmp100, p
	ldr	w0, [sp, 24]	// tmp101, max
	cmp	w1, w0	// tmp100, tmp101
	bls	.L4		//,
// problem4.c:17:         max = p;
	ldr	w0, [sp, 28]	// tmp102, p
	str	w0, [sp, 24]	// tmp102, max
.L4:
// problem4.c:14:     for (j = 100; j <= 999; j++) {
	ldr	w0, [sp, 20]	// tmp104, j
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 20]	// tmp103, j
.L3:
// problem4.c:14:     for (j = 100; j <= 999; j++) {
	ldr	w0, [sp, 20]	// tmp105, j
	cmp	w0, 999	// tmp105,
	bls	.L5		//,
// problem4.c:13:   for (i = 100; i <= 999; i++) {
	ldr	w0, [sp, 16]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 16]	// tmp106, i
.L2:
// problem4.c:13:   for (i = 100; i <= 999; i++) {
	ldr	w0, [sp, 16]	// tmp108, i
	cmp	w0, 999	// tmp108,
	bls	.L6		//,
// problem4.c:21:   printf("%u\n", max);
	ldr	w1, [sp, 24]	//, max
	adrp	x0, .LC0	// tmp109,
	add	x0, x0, :lo12:.LC0	//, tmp109,
	bl	printf		//
// problem4.c:22:   return 0;
	mov	w0, 0	// _13,
// problem4.c:23: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	is_palindromic, %function
is_palindromic:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem4.c:27:   unsigned int reversed = 0, t = n;
	str	wzr, [sp, 24]	//, reversed
// problem4.c:27:   unsigned int reversed = 0, t = n;
	ldr	w0, [sp, 12]	// tmp97, n
	str	w0, [sp, 28]	// tmp97, t
// problem4.c:29:   while (t) {
	b	.L9		//
.L10:
// problem4.c:30:     reversed = 10*reversed + (t % 10);
	ldr	w1, [sp, 24]	// tmp98, reversed
	mov	w0, w1	// tmp99, tmp98
	lsl	w0, w0, 2	// tmp100, tmp99,
	add	w0, w0, w1	// tmp99, tmp99, tmp98
	lsl	w0, w0, 1	// tmp101, tmp99,
	mov	w3, w0	// _1, tmp99
// problem4.c:30:     reversed = 10*reversed + (t % 10);
	ldr	w2, [sp, 28]	// tmp102, t
	mov	w0, 52429	// tmp104,
	movk	w0, 0xcccc, lsl 16	// tmp104,,
	umull	x0, w2, w0	// tmp103, tmp102, tmp104
	lsr	x0, x0, 32	// tmp105, tmp103,
	lsr	w1, w0, 3	// _2, tmp105,
	mov	w0, w1	// tmp106, _2
	lsl	w0, w0, 2	// tmp107, tmp106,
	add	w0, w0, w1	// tmp106, tmp106, _2
	lsl	w0, w0, 1	// tmp108, tmp106,
	sub	w1, w2, w0	// _2, tmp102, tmp106
// problem4.c:30:     reversed = 10*reversed + (t % 10);
	add	w0, w3, w1	// tmp109, _1, _2
	str	w0, [sp, 24]	// tmp109, reversed
// problem4.c:31:     t /= 10;
	ldr	w1, [sp, 28]	// tmp111, t
	mov	w0, 52429	// tmp113,
	movk	w0, 0xcccc, lsl 16	// tmp113,,
	umull	x0, w1, w0	// tmp112, tmp111, tmp113
	lsr	x0, x0, 32	// tmp114, tmp112,
	lsr	w0, w0, 3	// tmp110, tmp114,
	str	w0, [sp, 28]	// tmp110, t
.L9:
// problem4.c:29:   while (t) {
	ldr	w0, [sp, 28]	// tmp115, t
	cmp	w0, 0	// tmp115,
	bne	.L10		//,
// problem4.c:33:   return reversed == n;
	ldr	w1, [sp, 24]	// tmp117, reversed
	ldr	w0, [sp, 12]	// tmp118, n
	cmp	w1, w0	// tmp117, tmp118
	cset	w0, eq	// tmp119,
	and	w0, w0, 255	// _3, tmp116
// problem4.c:34: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	is_palindromic, .-is_palindromic
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
