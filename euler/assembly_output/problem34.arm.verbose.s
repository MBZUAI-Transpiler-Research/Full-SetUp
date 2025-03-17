	.arch armv8-a
	.file	"problem34.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48	//,,
// problem34.c:11: {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x1, [x0]	// tmp124,
	str	x1, [sp, 40]	// tmp124, D.4863
	mov	x1, 0	// tmp124
// problem34.c:12:   unsigned i, sum = 0;
	str	wzr, [sp, 12]	//, sum
// problem34.c:15:   for (i = 3; i < 100000; i++) {
	mov	w0, 3	// tmp101,
	str	w0, [sp, 8]	// tmp101, i
// problem34.c:15:   for (i = 3; i < 100000; i++) {
	b	.L2		//
.L6:
// problem34.c:16:     unsigned j, s = 0;
	str	wzr, [sp, 20]	//, s
// problem34.c:18:     snprintf(buf, sizeof buf, "%u", i);
	add	x4, sp, 24	// tmp102,,
	ldr	w3, [sp, 8]	//, i
	adrp	x0, .LC0	// tmp103,
	add	x2, x0, :lo12:.LC0	//, tmp103,
	mov	x1, 16	//,
	mov	x0, x4	//, tmp102
	bl	snprintf		//
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	str	wzr, [sp, 16]	//, j
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	b	.L3		//
.L4:
// problem34.c:20:       s += fact(buf[j]-'0');
	ldr	w0, [sp, 16]	// tmp104, j
	add	x1, sp, 24	// tmp105,,
	ldrb	w0, [x1, x0]	// _1, buf[j_9]
// problem34.c:20:       s += fact(buf[j]-'0');
	sub	w0, w0, #48	// _3, _2,
// problem34.c:20:       s += fact(buf[j]-'0');
	bl	fact		//
	mov	w1, w0	// _25,
// problem34.c:20:       s += fact(buf[j]-'0');
	ldr	w0, [sp, 20]	// tmp107, s
	add	w0, w0, w1	// tmp106, tmp107, _25
	str	w0, [sp, 20]	// tmp106, s
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	ldr	w0, [sp, 16]	// tmp109, j
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 16]	// tmp108, j
.L3:
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	ldr	w0, [sp, 16]	// tmp110, j
	add	x1, sp, 24	// tmp111,,
	ldrb	w0, [x1, x0]	// _5, buf[j_9]
// problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	cmp	w0, 0	// _5,
	bne	.L4		//,
// problem34.c:22:     if (i == s) {
	ldr	w1, [sp, 8]	// tmp112, i
	ldr	w0, [sp, 20]	// tmp113, s
	cmp	w1, w0	// tmp112, tmp113
	bne	.L5		//,
// problem34.c:23:       sum += s;
	ldr	w1, [sp, 12]	// tmp115, sum
	ldr	w0, [sp, 20]	// tmp116, s
	add	w0, w1, w0	// tmp114, tmp115, tmp116
	str	w0, [sp, 12]	// tmp114, sum
.L5:
// problem34.c:15:   for (i = 3; i < 100000; i++) {
	ldr	w0, [sp, 8]	// tmp118, i
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 8]	// tmp117, i
.L2:
// problem34.c:15:   for (i = 3; i < 100000; i++) {
	ldr	w1, [sp, 8]	// tmp119, i
	mov	w0, 34463	// tmp120,
	movk	w0, 0x1, lsl 16	// tmp120,,
	cmp	w1, w0	// tmp119, tmp120
	bls	.L6		//,
// problem34.c:26:   printf("%u\n", sum);
	ldr	w1, [sp, 12]	//, sum
	adrp	x0, .LC1	// tmp121,
	add	x0, x0, :lo12:.LC1	//, tmp121,
	bl	printf		//
// problem34.c:28:   return 0;
	mov	w0, 0	// _17,
// problem34.c:29: }
	mov	w1, w0	// <retval>, _17
	adrp	x0, :got:__stack_chk_guard	// tmp123,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp123,
	ldr	x3, [sp, 40]	// tmp125, D.4863
	ldr	x2, [x0]	// tmp126,
	subs	x3, x3, x2	// tmp125, tmp126
	mov	x2, 0	// tmp126
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
