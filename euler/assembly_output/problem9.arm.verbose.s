	.arch armv8-a
	.file	"problem9.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
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
// problem9.c:12:   for (a = 1; a <= 333; a++) {
	mov	w0, 1	// tmp101,
	str	w0, [sp, 20]	// tmp101, a
// problem9.c:12:   for (a = 1; a <= 333; a++) {
	b	.L2		//
.L6:
// problem9.c:13:     for (b = a; b <= 666; b++) {
	ldr	w0, [sp, 20]	// tmp102, a
	str	w0, [sp, 24]	// tmp102, b
// problem9.c:13:     for (b = a; b <= 666; b++) {
	b	.L3		//
.L5:
// problem9.c:14:       int c = (1000 - a - b);
	mov	w1, 1000	// tmp103,
	ldr	w0, [sp, 20]	// tmp104, a
	sub	w1, w1, w0	// _1, tmp103, tmp104
// problem9.c:14:       int c = (1000 - a - b);
	ldr	w0, [sp, 24]	// tmp106, b
	sub	w0, w1, w0	// tmp105, _1, tmp106
	str	w0, [sp, 28]	// tmp105, c
// problem9.c:15:       if (a*a + b*b == c*c) {
	ldr	w0, [sp, 20]	// tmp107, a
	mul	w1, w0, w0	// _2, tmp107, tmp107
// problem9.c:15:       if (a*a + b*b == c*c) {
	ldr	w0, [sp, 24]	// tmp108, b
	mul	w0, w0, w0	// _3, tmp108, tmp108
// problem9.c:15:       if (a*a + b*b == c*c) {
	add	w1, w1, w0	// _4, _2, _3
// problem9.c:15:       if (a*a + b*b == c*c) {
	ldr	w0, [sp, 28]	// tmp109, c
	mul	w0, w0, w0	// _5, tmp109, tmp109
// problem9.c:15:       if (a*a + b*b == c*c) {
	cmp	w1, w0	// _4, _5
	bne	.L4		//,
// problem9.c:16:         printf("%d\n", a * b * c);
	ldr	w1, [sp, 20]	// tmp110, a
	ldr	w0, [sp, 24]	// tmp111, b
	mul	w1, w1, w0	// _6, tmp110, tmp111
// problem9.c:16:         printf("%d\n", a * b * c);
	ldr	w0, [sp, 28]	// tmp112, c
	mul	w0, w1, w0	// _7, _6, tmp112
	mov	w1, w0	//, _7
	adrp	x0, .LC0	// tmp113,
	add	x0, x0, :lo12:.LC0	//, tmp113,
	bl	printf		//
.L4:
// problem9.c:13:     for (b = a; b <= 666; b++) {
	ldr	w0, [sp, 24]	// tmp115, b
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 24]	// tmp114, b
.L3:
// problem9.c:13:     for (b = a; b <= 666; b++) {
	ldr	w0, [sp, 24]	// tmp116, b
	cmp	w0, 666	// tmp116,
	ble	.L5		//,
// problem9.c:12:   for (a = 1; a <= 333; a++) {
	ldr	w0, [sp, 20]	// tmp118, a
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 20]	// tmp117, a
.L2:
// problem9.c:12:   for (a = 1; a <= 333; a++) {
	ldr	w0, [sp, 20]	// tmp119, a
	cmp	w0, 333	// tmp119,
	ble	.L6		//,
// problem9.c:20:   return 0;
	mov	w0, 0	// _15,
// problem9.c:21: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
