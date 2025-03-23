	.arch armv8-a
	.file	"problem30.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// problem30.c:13: {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp128,
	str	x1, [sp, 56]	// tmp128, D.5306
	mov	x1, 0	// tmp128
// problem30.c:16:   int ttl = 0;
	str	wzr, [sp, 28]	//, ttl
// problem30.c:17:   for (i = 10; i < M; i++) {
	mov	w0, 10	// tmp104,
	str	w0, [sp, 24]	// tmp104, i
// problem30.c:17:   for (i = 10; i < M; i++) {
	b	.L2		//
.L6:
// problem30.c:18:     int sum = 0, j;
	str	wzr, [sp, 32]	//, sum
// problem30.c:20:     snprintf(buf, sizeof buf, "%d", i);
	add	x4, sp, 40	// tmp105,,
	ldr	w3, [sp, 24]	//, i
	adrp	x0, .LC0	// tmp106,
	add	x2, x0, :lo12:.LC0	//, tmp106,
	mov	x1, 16	//,
	mov	x0, x4	//, tmp105
	bl	snprintf		//
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	str	wzr, [sp, 36]	//, j
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	b	.L3		//
.L4:
// problem30.c:22:       sum += pow(buf[j]-'0', E);
	ldrsw	x0, [sp, 36]	// tmp107, j
	add	x1, sp, 40	// tmp108,,
	ldrb	w0, [x1, x0]	// _1, buf[j_12]
// problem30.c:22:       sum += pow(buf[j]-'0', E);
	sub	w0, w0, #48	// _3, _2,
// problem30.c:22:       sum += pow(buf[j]-'0', E);
	scvtf	d0, w0	// _4, _3
	fmov	d1, 5.0e+0	//,
	bl	pow		//
	fmov	d1, d0	// _27,
// problem30.c:22:       sum += pow(buf[j]-'0', E);
	ldr	w0, [sp, 32]	// tmp109, sum
	scvtf	d0, w0	// _5, tmp109
	fadd	d0, d1, d0	// _6, _27, _5
	fcvtzs	w0, d0	// tmp110, _6
	str	w0, [sp, 32]	// tmp110, sum
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	ldr	w0, [sp, 36]	// tmp112, j
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 36]	// tmp111, j
.L3:
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	ldrsw	x0, [sp, 36]	// tmp113, j
	add	x1, sp, 40	// tmp114,,
	ldrb	w0, [x1, x0]	// _7, buf[j_12]
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	cmp	w0, 0	// _7,
	bne	.L4		//,
// problem30.c:24:     if (i == sum) {
	ldr	w1, [sp, 24]	// tmp115, i
	ldr	w0, [sp, 32]	// tmp116, sum
	cmp	w1, w0	// tmp115, tmp116
	bne	.L5		//,
// problem30.c:25:       ttl += i;
	ldr	w1, [sp, 28]	// tmp118, ttl
	ldr	w0, [sp, 24]	// tmp119, i
	add	w0, w1, w0	// tmp117, tmp118, tmp119
	str	w0, [sp, 28]	// tmp117, ttl
.L5:
// problem30.c:17:   for (i = 10; i < M; i++) {
	ldr	w0, [sp, 24]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 24]	// tmp120, i
.L2:
// problem30.c:17:   for (i = 10; i < M; i++) {
	ldr	w1, [sp, 24]	// tmp122, i
	mov	w0, 16959	// tmp123,
	movk	w0, 0xf, lsl 16	// tmp123,,
	cmp	w1, w0	// tmp122, tmp123
	ble	.L6		//,
// problem30.c:28:   printf("%d\n", ttl);
	ldr	w1, [sp, 28]	//, ttl
	adrp	x0, .LC1	// tmp124,
	add	x0, x0, :lo12:.LC1	//, tmp124,
	bl	printf		//
// problem30.c:29:   return 0;
	mov	w0, 0	// _19,
// problem30.c:30: }
	mov	w1, w0	// <retval>, _19
	adrp	x0, :got:__stack_chk_guard	// tmp127,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp126, tmp127,
	ldr	x3, [sp, 56]	// tmp129, D.5306
	ldr	x2, [x0]	// tmp130,
	subs	x3, x3, x2	// tmp129, tmp130
	mov	x2, 0	// tmp130
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
