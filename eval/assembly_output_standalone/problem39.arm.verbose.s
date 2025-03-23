	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 24]	// s, s
	str	w1, [sp, 20]	// encode, encode
// eval/problem39//code.c:4: void func0(char *s, int encode) {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x1, [x0]	// tmp155,
	str	x1, [sp, 72]	// tmp155, D.4454
	mov	x1, 0	// tmp155
// eval/problem39//code.c:5:     int l = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
// eval/problem39//code.c:5:     int l = strlen(s);
	str	w0, [sp, 52]	// tmp112, l
// eval/problem39//code.c:6:     int num = (l + 2) / 3;
	ldr	w0, [sp, 52]	// tmp113, l
	add	w0, w0, 2	// _2, tmp113,
// eval/problem39//code.c:6:     int num = (l + 2) / 3;
	mov	w1, 21846	// tmp115,
	movk	w1, 0x5555, lsl 16	// tmp115,,
	smull	x1, w0, w1	// tmp114, _2, tmp115
	lsr	x1, x1, 32	// tmp116, tmp114,
	asr	w0, w0, 31	// tmp117, _2,
	sub	w0, w1, w0	// tmp118, tmp116, tmp117
	str	w0, [sp, 56]	// tmp118, num
// eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	str	wzr, [sp, 48]	//, i
// eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	b	.L2		//
.L7:
// eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 48]	// tmp119, i
	add	w1, w0, 1	// _3, tmp119,
	mov	w0, w1	// tmp120, _3
	lsl	w0, w0, 1	// tmp121, tmp120,
	add	w0, w0, w1	// _4, tmp120, _3
// eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w1, [sp, 52]	// tmp122, l
	cmp	w1, w0	// tmp122, _4
	bge	.L3		//,
// eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 48]	// tmp123, i
	mov	w1, w0	// tmp124, tmp123
	lsl	w0, w0, 2	// tmp125, tmp123,
	sub	w1, w1, w0	// _5, tmp124, tmp125
// eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 52]	// tmp126, l
	add	w0, w1, w0	// iftmp.0_19, _5, tmp126
	b	.L4		//
.L3:
// eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	mov	w0, 3	// iftmp.0_19,
.L4:
// eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	str	w0, [sp, 60]	// iftmp.0_19, len
// eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	ldr	w1, [sp, 48]	// tmp127, i
	mov	w0, w1	// tmp128, tmp127
	lsl	w0, w0, 1	// tmp129, tmp128,
	add	w0, w0, w1	// _6, tmp128, tmp127
	sxtw	x0, w0	// _7, _6
// eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	ldr	x1, [sp, 24]	// tmp130, s
	add	x1, x1, x0	// _8, tmp130, _7
// eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	ldrsw	x2, [sp, 60]	// _9, len
	add	x0, sp, 64	// tmp131,,
	bl	strncpy		//
// eval/problem39//code.c:12:         x[len] = '\0';
	ldrsw	x0, [sp, 60]	// tmp132, len
	add	x1, sp, 64	// tmp133,,
	strb	wzr, [x1, x0]	//, x[len_30]
// eval/problem39//code.c:14:         if (len == 3) {
	ldr	w0, [sp, 60]	// tmp134, len
	cmp	w0, 3	// tmp134,
	bne	.L5		//,
// eval/problem39//code.c:15:             if (encode) {
	ldr	w0, [sp, 20]	// tmp135, encode
	cmp	w0, 0	// tmp135,
	beq	.L6		//,
// eval/problem39//code.c:16:                 char temp = x[2];
	ldrb	w0, [sp, 66]	// tmp136, x[2]
	strb	w0, [sp, 47]	// tmp136, temp
// eval/problem39//code.c:17:                 x[2] = x[1];
	ldrb	w0, [sp, 65]	// _10, x[1]
// eval/problem39//code.c:17:                 x[2] = x[1];
	strb	w0, [sp, 66]	// tmp137, x[2]
// eval/problem39//code.c:18:                 x[1] = x[0];
	ldrb	w0, [sp, 64]	// _11, x[0]
// eval/problem39//code.c:18:                 x[1] = x[0];
	strb	w0, [sp, 65]	// tmp138, x[1]
// eval/problem39//code.c:19:                 x[0] = temp;
	ldrb	w0, [sp, 47]	// tmp139, temp
	strb	w0, [sp, 64]	// tmp139, x[0]
	b	.L5		//
.L6:
// eval/problem39//code.c:21:                 char temp = x[0];
	ldrb	w0, [sp, 64]	// tmp140, x[0]
	strb	w0, [sp, 46]	// tmp140, temp
// eval/problem39//code.c:22:                 x[0] = x[1];
	ldrb	w0, [sp, 65]	// _12, x[1]
// eval/problem39//code.c:22:                 x[0] = x[1];
	strb	w0, [sp, 64]	// tmp141, x[0]
// eval/problem39//code.c:23:                 x[1] = x[2];
	ldrb	w0, [sp, 66]	// _13, x[2]
// eval/problem39//code.c:23:                 x[1] = x[2];
	strb	w0, [sp, 65]	// tmp142, x[1]
// eval/problem39//code.c:24:                 x[2] = temp;
	ldrb	w0, [sp, 46]	// tmp143, temp
	strb	w0, [sp, 66]	// tmp143, x[2]
.L5:
// eval/problem39//code.c:27:         strncpy(s + i * 3, x, len);
	ldr	w1, [sp, 48]	// tmp144, i
	mov	w0, w1	// tmp145, tmp144
	lsl	w0, w0, 1	// tmp146, tmp145,
	add	w0, w0, w1	// _14, tmp145, tmp144
	sxtw	x0, w0	// _15, _14
// eval/problem39//code.c:27:         strncpy(s + i * 3, x, len);
	ldr	x1, [sp, 24]	// tmp147, s
	add	x0, x1, x0	// _16, tmp147, _15
	ldrsw	x2, [sp, 60]	// _17, len
	add	x1, sp, 64	// tmp148,,
	bl	strncpy		//
// eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	ldr	w0, [sp, 48]	// tmp150, i
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 48]	// tmp149, i
.L2:
// eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	ldr	w1, [sp, 48]	// tmp151, i
	ldr	w0, [sp, 56]	// tmp152, num
	cmp	w1, w0	// tmp151, tmp152
	blt	.L7		//,
// eval/problem39//code.c:29: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp154,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp153, tmp154,
	ldr	x2, [sp, 72]	// tmp156, D.4454
	ldr	x1, [x0]	// tmp157,
	subs	x2, x2, x1	// tmp156, tmp157
	mov	x1, 0	// tmp157
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
