	.arch armv8-a
	.file	"problem12.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%lu\n"
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
// problem12.c:12:   unsigned long i = 1, n = 1;
	mov	x0, 1	// tmp96,
	str	x0, [sp, 16]	// tmp96, i
// problem12.c:12:   unsigned long i = 1, n = 1;
	mov	x0, 1	// tmp97,
	str	x0, [sp, 24]	// tmp97, n
// problem12.c:14:   while (divisor_count(n) < 500) {
	b	.L2		//
.L3:
// problem12.c:15:     n += ++i;
	ldr	x0, [sp, 16]	// tmp99, i
	add	x0, x0, 1	// tmp98, tmp99,
	str	x0, [sp, 16]	// tmp98, i
	ldr	x0, [sp, 16]	// i.0_12, i
// problem12.c:15:     n += ++i;
	ldr	x1, [sp, 24]	// tmp101, n
	add	x0, x1, x0	// tmp100, tmp101, i.0_12
	str	x0, [sp, 24]	// tmp100, n
.L2:
// problem12.c:14:   while (divisor_count(n) < 500) {
	ldr	x0, [sp, 24]	//, n
	bl	divisor_count		//
// problem12.c:14:   while (divisor_count(n) < 500) {
	cmp	w0, 499	// _1,
	bls	.L3		//,
// problem12.c:17:   printf("%lu\n", n);
	ldr	x1, [sp, 24]	//, n
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	//, tmp102,
	bl	printf		//
// problem12.c:18:   return 0;
	mov	w0, 0	// _10,
// problem12.c:19: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	divisor_count, %function
divisor_count:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// n, n
// problem12.c:23:   unsigned ret = 1;
	mov	w0, 1	// tmp96,
	str	w0, [sp, 16]	// tmp96, ret
// problem12.c:26:   for (i = 2; i <= n; i++) {
	mov	x0, 2	// tmp97,
	str	x0, [sp, 24]	// tmp97, i
// problem12.c:26:   for (i = 2; i <= n; i++) {
	b	.L6		//
.L9:
// problem12.c:27:     unsigned c = 0;
	str	wzr, [sp, 20]	//, c
// problem12.c:28:     while (n % i == 0) {
	b	.L7		//
.L8:
// problem12.c:29:       c++;
	ldr	w0, [sp, 20]	// tmp99, c
	add	w0, w0, 1	// tmp98, tmp99,
	str	w0, [sp, 20]	// tmp98, c
// problem12.c:30:       n /= i;
	ldr	x1, [sp, 8]	// tmp102, n
	ldr	x0, [sp, 24]	// tmp103, i
	udiv	x0, x1, x0	// tmp101, tmp102, tmp103
	str	x0, [sp, 8]	// tmp101, n
.L7:
// problem12.c:28:     while (n % i == 0) {
	ldr	x0, [sp, 8]	// tmp104, n
	ldr	x1, [sp, 24]	// tmp108, i
	udiv	x2, x0, x1	// tmp107, tmp104, tmp108
	ldr	x1, [sp, 24]	// tmp110, i
	mul	x1, x2, x1	// tmp109, tmp107, tmp110
	sub	x0, x0, x1	// _1, tmp104, tmp109
// problem12.c:28:     while (n % i == 0) {
	cmp	x0, 0	// _1,
	beq	.L8		//,
// problem12.c:32:     ret *= c+1;
	ldr	w0, [sp, 20]	// tmp111, c
	add	w0, w0, 1	// _2, tmp111,
// problem12.c:32:     ret *= c+1;
	ldr	w1, [sp, 16]	// tmp113, ret
	mul	w0, w1, w0	// tmp112, tmp113, _2
	str	w0, [sp, 16]	// tmp112, ret
// problem12.c:26:   for (i = 2; i <= n; i++) {
	ldr	x0, [sp, 24]	// tmp115, i
	add	x0, x0, 1	// tmp114, tmp115,
	str	x0, [sp, 24]	// tmp114, i
.L6:
// problem12.c:26:   for (i = 2; i <= n; i++) {
	ldr	x1, [sp, 24]	// tmp116, i
	ldr	x0, [sp, 8]	// tmp117, n
	cmp	x1, x0	// tmp116, tmp117
	bls	.L9		//,
// problem12.c:34:   return ret;
	ldr	w0, [sp, 16]	// _11, ret
// problem12.c:35: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	divisor_count, .-divisor_count
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
