	.arch armv8-a
	.file	"problem3.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%llu\n"
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
// problem3.c:10:   unsigned long long n = 600851475143ULL;
	mov	x0, 60103	// tmp95,
	movk	x0, 0xe589, lsl 16	// tmp95,,
	movk	x0, 0x8b, lsl 32	// tmp95,,
	str	x0, [sp, 16]	// tmp95, n
// problem3.c:13:   for (i = 2ULL; i < n; i++) {
	mov	x0, 2	// tmp96,
	str	x0, [sp, 24]	// tmp96, i
// problem3.c:13:   for (i = 2ULL; i < n; i++) {
	b	.L2		//
.L4:
// problem3.c:15:       n /= i;
	ldr	x1, [sp, 16]	// tmp99, n
	ldr	x0, [sp, 24]	// tmp100, i
	udiv	x0, x1, x0	// tmp98, tmp99, tmp100
	str	x0, [sp, 16]	// tmp98, n
.L3:
// problem3.c:14:     while (n % i == 0) {
	ldr	x0, [sp, 16]	// tmp101, n
	ldr	x1, [sp, 24]	// tmp105, i
	udiv	x2, x0, x1	// tmp104, tmp101, tmp105
	ldr	x1, [sp, 24]	// tmp107, i
	mul	x1, x2, x1	// tmp106, tmp104, tmp107
	sub	x0, x0, x1	// _1, tmp101, tmp106
// problem3.c:14:     while (n % i == 0) {
	cmp	x0, 0	// _1,
	beq	.L4		//,
// problem3.c:13:   for (i = 2ULL; i < n; i++) {
	ldr	x0, [sp, 24]	// tmp109, i
	add	x0, x0, 1	// tmp108, tmp109,
	str	x0, [sp, 24]	// tmp108, i
.L2:
// problem3.c:13:   for (i = 2ULL; i < n; i++) {
	ldr	x1, [sp, 24]	// tmp110, i
	ldr	x0, [sp, 16]	// tmp111, n
	cmp	x1, x0	// tmp110, tmp111
	bcc	.L3		//,
// problem3.c:18:   printf("%llu\n", n);
	ldr	x1, [sp, 16]	//, n
	adrp	x0, .LC0	// tmp112,
	add	x0, x0, :lo12:.LC0	//, tmp112,
	bl	printf		//
// problem3.c:20:   return 0;
	mov	w0, 0	// _9,
// problem3.c:21: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
