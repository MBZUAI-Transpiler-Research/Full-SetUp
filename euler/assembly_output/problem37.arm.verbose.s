	.arch armv8-a
	.file	"problem37.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
// problem37.c:14:   unsigned count = 0, sum = 0;
	str	wzr, [sp, 32]	//, count
// problem37.c:14:   unsigned count = 0, sum = 0;
	str	wzr, [sp, 36]	//, sum
// problem37.c:16:   for (i = 10; count < 11; i++) {
	mov	w0, 10	// tmp101,
	str	w0, [sp, 28]	// tmp101, i
// problem37.c:16:   for (i = 10; count < 11; i++) {
	b	.L2		//
.L10:
// problem37.c:20:     k = i;
	ldr	w0, [sp, 28]	// tmp102, i
	str	w0, [sp, 40]	// tmp102, k
// problem37.c:21:     while (k != 0) {
	b	.L3		//
.L6:
// problem37.c:22:       if (!is_prime(k)) {
	ldr	w0, [sp, 40]	//, k
	bl	is_prime		//
// problem37.c:22:       if (!is_prime(k)) {
	cmp	w0, 0	// _1,
	beq	.L12		//,
// problem37.c:25:       k /= 10;
	ldr	w1, [sp, 40]	// tmp104, k
	mov	w0, 52429	// tmp106,
	movk	w0, 0xcccc, lsl 16	// tmp106,,
	umull	x0, w1, w0	// tmp105, tmp104, tmp106
	lsr	x0, x0, 32	// tmp107, tmp105,
	lsr	w0, w0, 3	// tmp103, tmp107,
	str	w0, [sp, 40]	// tmp103, k
.L3:
// problem37.c:21:     while (k != 0) {
	ldr	w0, [sp, 40]	// tmp108, k
	cmp	w0, 0	// tmp108,
	bne	.L6		//,
// problem37.c:29:     k = i;
	ldr	w0, [sp, 28]	// tmp109, i
	str	w0, [sp, 40]	// tmp109, k
// problem37.c:30:     d = log10(k);
	ldr	w0, [sp, 40]	// tmp110, k
	ucvtf	d0, w0	// _2, tmp110
	bl	log10		//
// problem37.c:30:     d = log10(k);
	fcvtzu	w0, d0	// tmp111, _3
	str	w0, [sp, 44]	// tmp111, d
// problem37.c:31:     d = pow(10, d);
	ldr	w0, [sp, 44]	// tmp112, d
	ucvtf	d0, w0	// _4, tmp112
	fmov	d1, d0	//, _4
	fmov	d0, 1.0e+1	//,
	bl	pow		//
// problem37.c:31:     d = pow(10, d);
	fcvtzu	w0, d0	// tmp113, _5
	str	w0, [sp, 44]	// tmp113, d
// problem37.c:32:     while (d != 1) {
	b	.L7		//
.L9:
// problem37.c:33:       if (!is_prime(k % d)) {
	ldr	w0, [sp, 40]	// tmp114, k
	ldr	w1, [sp, 44]	// tmp126, d
	udiv	w2, w0, w1	// tmp125, tmp114, tmp126
	ldr	w1, [sp, 44]	// tmp128, d
	mul	w1, w2, w1	// tmp127, tmp125, tmp128
	sub	w0, w0, w1	// _6, tmp114, tmp127
	bl	is_prime		//
// problem37.c:33:       if (!is_prime(k % d)) {
	cmp	w0, 0	// _7,
	beq	.L13		//,
// problem37.c:36:       d /= 10;
	ldr	w1, [sp, 44]	// tmp130, d
	mov	w0, 52429	// tmp132,
	movk	w0, 0xcccc, lsl 16	// tmp132,,
	umull	x0, w1, w0	// tmp131, tmp130, tmp132
	lsr	x0, x0, 32	// tmp133, tmp131,
	lsr	w0, w0, 3	// tmp129, tmp133,
	str	w0, [sp, 44]	// tmp129, d
.L7:
// problem37.c:32:     while (d != 1) {
	ldr	w0, [sp, 44]	// tmp134, d
	cmp	w0, 1	// tmp134,
	bne	.L9		//,
// problem37.c:38:     sum += i;
	ldr	w1, [sp, 36]	// tmp136, sum
	ldr	w0, [sp, 28]	// tmp137, i
	add	w0, w1, w0	// tmp135, tmp136, tmp137
	str	w0, [sp, 36]	// tmp135, sum
// problem37.c:39:     count++;
	ldr	w0, [sp, 32]	// tmp139, count
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 32]	// tmp138, count
	b	.L5		//
.L12:
// problem37.c:23:         goto NEXT;
	nop	
	b	.L5		//
.L13:
// problem37.c:34:         goto NEXT;
	nop	
.L5:
// problem37.c:16:   for (i = 10; count < 11; i++) {
	ldr	w0, [sp, 28]	// tmp141, i
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 28]	// tmp140, i
.L2:
// problem37.c:16:   for (i = 10; count < 11; i++) {
	ldr	w0, [sp, 32]	// tmp142, count
	cmp	w0, 10	// tmp142,
	bls	.L10		//,
// problem37.c:44:   printf("%u\n", sum);
	ldr	w1, [sp, 36]	//, sum
	adrp	x0, .LC0	// tmp143,
	add	x0, x0, :lo12:.LC0	//, tmp143,
	bl	printf		//
// problem37.c:46:   return 0;
	mov	w0, 0	// _24,
// problem37.c:47: }
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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem37.c:51:   if (n <= 1) {
	ldr	w0, [sp, 12]	// tmp96, n
	cmp	w0, 1	// tmp96,
	bhi	.L15		//,
// problem37.c:52:     return 0;
	mov	w0, 0	// _4,
	b	.L16		//
.L15:
// problem37.c:54:   else if (n == 2) {
	ldr	w0, [sp, 12]	// tmp97, n
	cmp	w0, 2	// tmp97,
	bne	.L17		//,
// problem37.c:55:     return 1;
	mov	w0, 1	// _4,
	b	.L16		//
.L17:
// problem37.c:59:     for (i = 2; i*i <= n; i++) {
	mov	w0, 2	// tmp98,
	str	w0, [sp, 28]	// tmp98, i
// problem37.c:59:     for (i = 2; i*i <= n; i++) {
	b	.L18		//
.L20:
// problem37.c:60:       if (n % i == 0) {
	ldr	w0, [sp, 12]	// tmp99, n
	ldr	w1, [sp, 28]	// tmp111, i
	udiv	w2, w0, w1	// tmp110, tmp99, tmp111
	ldr	w1, [sp, 28]	// tmp113, i
	mul	w1, w2, w1	// tmp112, tmp110, tmp113
	sub	w0, w0, w1	// _1, tmp99, tmp112
// problem37.c:60:       if (n % i == 0) {
	cmp	w0, 0	// _1,
	bne	.L19		//,
// problem37.c:61:         return 0;
	mov	w0, 0	// _4,
	b	.L16		//
.L19:
// problem37.c:59:     for (i = 2; i*i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp115, i
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 28]	// tmp114, i
.L18:
// problem37.c:59:     for (i = 2; i*i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp116, i
	mul	w0, w0, w0	// _2, tmp116, tmp116
// problem37.c:59:     for (i = 2; i*i <= n; i++) {
	ldr	w1, [sp, 12]	// tmp117, n
	cmp	w1, w0	// tmp117, _2
	bcs	.L20		//,
// problem37.c:64:     return 1;
	mov	w0, 1	// _4,
.L16:
// problem37.c:66: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
