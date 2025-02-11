	.arch armv8-a
	.file	"problem25.c"
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
.LFB26:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48	//,,
// problem25.c:12: {
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 40]	// tmp108, D.7155
	mov	x1, 0	// tmp108
// problem25.c:14:   int i = 1;
	mov	w0, 1	// tmp96,
	str	w0, [sp, 4]	// tmp96, i
// problem25.c:16:   mpz_init(n);
	add	x0, sp, 24	// tmp97,,
	bl	__gmpz_init		//
// problem25.c:18:   for (i = 1;; i++) {
	mov	w0, 1	// tmp98,
	str	w0, [sp, 4]	// tmp98, i
.L4:
// problem25.c:22:     mpz_fib_ui(n, i);
	ldrsw	x1, [sp, 4]	// _1, i
	add	x0, sp, 24	// tmp99,,
	bl	__gmpz_fib_ui		//
// problem25.c:23:     str = mpz_get_str(NULL, 10, n);
	add	x0, sp, 24	// tmp100,,
	mov	x2, x0	//, tmp100
	mov	w1, 10	//,
	mov	x0, 0	//,
	bl	__gmpz_get_str		//
	str	x0, [sp, 8]	//, str
// problem25.c:24:     len = strlen(str);
	ldr	x0, [sp, 8]	//, str
	bl	strlen		//
	str	x0, [sp, 16]	//, len
// problem25.c:25:     free(str);
	ldr	x0, [sp, 8]	//, str
	bl	free		//
// problem25.c:26:     if (len == 1000) {
	ldr	x0, [sp, 16]	// tmp101, len
	cmp	x0, 1000	// tmp101,
	bne	.L2		//,
// problem25.c:27:       printf("%d\n", i);
	ldr	w1, [sp, 4]	//, i
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	//, tmp102,
	bl	printf		//
// problem25.c:28:       break;
	nop	
// problem25.c:32:   mpz_clear(n);
	add	x0, sp, 24	// tmp105,,
	bl	__gmpz_clear		//
// problem25.c:34:   return 0;
	mov	w0, 0	// _16,
// problem25.c:35: }
	mov	w1, w0	// <retval>, _16
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp107,
	ldr	x3, [sp, 40]	// tmp109, D.7155
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L6		//,
	b	.L7		//
.L2:
// problem25.c:18:   for (i = 1;; i++) {
	ldr	w0, [sp, 4]	// tmp104, i
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 4]	// tmp103, i
// problem25.c:18:   for (i = 1;; i++) {
	b	.L4		//
.L7:
// problem25.c:35: }
	bl	__stack_chk_fail		//
.L6:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 48]	//,,
	add	sp, sp, 64	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
