	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
	str	w0, [sp, 28]	// x, x
	str	w1, [sp, 24]	// shift, shift
// eval/problem66//code.c:5: char* func0(int x, int shift) {
	adrp	x0, :got:__stack_chk_guard	// tmp108,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp107, tmp108,
	ldr	x1, [x0]	// tmp156,
	str	x1, [sp, 104]	// tmp156, D.4965
	mov	x1, 0	// tmp156
// eval/problem66//code.c:7:     sprintf(xs, "%d", x);
	ldr	w2, [sp, 28]	//, x
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, xs.0	// tmp110,
	add	x0, x0, :lo12:xs.0	//, tmp110,
	bl	sprintf		//
// eval/problem66//code.c:8:     int len = strlen(xs);
	adrp	x0, xs.0	// tmp111,
	add	x0, x0, :lo12:xs.0	//, tmp111,
	bl	strlen		//
// eval/problem66//code.c:8:     int len = strlen(xs);
	str	w0, [sp, 44]	// tmp112, len
// eval/problem66//code.c:10:     if (len < shift) {
	ldr	w1, [sp, 44]	// tmp113, len
	ldr	w0, [sp, 24]	// tmp114, shift
	cmp	w1, w0	// tmp113, tmp114
	bge	.L2		//,
// eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	str	wzr, [sp, 40]	//, i
// eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	b	.L3		//
.L4:
// eval/problem66//code.c:12:             char temp = xs[i];
	adrp	x0, xs.0	// tmp116,
	add	x1, x0, :lo12:xs.0	// tmp115, tmp116,
	ldrsw	x0, [sp, 40]	// tmp117, i
	ldrb	w0, [x1, x0]	// tmp118, xs[i_14]
	strb	w0, [sp, 39]	// tmp118, temp
// eval/problem66//code.c:13:             xs[i] = xs[len - 1 - i];
	ldr	w0, [sp, 44]	// tmp119, len
	sub	w1, w0, #1	// _2, tmp119,
// eval/problem66//code.c:13:             xs[i] = xs[len - 1 - i];
	ldr	w0, [sp, 40]	// tmp120, i
	sub	w2, w1, w0	// _3, _2, tmp120
// eval/problem66//code.c:13:             xs[i] = xs[len - 1 - i];
	adrp	x0, xs.0	// tmp122,
	add	x1, x0, :lo12:xs.0	// tmp121, tmp122,
	sxtw	x0, w2	// tmp123, _3
	ldrb	w2, [x1, x0]	// _4, xs[_3]
// eval/problem66//code.c:13:             xs[i] = xs[len - 1 - i];
	adrp	x0, xs.0	// tmp125,
	add	x1, x0, :lo12:xs.0	// tmp124, tmp125,
	ldrsw	x0, [sp, 40]	// tmp126, i
	strb	w2, [x1, x0]	// tmp127, xs[i_14]
// eval/problem66//code.c:14:             xs[len - 1 - i] = temp;
	ldr	w0, [sp, 44]	// tmp128, len
	sub	w1, w0, #1	// _5, tmp128,
// eval/problem66//code.c:14:             xs[len - 1 - i] = temp;
	ldr	w0, [sp, 40]	// tmp129, i
	sub	w2, w1, w0	// _6, _5, tmp129
// eval/problem66//code.c:14:             xs[len - 1 - i] = temp;
	adrp	x0, xs.0	// tmp131,
	add	x1, x0, :lo12:xs.0	// tmp130, tmp131,
	sxtw	x0, w2	// tmp132, _6
	ldrb	w2, [sp, 39]	// tmp133, temp
	strb	w2, [x1, x0]	// tmp133, xs[_6]
// eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 40]	// tmp135, i
	add	w0, w0, 1	// tmp134, tmp135,
	str	w0, [sp, 40]	// tmp134, i
.L3:
// eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 44]	// tmp136, len
	lsr	w1, w0, 31	// tmp137, tmp136,
	add	w0, w1, w0	// tmp138, tmp137, tmp136
	asr	w0, w0, 1	// tmp139, tmp138,
	mov	w1, w0	// _7, tmp139
// eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 40]	// tmp140, i
	cmp	w0, w1	// tmp140, _7
	blt	.L4		//,
	b	.L5		//
.L2:
// eval/problem66//code.c:18:         strcpy(temp, xs + len - shift);
	ldrsw	x1, [sp, 44]	// _8, len
	ldrsw	x0, [sp, 24]	// _9, shift
	sub	x1, x1, x0	// _10, _8, _9
// eval/problem66//code.c:18:         strcpy(temp, xs + len - shift);
	adrp	x0, xs.0	// tmp142,
	add	x0, x0, :lo12:xs.0	// tmp141, tmp142,
	add	x1, x1, x0	// _11, _10, tmp141
	add	x0, sp, 48	// tmp143,,
	bl	strcpy		//
// eval/problem66//code.c:19:         temp[shift] = '\0';
	ldrsw	x0, [sp, 24]	// tmp144, shift
	add	x1, sp, 48	// tmp145,,
	strb	wzr, [x1, x0]	//, temp[shift_21(D)]
// eval/problem66//code.c:20:         strncat(temp, xs, len - shift);
	ldr	w1, [sp, 44]	// tmp146, len
	ldr	w0, [sp, 24]	// tmp147, shift
	sub	w0, w1, w0	// _12, tmp146, tmp147
// eval/problem66//code.c:20:         strncat(temp, xs, len - shift);
	sxtw	x0, w0	// _13, _12
	add	x3, sp, 48	// tmp148,,
	mov	x2, x0	//, _13
	adrp	x0, xs.0	// tmp149,
	add	x1, x0, :lo12:xs.0	//, tmp149,
	mov	x0, x3	//, tmp148
	bl	strncat		//
// eval/problem66//code.c:21:         strcpy(xs, temp);
	add	x0, sp, 48	// tmp150,,
	mov	x1, x0	//, tmp150
	adrp	x0, xs.0	// tmp151,
	add	x0, x0, :lo12:xs.0	//, tmp151,
	bl	strcpy		//
.L5:
// eval/problem66//code.c:24:     return xs;
	adrp	x0, xs.0	// tmp152,
	add	x0, x0, :lo12:xs.0	// _32, tmp152,
	mov	x1, x0	// <retval>, _32
// eval/problem66//code.c:25: }
	adrp	x0, :got:__stack_chk_guard	// tmp155,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp154, tmp155,
	ldr	x3, [sp, 104]	// tmp157, D.4965
	ldr	x2, [x0]	// tmp158,
	subs	x3, x3, x2	// tmp157, tmp158
	mov	x2, 0	// tmp158
	beq	.L7		//,
	bl	__stack_chk_fail		//
.L7:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 112	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	xs.0
	.comm	xs.0,50,8
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
