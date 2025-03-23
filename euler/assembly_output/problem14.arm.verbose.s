	.arch armv8-a
	.file	"problem14.c"
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
// problem14.c:12:   unsigned i, max_c = 0, max_i = 0;
	str	wzr, [sp, 20]	//, max_c
// problem14.c:12:   unsigned i, max_c = 0, max_i = 0;
	str	wzr, [sp, 24]	//, max_i
// problem14.c:14:   for (i = 1; i < 1000000; i++) {
	mov	w0, 1	// tmp94,
	str	w0, [sp, 16]	// tmp94, i
// problem14.c:14:   for (i = 1; i < 1000000; i++) {
	b	.L2		//
.L4:
// problem14.c:15:     unsigned c = collatz_count(i);
	ldr	w0, [sp, 16]	//, i
	bl	collatz_count		//
	str	w0, [sp, 28]	//, c
// problem14.c:16:     if (c > max_c) {
	ldr	w1, [sp, 28]	// tmp95, c
	ldr	w0, [sp, 20]	// tmp96, max_c
	cmp	w1, w0	// tmp95, tmp96
	bls	.L3		//,
// problem14.c:17:       max_c = c;
	ldr	w0, [sp, 28]	// tmp97, c
	str	w0, [sp, 20]	// tmp97, max_c
// problem14.c:18:       max_i = i;
	ldr	w0, [sp, 16]	// tmp98, i
	str	w0, [sp, 24]	// tmp98, max_i
.L3:
// problem14.c:14:   for (i = 1; i < 1000000; i++) {
	ldr	w0, [sp, 16]	// tmp100, i
	add	w0, w0, 1	// tmp99, tmp100,
	str	w0, [sp, 16]	// tmp99, i
.L2:
// problem14.c:14:   for (i = 1; i < 1000000; i++) {
	ldr	w1, [sp, 16]	// tmp101, i
	mov	w0, 16959	// tmp102,
	movk	w0, 0xf, lsl 16	// tmp102,,
	cmp	w1, w0	// tmp101, tmp102
	bls	.L4		//,
// problem14.c:21:   printf("%u\n", max_i);
	ldr	w1, [sp, 24]	//, max_i
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	//, tmp103,
	bl	printf		//
// problem14.c:22:   return 0;
	mov	w0, 0	// _12,
// problem14.c:23: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	collatz_count, %function
collatz_count:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem14.c:27:   unsigned c = 0;
	str	wzr, [sp, 28]	//, c
// problem14.c:28:   while (n > 1) {
	b	.L7		//
.L10:
// problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	ldr	w0, [sp, 12]	// tmp97, n
	and	w0, w0, 1	// _1, tmp97,
// problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	cmp	w0, 0	// _1,
	bne	.L8		//,
// problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	ldr	w0, [sp, 12]	// tmp98, n
	lsr	w0, w0, 1	// iftmp.0_5, tmp98,
	b	.L9		//
.L8:
// problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	ldr	w1, [sp, 12]	// tmp99, n
	mov	w0, w1	// tmp100, tmp99
	lsl	w0, w0, 1	// tmp101, tmp100,
	add	w0, w0, w1	// _2, tmp100, tmp99
// problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	add	w0, w0, 1	// iftmp.0_5, _2,
.L9:
// problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	str	w0, [sp, 12]	// iftmp.0_5, n
// problem14.c:30:     c++;
	ldr	w0, [sp, 28]	// tmp103, c
	add	w0, w0, 1	// tmp102, tmp103,
	str	w0, [sp, 28]	// tmp102, c
.L7:
// problem14.c:28:   while (n > 1) {
	ldr	w0, [sp, 12]	// tmp104, n
	cmp	w0, 1	// tmp104,
	bhi	.L10		//,
// problem14.c:32:   return c+1;
	ldr	w0, [sp, 28]	// tmp105, c
	add	w0, w0, 1	// _8, tmp105,
// problem14.c:33: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	collatz_count, .-collatz_count
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
