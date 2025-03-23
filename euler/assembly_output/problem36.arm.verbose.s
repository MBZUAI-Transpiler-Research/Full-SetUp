	.arch armv8-a
	.file	"problem36.c"
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
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem36.c:15:   int sum = 0;
	str	wzr, [sp, 28]	//, sum
// problem36.c:17:   for (i = 1; i < N; i++) {
	mov	w0, 1	// tmp96,
	str	w0, [sp, 24]	// tmp96, i
// problem36.c:17:   for (i = 1; i < N; i++) {
	b	.L2		//
.L4:
// problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	mov	w1, 10	//,
	ldr	w0, [sp, 24]	//, i
	bl	palindromic_base		//
// problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	cmp	w0, 0	// _1,
	beq	.L3		//,
// problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	mov	w1, 2	//,
	ldr	w0, [sp, 24]	//, i
	bl	palindromic_base		//
// problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	cmp	w0, 0	// _2,
	beq	.L3		//,
// problem36.c:19:       sum += i;
	ldr	w1, [sp, 28]	// tmp98, sum
	ldr	w0, [sp, 24]	// tmp99, i
	add	w0, w1, w0	// tmp97, tmp98, tmp99
	str	w0, [sp, 28]	// tmp97, sum
.L3:
// problem36.c:17:   for (i = 1; i < N; i++) {
	ldr	w0, [sp, 24]	// tmp101, i
	add	w0, w0, 1	// tmp100, tmp101,
	str	w0, [sp, 24]	// tmp100, i
.L2:
// problem36.c:17:   for (i = 1; i < N; i++) {
	ldr	w1, [sp, 24]	// tmp102, i
	mov	w0, 16959	// tmp103,
	movk	w0, 0xf, lsl 16	// tmp103,,
	cmp	w1, w0	// tmp102, tmp103
	ble	.L4		//,
// problem36.c:22:   printf("%d\n", sum);
	ldr	w1, [sp, 28]	//, sum
	adrp	x0, .LC0	// tmp104,
	add	x0, x0, :lo12:.LC0	//, tmp104,
	bl	printf		//
// problem36.c:24:   return 0;
	mov	w0, 0	// _12,
// problem36.c:25: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	palindromic_base, %function
palindromic_base:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
	str	w1, [sp, 8]	// base, base
// problem36.c:29:   int reversed = 0;
	str	wzr, [sp, 24]	//, reversed
// problem36.c:30:   const int orig = n;
	ldr	w0, [sp, 12]	// tmp97, n
	str	w0, [sp, 28]	// tmp97, orig
// problem36.c:32:   while (n) {
	b	.L7		//
.L8:
// problem36.c:33:     reversed = base*reversed + n%base;
	ldr	w1, [sp, 8]	// tmp98, base
	ldr	w0, [sp, 24]	// tmp99, reversed
	mul	w1, w1, w0	// _1, tmp98, tmp99
// problem36.c:33:     reversed = base*reversed + n%base;
	ldr	w0, [sp, 12]	// tmp100, n
	ldr	w2, [sp, 8]	// tmp113, base
	sdiv	w3, w0, w2	// tmp112, tmp100, tmp113
	ldr	w2, [sp, 8]	// tmp115, base
	mul	w2, w3, w2	// tmp114, tmp112, tmp115
	sub	w0, w0, w2	// _2, tmp100, tmp114
// problem36.c:33:     reversed = base*reversed + n%base;
	add	w0, w1, w0	// tmp116, _1, _2
	str	w0, [sp, 24]	// tmp116, reversed
// problem36.c:34:     n /= base;
	ldr	w1, [sp, 12]	// tmp119, n
	ldr	w0, [sp, 8]	// tmp120, base
	sdiv	w0, w1, w0	// tmp118, tmp119, tmp120
	str	w0, [sp, 12]	// tmp118, n
.L7:
// problem36.c:32:   while (n) {
	ldr	w0, [sp, 12]	// tmp121, n
	cmp	w0, 0	// tmp121,
	bne	.L8		//,
// problem36.c:36:   return orig == reversed;
	ldr	w1, [sp, 28]	// tmp123, orig
	ldr	w0, [sp, 24]	// tmp124, reversed
	cmp	w1, w0	// tmp123, tmp124
	cset	w0, eq	// tmp125,
	and	w0, w0, 255	// _3, tmp122
// problem36.c:37: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	palindromic_base, .-palindromic_base
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
