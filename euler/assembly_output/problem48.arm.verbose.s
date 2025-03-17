	.arch armv8-a
	.file	"problem48.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
// problem48.c:13:   unsigned long long rem = 0;
	str	xzr, [sp, 32]	//, rem
// problem48.c:15:   for (i = 1; i < N; i++) {
	mov	w0, 1	// tmp97,
	str	w0, [sp, 24]	// tmp97, i
// problem48.c:15:   for (i = 1; i < N; i++) {
	b	.L2		//
.L5:
// problem48.c:16:     unsigned long long r = 1;
	mov	x0, 1	// tmp98,
	str	x0, [sp, 40]	// tmp98, r
// problem48.c:18:     for (j = 0; j < i; j++) {
	str	wzr, [sp, 28]	//, j
// problem48.c:18:     for (j = 0; j < i; j++) {
	b	.L3		//
.L4:
// problem48.c:19:       r = (r * i) % Q;
	ldr	w1, [sp, 24]	// _1, i
	ldr	x0, [sp, 40]	// tmp99, r
	mul	x0, x1, x0	// _2, _1, tmp99
// problem48.c:19:       r = (r * i) % Q;
	mov	x1, 54719	// tmp101,
	movk	x1, 0xbded, lsl 16	// tmp101,,
	movk	x1, 0xfece, lsl 32	// tmp101,,
	movk	x1, 0xdbe6, lsl 48	// tmp101,,
	umulh	x1, x0, x1	// tmp100, _2, tmp101
	lsr	x2, x1, 33	// tmp102, tmp100,
	mov	x1, 58368	// tmp104,
	movk	x1, 0x540b, lsl 16	// tmp104,,
	movk	x1, 0x2, lsl 32	// tmp104,,
	mul	x1, x2, x1	// tmp103, tmp102, tmp104
	sub	x0, x0, x1	// tmp105, _2, tmp103
	str	x0, [sp, 40]	// tmp105, r
// problem48.c:18:     for (j = 0; j < i; j++) {
	ldr	w0, [sp, 28]	// tmp107, j
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 28]	// tmp106, j
.L3:
// problem48.c:18:     for (j = 0; j < i; j++) {
	ldr	w1, [sp, 28]	// tmp108, j
	ldr	w0, [sp, 24]	// tmp109, i
	cmp	w1, w0	// tmp108, tmp109
	bcc	.L4		//,
// problem48.c:21:     rem = (rem + r) % Q;
	ldr	x1, [sp, 32]	// tmp110, rem
	ldr	x0, [sp, 40]	// tmp111, r
	add	x0, x1, x0	// _3, tmp110, tmp111
// problem48.c:21:     rem = (rem + r) % Q;
	mov	x1, 54719	// tmp113,
	movk	x1, 0xbded, lsl 16	// tmp113,,
	movk	x1, 0xfece, lsl 32	// tmp113,,
	movk	x1, 0xdbe6, lsl 48	// tmp113,,
	umulh	x1, x0, x1	// tmp112, _3, tmp113
	lsr	x2, x1, 33	// tmp114, tmp112,
	mov	x1, 58368	// tmp116,
	movk	x1, 0x540b, lsl 16	// tmp116,,
	movk	x1, 0x2, lsl 32	// tmp116,,
	mul	x1, x2, x1	// tmp115, tmp114, tmp116
	sub	x0, x0, x1	// tmp117, _3, tmp115
	str	x0, [sp, 32]	// tmp117, rem
// problem48.c:15:   for (i = 1; i < N; i++) {
	ldr	w0, [sp, 24]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 24]	// tmp118, i
.L2:
// problem48.c:15:   for (i = 1; i < N; i++) {
	ldr	w0, [sp, 24]	// tmp120, i
	cmp	w0, 999	// tmp120,
	bls	.L5		//,
// problem48.c:23:   printf("%llu\n", rem);
	ldr	x1, [sp, 32]	//, rem
	adrp	x0, .LC0	// tmp121,
	add	x0, x0, :lo12:.LC0	//, tmp121,
	bl	printf		//
// problem48.c:25:   return 0;
	mov	w0, 0	// _12,
// problem48.c:26: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
