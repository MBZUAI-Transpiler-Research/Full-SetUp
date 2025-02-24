	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
	str	x0, [sp, 8]	// s, s
	str	w1, [sp, 4]	// encode, encode
// code.c:4: void func0(char *s, int encode) {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp110,
	ldr	x1, [x0]	// tmp153,
	str	x1, [sp, 56]	// tmp153, D.5063
	mov	x1, 0	// tmp153
// code.c:5:     int l = strlen(s);
	ldr	x0, [sp, 8]	//, s
	bl	strlen		//
// code.c:5:     int l = strlen(s);
	str	w0, [sp, 36]	// tmp111, l
// code.c:6:     int num = (l + 2) / 3;
	ldr	w0, [sp, 36]	// tmp112, l
	add	w0, w0, 2	// _2, tmp112,
// code.c:6:     int num = (l + 2) / 3;
	mov	w1, 21846	// tmp114,
	movk	w1, 0x5555, lsl 16	// tmp114,,
	smull	x1, w0, w1	// tmp113, _2, tmp114
	lsr	x1, x1, 32	// tmp115, tmp113,
	asr	w0, w0, 31	// tmp116, _2,
	sub	w0, w1, w0	// tmp117, tmp115, tmp116
	str	w0, [sp, 40]	// tmp117, num
// code.c:9:     for (int i = 0; i < num; ++i) {
	str	wzr, [sp, 32]	//, i
// code.c:9:     for (int i = 0; i < num; ++i) {
	b	.L2		//
.L7:
// code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 32]	// tmp118, i
	add	w1, w0, 1	// _3, tmp118,
	mov	w0, w1	// tmp119, _3
	lsl	w0, w0, 1	// tmp120, tmp119,
	add	w0, w0, w1	// _4, tmp119, _3
// code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w1, [sp, 36]	// tmp121, l
	cmp	w1, w0	// tmp121, _4
	bge	.L3		//,
// code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 32]	// tmp122, i
	mov	w1, w0	// tmp123, tmp122
	lsl	w0, w0, 2	// tmp124, tmp122,
	sub	w1, w1, w0	// _5, tmp123, tmp124
// code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 36]	// tmp125, l
	add	w0, w1, w0	// iftmp.0_19, _5, tmp125
	b	.L4		//
.L3:
// code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	mov	w0, 3	// iftmp.0_19,
.L4:
// code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	str	w0, [sp, 44]	// iftmp.0_19, len
// code.c:11:         strncpy(x, s + i * 3, len);
	ldr	w1, [sp, 32]	// tmp126, i
	mov	w0, w1	// tmp127, tmp126
	lsl	w0, w0, 1	// tmp128, tmp127,
	add	w0, w0, w1	// _6, tmp127, tmp126
	sxtw	x0, w0	// _7, _6
// code.c:11:         strncpy(x, s + i * 3, len);
	ldr	x1, [sp, 8]	// tmp129, s
	add	x1, x1, x0	// _8, tmp129, _7
// code.c:11:         strncpy(x, s + i * 3, len);
	ldrsw	x2, [sp, 44]	// _9, len
	add	x0, sp, 48	// tmp130,,
	bl	strncpy		//
// code.c:12:         x[len] = '\0';
	ldrsw	x0, [sp, 44]	// tmp131, len
	add	x1, sp, 48	// tmp132,,
	strb	wzr, [x1, x0]	//, x[len_30]
// code.c:14:         if (len == 3) {
	ldr	w0, [sp, 44]	// tmp133, len
	cmp	w0, 3	// tmp133,
	bne	.L5		//,
// code.c:15:             if (encode) {
	ldr	w0, [sp, 4]	// tmp134, encode
	cmp	w0, 0	// tmp134,
	beq	.L6		//,
// code.c:16:                 char temp = x[2];
	ldrb	w0, [sp, 50]	// tmp135, x[2]
	strb	w0, [sp, 31]	// tmp135, temp
// code.c:17:                 x[2] = x[1];
	ldrb	w0, [sp, 49]	// _10, x[1]
// code.c:17:                 x[2] = x[1];
	strb	w0, [sp, 50]	// tmp136, x[2]
// code.c:18:                 x[1] = x[0];
	ldrb	w0, [sp, 48]	// _11, x[0]
// code.c:18:                 x[1] = x[0];
	strb	w0, [sp, 49]	// tmp137, x[1]
// code.c:19:                 x[0] = temp;
	ldrb	w0, [sp, 31]	// tmp138, temp
	strb	w0, [sp, 48]	// tmp138, x[0]
	b	.L5		//
.L6:
// code.c:21:                 char temp = x[0];
	ldrb	w0, [sp, 48]	// tmp139, x[0]
	strb	w0, [sp, 30]	// tmp139, temp
// code.c:22:                 x[0] = x[1];
	ldrb	w0, [sp, 49]	// _12, x[1]
// code.c:22:                 x[0] = x[1];
	strb	w0, [sp, 48]	// tmp140, x[0]
// code.c:23:                 x[1] = x[2];
	ldrb	w0, [sp, 50]	// _13, x[2]
// code.c:23:                 x[1] = x[2];
	strb	w0, [sp, 49]	// tmp141, x[1]
// code.c:24:                 x[2] = temp;
	ldrb	w0, [sp, 30]	// tmp142, temp
	strb	w0, [sp, 50]	// tmp142, x[2]
.L5:
// code.c:27:         strncpy(s + i * 3, x, len);
	ldr	w1, [sp, 32]	// tmp143, i
	mov	w0, w1	// tmp144, tmp143
	lsl	w0, w0, 1	// tmp145, tmp144,
	add	w0, w0, w1	// _14, tmp144, tmp143
	sxtw	x0, w0	// _15, _14
// code.c:27:         strncpy(s + i * 3, x, len);
	ldr	x1, [sp, 8]	// tmp146, s
	add	x0, x1, x0	// _16, tmp146, _15
	ldrsw	x2, [sp, 44]	// _17, len
	add	x1, sp, 48	// tmp147,,
	bl	strncpy		//
// code.c:9:     for (int i = 0; i < num; ++i) {
	ldr	w0, [sp, 32]	// tmp149, i
	add	w0, w0, 1	// tmp148, tmp149,
	str	w0, [sp, 32]	// tmp148, i
.L2:
// code.c:9:     for (int i = 0; i < num; ++i) {
	ldr	w1, [sp, 32]	// tmp150, i
	ldr	w0, [sp, 40]	// tmp151, num
	cmp	w1, w0	// tmp150, tmp151
	blt	.L7		//,
// code.c:29: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp152,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp152,
	ldr	x2, [sp, 56]	// tmp154, D.5063
	ldr	x1, [x0]	// tmp155,
	subs	x2, x2, x1	// tmp154, tmp155
	mov	x1, 0	// tmp155
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
