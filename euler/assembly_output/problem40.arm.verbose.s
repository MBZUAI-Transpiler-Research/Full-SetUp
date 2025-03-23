	.arch armv8-a
	.file	"problem40.c"
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
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64	//,,
	str	d8, [sp, 80]	//,
	.cfi_offset 72, -16
// problem40.c:10: {
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp109,
	ldr	x1, [x0]	// tmp154,
	str	x1, [sp, 56]	// tmp154, D.6052
	mov	x1, 0	// tmp154
// problem40.c:11:   int nth = 1;
	mov	w0, 1	// tmp110,
	str	w0, [sp]	// tmp110, nth
// problem40.c:14:   int p = 1;
	mov	w0, 1	// tmp111,
	str	w0, [sp, 12]	// tmp111, p
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	mov	w0, 1	// tmp112,
	str	w0, [sp, 4]	// tmp112, i
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	str	wzr, [sp, 8]	//, l
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	b	.L2		//
.L6:
// problem40.c:17:     int digits = log10(i)+1;
	ldr	w0, [sp, 4]	// tmp113, i
	scvtf	d0, w0	// _1, tmp113
	bl	log10		//
	fmov	d1, d0	// _2,
// problem40.c:17:     int digits = log10(i)+1;
	fmov	d0, 1.0e+0	// tmp114,
	fadd	d0, d1, d0	// _3, _2, tmp114
// problem40.c:17:     int digits = log10(i)+1;
	fcvtzs	w0, d0	// tmp115, _3
	str	w0, [sp, 20]	// tmp115, digits
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	str	wzr, [sp, 16]	//, j
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	b	.L3		//
.L5:
// problem40.c:20:       if (nth == pow(10, l)) {
	ldr	w0, [sp]	// tmp116, nth
	scvtf	d8, w0	// _4, tmp116
// problem40.c:20:       if (nth == pow(10, l)) {
	ldr	w0, [sp, 8]	// tmp117, l
	scvtf	d0, w0	// _5, tmp117
	fmov	d1, d0	//, _5
	fmov	d0, 1.0e+1	//,
	bl	pow		//
// problem40.c:20:       if (nth == pow(10, l)) {
	fcmp	d8, d0	// _4, _6
	bne	.L4		//,
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	ldr	w1, [sp, 20]	// tmp118, digits
	ldr	w0, [sp, 16]	// tmp119, j
	sub	w0, w1, w0	// _7, tmp118, tmp119
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
	ldr	w1, [sp, 4]	// tmp120, i
	sdiv	w2, w1, w0	// _12, tmp120, _11
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	ldr	w3, [sp, 8]	// l.0_13, l
	add	w0, w3, 1	// tmp121, l.0_13,
	str	w0, [sp, 8]	// tmp121, l
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	mov	w0, 26215	// tmp123,
	movk	w0, 0x6666, lsl 16	// tmp123,,
	smull	x0, w2, w0	// tmp122, _12, tmp123
	lsr	x0, x0, 32	// tmp124, tmp122,
	asr	w1, w0, 2	// tmp125, tmp124,
	asr	w0, w2, 31	// tmp126, _12,
	sub	w1, w1, w0	// _14, tmp125, tmp126
	mov	w0, w1	// tmp127, _14
	lsl	w0, w0, 2	// tmp128, tmp127,
	add	w0, w0, w1	// tmp127, tmp127, _14
	lsl	w0, w0, 1	// tmp129, tmp127,
	sub	w1, w2, w0	// _14, _12, tmp127
// problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	sxtw	x0, w3	// tmp130, l.0_13
	lsl	x0, x0, 2	// tmp131, tmp130,
	add	x2, sp, 24	// tmp132,,
	str	w1, [x2, x0]	// _14, d[l.0_13]
.L4:
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	ldr	w0, [sp, 16]	// tmp134, j
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 16]	// tmp133, j
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	ldr	w0, [sp]	// tmp136, nth
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp]	// tmp135, nth
.L3:
// problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	ldr	w1, [sp, 16]	// tmp137, j
	ldr	w0, [sp, 20]	// tmp138, digits
	cmp	w1, w0	// tmp137, tmp138
	blt	.L5		//,
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	ldr	w0, [sp, 4]	// tmp140, i
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 4]	// tmp139, i
.L2:
// problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	ldr	w0, [sp, 8]	// tmp141, l
	cmp	w0, 6	// tmp141,
	ble	.L6		//,
// problem40.c:26:   for (i = 0; i < l; i++) {
	str	wzr, [sp, 4]	//, i
// problem40.c:26:   for (i = 0; i < l; i++) {
	b	.L7		//
.L8:
// problem40.c:27:     p *= d[i];
	ldrsw	x0, [sp, 4]	// tmp142, i
	lsl	x0, x0, 2	// tmp143, tmp142,
	add	x1, sp, 24	// tmp144,,
	ldr	w0, [x1, x0]	// _15, d[i_19]
// problem40.c:27:     p *= d[i];
	ldr	w1, [sp, 12]	// tmp146, p
	mul	w0, w1, w0	// tmp145, tmp146, _15
	str	w0, [sp, 12]	// tmp145, p
// problem40.c:26:   for (i = 0; i < l; i++) {
	ldr	w0, [sp, 4]	// tmp148, i
	add	w0, w0, 1	// tmp147, tmp148,
	str	w0, [sp, 4]	// tmp147, i
.L7:
// problem40.c:26:   for (i = 0; i < l; i++) {
	ldr	w1, [sp, 4]	// tmp149, i
	ldr	w0, [sp, 8]	// tmp150, l
	cmp	w1, w0	// tmp149, tmp150
	blt	.L8		//,
// problem40.c:29:   printf("%d\n", p);
	ldr	w1, [sp, 12]	//, p
	adrp	x0, .LC0	// tmp151,
	add	x0, x0, :lo12:.LC0	//, tmp151,
	bl	printf		//
// problem40.c:31:   return 0;
	mov	w0, 0	// _35,
// problem40.c:32: }
	mov	w1, w0	// <retval>, _35
	adrp	x0, :got:__stack_chk_guard	// tmp153,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp153,
	ldr	x3, [sp, 56]	// tmp155, D.6052
	ldr	x2, [x0]	// tmp156,
	subs	x3, x3, x2	// tmp155, tmp156
	mov	x2, 0	// tmp156
	beq	.L10		//,
	bl	__stack_chk_fail		//
.L10:
	mov	w0, w1	//, <retval>
	ldr	d8, [sp, 80]	//,
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
