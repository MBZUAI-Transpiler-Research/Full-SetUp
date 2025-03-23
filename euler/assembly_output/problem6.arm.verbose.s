	.arch armv8-a
	.file	"problem6.c"
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
// problem6.c:10:   unsigned s1 = 0, s2 = 0, i;
	str	wzr, [sp, 20]	//, s1
// problem6.c:10:   unsigned s1 = 0, s2 = 0, i;
	str	wzr, [sp, 24]	//, s2
// problem6.c:12:   for (i = 1; i <= 100; i++) {
	mov	w0, 1	// tmp97,
	str	w0, [sp, 28]	// tmp97, i
// problem6.c:12:   for (i = 1; i <= 100; i++) {
	b	.L2		//
.L3:
// problem6.c:13:     s1 += i*i;
	ldr	w0, [sp, 28]	// tmp98, i
	mul	w0, w0, w0	// _1, tmp98, tmp98
// problem6.c:13:     s1 += i*i;
	ldr	w1, [sp, 20]	// tmp100, s1
	add	w0, w1, w0	// tmp99, tmp100, _1
	str	w0, [sp, 20]	// tmp99, s1
// problem6.c:14:     s2 += i;
	ldr	w1, [sp, 24]	// tmp102, s2
	ldr	w0, [sp, 28]	// tmp103, i
	add	w0, w1, w0	// tmp101, tmp102, tmp103
	str	w0, [sp, 24]	// tmp101, s2
// problem6.c:12:   for (i = 1; i <= 100; i++) {
	ldr	w0, [sp, 28]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 28]	// tmp104, i
.L2:
// problem6.c:12:   for (i = 1; i <= 100; i++) {
	ldr	w0, [sp, 28]	// tmp106, i
	cmp	w0, 100	// tmp106,
	bls	.L3		//,
// problem6.c:16:   printf("%u\n", s2*s2 - s1);
	ldr	w0, [sp, 24]	// tmp107, s2
	mul	w1, w0, w0	// _2, tmp107, tmp107
// problem6.c:16:   printf("%u\n", s2*s2 - s1);
	ldr	w0, [sp, 20]	// tmp108, s1
	sub	w0, w1, w0	// _3, _2, tmp108
	mov	w1, w0	//, _3
	adrp	x0, .LC0	// tmp109,
	add	x0, x0, :lo12:.LC0	//, tmp109,
	bl	printf		//
// problem6.c:17:   return 0;
	mov	w0, 0	// _12,
// problem6.c:18: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
