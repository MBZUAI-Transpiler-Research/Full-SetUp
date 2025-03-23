	.arch armv8-a
	.file	"problem30.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48	//,,
// problem30.c:13: {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp126,
	str	x1, [sp, 40]	// tmp126, D.6047
	mov	x1, 0	// tmp126
// problem30.c:16:   int ttl = 0;
	str	wzr, [sp, 12]	//, ttl
// problem30.c:17:   for (i = 10; i < M; i++) {
	mov	w0, 10	// tmp103,
	str	w0, [sp, 8]	// tmp103, i
// problem30.c:17:   for (i = 10; i < M; i++) {
	b	.L2		//
.L6:
// problem30.c:18:     int sum = 0, j;
	str	wzr, [sp, 16]	//, sum
// problem30.c:20:     snprintf(buf, sizeof buf, "%d", i);
	add	x4, sp, 24	// tmp104,,
	ldr	w3, [sp, 8]	//, i
	adrp	x0, .LC0	// tmp105,
	add	x2, x0, :lo12:.LC0	//, tmp105,
	mov	x1, 16	//,
	mov	x0, x4	//, tmp104
	bl	snprintf		//
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	str	wzr, [sp, 20]	//, j
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	b	.L3		//
.L4:
// problem30.c:22:       sum += pow(buf[j]-'0', E);
	ldrsw	x0, [sp, 20]	// tmp106, j
	add	x1, sp, 24	// tmp107,,
	ldrb	w0, [x1, x0]	// _1, buf[j_12]
// problem30.c:22:       sum += pow(buf[j]-'0', E);
	sub	w0, w0, #48	// _3, _2,
// problem30.c:22:       sum += pow(buf[j]-'0', E);
	scvtf	d0, w0	// _4, _3
	fmov	d1, 5.0e+0	//,
	bl	pow		//
	fmov	d1, d0	// _27,
// problem30.c:22:       sum += pow(buf[j]-'0', E);
	ldr	w0, [sp, 16]	// tmp108, sum
	scvtf	d0, w0	// _5, tmp108
	fadd	d0, d1, d0	// _6, _27, _5
	fcvtzs	w0, d0	// tmp109, _6
	str	w0, [sp, 16]	// tmp109, sum
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	ldr	w0, [sp, 20]	// tmp111, j
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 20]	// tmp110, j
.L3:
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	ldrsw	x0, [sp, 20]	// tmp112, j
	add	x1, sp, 24	// tmp113,,
	ldrb	w0, [x1, x0]	// _7, buf[j_12]
// problem30.c:21:     for (j = 0; buf[j]; j++) {
	cmp	w0, 0	// _7,
	bne	.L4		//,
// problem30.c:24:     if (i == sum) {
	ldr	w1, [sp, 8]	// tmp114, i
	ldr	w0, [sp, 16]	// tmp115, sum
	cmp	w1, w0	// tmp114, tmp115
	bne	.L5		//,
// problem30.c:25:       ttl += i;
	ldr	w1, [sp, 12]	// tmp117, ttl
	ldr	w0, [sp, 8]	// tmp118, i
	add	w0, w1, w0	// tmp116, tmp117, tmp118
	str	w0, [sp, 12]	// tmp116, ttl
.L5:
// problem30.c:17:   for (i = 10; i < M; i++) {
	ldr	w0, [sp, 8]	// tmp120, i
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 8]	// tmp119, i
.L2:
// problem30.c:17:   for (i = 10; i < M; i++) {
	ldr	w1, [sp, 8]	// tmp121, i
	mov	w0, 16959	// tmp122,
	movk	w0, 0xf, lsl 16	// tmp122,,
	cmp	w1, w0	// tmp121, tmp122
	ble	.L6		//,
// problem30.c:28:   printf("%d\n", ttl);
	ldr	w1, [sp, 12]	//, ttl
	adrp	x0, .LC1	// tmp123,
	add	x0, x0, :lo12:.LC1	//, tmp123,
	bl	printf		//
// problem30.c:29:   return 0;
	mov	w0, 0	// _19,
// problem30.c:30: }
	mov	w1, w0	// <retval>, _19
	adrp	x0, :got:__stack_chk_guard	// tmp125,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp125,
	ldr	x3, [sp, 40]	// tmp127, D.6047
	ldr	x2, [x0]	// tmp128,
	subs	x3, x3, x2	// tmp127, tmp128
	mov	x2, 0	// tmp128
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 48]	//,,
	add	sp, sp, 64	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
