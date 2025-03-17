	.arch armv8-a
	.file	"problem28.c"
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
// problem28.c:12:   int sum = 1, i;
	mov	w0, 1	// tmp100,
	str	w0, [sp, 24]	// tmp100, sum
// problem28.c:13:   for (i = 3; i <= N; i += 2) {
	mov	w0, 3	// tmp101,
	str	w0, [sp, 28]	// tmp101, i
// problem28.c:13:   for (i = 3; i <= N; i += 2) {
	b	.L2		//
.L3:
// problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	ldr	w0, [sp, 28]	// tmp102, i
	mul	w0, w0, w0	// _1, tmp102, tmp102
	lsl	w1, w0, 1	// _2, _1,
// problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	ldr	w0, [sp, 28]	// tmp103, i
	mov	w2, w0	// tmp104, tmp103
	lsl	w0, w0, 2	// tmp105, tmp103,
	sub	w0, w2, w0	// _3, tmp104, tmp105
// problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	add	w0, w1, w0	// _4, _2, _3
// problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	add	w0, w0, 3	// _5, _4,
// problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	lsl	w0, w0, 1	// _6, _5,
// problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	ldr	w1, [sp, 24]	// tmp107, sum
	add	w0, w1, w0	// tmp106, tmp107, _6
	str	w0, [sp, 24]	// tmp106, sum
// problem28.c:13:   for (i = 3; i <= N; i += 2) {
	ldr	w0, [sp, 28]	// tmp109, i
	add	w0, w0, 2	// tmp108, tmp109,
	str	w0, [sp, 28]	// tmp108, i
.L2:
// problem28.c:13:   for (i = 3; i <= N; i += 2) {
	ldr	w0, [sp, 28]	// tmp110, i
	cmp	w0, 1001	// tmp110,
	ble	.L3		//,
// problem28.c:16:   printf("%d\n", sum);
	ldr	w1, [sp, 24]	//, sum
	adrp	x0, .LC0	// tmp111,
	add	x0, x0, :lo12:.LC0	//, tmp111,
	bl	printf		//
// problem28.c:17:   return 0;
	mov	w0, 0	// _13,
// problem28.c:18: }
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
