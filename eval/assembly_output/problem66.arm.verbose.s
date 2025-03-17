	.arch armv8-a
	.file	"problem66.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
	str	w0, [sp, 12]	// x, x
	str	w1, [sp, 8]	// shift, shift
// problem66.c:5: char* func0(int x, int shift) {
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp107,
	ldr	x1, [x0]	// tmp154,
	str	x1, [sp, 88]	// tmp154, D.5621
	mov	x1, 0	// tmp154
// problem66.c:7:     sprintf(xs, "%d", x);
	ldr	w2, [sp, 12]	//, x
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, xs.1	// tmp109,
	add	x0, x0, :lo12:xs.1	//, tmp109,
	bl	sprintf		//
// problem66.c:8:     int len = strlen(xs);
	adrp	x0, xs.1	// tmp110,
	add	x0, x0, :lo12:xs.1	//, tmp110,
	bl	strlen		//
// problem66.c:8:     int len = strlen(xs);
	str	w0, [sp, 28]	// tmp111, len
// problem66.c:10:     if (len < shift) {
	ldr	w1, [sp, 28]	// tmp112, len
	ldr	w0, [sp, 8]	// tmp113, shift
	cmp	w1, w0	// tmp112, tmp113
	bge	.L2		//,
// problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	str	wzr, [sp, 24]	//, i
// problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	b	.L3		//
.L4:
// problem66.c:12:             char temp = xs[i];
	adrp	x0, xs.1	// tmp115,
	add	x1, x0, :lo12:xs.1	// tmp114, tmp115,
	ldrsw	x0, [sp, 24]	// tmp116, i
	ldrb	w0, [x1, x0]	// tmp117, xs[i_14]
	strb	w0, [sp, 23]	// tmp117, temp
// problem66.c:13:             xs[i] = xs[len - 1 - i];
	ldr	w0, [sp, 28]	// tmp118, len
	sub	w1, w0, #1	// _2, tmp118,
// problem66.c:13:             xs[i] = xs[len - 1 - i];
	ldr	w0, [sp, 24]	// tmp119, i
	sub	w2, w1, w0	// _3, _2, tmp119
// problem66.c:13:             xs[i] = xs[len - 1 - i];
	adrp	x0, xs.1	// tmp121,
	add	x1, x0, :lo12:xs.1	// tmp120, tmp121,
	sxtw	x0, w2	// tmp122, _3
	ldrb	w2, [x1, x0]	// _4, xs[_3]
// problem66.c:13:             xs[i] = xs[len - 1 - i];
	adrp	x0, xs.1	// tmp124,
	add	x1, x0, :lo12:xs.1	// tmp123, tmp124,
	ldrsw	x0, [sp, 24]	// tmp125, i
	strb	w2, [x1, x0]	// tmp126, xs[i_14]
// problem66.c:14:             xs[len - 1 - i] = temp;
	ldr	w0, [sp, 28]	// tmp127, len
	sub	w1, w0, #1	// _5, tmp127,
// problem66.c:14:             xs[len - 1 - i] = temp;
	ldr	w0, [sp, 24]	// tmp128, i
	sub	w2, w1, w0	// _6, _5, tmp128
// problem66.c:14:             xs[len - 1 - i] = temp;
	adrp	x0, xs.1	// tmp130,
	add	x1, x0, :lo12:xs.1	// tmp129, tmp130,
	sxtw	x0, w2	// tmp131, _6
	ldrb	w2, [sp, 23]	// tmp132, temp
	strb	w2, [x1, x0]	// tmp132, xs[_6]
// problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 24]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 24]	// tmp133, i
.L3:
// problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 28]	// tmp135, len
	lsr	w1, w0, 31	// tmp136, tmp135,
	add	w0, w1, w0	// tmp137, tmp136, tmp135
	asr	w0, w0, 1	// tmp138, tmp137,
	mov	w1, w0	// _7, tmp138
// problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 24]	// tmp139, i
	cmp	w0, w1	// tmp139, _7
	blt	.L4		//,
	b	.L5		//
.L2:
// problem66.c:18:         strcpy(temp, xs + len - shift);
	ldrsw	x1, [sp, 28]	// _8, len
	ldrsw	x0, [sp, 8]	// _9, shift
	sub	x1, x1, x0	// _10, _8, _9
// problem66.c:18:         strcpy(temp, xs + len - shift);
	adrp	x0, xs.1	// tmp141,
	add	x0, x0, :lo12:xs.1	// tmp140, tmp141,
	add	x1, x1, x0	// _11, _10, tmp140
	add	x0, sp, 32	// tmp142,,
	bl	strcpy		//
// problem66.c:19:         temp[shift] = '\0';
	ldrsw	x0, [sp, 8]	// tmp143, shift
	add	x1, sp, 32	// tmp144,,
	strb	wzr, [x1, x0]	//, temp[shift_21(D)]
// problem66.c:20:         strncat(temp, xs, len - shift);
	ldr	w1, [sp, 28]	// tmp145, len
	ldr	w0, [sp, 8]	// tmp146, shift
	sub	w0, w1, w0	// _12, tmp145, tmp146
// problem66.c:20:         strncat(temp, xs, len - shift);
	sxtw	x0, w0	// _13, _12
	add	x3, sp, 32	// tmp147,,
	mov	x2, x0	//, _13
	adrp	x0, xs.1	// tmp148,
	add	x1, x0, :lo12:xs.1	//, tmp148,
	mov	x0, x3	//, tmp147
	bl	strncat		//
// problem66.c:21:         strcpy(xs, temp);
	add	x0, sp, 32	// tmp149,,
	mov	x1, x0	//, tmp149
	adrp	x0, xs.1	// tmp150,
	add	x0, x0, :lo12:xs.1	//, tmp150,
	bl	strcpy		//
.L5:
// problem66.c:24:     return xs;
	adrp	x0, xs.1	// tmp151,
	add	x0, x0, :lo12:xs.1	// _32, tmp151,
// problem66.c:24:     return xs;
	mov	x1, x0	// <retval>, _32
// problem66.c:25: }
	adrp	x0, :got:__stack_chk_guard	// tmp153,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp153,
	ldr	x3, [sp, 88]	// tmp155, D.5621
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
	.section	.rodata
	.align	3
.LC1:
	.string	"001"
	.align	3
.LC2:
	.string	"problem66.c"
	.align	3
.LC3:
	.string	"strcmp(func0(100, 2), \"001\") == 0"
	.align	3
.LC4:
	.string	"12"
	.align	3
.LC5:
	.string	"strcmp(func0(12, 2), \"12\") == 0"
	.align	3
.LC6:
	.string	"79"
	.align	3
.LC7:
	.string	"strcmp(func0(97, 8), \"79\") == 0"
	.align	3
.LC8:
	.string	"21"
	.align	3
.LC9:
	.string	"strcmp(func0(12, 1), \"21\") == 0"
	.align	3
.LC10:
	.string	"11"
	.align	3
.LC11:
	.string	"strcmp(func0(11, 101), \"11\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	mov	w1, 2	//,
	mov	w0, 100	//,
	bl	func0		//
	mov	x2, x0	// _1,
// problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	adrp	x0, .LC1	// tmp104,
	add	x1, x0, :lo12:.LC1	//, tmp104,
	mov	x0, x2	//, _1
	bl	strcmp		//
// problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	cmp	w0, 0	// _2,
	beq	.L9		//,
// problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp106,
	add	x1, x0, :lo12:.LC2	//, tmp106,
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	__assert_fail		//
.L9:
// problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	mov	w1, 2	//,
	mov	w0, 12	//,
	bl	func0		//
	mov	x2, x0	// _3,
// problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	adrp	x0, .LC4	// tmp108,
	add	x1, x0, :lo12:.LC4	//, tmp108,
	mov	x0, x2	//, _3
	bl	strcmp		//
// problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	cmp	w0, 0	// _4,
	beq	.L10		//,
// problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp110,
	add	x1, x0, :lo12:.LC2	//, tmp110,
	adrp	x0, .LC5	// tmp111,
	add	x0, x0, :lo12:.LC5	//, tmp111,
	bl	__assert_fail		//
.L10:
// problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	mov	w1, 8	//,
	mov	w0, 97	//,
	bl	func0		//
	mov	x2, x0	// _5,
// problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	adrp	x0, .LC6	// tmp112,
	add	x1, x0, :lo12:.LC6	//, tmp112,
	mov	x0, x2	//, _5
	bl	strcmp		//
// problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	cmp	w0, 0	// _6,
	beq	.L11		//,
// problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 35	//,
	adrp	x0, .LC2	// tmp114,
	add	x1, x0, :lo12:.LC2	//, tmp114,
	adrp	x0, .LC7	// tmp115,
	add	x0, x0, :lo12:.LC7	//, tmp115,
	bl	__assert_fail		//
.L11:
// problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	mov	w1, 1	//,
	mov	w0, 12	//,
	bl	func0		//
	mov	x2, x0	// _7,
// problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	adrp	x0, .LC8	// tmp116,
	add	x1, x0, :lo12:.LC8	//, tmp116,
	mov	x0, x2	//, _7
	bl	strcmp		//
// problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	cmp	w0, 0	// _8,
	beq	.L12		//,
// problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 36	//,
	adrp	x0, .LC2	// tmp118,
	add	x1, x0, :lo12:.LC2	//, tmp118,
	adrp	x0, .LC9	// tmp119,
	add	x0, x0, :lo12:.LC9	//, tmp119,
	bl	__assert_fail		//
.L12:
// problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	mov	w1, 101	//,
	mov	w0, 11	//,
	bl	func0		//
	mov	x2, x0	// _9,
// problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	adrp	x0, .LC10	// tmp120,
	add	x1, x0, :lo12:.LC10	//, tmp120,
	mov	x0, x2	//, _9
	bl	strcmp		//
// problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	cmp	w0, 0	// _10,
	beq	.L13		//,
// problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp122,
	add	x1, x0, :lo12:.LC2	//, tmp122,
	adrp	x0, .LC11	// tmp123,
	add	x0, x0, :lo12:.LC11	//, tmp123,
	bl	__assert_fail		//
.L13:
// problem66.c:39:     return 0;
	mov	w0, 0	// _22,
// problem66.c:40: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.local	xs.1
	.comm	xs.1,50,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
