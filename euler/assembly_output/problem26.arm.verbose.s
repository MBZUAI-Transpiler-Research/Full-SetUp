	.arch armv8-a
	.file	"problem26.c"
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
.LFB20:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
// problem26.c:12: {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp98, tmp99,
	ldr	x1, [x0]	// tmp132,
	str	x1, [sp, 72]	// tmp132, D.5848
	mov	x1, 0	// tmp132
// problem26.c:14:   unsigned maxlen = 0, imax = 0;
	str	wzr, [sp, 24]	//, maxlen
// problem26.c:14:   unsigned maxlen = 0, imax = 0;
	str	wzr, [sp, 28]	//, imax
// problem26.c:17:   mpz_init(p); mpz_init(r);
	add	x0, sp, 40	// tmp100,,
	bl	__gmpz_init		//
// problem26.c:17:   mpz_init(p); mpz_init(r);
	add	x0, sp, 56	// tmp101,,
	bl	__gmpz_init		//
// problem26.c:19:   for (i = 2; i < M; i++) {
	mov	w0, 2	// tmp102,
	str	w0, [sp, 32]	// tmp102, i
// problem26.c:19:   for (i = 2; i < M; i++) {
	b	.L2		//
.L8:
// problem26.c:20:     unsigned len = 1;
	mov	w0, 1	// tmp103,
	str	w0, [sp, 36]	// tmp103, len
// problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	ldr	w0, [sp, 32]	// tmp104, i
	and	w0, w0, 1	// _1, tmp104,
// problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	cmp	w0, 0	// _1,
	beq	.L11		//,
// problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	ldr	w2, [sp, 32]	// tmp105, i
	mov	w0, 52429	// tmp107,
	movk	w0, 0xcccc, lsl 16	// tmp107,,
	umull	x0, w2, w0	// tmp106, tmp105, tmp107
	lsr	x0, x0, 32	// tmp108, tmp106,
	lsr	w1, w0, 2	// _2, tmp108,
	mov	w0, w1	// tmp109, _2
	lsl	w0, w0, 2	// tmp110, tmp109,
	add	w0, w0, w1	// tmp109, tmp109, _2
	sub	w1, w2, w0	// _2, tmp105, tmp109
// problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	cmp	w1, 0	// _2,
	beq	.L11		//,
// problem26.c:26:     mpz_set_ui(p, 10);
	add	x0, sp, 40	// tmp111,,
	mov	x1, 10	//,
	bl	__gmpz_set_ui		//
// problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	b	.L6		//
.L7:
// problem26.c:28:       len++;
	ldr	w0, [sp, 36]	// tmp113, len
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 36]	// tmp112, len
// problem26.c:29:       mpz_mul_ui(p, p, 10);
	add	x1, sp, 40	// tmp114,,
	add	x0, sp, 40	// tmp115,,
	mov	x2, 10	//,
	bl	__gmpz_mul_ui		//
.L6:
// problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	ldr	w2, [sp, 32]	// _3, i
	add	x1, sp, 40	// tmp116,,
	add	x0, sp, 56	// tmp117,,
	bl	__gmpz_fdiv_r_ui		//
// problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	add	x0, sp, 56	// tmp118,,
	mov	x1, 1	//,
	bl	__gmpz_cmp_ui		//
// problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	cmp	w0, 0	// _4,
	bne	.L7		//,
// problem26.c:31:     if (len > maxlen) {
	ldr	w1, [sp, 36]	// tmp119, len
	ldr	w0, [sp, 24]	// tmp120, maxlen
	cmp	w1, w0	// tmp119, tmp120
	bls	.L5		//,
// problem26.c:32:       maxlen = len;
	ldr	w0, [sp, 36]	// tmp121, len
	str	w0, [sp, 24]	// tmp121, maxlen
// problem26.c:33:       imax = i;
	ldr	w0, [sp, 32]	// tmp122, i
	str	w0, [sp, 28]	// tmp122, imax
	b	.L5		//
.L11:
// problem26.c:23:       continue;
	nop	
.L5:
// problem26.c:19:   for (i = 2; i < M; i++) {
	ldr	w0, [sp, 32]	// tmp124, i
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 32]	// tmp123, i
.L2:
// problem26.c:19:   for (i = 2; i < M; i++) {
	ldr	w0, [sp, 32]	// tmp125, i
	cmp	w0, 999	// tmp125,
	bls	.L8		//,
// problem26.c:36:   printf("%u\n", imax);
	ldr	w1, [sp, 28]	//, imax
	adrp	x0, .LC0	// tmp126,
	add	x0, x0, :lo12:.LC0	//, tmp126,
	bl	printf		//
// problem26.c:38:   mpz_clear(p);
	add	x0, sp, 40	// tmp127,,
	bl	__gmpz_clear		//
// problem26.c:39:   mpz_clear(r);
	add	x0, sp, 56	// tmp128,,
	bl	__gmpz_clear		//
// problem26.c:41:   return 0;
	mov	w0, 0	// _23,
// problem26.c:42: }
	mov	w1, w0	// <retval>, _23
	adrp	x0, :got:__stack_chk_guard	// tmp131,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp130, tmp131,
	ldr	x3, [sp, 72]	// tmp133, D.5848
	ldr	x2, [x0]	// tmp134,
	subs	x3, x3, x2	// tmp133, tmp134
	mov	x2, 0	// tmp134
	beq	.L10		//,
	bl	__stack_chk_fail		//
.L10:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
