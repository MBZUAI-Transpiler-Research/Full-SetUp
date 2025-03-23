	.arch armv8-a
	.file	"problem15.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB20:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// problem15.c:10: {
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp115,
	str	x1, [sp, 56]	// tmp115, D.5832
	mov	x1, 0	// tmp115
// problem15.c:14:   mpz_init(n); mpz_init(m);
	add	x0, sp, 24	// tmp97,,
	bl	__gmpz_init		//
// problem15.c:14:   mpz_init(n); mpz_init(m);
	add	x0, sp, 40	// tmp98,,
	bl	__gmpz_init		//
// problem15.c:15:   mpz_fac_ui(n, 40); mpz_fac_ui(m, 20);
	add	x0, sp, 24	// tmp99,,
	mov	x1, 40	//,
	bl	__gmpz_fac_ui		//
// problem15.c:15:   mpz_fac_ui(n, 40); mpz_fac_ui(m, 20);
	add	x0, sp, 40	// tmp100,,
	mov	x1, 20	//,
	bl	__gmpz_fac_ui		//
// problem15.c:16:   mpz_mul(m, m, m);
	add	x2, sp, 40	// tmp101,,
	add	x1, sp, 40	// tmp102,,
	add	x0, sp, 40	// tmp103,,
	bl	__gmpz_mul		//
// problem15.c:17:   mpz_divexact(n, n, m);
	add	x2, sp, 40	// tmp104,,
	add	x1, sp, 24	// tmp105,,
	add	x0, sp, 24	// tmp106,,
	bl	__gmpz_divexact		//
// problem15.c:19:   mpz_out_str(stdout, 10, n);
	adrp	x0, :got:stdout	// tmp108,
	ldr	x0, [x0, #:got_lo12:stdout]	// tmp107, tmp108,
	ldr	x0, [x0]	// stdout.0_1, stdout
	add	x1, sp, 24	// tmp109,,
	mov	x2, x1	//, tmp109
	mov	w1, 10	//,
	bl	__gmpz_out_str		//
// problem15.c:20:   putchar('\n');
	mov	w0, 10	//,
	bl	putchar		//
// problem15.c:22:   mpz_clear(n);
	add	x0, sp, 24	// tmp110,,
	bl	__gmpz_clear		//
// problem15.c:23:   mpz_clear(m);
	add	x0, sp, 40	// tmp111,,
	bl	__gmpz_clear		//
// problem15.c:25:   return 0;
	mov	w0, 0	// _13,
// problem15.c:26: }
	mov	w1, w0	// <retval>, _13
	adrp	x0, :got:__stack_chk_guard	// tmp114,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp113, tmp114,
	ldr	x3, [sp, 56]	// tmp116, D.5832
	ldr	x2, [x0]	// tmp117,
	subs	x3, x3, x2	// tmp116, tmp117
	mov	x2, 0	// tmp117
	beq	.L3		//,
	bl	__stack_chk_fail		//
.L3:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
