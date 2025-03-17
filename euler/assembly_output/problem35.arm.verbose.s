	.arch armv8-a
	.file	"problem35.c"
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
// problem35.c:15:   unsigned i, count = 0;
	str	wzr, [sp, 24]	//, count
// problem35.c:17:   for (i = 2; i < N; i++) {
	mov	w0, 2	// tmp101,
	str	w0, [sp, 20]	// tmp101, i
// problem35.c:17:   for (i = 2; i < N; i++) {
	b	.L2		//
.L9:
// problem35.c:22:     if (!is_prime(i)) {
	ldr	w0, [sp, 20]	//, i
	bl	is_prime		//
// problem35.c:22:     if (!is_prime(i)) {
	cmp	w0, 0	// _1,
	beq	.L11		//,
// problem35.c:25:     digits = log10(i);
	ldr	w0, [sp, 20]	// tmp102, i
	ucvtf	d0, w0	// _2, tmp102
	bl	log10		//
// problem35.c:25:     digits = log10(i);
	fcvtzu	w0, d0	// tmp103, _3
	str	w0, [sp, 36]	// tmp103, digits
// problem35.c:26:     k = i;
	ldr	w0, [sp, 20]	// tmp104, i
	str	w0, [sp, 28]	// tmp104, k
// problem35.c:27:     for (j = 0; j < digits; j++) {
	str	wzr, [sp, 32]	//, j
// problem35.c:27:     for (j = 0; j < digits; j++) {
	b	.L5		//
.L8:
// problem35.c:28:       unsigned l = pow(10, digits);
	ldr	w0, [sp, 36]	// tmp105, digits
	ucvtf	d0, w0	// _4, tmp105
	fmov	d1, d0	//, _4
	fmov	d0, 1.0e+1	//,
	bl	pow		//
// problem35.c:28:       unsigned l = pow(10, digits);
	fcvtzu	w0, d0	// tmp106, _5
	str	w0, [sp, 40]	// tmp106, l
// problem35.c:29:       unsigned t = k % l;
	ldr	w0, [sp, 28]	// tmp108, k
	ldr	w1, [sp, 40]	// tmp120, l
	udiv	w2, w0, w1	// tmp119, tmp108, tmp120
	ldr	w1, [sp, 40]	// tmp122, l
	mul	w1, w2, w1	// tmp121, tmp119, tmp122
	sub	w0, w0, w1	// tmp123, tmp108, tmp121
	str	w0, [sp, 44]	// tmp123, t
// problem35.c:30:       k /= l;
	ldr	w1, [sp, 28]	// tmp126, k
	ldr	w0, [sp, 40]	// tmp127, l
	udiv	w0, w1, w0	// tmp125, tmp126, tmp127
	str	w0, [sp, 28]	// tmp125, k
// problem35.c:31:       k += t*10;
	ldr	w1, [sp, 44]	// tmp128, t
	mov	w0, w1	// tmp129, tmp128
	lsl	w0, w0, 2	// tmp130, tmp129,
	add	w0, w0, w1	// tmp129, tmp129, tmp128
	lsl	w0, w0, 1	// tmp131, tmp129,
	mov	w1, w0	// _6, tmp129
// problem35.c:31:       k += t*10;
	ldr	w0, [sp, 28]	// tmp133, k
	add	w0, w0, w1	// tmp132, tmp133, _6
	str	w0, [sp, 28]	// tmp132, k
// problem35.c:32:       if (!is_prime(k)) {
	ldr	w0, [sp, 28]	//, k
	bl	is_prime		//
// problem35.c:32:       if (!is_prime(k)) {
	cmp	w0, 0	// _7,
	beq	.L12		//,
// problem35.c:27:     for (j = 0; j < digits; j++) {
	ldr	w0, [sp, 32]	// tmp135, j
	add	w0, w0, 1	// tmp134, tmp135,
	str	w0, [sp, 32]	// tmp134, j
.L5:
// problem35.c:27:     for (j = 0; j < digits; j++) {
	ldr	w1, [sp, 32]	// tmp136, j
	ldr	w0, [sp, 36]	// tmp137, digits
	cmp	w1, w0	// tmp136, tmp137
	bcc	.L8		//,
// problem35.c:36:     count++;
	ldr	w0, [sp, 24]	// tmp139, count
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 24]	// tmp138, count
	b	.L4		//
.L7:
.L11:
// problem35.c:23:       continue;
	nop	
	b	.L4		//
.L12:
// problem35.c:33:         goto NEXT;
	nop	
.L4:
// problem35.c:17:   for (i = 2; i < N; i++) {
	ldr	w0, [sp, 20]	// tmp141, i
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 20]	// tmp140, i
.L2:
// problem35.c:17:   for (i = 2; i < N; i++) {
	ldr	w1, [sp, 20]	// tmp142, i
	mov	w0, 16959	// tmp143,
	movk	w0, 0xf, lsl 16	// tmp143,,
	cmp	w1, w0	// tmp142, tmp143
	bls	.L9		//,
// problem35.c:40:   printf("%u\n", count);
	ldr	w1, [sp, 24]	//, count
	adrp	x0, .LC0	// tmp144,
	add	x0, x0, :lo12:.LC0	//, tmp144,
	bl	printf		//
// problem35.c:42:   return 0;
	mov	w0, 0	// _22,
// problem35.c:43: }
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
// problem35.c:47:   if (n <= 1) {
	ldr	w0, [sp, 12]	// tmp96, n
	cmp	w0, 1	// tmp96,
	bhi	.L14		//,
// problem35.c:48:     return 0;
	mov	w0, 0	// _4,
	b	.L15		//
.L14:
// problem35.c:50:   else if (n == 2) {
	ldr	w0, [sp, 12]	// tmp97, n
	cmp	w0, 2	// tmp97,
	bne	.L16		//,
// problem35.c:51:     return 1;
	mov	w0, 1	// _4,
	b	.L15		//
.L16:
// problem35.c:55:     for (i = 2; i*i <= n; i++) {
	mov	w0, 2	// tmp98,
	str	w0, [sp, 28]	// tmp98, i
// problem35.c:55:     for (i = 2; i*i <= n; i++) {
	b	.L17		//
.L19:
// problem35.c:56:       if (n % i == 0) {
	ldr	w0, [sp, 12]	// tmp99, n
	ldr	w1, [sp, 28]	// tmp111, i
	udiv	w2, w0, w1	// tmp110, tmp99, tmp111
	ldr	w1, [sp, 28]	// tmp113, i
	mul	w1, w2, w1	// tmp112, tmp110, tmp113
	sub	w0, w0, w1	// _1, tmp99, tmp112
// problem35.c:56:       if (n % i == 0) {
	cmp	w0, 0	// _1,
	bne	.L18		//,
// problem35.c:57:         return 0;
	mov	w0, 0	// _4,
	b	.L15		//
.L18:
// problem35.c:55:     for (i = 2; i*i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp115, i
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 28]	// tmp114, i
.L17:
// problem35.c:55:     for (i = 2; i*i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp116, i
	mul	w0, w0, w0	// _2, tmp116, tmp116
// problem35.c:55:     for (i = 2; i*i <= n; i++) {
	ldr	w1, [sp, 12]	// tmp117, n
	cmp	w1, w0	// tmp117, _2
	bcs	.L19		//,
// problem35.c:60:     return 1;
	mov	w0, 1	// _4,
.L15:
// problem35.c:62: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
