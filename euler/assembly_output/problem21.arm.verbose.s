	.arch armv8-a
	.file	"problem21.c"
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
// problem21.c:12:   int i, d, sum = 0;
	str	wzr, [sp, 24]	//, sum
// problem21.c:14:   for (i = 2; i < 10000; i++) {
	mov	w0, 2	// tmp96,
	str	w0, [sp, 20]	// tmp96, i
// problem21.c:14:   for (i = 2; i < 10000; i++) {
	b	.L2		//
.L4:
// problem21.c:15:     d = divisors_sum(i);
	ldr	w0, [sp, 20]	//, i
	bl	divisors_sum		//
	str	w0, [sp, 28]	//, d
// problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	ldr	w1, [sp, 20]	// tmp97, i
	ldr	w0, [sp, 28]	// tmp98, d
	cmp	w1, w0	// tmp97, tmp98
	bge	.L3		//,
// problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	ldr	w0, [sp, 28]	//, d
	bl	divisors_sum		//
	mov	w1, w0	// _1,
// problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	ldr	w0, [sp, 20]	// tmp99, i
	cmp	w0, w1	// tmp99, _1
	bne	.L3		//,
// problem21.c:17:       sum += i + d;
	ldr	w1, [sp, 20]	// tmp100, i
	ldr	w0, [sp, 28]	// tmp101, d
	add	w0, w1, w0	// _2, tmp100, tmp101
// problem21.c:17:       sum += i + d;
	ldr	w1, [sp, 24]	// tmp103, sum
	add	w0, w1, w0	// tmp102, tmp103, _2
	str	w0, [sp, 24]	// tmp102, sum
.L3:
// problem21.c:14:   for (i = 2; i < 10000; i++) {
	ldr	w0, [sp, 20]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 20]	// tmp104, i
.L2:
// problem21.c:14:   for (i = 2; i < 10000; i++) {
	ldr	w1, [sp, 20]	// tmp106, i
	mov	w0, 9999	// tmp107,
	cmp	w1, w0	// tmp106, tmp107
	ble	.L4		//,
// problem21.c:20:   printf("%d\n", sum);
	ldr	w1, [sp, 24]	//, sum
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	//, tmp108,
	bl	printf		//
// problem21.c:22:   return 0;
	mov	w0, 0	// _12,
// problem21.c:23: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	divisors_sum, %function
divisors_sum:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem21.c:27:   int sum= 1;
	mov	w0, 1	// tmp99,
	str	w0, [sp, 16]	// tmp99, sum
// problem21.c:28:   int i, k = n;
	ldr	w0, [sp, 12]	// tmp100, n
	str	w0, [sp, 24]	// tmp100, k
// problem21.c:30:   for (i = 2; i <= k; i++) {
	mov	w0, 2	// tmp101,
	str	w0, [sp, 20]	// tmp101, i
// problem21.c:30:   for (i = 2; i <= k; i++) {
	b	.L7		//
.L10:
// problem21.c:31:     int p = 1;
	mov	w0, 1	// tmp102,
	str	w0, [sp, 28]	// tmp102, p
// problem21.c:32:     while (k % i == 0) {
	b	.L8		//
.L9:
// problem21.c:33:       p *= i;
	ldr	w1, [sp, 28]	// tmp104, p
	ldr	w0, [sp, 20]	// tmp105, i
	mul	w0, w1, w0	// tmp103, tmp104, tmp105
	str	w0, [sp, 28]	// tmp103, p
// problem21.c:34:       k /= i;
	ldr	w1, [sp, 24]	// tmp108, k
	ldr	w0, [sp, 20]	// tmp109, i
	sdiv	w0, w1, w0	// tmp107, tmp108, tmp109
	str	w0, [sp, 24]	// tmp107, k
.L8:
// problem21.c:32:     while (k % i == 0) {
	ldr	w0, [sp, 24]	// tmp110, k
	ldr	w1, [sp, 20]	// tmp123, i
	sdiv	w2, w0, w1	// tmp122, tmp110, tmp123
	ldr	w1, [sp, 20]	// tmp125, i
	mul	w1, w2, w1	// tmp124, tmp122, tmp125
	sub	w0, w0, w1	// _1, tmp110, tmp124
// problem21.c:32:     while (k % i == 0) {
	cmp	w0, 0	// _1,
	beq	.L9		//,
// problem21.c:36:     sum *= (p*i - 1)/(i-1);
	ldr	w1, [sp, 28]	// tmp126, p
	ldr	w0, [sp, 20]	// tmp127, i
	mul	w0, w1, w0	// _2, tmp126, tmp127
// problem21.c:36:     sum *= (p*i - 1)/(i-1);
	sub	w1, w0, #1	// _3, _2,
// problem21.c:36:     sum *= (p*i - 1)/(i-1);
	ldr	w0, [sp, 20]	// tmp128, i
	sub	w0, w0, #1	// _4, tmp128,
// problem21.c:36:     sum *= (p*i - 1)/(i-1);
	sdiv	w0, w1, w0	// _5, _3, _4
// problem21.c:36:     sum *= (p*i - 1)/(i-1);
	ldr	w1, [sp, 16]	// tmp130, sum
	mul	w0, w1, w0	// tmp129, tmp130, _5
	str	w0, [sp, 16]	// tmp129, sum
// problem21.c:30:   for (i = 2; i <= k; i++) {
	ldr	w0, [sp, 20]	// tmp132, i
	add	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 20]	// tmp131, i
.L7:
// problem21.c:30:   for (i = 2; i <= k; i++) {
	ldr	w1, [sp, 20]	// tmp133, i
	ldr	w0, [sp, 24]	// tmp134, k
	cmp	w1, w0	// tmp133, tmp134
	ble	.L10		//,
// problem21.c:38:   return sum - n;
	ldr	w1, [sp, 16]	// tmp135, sum
	ldr	w0, [sp, 12]	// tmp136, n
	sub	w0, w1, w0	// _15, tmp135, tmp136
// problem21.c:39: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	divisors_sum, .-divisors_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
