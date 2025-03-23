	.arch armv8-a
	.file	"problem2.c"
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
// problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	mov	w0, 1	// tmp98,
	str	w0, [sp, 16]	// tmp98, a1
// problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	mov	w0, 1	// tmp99,
	str	w0, [sp, 20]	// tmp99, a2
// problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	mov	w0, 2	// tmp100,
	str	w0, [sp, 24]	// tmp100, a3
// problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	str	wzr, [sp, 28]	//, sum
// problem2.c:12:   while (a3 < 4000000) {
	b	.L2		//
.L3:
// problem2.c:13:     a3 = a1 + a2;
	ldr	w1, [sp, 16]	// tmp102, a1
	ldr	w0, [sp, 20]	// tmp103, a2
	add	w0, w1, w0	// tmp101, tmp102, tmp103
	str	w0, [sp, 24]	// tmp101, a3
// problem2.c:14:     sum += a3 * !(a3%2);
	ldr	w0, [sp, 24]	// tmp104, a3
	and	w0, w0, 1	// _1, tmp104,
// problem2.c:14:     sum += a3 * !(a3%2);
	cmp	w0, 0	// _1,
	cset	w0, eq	// tmp106,
	and	w0, w0, 255	// _2, tmp105
	mov	w1, w0	// _3, _2
// problem2.c:14:     sum += a3 * !(a3%2);
	ldr	w0, [sp, 24]	// tmp107, a3
	mul	w0, w1, w0	// _4, _3, tmp107
// problem2.c:14:     sum += a3 * !(a3%2);
	ldr	w1, [sp, 28]	// tmp109, sum
	add	w0, w1, w0	// tmp108, tmp109, _4
	str	w0, [sp, 28]	// tmp108, sum
// problem2.c:15:     a1 = a2;
	ldr	w0, [sp, 20]	// tmp110, a2
	str	w0, [sp, 16]	// tmp110, a1
// problem2.c:16:     a2 = a3;
	ldr	w0, [sp, 24]	// tmp111, a3
	str	w0, [sp, 20]	// tmp111, a2
.L2:
// problem2.c:12:   while (a3 < 4000000) {
	ldr	w1, [sp, 24]	// tmp112, a3
	mov	w0, 2303	// tmp113,
	movk	w0, 0x3d, lsl 16	// tmp113,,
	cmp	w1, w0	// tmp112, tmp113
	bls	.L3		//,
// problem2.c:19:   printf("%u\n", sum);
	ldr	w1, [sp, 28]	//, sum
	adrp	x0, .LC0	// tmp114,
	add	x0, x0, :lo12:.LC0	//, tmp114,
	bl	printf		//
// problem2.c:21:   return 0;
	mov	w0, 0	// _15,
// problem2.c:22: }
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
