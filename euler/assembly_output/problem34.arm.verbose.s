	.arch armv8-a
	.file	"problem34.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u"
	.align	3
.LC1:
	.string	"%u\n"
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
// problem34.c:11: {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp126,
	str	x1, [sp, 56]	// tmp126, D.4281
	mov	x1, 0	// tmp126
// problem34.c:12:   unsigned i, sum = 0;
	str	wzr, [sp, 28]	//, sum
// problem34.c:15:   for (i = 3; i < 100000; i++) {
	mov	w0, 3	// tmp102,
	str	w0, [sp, 24]	// tmp102, i
// problem34.c:15:   for (i = 3; i < 100000; i++) {
	b	.L2		//
.L6:
// problem34.c:16:     unsigned j, s = 0;
	str	wzr, [sp, 36]	//, s
// problem34.c:18:     snprintf(buf, sizeof buf, "%u", i);
	add	x4, sp, 40	// tmp103,,
	ldr	w3, [sp, 24]	//, i
	adrp	x0, .LC0	// tmp104,
	add	x2, x0, :lo12:.LC0	//, tmp104,
	mov	x1, 16	//,
	mov	x0, x4	//, tmp103
	bl	snprintf		//
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	str	wzr, [sp, 32]	//, j
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	b	.L3		//
.L4:
// problem34.c:20:       s += fact(buf[j]-'0');
	ldr	w0, [sp, 32]	// tmp105, j
	add	x1, sp, 40	// tmp106,,
	ldrb	w0, [x1, x0]	// _1, buf[j_9]
// problem34.c:20:       s += fact(buf[j]-'0');
	sub	w0, w0, #48	// _3, _2,
// problem34.c:20:       s += fact(buf[j]-'0');
	bl	fact		//
	mov	w1, w0	// _25,
// problem34.c:20:       s += fact(buf[j]-'0');
	ldr	w0, [sp, 36]	// tmp108, s
	add	w0, w0, w1	// tmp107, tmp108, _25
	str	w0, [sp, 36]	// tmp107, s
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	ldr	w0, [sp, 32]	// tmp110, j
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 32]	// tmp109, j
.L3:
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	ldr	w0, [sp, 32]	// tmp111, j
	add	x1, sp, 40	// tmp112,,
	ldrb	w0, [x1, x0]	// _5, buf[j_9]
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	cmp	w0, 0	// _5,
	bne	.L4		//,
// problem34.c:22:     if (i == s) {
	ldr	w1, [sp, 24]	// tmp113, i
	ldr	w0, [sp, 36]	// tmp114, s
	cmp	w1, w0	// tmp113, tmp114
	bne	.L5		//,
// problem34.c:23:       sum += s;
	ldr	w1, [sp, 28]	// tmp116, sum
	ldr	w0, [sp, 36]	// tmp117, s
	add	w0, w1, w0	// tmp115, tmp116, tmp117
	str	w0, [sp, 28]	// tmp115, sum
.L5:
// problem34.c:15:   for (i = 3; i < 100000; i++) {
	ldr	w0, [sp, 24]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 24]	// tmp118, i
.L2:
// problem34.c:15:   for (i = 3; i < 100000; i++) {
	ldr	w1, [sp, 24]	// tmp120, i
	mov	w0, 34463	// tmp121,
	movk	w0, 0x1, lsl 16	// tmp121,,
	cmp	w1, w0	// tmp120, tmp121
	bls	.L6		//,
// problem34.c:26:   printf("%u\n", sum);
	ldr	w1, [sp, 28]	//, sum
	adrp	x0, .LC1	// tmp122,
	add	x0, x0, :lo12:.LC1	//, tmp122,
	bl	printf		//
// problem34.c:28:   return 0;
	mov	w0, 0	// _17,
// problem34.c:29: }
	mov	w1, w0	// <retval>, _17
	adrp	x0, :got:__stack_chk_guard	// tmp125,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp124, tmp125,
	ldr	x3, [sp, 56]	// tmp127, D.4281
	ldr	x2, [x0]	// tmp128,
	subs	x3, x3, x2	// tmp127, tmp128
	mov	x2, 0	// tmp128
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
	.align	2
	.global	fact
	.type	fact, %function
fact:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem34.c:33:   unsigned f = 1;
	mov	w0, 1	// tmp95,
	str	w0, [sp, 28]	// tmp95, f
// problem34.c:34:   while (n != 0) {
	b	.L10		//
.L11:
// problem34.c:35:     f *= n--;
	ldr	w0, [sp, 12]	// n.0_1, n
	sub	w1, w0, #1	// tmp96, n.0_1,
	str	w1, [sp, 12]	// tmp96, n
// problem34.c:35:     f *= n--;
	ldr	w1, [sp, 28]	// tmp98, f
	mul	w0, w1, w0	// tmp97, tmp98, n.0_1
	str	w0, [sp, 28]	// tmp97, f
.L10:
// problem34.c:34:   while (n != 0) {
	ldr	w0, [sp, 12]	// tmp99, n
	cmp	w0, 0	// tmp99,
	bne	.L11		//,
// problem34.c:37:   return f;
	ldr	w0, [sp, 28]	// _6, f
// problem34.c:38: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	fact, .-fact
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
