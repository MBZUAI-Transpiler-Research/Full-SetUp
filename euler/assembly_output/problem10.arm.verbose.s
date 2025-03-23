	.arch armv8-a
	.file	"problem10.c"
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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
// problem10.c:13:   size_t n = 2000000;
	mov	x0, 33920	// tmp102,
	movk	x0, 0x1e, lsl 16	// tmp102,,
	str	x0, [sp, 32]	// tmp102, n
// problem10.c:14:   unsigned long long sum = 0ULL;
	str	xzr, [sp, 24]	//, sum
// problem10.c:16:   sieve = calloc(n, sizeof *sieve);
	mov	x1, 1	//,
	ldr	x0, [sp, 32]	//, n
	bl	calloc		//
	str	x0, [sp, 40]	// tmp103, sieve
// problem10.c:17:   for (i = 2; i < n; i++) {
	mov	w0, 2	// tmp104,
	str	w0, [sp, 16]	// tmp104, i
// problem10.c:17:   for (i = 2; i < n; i++) {
	b	.L2		//
.L6:
// problem10.c:18:     if (!sieve[i]) {
	ldr	w0, [sp, 16]	// _1, i
	ldr	x1, [sp, 40]	// tmp105, sieve
	add	x0, x1, x0	// _2, tmp105, _1
	ldrb	w0, [x0]	// _3, *_2
// problem10.c:18:     if (!sieve[i]) {
	cmp	w0, 0	// _3,
	bne	.L3		//,
// problem10.c:19:       sum += i;
	ldr	w0, [sp, 16]	// _4, i
	ldr	x1, [sp, 24]	// tmp107, sum
	add	x0, x1, x0	// tmp106, tmp107, _4
	str	x0, [sp, 24]	// tmp106, sum
// problem10.c:20:       for (j = i*2; j < n; j += i) {
	ldr	w0, [sp, 16]	// tmp109, i
	lsl	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 20]	// tmp108, j
// problem10.c:20:       for (j = i*2; j < n; j += i) {
	b	.L4		//
.L5:
// problem10.c:21:         sieve[j] = 1;
	ldr	w0, [sp, 20]	// _5, j
	ldr	x1, [sp, 40]	// tmp110, sieve
	add	x0, x1, x0	// _6, tmp110, _5
// problem10.c:21:         sieve[j] = 1;
	mov	w1, 1	// tmp111,
	strb	w1, [x0]	// tmp111, *_6
// problem10.c:20:       for (j = i*2; j < n; j += i) {
	ldr	w1, [sp, 20]	// tmp113, j
	ldr	w0, [sp, 16]	// tmp114, i
	add	w0, w1, w0	// tmp112, tmp113, tmp114
	str	w0, [sp, 20]	// tmp112, j
.L4:
// problem10.c:20:       for (j = i*2; j < n; j += i) {
	ldr	w0, [sp, 20]	// _7, j
	ldr	x1, [sp, 32]	// tmp115, n
	cmp	x1, x0	// tmp115, _7
	bhi	.L5		//,
.L3:
// problem10.c:17:   for (i = 2; i < n; i++) {
	ldr	w0, [sp, 16]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 16]	// tmp116, i
.L2:
// problem10.c:17:   for (i = 2; i < n; i++) {
	ldr	w0, [sp, 16]	// _8, i
	ldr	x1, [sp, 32]	// tmp118, n
	cmp	x1, x0	// tmp118, _8
	bhi	.L6		//,
// problem10.c:25:   free(sieve);
	ldr	x0, [sp, 40]	//, sieve
	bl	free		//
// problem10.c:27:   printf("%llu\n", sum);
	ldr	x1, [sp, 24]	//, sum
	adrp	x0, .LC0	// tmp119,
	add	x0, x0, :lo12:.LC0	//, tmp119,
	bl	printf		//
// problem10.c:29:   return 0;
	mov	w0, 0	// _24,
// problem10.c:30: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
