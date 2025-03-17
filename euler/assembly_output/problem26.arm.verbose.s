	.arch armv8-a
	.file	"problem26.c"
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
.LFB20:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
// problem26.c:12: {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x1, [x0]	// tmp130,
	str	x1, [sp, 56]	// tmp130, D.6430
	mov	x1, 0	// tmp130
// problem26.c:14:   unsigned maxlen = 0, imax = 0;
	str	wzr, [sp, 8]	//, maxlen
// problem26.c:14:   unsigned maxlen = 0, imax = 0;
	str	wzr, [sp, 12]	//, imax
// problem26.c:17:   mpz_init(p); mpz_init(r);
	add	x0, sp, 24	// tmp99,,
	bl	__gmpz_init		//
// problem26.c:17:   mpz_init(p); mpz_init(r);
	add	x0, sp, 40	// tmp100,,
	bl	__gmpz_init		//
// problem26.c:19:   for (i = 2; i < M; i++) {
	mov	w0, 2	// tmp101,
	str	w0, [sp, 16]	// tmp101, i
// problem26.c:19:   for (i = 2; i < M; i++) {
	b	.L2		//
.L8:
// problem26.c:20:     unsigned len = 1;
	mov	w0, 1	// tmp102,
	str	w0, [sp, 20]	// tmp102, len
// problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	ldr	w0, [sp, 16]	// tmp103, i
	and	w0, w0, 1	// _1, tmp103,
// problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	cmp	w0, 0	// _1,
	beq	.L11		//,
// problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	ldr	w2, [sp, 16]	// tmp104, i
	mov	w0, 52429	// tmp106,
	movk	w0, 0xcccc, lsl 16	// tmp106,,
	umull	x0, w2, w0	// tmp105, tmp104, tmp106
	lsr	x0, x0, 32	// tmp107, tmp105,
	lsr	w1, w0, 2	// _2, tmp107,
	mov	w0, w1	// tmp108, _2
	lsl	w0, w0, 2	// tmp109, tmp108,
	add	w0, w0, w1	// tmp108, tmp108, _2
	sub	w1, w2, w0	// _2, tmp104, tmp108
// problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	cmp	w1, 0	// _2,
	beq	.L11		//,
// problem26.c:26:     mpz_set_ui(p, 10);
	add	x0, sp, 24	// tmp110,,
	mov	x1, 10	//,
	bl	__gmpz_set_ui		//
// problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	b	.L6		//
.L7:
// problem26.c:28:       len++;
	ldr	w0, [sp, 20]	// tmp112, len
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 20]	// tmp111, len
// problem26.c:29:       mpz_mul_ui(p, p, 10);
	add	x1, sp, 24	// tmp113,,
	add	x0, sp, 24	// tmp114,,
	mov	x2, 10	//,
	bl	__gmpz_mul_ui		//
.L6:
// problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	ldr	w2, [sp, 16]	// _3, i
	add	x1, sp, 24	// tmp115,,
	add	x0, sp, 40	// tmp116,,
	bl	__gmpz_fdiv_r_ui		//
// problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	add	x0, sp, 40	// tmp117,,
	mov	x1, 1	//,
	bl	__gmpz_cmp_ui		//
// problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	cmp	w0, 0	// _4,
	bne	.L7		//,
// problem26.c:31:     if (len > maxlen) {
	ldr	w1, [sp, 20]	// tmp118, len
	ldr	w0, [sp, 8]	// tmp119, maxlen
	cmp	w1, w0	// tmp118, tmp119
	bls	.L5		//,
// problem26.c:32:       maxlen = len;
	ldr	w0, [sp, 20]	// tmp120, len
	str	w0, [sp, 8]	// tmp120, maxlen
// problem26.c:33:       imax = i;
	ldr	w0, [sp, 16]	// tmp121, i
	str	w0, [sp, 12]	// tmp121, imax
	b	.L5		//
.L11:
// problem26.c:23:       continue;
	nop	
.L5:
// problem26.c:19:   for (i = 2; i < M; i++) {
	ldr	w0, [sp, 16]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 16]	// tmp122, i
.L2:
// problem26.c:19:   for (i = 2; i < M; i++) {
	ldr	w0, [sp, 16]	// tmp124, i
	cmp	w0, 999	// tmp124,
	bls	.L8		//,
// problem26.c:36:   printf("%u\n", imax);
	ldr	w1, [sp, 12]	//, imax
	adrp	x0, .LC0	// tmp125,
	add	x0, x0, :lo12:.LC0	//, tmp125,
	bl	printf		//
// problem26.c:38:   mpz_clear(p);
	add	x0, sp, 24	// tmp126,,
	bl	__gmpz_clear		//
// problem26.c:39:   mpz_clear(r);
	add	x0, sp, 40	// tmp127,,
	bl	__gmpz_clear		//
// problem26.c:41:   return 0;
	mov	w0, 0	// _23,
// problem26.c:42: }
	mov	w1, w0	// <retval>, _23
	adrp	x0, :got:__stack_chk_guard	// tmp129,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp129,
	ldr	x3, [sp, 56]	// tmp131, D.6430
	ldr	x2, [x0]	// tmp132,
	subs	x3, x3, x2	// tmp131, tmp132
	mov	x2, 0	// tmp132
	beq	.L10		//,
	bl	__stack_chk_fail		//
.L10:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
