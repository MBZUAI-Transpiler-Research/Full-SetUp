	.arch armv8-a
	.file	"problem16.c"
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
.LFB26:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
// problem16.c:11: {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x1, [x0]	// tmp115,
	str	x1, [sp, 56]	// tmp115, D.6944
	mov	x1, 0	// tmp115
// problem16.c:15:   unsigned sum = 0;
	str	wzr, [sp, 12]	//, sum
// problem16.c:17:   mpz_init(n);
	add	x0, sp, 40	// tmp99,,
	bl	__gmpz_init		//
// problem16.c:18:   mpz_ui_pow_ui(n, 2, 1000);
	add	x0, sp, 40	// tmp100,,
	mov	x2, 1000	//,
	mov	x1, 2	//,
	bl	__gmpz_ui_pow_ui		//
// problem16.c:20:   str = mpz_get_str(NULL, 10, n);
	add	x0, sp, 40	// tmp101,,
	mov	x2, x0	//, tmp101
	mov	w1, 10	//,
	mov	x0, 0	//,
	bl	__gmpz_get_str		//
	str	x0, [sp, 24]	//, str
// problem16.c:21:   len = mpz_sizeinbase(n, 10);
	add	x0, sp, 40	// tmp102,,
	mov	w1, 10	//,
	bl	__gmpz_sizeinbase		//
	str	x0, [sp, 32]	//, len
// problem16.c:22:   for (i = 0; i < len; i++) {
	str	xzr, [sp, 16]	//, i
// problem16.c:22:   for (i = 0; i < len; i++) {
	b	.L2		//
.L3:
// problem16.c:23:     sum += str[i]-'0';
	ldr	x1, [sp, 24]	// tmp103, str
	ldr	x0, [sp, 16]	// tmp104, i
	add	x0, x1, x0	// _1, tmp103, tmp104
	ldrb	w0, [x0]	// _2, *_1
// problem16.c:23:     sum += str[i]-'0';
	mov	w1, w0	// _3, _2
	ldr	w0, [sp, 12]	// tmp105, sum
	add	w0, w1, w0	// _4, _3, tmp105
	sub	w0, w0, #48	// tmp106, _4,
	str	w0, [sp, 12]	// tmp106, sum
// problem16.c:22:   for (i = 0; i < len; i++) {
	ldr	x0, [sp, 16]	// tmp108, i
	add	x0, x0, 1	// tmp107, tmp108,
	str	x0, [sp, 16]	// tmp107, i
.L2:
// problem16.c:22:   for (i = 0; i < len; i++) {
	ldr	x1, [sp, 16]	// tmp109, i
	ldr	x0, [sp, 32]	// tmp110, len
	cmp	x1, x0	// tmp109, tmp110
	bcc	.L3		//,
// problem16.c:25:   printf("%u\n", sum);
	ldr	w1, [sp, 12]	//, sum
	adrp	x0, .LC0	// tmp111,
	add	x0, x0, :lo12:.LC0	//, tmp111,
	bl	printf		//
// problem16.c:27:   free(str);
	ldr	x0, [sp, 24]	//, str
	bl	free		//
// problem16.c:28:   mpz_clear(n);
	add	x0, sp, 40	// tmp112,,
	bl	__gmpz_clear		//
// problem16.c:30:   return 0;
	mov	w0, 0	// _18,
// problem16.c:31: }
	mov	w1, w0	// <retval>, _18
	adrp	x0, :got:__stack_chk_guard	// tmp114,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp114,
	ldr	x3, [sp, 56]	// tmp116, D.6944
	ldr	x2, [x0]	// tmp117,
	subs	x3, x3, x2	// tmp116, tmp117
	mov	x2, 0	// tmp117
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
