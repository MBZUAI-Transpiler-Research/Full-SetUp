	.arch armv8-a
	.file	"problem5.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
// problem5.c:13:   unsigned long ans = 1;
	mov	x0, 1	// tmp94,
	str	x0, [sp, 16]	// tmp94, ans
// problem5.c:16:   for (i = 1; i <= 20; i++) {
	mov	x0, 1	// tmp95,
	str	x0, [sp, 24]	// tmp95, i
// problem5.c:16:   for (i = 1; i <= 20; i++) {
	b	.L2		//
.L3:
// problem5.c:17:     ans = lcm(ans, i);
	ldr	x1, [sp, 24]	//, i
	ldr	x0, [sp, 16]	//, ans
	bl	lcm		//
	str	x0, [sp, 16]	//, ans
// problem5.c:16:   for (i = 1; i <= 20; i++) {
	ldr	x0, [sp, 24]	// tmp97, i
	add	x0, x0, 1	// tmp96, tmp97,
	str	x0, [sp, 24]	// tmp96, i
.L2:
// problem5.c:16:   for (i = 1; i <= 20; i++) {
	ldr	x0, [sp, 24]	// tmp98, i
	cmp	x0, 20	// tmp98,
	bls	.L3		//,
// problem5.c:19:   printf("%lu\n", ans);
	ldr	x1, [sp, 16]	//, ans
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	//, tmp99,
	bl	printf		//
// problem5.c:20:   return 0;
	mov	w0, 0	// _8,
// problem5.c:21: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	gcd, %function
gcd:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// a, a
	str	x1, [sp]	// b, b
// problem5.c:27:   if (a > b) {
	ldr	x1, [sp, 8]	// tmp94, a
	ldr	x0, [sp]	// tmp95, b
	cmp	x1, x0	// tmp94, tmp95
	bls	.L7		//,
// problem5.c:28:     unsigned long t = a;
	ldr	x0, [sp, 8]	// tmp96, a
	str	x0, [sp, 16]	// tmp96, t
// problem5.c:29:     a = b;
	ldr	x0, [sp]	// tmp97, b
	str	x0, [sp, 8]	// tmp97, a
// problem5.c:30:     b = t;
	ldr	x0, [sp, 16]	// tmp98, t
	str	x0, [sp]	// tmp98, b
// problem5.c:33:   while (r = a%b) {
	b	.L7		//
.L8:
// problem5.c:34:     a = b;
	ldr	x0, [sp]	// tmp99, b
	str	x0, [sp, 8]	// tmp99, a
// problem5.c:35:     b = r;
	ldr	x0, [sp, 24]	// tmp100, r
	str	x0, [sp]	// tmp100, b
.L7:
// problem5.c:33:   while (r = a%b) {
	ldr	x0, [sp, 8]	// tmp102, a
	ldr	x1, [sp]	// tmp106, b
	udiv	x2, x0, x1	// tmp105, tmp102, tmp106
	ldr	x1, [sp]	// tmp108, b
	mul	x1, x2, x1	// tmp107, tmp105, tmp108
	sub	x0, x0, x1	// tmp109, tmp102, tmp107
	str	x0, [sp, 24]	// tmp109, r
// problem5.c:33:   while (r = a%b) {
	ldr	x0, [sp, 24]	// tmp110, r
	cmp	x0, 0	// tmp110,
	bne	.L8		//,
// problem5.c:37:   return b;
	ldr	x0, [sp]	// _11, b
// problem5.c:38: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.align	2
	.type	lcm, %function
lcm:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
// problem5.c:42:   unsigned long long p = (unsigned long long)a * b;
	ldr	x1, [sp, 24]	// tmp96, a
	ldr	x0, [sp, 16]	// tmp97, b
	mul	x0, x1, x0	// tmp95, tmp96, tmp97
	str	x0, [sp, 40]	// tmp95, p
// problem5.c:43:   return p/gcd(a, b);
	ldr	x1, [sp, 16]	//, b
	ldr	x0, [sp, 24]	//, a
	bl	gcd		//
	mov	x1, x0	// _1,
// problem5.c:43:   return p/gcd(a, b);
	ldr	x0, [sp, 40]	// tmp98, p
	udiv	x0, x0, x1	// _7, tmp98, _1
// problem5.c:44: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	lcm, .-lcm
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
