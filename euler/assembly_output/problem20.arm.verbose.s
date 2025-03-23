	.arch armv8-a
	.file	"problem20.c"
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
.LFB26:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// problem20.c:11: {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp118,
	str	x1, [sp, 56]	// tmp118, D.6354
	mov	x1, 0	// tmp118
// problem20.c:15:   int sum = 0;
	str	wzr, [sp, 28]	//, sum
// problem20.c:17:   mpz_init(n);
	add	x0, sp, 40	// tmp104,,
	bl	__gmpz_init		//
// problem20.c:18:   mpz_fac_ui(n, 100);
	add	x0, sp, 40	// tmp105,,
	mov	x1, 100	//,
	bl	__gmpz_fac_ui		//
// problem20.c:19:   str = mpz_get_str(NULL, 10, n);
	add	x0, sp, 40	// tmp106,,
	mov	x2, x0	//, tmp106
	mov	w1, 10	//,
	mov	x0, 0	//,
	bl	__gmpz_get_str		//
	str	x0, [sp, 32]	//, str
// problem20.c:20:   for (i = 0; str[i]; i++) {
	str	wzr, [sp, 24]	//, i
// problem20.c:20:   for (i = 0; str[i]; i++) {
	b	.L2		//
.L3:
// problem20.c:21:     sum += str[i]-'0';
	ldrsw	x0, [sp, 24]	// _1, i
	ldr	x1, [sp, 32]	// tmp107, str
	add	x0, x1, x0	// _2, tmp107, _1
	ldrb	w0, [x0]	// _3, *_2
// problem20.c:21:     sum += str[i]-'0';
	sub	w0, w0, #48	// _5, _4,
// problem20.c:21:     sum += str[i]-'0';
	ldr	w1, [sp, 28]	// tmp109, sum
	add	w0, w1, w0	// tmp108, tmp109, _5
	str	w0, [sp, 28]	// tmp108, sum
// problem20.c:20:   for (i = 0; str[i]; i++) {
	ldr	w0, [sp, 24]	// tmp111, i
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 24]	// tmp110, i
.L2:
// problem20.c:20:   for (i = 0; str[i]; i++) {
	ldrsw	x0, [sp, 24]	// _6, i
	ldr	x1, [sp, 32]	// tmp112, str
	add	x0, x1, x0	// _7, tmp112, _6
	ldrb	w0, [x0]	// _8, *_7
// problem20.c:20:   for (i = 0; str[i]; i++) {
	cmp	w0, 0	// _8,
	bne	.L3		//,
// problem20.c:23:   printf("%d\n", sum);
	ldr	w1, [sp, 28]	//, sum
	adrp	x0, .LC0	// tmp113,
	add	x0, x0, :lo12:.LC0	//, tmp113,
	bl	printf		//
// problem20.c:25:   free(str);
	ldr	x0, [sp, 32]	//, str
	bl	free		//
// problem20.c:26:   mpz_clear(n);
	add	x0, sp, 40	// tmp114,,
	bl	__gmpz_clear		//
// problem20.c:28:   return 0;
	mov	w0, 0	// _21,
// problem20.c:29: }
	mov	w1, w0	// <retval>, _21
	adrp	x0, :got:__stack_chk_guard	// tmp117,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp116, tmp117,
	ldr	x3, [sp, 56]	// tmp119, D.6354
	ldr	x2, [x0]	// tmp120,
	subs	x3, x3, x2	// tmp119, tmp120
	mov	x2, 0	// tmp120
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
