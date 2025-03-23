	.arch armv8-a
	.file	"problem39.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
// problem39.c:11:   unsigned cnt, max = 0, maxp = 0;
	str	wzr, [sp, 36]	//, max
// problem39.c:11:   unsigned cnt, max = 0, maxp = 0;
	str	wzr, [sp, 40]	//, maxp
// problem39.c:13:   for (p = 1; p <= 1000; p++) {
	mov	w0, 1	// tmp101,
	str	w0, [sp, 28]	// tmp101, p
// problem39.c:13:   for (p = 1; p <= 1000; p++) {
	b	.L2		//
.L9:
// problem39.c:14:     cnt = 0;
	str	wzr, [sp, 32]	//, cnt
// problem39.c:15:     for (a = 1; a < p/2; a++) {
	mov	w0, 1	// tmp102,
	str	w0, [sp, 20]	// tmp102, a
// problem39.c:15:     for (a = 1; a < p/2; a++) {
	b	.L3		//
.L7:
// problem39.c:16:       for (b = a; b < p/2; b++) {
	ldr	w0, [sp, 20]	// tmp103, a
	str	w0, [sp, 24]	// tmp103, b
// problem39.c:16:       for (b = a; b < p/2; b++) {
	b	.L4		//
.L6:
// problem39.c:17:         c = p - a - b;
	ldr	w1, [sp, 28]	// tmp104, p
	ldr	w0, [sp, 20]	// tmp105, a
	sub	w1, w1, w0	// _1, tmp104, tmp105
// problem39.c:17:         c = p - a - b;
	ldr	w0, [sp, 24]	// tmp107, b
	sub	w0, w1, w0	// tmp106, _1, tmp107
	str	w0, [sp, 44]	// tmp106, c
// problem39.c:18:         if (a*a + b*b == c*c) {
	ldr	w0, [sp, 20]	// tmp108, a
	mul	w1, w0, w0	// _2, tmp108, tmp108
// problem39.c:18:         if (a*a + b*b == c*c) {
	ldr	w0, [sp, 24]	// tmp109, b
	mul	w0, w0, w0	// _3, tmp109, tmp109
// problem39.c:18:         if (a*a + b*b == c*c) {
	add	w1, w1, w0	// _4, _2, _3
// problem39.c:18:         if (a*a + b*b == c*c) {
	ldr	w0, [sp, 44]	// tmp110, c
	mul	w0, w0, w0	// _5, tmp110, tmp110
// problem39.c:18:         if (a*a + b*b == c*c) {
	cmp	w1, w0	// _4, _5
	bne	.L5		//,
// problem39.c:19:           cnt++;
	ldr	w0, [sp, 32]	// tmp112, cnt
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 32]	// tmp111, cnt
.L5:
// problem39.c:16:       for (b = a; b < p/2; b++) {
	ldr	w0, [sp, 24]	// tmp114, b
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 24]	// tmp113, b
.L4:
// problem39.c:16:       for (b = a; b < p/2; b++) {
	ldr	w0, [sp, 28]	// tmp115, p
	lsr	w0, w0, 1	// _6, tmp115,
// problem39.c:16:       for (b = a; b < p/2; b++) {
	ldr	w1, [sp, 24]	// tmp116, b
	cmp	w1, w0	// tmp116, _6
	bcc	.L6		//,
// problem39.c:15:     for (a = 1; a < p/2; a++) {
	ldr	w0, [sp, 20]	// tmp118, a
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 20]	// tmp117, a
.L3:
// problem39.c:15:     for (a = 1; a < p/2; a++) {
	ldr	w0, [sp, 28]	// tmp119, p
	lsr	w0, w0, 1	// _7, tmp119,
// problem39.c:15:     for (a = 1; a < p/2; a++) {
	ldr	w1, [sp, 20]	// tmp120, a
	cmp	w1, w0	// tmp120, _7
	bcc	.L7		//,
// problem39.c:23:     if (cnt > max) {
	ldr	w1, [sp, 32]	// tmp121, cnt
	ldr	w0, [sp, 36]	// tmp122, max
	cmp	w1, w0	// tmp121, tmp122
	bls	.L8		//,
// problem39.c:24:       max = cnt;
	ldr	w0, [sp, 32]	// tmp123, cnt
	str	w0, [sp, 36]	// tmp123, max
// problem39.c:25:       maxp = p;
	ldr	w0, [sp, 28]	// tmp124, p
	str	w0, [sp, 40]	// tmp124, maxp
.L8:
// problem39.c:13:   for (p = 1; p <= 1000; p++) {
	ldr	w0, [sp, 28]	// tmp126, p
	add	w0, w0, 1	// tmp125, tmp126,
	str	w0, [sp, 28]	// tmp125, p
.L2:
// problem39.c:13:   for (p = 1; p <= 1000; p++) {
	ldr	w0, [sp, 28]	// tmp127, p
	cmp	w0, 1000	// tmp127,
	bls	.L9		//,
// problem39.c:28:   printf("%u\n", maxp);
	ldr	w1, [sp, 40]	//, maxp
	adrp	x0, .LC0	// tmp128,
	add	x0, x0, :lo12:.LC0	//, tmp128,
	bl	printf		//
// problem39.c:30:   return 0;
	mov	w0, 0	// _23,
// problem39.c:31: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
