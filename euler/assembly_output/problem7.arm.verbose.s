	.arch armv8-a
	.file	"problem7.c"
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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// problem7.c:13:   unsigned count = 0;
	str	wzr, [sp, 24]	//, count
// problem7.c:14:   size_t n = 1000000;
	mov	x0, 16960	// tmp97,
	movk	x0, 0xf, lsl 16	// tmp97,,
	str	x0, [sp, 48]	// tmp97, n
// problem7.c:15:   const unsigned target = 10001;
	mov	w0, 10001	// tmp98,
	str	w0, [sp, 28]	// tmp98, target
// problem7.c:17:   sieve = calloc(n, sizeof *sieve);
	mov	x1, 1	//,
	ldr	x0, [sp, 48]	//, n
	bl	calloc		//
	str	x0, [sp, 56]	// tmp99, sieve
// problem7.c:18:   for (i = 2; i < n; i++) {
	mov	x0, 2	// tmp100,
	str	x0, [sp, 32]	// tmp100, i
// problem7.c:18:   for (i = 2; i < n; i++) {
	b	.L2		//
.L8:
// problem7.c:19:     if (!sieve[i]) {
	ldr	x1, [sp, 56]	// tmp101, sieve
	ldr	x0, [sp, 32]	// tmp102, i
	add	x0, x1, x0	// _1, tmp101, tmp102
	ldrb	w0, [x0]	// _2, *_1
// problem7.c:19:     if (!sieve[i]) {
	cmp	w0, 0	// _2,
	bne	.L3		//,
// problem7.c:22:       count++;
	ldr	w0, [sp, 24]	// tmp104, count
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 24]	// tmp103, count
// problem7.c:23:       if (count == target) {
	ldr	w1, [sp, 24]	// tmp105, count
	ldr	w0, [sp, 28]	// tmp106, target
	cmp	w1, w0	// tmp105, tmp106
	bne	.L4		//,
// problem7.c:24:         printf("%lu\n", i);
	ldr	x1, [sp, 32]	//, i
	adrp	x0, .LC0	// tmp107,
	add	x0, x0, :lo12:.LC0	//, tmp107,
	bl	printf		//
// problem7.c:25:         break;
	b	.L5		//
.L4:
// problem7.c:27:       for (j = i*2; j < n; j += i) {
	ldr	x0, [sp, 32]	// tmp109, i
	lsl	x0, x0, 1	// tmp108, tmp109,
	str	x0, [sp, 40]	// tmp108, j
// problem7.c:27:       for (j = i*2; j < n; j += i) {
	b	.L6		//
.L7:
// problem7.c:28:         sieve[j] = 1;
	ldr	x1, [sp, 56]	// tmp110, sieve
	ldr	x0, [sp, 40]	// tmp111, j
	add	x0, x1, x0	// _3, tmp110, tmp111
// problem7.c:28:         sieve[j] = 1;
	mov	w1, 1	// tmp112,
	strb	w1, [x0]	// tmp112, *_3
// problem7.c:27:       for (j = i*2; j < n; j += i) {
	ldr	x1, [sp, 40]	// tmp114, j
	ldr	x0, [sp, 32]	// tmp115, i
	add	x0, x1, x0	// tmp113, tmp114, tmp115
	str	x0, [sp, 40]	// tmp113, j
.L6:
// problem7.c:27:       for (j = i*2; j < n; j += i) {
	ldr	x1, [sp, 40]	// tmp116, j
	ldr	x0, [sp, 48]	// tmp117, n
	cmp	x1, x0	// tmp116, tmp117
	bcc	.L7		//,
.L3:
// problem7.c:18:   for (i = 2; i < n; i++) {
	ldr	x0, [sp, 32]	// tmp119, i
	add	x0, x0, 1	// tmp118, tmp119,
	str	x0, [sp, 32]	// tmp118, i
.L2:
// problem7.c:18:   for (i = 2; i < n; i++) {
	ldr	x1, [sp, 32]	// tmp120, i
	ldr	x0, [sp, 48]	// tmp121, n
	cmp	x1, x0	// tmp120, tmp121
	bcc	.L8		//,
.L5:
// problem7.c:32:   free(sieve);
	ldr	x0, [sp, 56]	//, sieve
	bl	free		//
// problem7.c:34:   return 0;
	mov	w0, 0	// _26,
// problem7.c:35: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
