	.arch armv8-a
	.file	"problem32.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d%d%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	str	d8, [sp, 24]	//,
	.cfi_offset 19, -64
	.cfi_offset 72, -56
// problem32.c:16: {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x1, [x0]	// tmp159,
	str	x1, [sp, 72]	// tmp159, D.6029
	mov	x1, 0	// tmp159
// problem32.c:18:   int sum = 0;
	str	wzr, [sp, 44]	//, sum
// problem32.c:21:   for (product = 1111; product < 100000; product++) {
	mov	w0, 1111	// tmp112,
	str	w0, [sp, 36]	// tmp112, product
// problem32.c:21:   for (product = 1111; product < 100000; product++) {
	b	.L2		//
.L9:
// problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	mov	w0, 2	// tmp113,
	str	w0, [sp, 40]	// tmp113, multiplicand
// problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	b	.L3		//
.L8:
// problem32.c:23:       remaindar = product % multiplicand;
	ldr	w0, [sp, 36]	// tmp115, product
	ldr	w1, [sp, 40]	// tmp129, multiplicand
	sdiv	w2, w0, w1	// tmp128, tmp115, tmp129
	ldr	w1, [sp, 40]	// tmp131, multiplicand
	mul	w1, w2, w1	// tmp130, tmp128, tmp131
	sub	w0, w0, w1	// tmp132, tmp115, tmp130
	str	w0, [sp, 48]	// tmp132, remaindar
// problem32.c:24:       if (remaindar != 0) {
	ldr	w0, [sp, 48]	// tmp133, remaindar
	cmp	w0, 0	// tmp133,
	bne	.L12		//,
// problem32.c:27:       multiplier = product / multiplicand;
	ldr	w1, [sp, 36]	// tmp136, product
	ldr	w0, [sp, 40]	// tmp137, multiplicand
	sdiv	w0, w1, w0	// tmp135, tmp136, tmp137
	str	w0, [sp, 52]	// tmp135, multiplier
// problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	ldr	w0, [sp, 40]	// tmp138, multiplicand
	scvtf	d0, w0	// _1, tmp138
	bl	log10		//
	bl	floor		//
	fcvtzs	d8, d0	// _4, _3
// problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	ldr	w0, [sp, 52]	// tmp139, multiplier
	scvtf	d0, w0	// _5, tmp139
	bl	log10		//
	bl	floor		//
	fcvtzs	d0, d0	// _8, _7
// problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	add	d0, d8, d0	// _9, _4, _8
	fmov	x19, d0	// _9, _9
// problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	ldr	w0, [sp, 36]	// tmp140, product
	scvtf	d0, w0	// _10, tmp140
	bl	log10		//
	bl	floor		//
	fcvtzs	d0, d0	// _13, _12
// problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	fmov	x0, d0	// _13, _13
	add	x0, x19, x0	// _14, _9, _13
// problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	cmp	x0, 6	// _14,
	bne	.L13		//,
// problem32.c:32:       snprintf(buf, sizeof buf, "%d%d%d", multiplicand, multiplier, product);
	add	x6, sp, 56	// tmp141,,
	ldr	w5, [sp, 36]	//, product
	ldr	w4, [sp, 52]	//, multiplier
	ldr	w3, [sp, 40]	//, multiplicand
	adrp	x0, .LC0	// tmp142,
	add	x2, x0, :lo12:.LC0	//, tmp142,
	mov	x1, 10	//,
	mov	x0, x6	//, tmp141
	bl	snprintf		//
// problem32.c:33:       if (is_pandigital(buf)) {
	add	x0, sp, 56	// tmp143,,
	bl	is_pandigital		//
// problem32.c:33:       if (is_pandigital(buf)) {
	cmp	w0, 0	// _15,
	beq	.L5		//,
// problem32.c:34:         sum += product;
	ldr	w1, [sp, 44]	// tmp145, sum
	ldr	w0, [sp, 36]	// tmp146, product
	add	w0, w1, w0	// tmp144, tmp145, tmp146
	str	w0, [sp, 44]	// tmp144, sum
// problem32.c:35:         break;
	b	.L7		//
.L12:
// problem32.c:25:         continue;
	nop	
	b	.L5		//
.L13:
// problem32.c:29:         continue;
	nop	
.L5:
// problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	ldr	w0, [sp, 40]	// tmp148, multiplicand
	add	w0, w0, 1	// tmp147, tmp148,
	str	w0, [sp, 40]	// tmp147, multiplicand
.L3:
// problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	ldr	w0, [sp, 40]	// tmp149, multiplicand
	mul	w0, w0, w0	// _16, tmp149, tmp149
// problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	ldr	w1, [sp, 36]	// tmp150, product
	cmp	w1, w0	// tmp150, _16
	bgt	.L8		//,
.L7:
// problem32.c:21:   for (product = 1111; product < 100000; product++) {
	ldr	w0, [sp, 36]	// tmp152, product
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 36]	// tmp151, product
.L2:
// problem32.c:21:   for (product = 1111; product < 100000; product++) {
	ldr	w1, [sp, 36]	// tmp153, product
	mov	w0, 34463	// tmp154,
	movk	w0, 0x1, lsl 16	// tmp154,,
	cmp	w1, w0	// tmp153, tmp154
	ble	.L9		//,
// problem32.c:39:   printf("%d\n", sum);
	ldr	w1, [sp, 44]	//, sum
	adrp	x0, .LC1	// tmp155,
	add	x0, x0, :lo12:.LC1	//, tmp155,
	bl	printf		//
// problem32.c:41:   return 0;
	mov	w0, 0	// _29,
// problem32.c:42: }
	mov	w1, w0	// <retval>, _29
	adrp	x0, :got:__stack_chk_guard	// tmp158,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp157, tmp158,
	ldr	x3, [sp, 72]	// tmp160, D.6029
	ldr	x2, [x0]	// tmp161,
	subs	x3, x3, x2	// tmp160, tmp161
	mov	x2, 0	// tmp161
	beq	.L11		//,
	bl	__stack_chk_fail		//
.L11:
	mov	w0, w1	//, <retval>
	ldr	d8, [sp, 24]	//,
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.type	compare, %function
compare:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// a, a
	str	x1, [sp]	// b, b
// problem32.c:46:   return *(const char *)a - *(const char *)b;
	ldr	x0, [sp, 8]	// tmp98, a
	ldrb	w0, [x0]	// _1, MEM[(const char *)a_6(D)]
	mov	w1, w0	// _2, _1
// problem32.c:46:   return *(const char *)a - *(const char *)b;
	ldr	x0, [sp]	// tmp99, b
	ldrb	w0, [x0]	// _3, MEM[(const char *)b_7(D)]
// problem32.c:46:   return *(const char *)a - *(const char *)b;
	sub	w0, w1, w0	// _8, _2, _4
// problem32.c:47: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.section	.rodata
	.align	3
.LC2:
	.string	"123456789"
	.text
	.align	2
	.type	is_pandigital, %function
is_pandigital:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// buf, buf
// problem32.c:51:   qsort(buf, 9, 1, compare);
	adrp	x0, compare	// tmp96,
	add	x3, x0, :lo12:compare	//, tmp96,
	mov	x2, 1	//,
	mov	x1, 9	//,
	ldr	x0, [sp, 24]	//, buf
	bl	qsort		//
// problem32.c:52:   return memcmp(buf, "123456789", 9) == 0;
	mov	x2, 9	//,
	adrp	x0, .LC2	// tmp97,
	add	x1, x0, :lo12:.LC2	//, tmp97,
	ldr	x0, [sp, 24]	//, buf
	bl	memcmp		//
// problem32.c:52:   return memcmp(buf, "123456789", 9) == 0;
	cmp	w0, 0	// _1,
	cset	w0, eq	// tmp99,
	and	w0, w0, 255	// _2, tmp98
// problem32.c:53: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	is_pandigital, .-is_pandigital
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
