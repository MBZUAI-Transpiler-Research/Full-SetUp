	.arch armv8-a
	.file	"problem29.c"
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
// problem29.c:15: {
	adrp	x0, :got:__stack_chk_guard	// tmp112,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp112,
	ldr	x1, [x0]	// tmp148,
	str	x1, [sp, 40]	// tmp148, D.6965
	mov	x1, 0	// tmp148
// problem29.c:17:   int i = 0;
	str	wzr, [sp, 8]	//, i
// problem29.c:18:   int count = 0;
	str	wzr, [sp, 12]	//, count
// problem29.c:22:   mpz_init(t);
	add	x0, sp, 24	// tmp113,,
	bl	__gmpz_init		//
// problem29.c:24:   nums = malloc((N-1)*(N-1) * sizeof *nums);
	mov	x0, 25744	//,
	movk	x0, 0x2, lsl 16	//,,
	bl	malloc		//
	str	x0, [sp, 16]	// tmp114, nums
// problem29.c:25:   for (a = 2; a <= N; a++) {
	mov	w0, 2	// tmp115,
	str	w0, [sp]	// tmp115, a
// problem29.c:25:   for (a = 2; a <= N; a++) {
	b	.L2		//
.L5:
// problem29.c:26:     mpz_set_ui(t, a);
	ldrsw	x1, [sp]	// _1, a
	add	x0, sp, 24	// tmp116,,
	bl	__gmpz_set_ui		//
// problem29.c:27:     for (b = 2; b <= N; b++) {
	mov	w0, 2	// tmp117,
	str	w0, [sp, 4]	// tmp117, b
// problem29.c:27:     for (b = 2; b <= N; b++) {
	b	.L3		//
.L4:
// problem29.c:28:       mpz_mul_ui(t, t, a);
	ldrsw	x2, [sp]	// _2, a
	add	x1, sp, 24	// tmp118,,
	add	x0, sp, 24	// tmp119,,
	bl	__gmpz_mul_ui		//
// problem29.c:29:       mpz_init(nums[i]);
	ldrsw	x0, [sp, 8]	// _3, i
	lsl	x0, x0, 4	// _4, _3,
	ldr	x1, [sp, 16]	// tmp120, nums
	add	x0, x1, x0	// _5, tmp120, _4
// problem29.c:29:       mpz_init(nums[i]);
	bl	__gmpz_init		//
// problem29.c:30:       mpz_set(nums[i], t);
	ldrsw	x0, [sp, 8]	// _6, i
	lsl	x0, x0, 4	// _7, _6,
	ldr	x1, [sp, 16]	// tmp121, nums
	add	x0, x1, x0	// _8, tmp121, _7
// problem29.c:30:       mpz_set(nums[i], t);
	add	x1, sp, 24	// tmp122,,
	bl	__gmpz_set		//
// problem29.c:31:       i++;
	ldr	w0, [sp, 8]	// tmp124, i
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 8]	// tmp123, i
// problem29.c:27:     for (b = 2; b <= N; b++) {
	ldr	w0, [sp, 4]	// tmp126, b
	add	w0, w0, 1	// tmp125, tmp126,
	str	w0, [sp, 4]	// tmp125, b
.L3:
// problem29.c:27:     for (b = 2; b <= N; b++) {
	ldr	w0, [sp, 4]	// tmp127, b
	cmp	w0, 100	// tmp127,
	ble	.L4		//,
// problem29.c:25:   for (a = 2; a <= N; a++) {
	ldr	w0, [sp]	// tmp129, a
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp]	// tmp128, a
.L2:
// problem29.c:25:   for (a = 2; a <= N; a++) {
	ldr	w0, [sp]	// tmp130, a
	cmp	w0, 100	// tmp130,
	ble	.L5		//,
// problem29.c:35:   qsort(nums, (N-1)*(N-1), sizeof *nums, compare);
	adrp	x0, compare	// tmp131,
	add	x3, x0, :lo12:compare	//, tmp131,
	mov	x2, 16	//,
	mov	x1, 9801	//,
	ldr	x0, [sp, 16]	//, nums
	bl	qsort		//
// problem29.c:37:   mpz_set_ui(t, 0);
	add	x0, sp, 24	// tmp132,,
	mov	x1, 0	//,
	bl	__gmpz_set_ui		//
// problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	str	wzr, [sp, 8]	//, i
// problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	b	.L6		//
.L8:
// problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	ldrsw	x0, [sp, 8]	// _9, i
	lsl	x0, x0, 4	// _10, _9,
	ldr	x1, [sp, 16]	// tmp133, nums
	add	x1, x1, x0	// _11, tmp133, _10
// problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	add	x0, sp, 24	// tmp134,,
	bl	__gmpz_cmp		//
// problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	cmp	w0, 0	// _12,
	beq	.L7		//,
// problem29.c:40:       count++;
	ldr	w0, [sp, 12]	// tmp136, count
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp, 12]	// tmp135, count
.L7:
// problem29.c:42:     mpz_set(t, nums[i]);
	ldrsw	x0, [sp, 8]	// _13, i
	lsl	x0, x0, 4	// _14, _13,
	ldr	x1, [sp, 16]	// tmp137, nums
	add	x1, x1, x0	// _15, tmp137, _14
// problem29.c:42:     mpz_set(t, nums[i]);
	add	x0, sp, 24	// tmp138,,
	bl	__gmpz_set		//
// problem29.c:43:     mpz_clear(nums[i]);
	ldrsw	x0, [sp, 8]	// _16, i
	lsl	x0, x0, 4	// _17, _16,
	ldr	x1, [sp, 16]	// tmp139, nums
	add	x0, x1, x0	// _18, tmp139, _17
// problem29.c:43:     mpz_clear(nums[i]);
	bl	__gmpz_clear		//
// problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	ldr	w0, [sp, 8]	// tmp141, i
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 8]	// tmp140, i
.L6:
// problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	ldr	w1, [sp, 8]	// tmp142, i
	mov	w0, 9800	// tmp143,
	cmp	w1, w0	// tmp142, tmp143
	ble	.L8		//,
// problem29.c:45:   printf("%d\n", count);
	ldr	w1, [sp, 12]	//, count
	adrp	x0, .LC0	// tmp144,
	add	x0, x0, :lo12:.LC0	//, tmp144,
	bl	printf		//
// problem29.c:47:   free(nums);
	ldr	x0, [sp, 16]	//, nums
	bl	free		//
// problem29.c:48:   mpz_clear(t);
	add	x0, sp, 24	// tmp145,,
	bl	__gmpz_clear		//
// problem29.c:50:   return 0;
	mov	w0, 0	// _42,
// problem29.c:51: }
	mov	w1, w0	// <retval>, _42
	adrp	x0, :got:__stack_chk_guard	// tmp147,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp147,
	ldr	x3, [sp, 40]	// tmp149, D.6965
	ldr	x2, [x0]	// tmp150,
	subs	x3, x3, x2	// tmp149, tmp150
	mov	x2, 0	// tmp150
	beq	.L10		//,
	bl	__stack_chk_fail		//
.L10:
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
	.align	2
	.type	compare, %function
compare:
.LFB27:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
// problem29.c:55:   return mpz_cmp(*(const mpz_t *)a, *(mpz_t const *)b);
	ldr	x1, [sp, 16]	//, b
	ldr	x0, [sp, 24]	//, a
	bl	__gmpz_cmp		//
// problem29.c:56: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE27:
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
