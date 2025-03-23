	.arch armv8-a
	.file	"problem40.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	d8, [sp, 16]	//,
	.cfi_offset 72, -80
// problem40.c:10: {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp109, tmp110,
	ldr	x1, [x0]	// tmp156,
	str	x1, [sp, 88]	// tmp156, D.5311
	mov	x1, 0	// tmp156
// problem40.c:11:   int nth = 1;
	mov	w0, 1	// tmp111,
	str	w0, [sp, 32]	// tmp111, nth
// problem40.c:14:   int p = 1;
	mov	w0, 1	// tmp112,
	str	w0, [sp, 44]	// tmp112, p
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	mov	w0, 1	// tmp113,
	str	w0, [sp, 36]	// tmp113, i
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	str	wzr, [sp, 40]	//, l
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	b	.L2		//
.L6:
// problem40.c:17:     int digits = log10(i)+1;
	ldr	w0, [sp, 36]	// tmp114, i
	scvtf	d0, w0	// _1, tmp114
	bl	log10		//
	fmov	d1, d0	// _2,
// problem40.c:17:     int digits = log10(i)+1;
	fmov	d0, 1.0e+0	// tmp115,
	fadd	d0, d1, d0	// _3, _2, tmp115
// problem40.c:17:     int digits = log10(i)+1;
	fcvtzs	w0, d0	// tmp116, _3
	str	w0, [sp, 52]	// tmp116, digits
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	str	wzr, [sp, 48]	//, j
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	b	.L3		//
.L5:
// problem40.c:20:       if (nth == pow(10, l)) {
	ldr	w0, [sp, 32]	// tmp117, nth
	scvtf	d8, w0	// _4, tmp117
// problem40.c:20:       if (nth == pow(10, l)) {
	ldr	w0, [sp, 40]	// tmp118, l
	scvtf	d0, w0	// _5, tmp118
	fmov	d1, d0	//, _5
	fmov	d0, 1.0e+1	//,
	bl	pow		//
// problem40.c:20:       if (nth == pow(10, l)) {
	fcmp	d8, d0	// _4, _6
	bne	.L4		//,
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	ldr	w1, [sp, 52]	// tmp119, digits
	ldr	w0, [sp, 48]	// tmp120, j
	sub	w0, w1, w0	// _7, tmp119, tmp120
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	sub	w0, w0, #1	// _8, _7,
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	scvtf	d0, w0	// _9, _8
	fmov	d1, d0	//, _9
	fmov	d0, 1.0e+1	//,
	bl	pow		//
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	fcvtzs	w0, d0	// _11, _10
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	ldr	w1, [sp, 36]	// tmp121, i
	sdiv	w2, w1, w0	// _12, tmp121, _11
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	ldr	w3, [sp, 40]	// l.0_13, l
	add	w0, w3, 1	// tmp122, l.0_13,
	str	w0, [sp, 40]	// tmp122, l
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	mov	w0, 26215	// tmp124,
	movk	w0, 0x6666, lsl 16	// tmp124,,
	smull	x0, w2, w0	// tmp123, _12, tmp124
	lsr	x0, x0, 32	// tmp125, tmp123,
	asr	w1, w0, 2	// tmp126, tmp125,
	asr	w0, w2, 31	// tmp127, _12,
	sub	w1, w1, w0	// _14, tmp126, tmp127
	mov	w0, w1	// tmp128, _14
	lsl	w0, w0, 2	// tmp129, tmp128,
	add	w0, w0, w1	// tmp128, tmp128, _14
	lsl	w0, w0, 1	// tmp130, tmp128,
	sub	w1, w2, w0	// _14, _12, tmp128
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	sxtw	x0, w3	// tmp131, l.0_13
	lsl	x0, x0, 2	// tmp132, tmp131,
	add	x2, sp, 56	// tmp133,,
	str	w1, [x2, x0]	// _14, d[l.0_13]
.L4:
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	ldr	w0, [sp, 48]	// tmp135, j
	add	w0, w0, 1	// tmp134, tmp135,
	str	w0, [sp, 48]	// tmp134, j
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	ldr	w0, [sp, 32]	// tmp137, nth
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 32]	// tmp136, nth
.L3:
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	ldr	w1, [sp, 48]	// tmp138, j
	ldr	w0, [sp, 52]	// tmp139, digits
	cmp	w1, w0	// tmp138, tmp139
	blt	.L5		//,
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	ldr	w0, [sp, 36]	// tmp141, i
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 36]	// tmp140, i
.L2:
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	ldr	w0, [sp, 40]	// tmp142, l
	cmp	w0, 6	// tmp142,
	ble	.L6		//,
// problem40.c:26:   for (i = 0; i < l; i++) {
	str	wzr, [sp, 36]	//, i
// problem40.c:26:   for (i = 0; i < l; i++) {
	b	.L7		//
.L8:
// problem40.c:27:     p *= d[i];
	ldrsw	x0, [sp, 36]	// tmp143, i
	lsl	x0, x0, 2	// tmp144, tmp143,
	add	x1, sp, 56	// tmp145,,
	ldr	w0, [x1, x0]	// _15, d[i_19]
// problem40.c:27:     p *= d[i];
	ldr	w1, [sp, 44]	// tmp147, p
	mul	w0, w1, w0	// tmp146, tmp147, _15
	str	w0, [sp, 44]	// tmp146, p
// problem40.c:26:   for (i = 0; i < l; i++) {
	ldr	w0, [sp, 36]	// tmp149, i
	add	w0, w0, 1	// tmp148, tmp149,
	str	w0, [sp, 36]	// tmp148, i
.L7:
// problem40.c:26:   for (i = 0; i < l; i++) {
	ldr	w1, [sp, 36]	// tmp150, i
	ldr	w0, [sp, 40]	// tmp151, l
	cmp	w1, w0	// tmp150, tmp151
	blt	.L8		//,
// problem40.c:29:   printf("%d\n", p);
	ldr	w1, [sp, 44]	//, p
	adrp	x0, .LC0	// tmp152,
	add	x0, x0, :lo12:.LC0	//, tmp152,
	bl	printf		//
// problem40.c:31:   return 0;
	mov	w0, 0	// _35,
// problem40.c:32: }
	mov	w1, w0	// <retval>, _35
	adrp	x0, :got:__stack_chk_guard	// tmp155,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp154, tmp155,
	ldr	x3, [sp, 88]	// tmp157, D.5311
	ldr	x2, [x0]	// tmp158,
	subs	x3, x3, x2	// tmp157, tmp158
	mov	x2, 0	// tmp158
	beq	.L10		//,
	bl	__stack_chk_fail		//
.L10:
	mov	w0, w1	//, <retval>
	ldr	d8, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
