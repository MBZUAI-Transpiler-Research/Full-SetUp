	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
	str	w0, [sp, 12]	// x, x
	str	w1, [sp, 8]	// shift, shift
// code.c:5: char* func0(int x, int shift) {
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp107,
	ldr	x1, [x0]	// tmp154,
	str	x1, [sp, 88]	// tmp154, D.5581
	mov	x1, 0	// tmp154
// code.c:7:     sprintf(xs, "%d", x);
	ldr	w2, [sp, 12]	//, x
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, xs.0	// tmp109,
	add	x0, x0, :lo12:xs.0	//, tmp109,
	bl	sprintf		//
// code.c:8:     int len = strlen(xs);
	adrp	x0, xs.0	// tmp110,
	add	x0, x0, :lo12:xs.0	//, tmp110,
	bl	strlen		//
// code.c:8:     int len = strlen(xs);
	str	w0, [sp, 28]	// tmp111, len
// code.c:10:     if (len < shift) {
	ldr	w1, [sp, 28]	// tmp112, len
	ldr	w0, [sp, 8]	// tmp113, shift
	cmp	w1, w0	// tmp112, tmp113
	bge	.L2		//,
// code.c:11:         for (int i = 0; i < len / 2; i++) {
	str	wzr, [sp, 24]	//, i
// code.c:11:         for (int i = 0; i < len / 2; i++) {
	b	.L3		//
.L4:
// code.c:12:             char temp = xs[i];
	adrp	x0, xs.0	// tmp115,
	add	x1, x0, :lo12:xs.0	// tmp114, tmp115,
	ldrsw	x0, [sp, 24]	// tmp116, i
	ldrb	w0, [x1, x0]	// tmp117, xs[i_14]
	strb	w0, [sp, 23]	// tmp117, temp
// code.c:13:             xs[i] = xs[len - 1 - i];
	ldr	w0, [sp, 28]	// tmp118, len
	sub	w1, w0, #1	// _2, tmp118,
// code.c:13:             xs[i] = xs[len - 1 - i];
	ldr	w0, [sp, 24]	// tmp119, i
	sub	w2, w1, w0	// _3, _2, tmp119
// code.c:13:             xs[i] = xs[len - 1 - i];
	adrp	x0, xs.0	// tmp121,
	add	x1, x0, :lo12:xs.0	// tmp120, tmp121,
	sxtw	x0, w2	// tmp122, _3
	ldrb	w2, [x1, x0]	// _4, xs[_3]
// code.c:13:             xs[i] = xs[len - 1 - i];
	adrp	x0, xs.0	// tmp124,
	add	x1, x0, :lo12:xs.0	// tmp123, tmp124,
	ldrsw	x0, [sp, 24]	// tmp125, i
	strb	w2, [x1, x0]	// tmp126, xs[i_14]
// code.c:14:             xs[len - 1 - i] = temp;
	ldr	w0, [sp, 28]	// tmp127, len
	sub	w1, w0, #1	// _5, tmp127,
// code.c:14:             xs[len - 1 - i] = temp;
	ldr	w0, [sp, 24]	// tmp128, i
	sub	w2, w1, w0	// _6, _5, tmp128
// code.c:14:             xs[len - 1 - i] = temp;
	adrp	x0, xs.0	// tmp130,
	add	x1, x0, :lo12:xs.0	// tmp129, tmp130,
	sxtw	x0, w2	// tmp131, _6
	ldrb	w2, [sp, 23]	// tmp132, temp
	strb	w2, [x1, x0]	// tmp132, xs[_6]
// code.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 24]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 24]	// tmp133, i
.L3:
// code.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 28]	// tmp135, len
	lsr	w1, w0, 31	// tmp136, tmp135,
	add	w0, w1, w0	// tmp137, tmp136, tmp135
	asr	w0, w0, 1	// tmp138, tmp137,
	mov	w1, w0	// _7, tmp138
// code.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 24]	// tmp139, i
	cmp	w0, w1	// tmp139, _7
	blt	.L4		//,
	b	.L5		//
.L2:
// code.c:18:         strcpy(temp, xs + len - shift);
	ldrsw	x1, [sp, 28]	// _8, len
	ldrsw	x0, [sp, 8]	// _9, shift
	sub	x1, x1, x0	// _10, _8, _9
// code.c:18:         strcpy(temp, xs + len - shift);
	adrp	x0, xs.0	// tmp141,
	add	x0, x0, :lo12:xs.0	// tmp140, tmp141,
	add	x1, x1, x0	// _11, _10, tmp140
	add	x0, sp, 32	// tmp142,,
	bl	strcpy		//
// code.c:19:         temp[shift] = '\0';
	ldrsw	x0, [sp, 8]	// tmp143, shift
	add	x1, sp, 32	// tmp144,,
	strb	wzr, [x1, x0]	//, temp[shift_21(D)]
// code.c:20:         strncat(temp, xs, len - shift);
	ldr	w1, [sp, 28]	// tmp145, len
	ldr	w0, [sp, 8]	// tmp146, shift
	sub	w0, w1, w0	// _12, tmp145, tmp146
// code.c:20:         strncat(temp, xs, len - shift);
	sxtw	x0, w0	// _13, _12
	add	x3, sp, 32	// tmp147,,
	mov	x2, x0	//, _13
	adrp	x0, xs.0	// tmp148,
	add	x1, x0, :lo12:xs.0	//, tmp148,
	mov	x0, x3	//, tmp147
	bl	strncat		//
// code.c:21:         strcpy(xs, temp);
	add	x0, sp, 32	// tmp149,,
	mov	x1, x0	//, tmp149
	adrp	x0, xs.0	// tmp150,
	add	x0, x0, :lo12:xs.0	//, tmp150,
	bl	strcpy		//
.L5:
// code.c:24:     return xs;
	adrp	x0, xs.0	// tmp151,
	add	x0, x0, :lo12:xs.0	// _32, tmp151,
// code.c:24:     return xs;
	mov	x1, x0	// <retval>, _32
// code.c:25: }
	adrp	x0, :got:__stack_chk_guard	// tmp153,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp153,
	ldr	x3, [sp, 88]	// tmp155, D.5581
	ldr	x2, [x0]	// tmp156,
	subs	x3, x3, x2	// tmp155, tmp156
	mov	x2, 0	// tmp156
	beq	.L7		//,
	bl	__stack_chk_fail		//
.L7:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 112	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	xs.0
	.comm	xs.0,50,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
