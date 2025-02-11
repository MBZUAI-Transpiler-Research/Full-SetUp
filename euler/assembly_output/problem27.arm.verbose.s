	.arch armv8-a
	.file	"problem27.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
// problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	str	wzr, [sp, 36]	//, nmax
// problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	str	wzr, [sp, 40]	//, amax
// problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	str	wzr, [sp, 44]	//, bmax
// problem27.c:16:   for (a = -999; a < 1000; a++) {
	mov	w0, -999	// tmp100,
	str	w0, [sp, 24]	// tmp100, a
// problem27.c:16:   for (a = -999; a < 1000; a++) {
	b	.L2		//
.L8:
// problem27.c:17:     for (b = -999; b < 1000; b++) {
	mov	w0, -999	// tmp101,
	str	w0, [sp, 28]	// tmp101, b
// problem27.c:17:     for (b = -999; b < 1000; b++) {
	b	.L3		//
.L7:
// problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	str	wzr, [sp, 32]	//, n
// problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	b	.L4		//
.L5:
// problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	ldr	w0, [sp, 32]	// tmp103, n
	add	w0, w0, 1	// tmp102, tmp103,
	str	w0, [sp, 32]	// tmp102, n
.L4:
// problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	ldr	w0, [sp, 32]	// tmp104, n
	mul	w1, w0, w0	// _1, tmp104, tmp104
// problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	ldr	w2, [sp, 24]	// tmp105, a
	ldr	w0, [sp, 32]	// tmp106, n
	mul	w0, w2, w0	// _2, tmp105, tmp106
// problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	add	w1, w1, w0	// _3, _1, _2
// problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	ldr	w0, [sp, 28]	// tmp107, b
	add	w0, w1, w0	// _4, _3, tmp107
	bl	is_prime		//
	cmp	w0, 0	// _5,
	bne	.L5		//,
// problem27.c:19:       if (n > nmax) {
	ldr	w1, [sp, 32]	// tmp108, n
	ldr	w0, [sp, 36]	// tmp109, nmax
	cmp	w1, w0	// tmp108, tmp109
	ble	.L6		//,
// problem27.c:20:         nmax = n;
	ldr	w0, [sp, 32]	// tmp110, n
	str	w0, [sp, 36]	// tmp110, nmax
// problem27.c:21:         amax = a;
	ldr	w0, [sp, 24]	// tmp111, a
	str	w0, [sp, 40]	// tmp111, amax
// problem27.c:22:         bmax = b;
	ldr	w0, [sp, 28]	// tmp112, b
	str	w0, [sp, 44]	// tmp112, bmax
.L6:
// problem27.c:17:     for (b = -999; b < 1000; b++) {
	ldr	w0, [sp, 28]	// tmp114, b
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 28]	// tmp113, b
.L3:
// problem27.c:17:     for (b = -999; b < 1000; b++) {
	ldr	w0, [sp, 28]	// tmp115, b
	cmp	w0, 999	// tmp115,
	ble	.L7		//,
// problem27.c:16:   for (a = -999; a < 1000; a++) {
	ldr	w0, [sp, 24]	// tmp117, a
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 24]	// tmp116, a
.L2:
// problem27.c:16:   for (a = -999; a < 1000; a++) {
	ldr	w0, [sp, 24]	// tmp118, a
	cmp	w0, 999	// tmp118,
	ble	.L8		//,
// problem27.c:26:   printf("%d\n", amax * bmax);
	ldr	w1, [sp, 40]	// tmp119, amax
	ldr	w0, [sp, 44]	// tmp120, bmax
	mul	w0, w1, w0	// _6, tmp119, tmp120
	mov	w1, w0	//, _6
	adrp	x0, .LC0	// tmp121,
	add	x0, x0, :lo12:.LC0	//, tmp121,
	bl	printf		//
// problem27.c:28:   return 0;
	mov	w0, 0	// _28,
// problem27.c:29: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	is_prime, %function
is_prime:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	d8, [sp, 16]	//,
	.cfi_offset 72, -48
	str	w0, [sp, 44]	// n, n
// problem27.c:35:   if (n <= 1) {
	ldr	w0, [sp, 44]	// tmp98, n
	cmp	w0, 1	// tmp98,
	bgt	.L11		//,
// problem27.c:36:     return 0;
	mov	w0, 0	// _6,
	b	.L12		//
.L11:
// problem27.c:38:   if (n == 2) {
	ldr	w0, [sp, 44]	// tmp99, n
	cmp	w0, 2	// tmp99,
	bne	.L13		//,
// problem27.c:39:     return 1;
	mov	w0, 1	// _6,
	b	.L12		//
.L13:
// problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	mov	w0, 2	// tmp100,
	str	w0, [sp, 60]	// tmp100, i
// problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	b	.L14		//
.L16:
// problem27.c:43:     if (n % i == 0) {
	ldr	w0, [sp, 44]	// tmp101, n
	ldr	w1, [sp, 60]	// tmp114, i
	sdiv	w2, w0, w1	// tmp113, tmp101, tmp114
	ldr	w1, [sp, 60]	// tmp116, i
	mul	w1, w2, w1	// tmp115, tmp113, tmp116
	sub	w0, w0, w1	// _1, tmp101, tmp115
// problem27.c:43:     if (n % i == 0) {
	cmp	w0, 0	// _1,
	bne	.L15		//,
// problem27.c:44:       return 0;
	mov	w0, 0	// _6,
	b	.L12		//
.L15:
// problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	ldr	w0, [sp, 60]	// tmp118, i
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 60]	// tmp117, i
.L14:
// problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	ldr	w0, [sp, 60]	// tmp119, i
	scvtf	d8, w0	// _2, tmp119
// problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	ldr	w0, [sp, 44]	// tmp120, n
	scvtf	d0, w0	// _3, tmp120
	bl	sqrt		//
// problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	fcmpe	d8, d0	// _2, _4
	bmi	.L16		//,
// problem27.c:47:   return 1;
	mov	w0, 1	// _6,
.L12:
// problem27.c:48: }
	ldr	d8, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
