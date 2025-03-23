	.arch armv8-a
	.file	"problem47.c"
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
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem47.c:16:   unsigned i, j = 0;
	str	wzr, [sp, 28]	//, j
// problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	mov	w0, 2	// tmp97,
	str	w0, [sp, 24]	// tmp97, i
// problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	b	.L2		//
.L7:
// problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	str	wzr, [sp, 28]	//, j
// problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	b	.L3		//
.L5:
// problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	ldr	w0, [sp, 28]	// tmp99, j
	add	w0, w0, 1	// tmp98, tmp99,
	str	w0, [sp, 28]	// tmp98, j
.L3:
// problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	ldr	w0, [sp, 28]	// tmp100, j
	cmp	w0, 3	// tmp100,
	bhi	.L4		//,
// problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	ldr	w1, [sp, 24]	// tmp101, i
	ldr	w0, [sp, 28]	// tmp102, j
	add	w0, w1, w0	// _1, tmp101, tmp102
	bl	distinct_factor_count		//
// problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	cmp	w0, 4	// _2,
	beq	.L5		//,
.L4:
// problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	ldr	w0, [sp, 24]	// tmp104, i
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 24]	// tmp103, i
.L2:
// problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	ldr	w1, [sp, 24]	// tmp105, i
	mov	w0, 16959	// tmp106,
	movk	w0, 0xf, lsl 16	// tmp106,,
	cmp	w1, w0	// tmp105, tmp106
	bhi	.L6		//,
// problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	ldr	w0, [sp, 28]	// tmp107, j
	cmp	w0, 3	// tmp107,
	bls	.L7		//,
.L6:
// problem47.c:21:   printf("%u\n", i-1);
	ldr	w0, [sp, 24]	// tmp108, i
	sub	w0, w0, #1	// _3, tmp108,
	mov	w1, w0	//, _3
	adrp	x0, .LC0	// tmp109,
	add	x0, x0, :lo12:.LC0	//, tmp109,
	bl	printf		//
// problem47.c:23:   return 0;
	mov	w0, 0	// _18,
// problem47.c:24: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	distinct_factor_count, %function
distinct_factor_count:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem47.c:28:   unsigned count = 0;
	str	wzr, [sp, 24]	//, count
// problem47.c:30:   for (i = 2; i <= n; i++) {
	mov	w0, 2	// tmp96,
	str	w0, [sp, 28]	// tmp96, i
// problem47.c:30:   for (i = 2; i <= n; i++) {
	b	.L10		//
.L14:
// problem47.c:31:     if (n % i == 0) {
	ldr	w0, [sp, 12]	// tmp97, n
	ldr	w1, [sp, 28]	// tmp109, i
	udiv	w2, w0, w1	// tmp108, tmp97, tmp109
	ldr	w1, [sp, 28]	// tmp111, i
	mul	w1, w2, w1	// tmp110, tmp108, tmp111
	sub	w0, w0, w1	// _1, tmp97, tmp110
// problem47.c:31:     if (n % i == 0) {
	cmp	w0, 0	// _1,
	bne	.L11		//,
// problem47.c:32:       count++;
	ldr	w0, [sp, 24]	// tmp113, count
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 24]	// tmp112, count
// problem47.c:33:       n /= i;
	ldr	w1, [sp, 12]	// tmp116, n
	ldr	w0, [sp, 28]	// tmp117, i
	udiv	w0, w1, w0	// tmp115, tmp116, tmp117
	str	w0, [sp, 12]	// tmp115, n
// problem47.c:34:       while (n % i == 0) {
	b	.L12		//
.L13:
// problem47.c:35:         n /= i;
	ldr	w1, [sp, 12]	// tmp120, n
	ldr	w0, [sp, 28]	// tmp121, i
	udiv	w0, w1, w0	// tmp119, tmp120, tmp121
	str	w0, [sp, 12]	// tmp119, n
.L12:
// problem47.c:34:       while (n % i == 0) {
	ldr	w0, [sp, 12]	// tmp122, n
	ldr	w1, [sp, 28]	// tmp134, i
	udiv	w2, w0, w1	// tmp133, tmp122, tmp134
	ldr	w1, [sp, 28]	// tmp136, i
	mul	w1, w2, w1	// tmp135, tmp133, tmp136
	sub	w0, w0, w1	// _2, tmp122, tmp135
// problem47.c:34:       while (n % i == 0) {
	cmp	w0, 0	// _2,
	beq	.L13		//,
.L11:
// problem47.c:30:   for (i = 2; i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp138, i
	add	w0, w0, 1	// tmp137, tmp138,
	str	w0, [sp, 28]	// tmp137, i
.L10:
// problem47.c:30:   for (i = 2; i <= n; i++) {
	ldr	w1, [sp, 28]	// tmp139, i
	ldr	w0, [sp, 12]	// tmp140, n
	cmp	w1, w0	// tmp139, tmp140
	bls	.L14		//,
// problem47.c:39:   return count;
	ldr	w0, [sp, 24]	// _12, count
// problem47.c:40: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	distinct_factor_count, .-distinct_factor_count
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
