	.arch armv8-a
	.file	"problem22.c"
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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// numbers, numbers
	str	w1, [sp, 4]	// size, size
// problem22.c:5:     float min = numbers[0], max = numbers[0];
	ldr	x0, [sp, 8]	// tmp116, numbers
	ldr	s0, [x0]	// tmp117, *numbers_33(D)
	str	s0, [sp, 16]	// tmp117, min
// problem22.c:5:     float min = numbers[0], max = numbers[0];
	ldr	x0, [sp, 8]	// tmp118, numbers
	ldr	s0, [x0]	// tmp119, *numbers_33(D)
	str	s0, [sp, 20]	// tmp119, max
// problem22.c:6:     for (int i = 1; i < size; i++) {
	mov	w0, 1	// tmp120,
	str	w0, [sp, 24]	// tmp120, i
// problem22.c:6:     for (int i = 1; i < size; i++) {
	b	.L2		//
.L7:
// problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	ldrsw	x0, [sp, 24]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp121, numbers
	add	x0, x1, x0	// _3, tmp121, _2
	ldr	s0, [x0]	// _4, *_3
// problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	ldr	s1, [sp, 16]	// tmp122, min
	fcmpe	s1, s0	// tmp122, _4
	bgt	.L10		//,
	b	.L3		//
.L10:
// problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	ldrsw	x0, [sp, 24]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp123, numbers
	add	x0, x1, x0	// _7, tmp123, _6
// problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	ldr	s0, [x0]	// tmp124, *_7
	str	s0, [sp, 16]	// tmp124, min
.L3:
// problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	ldrsw	x0, [sp, 24]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 8]	// tmp125, numbers
	add	x0, x1, x0	// _10, tmp125, _9
	ldr	s0, [x0]	// _11, *_10
// problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	ldr	s1, [sp, 20]	// tmp126, max
	fcmpe	s1, s0	// tmp126, _11
	bmi	.L11		//,
	b	.L5		//
.L11:
// problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	ldrsw	x0, [sp, 24]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 8]	// tmp127, numbers
	add	x0, x1, x0	// _14, tmp127, _13
// problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	ldr	s0, [x0]	// tmp128, *_14
	str	s0, [sp, 20]	// tmp128, max
.L5:
// problem22.c:6:     for (int i = 1; i < size; i++) {
	ldr	w0, [sp, 24]	// tmp130, i
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 24]	// tmp129, i
.L2:
// problem22.c:6:     for (int i = 1; i < size; i++) {
	ldr	w1, [sp, 24]	// tmp131, i
	ldr	w0, [sp, 4]	// tmp132, size
	cmp	w1, w0	// tmp131, tmp132
	blt	.L7		//,
// problem22.c:10:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 28]	//, i
// problem22.c:10:     for (int i = 0; i < size; i++) {
	b	.L8		//
.L9:
// problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	ldrsw	x0, [sp, 28]	// _15, i
	lsl	x0, x0, 2	// _16, _15,
	ldr	x1, [sp, 8]	// tmp133, numbers
	add	x0, x1, x0	// _17, tmp133, _16
	ldr	s1, [x0]	// _18, *_17
// problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	ldr	s0, [sp, 16]	// tmp134, min
	fsub	s1, s1, s0	// _19, _18, tmp134
// problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	ldr	s2, [sp, 20]	// tmp135, max
	ldr	s0, [sp, 16]	// tmp136, min
	fsub	s0, s2, s0	// _20, tmp135, tmp136
// problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	ldrsw	x0, [sp, 28]	// _21, i
	lsl	x0, x0, 2	// _22, _21,
	ldr	x1, [sp, 8]	// tmp137, numbers
	add	x0, x1, x0	// _23, tmp137, _22
// problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fdiv	s0, s1, s0	// _24, _19, _20
// problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	str	s0, [x0]	// _24, *_23
// problem22.c:10:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp139, i
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 28]	// tmp138, i
.L8:
// problem22.c:10:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp140, i
	ldr	w0, [sp, 4]	// tmp141, size
	cmp	w1, w0	// tmp140, tmp141
	blt	.L9		//,
// problem22.c:13: }
	nop	
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
	str	w2, [sp, 12]	// size, size
// problem22.c:21:     const float EPSILON = 1e-4;
	mov	w0, 46871	// tmp113,
	movk	w0, 0x38d1, lsl 16	// tmp113,,
	fmov	s0, w0	// tmp104, tmp113
	str	s0, [sp, 44]	// tmp104, EPSILON
// problem22.c:22:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 40]	//, i
// problem22.c:22:     for (int i = 0; i < size; i++) {
	b	.L13		//
.L17:
// problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	ldrsw	x0, [sp, 40]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	s1, [x0]	// _4, *_3
// problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	ldrsw	x0, [sp, 40]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 16]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
	ldr	s0, [x0]	// _8, *_7
// problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fsub	s0, s1, s0	// _9, _4, _8
// problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fabs	s0, s0	// _10, _9
// problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	ldr	s1, [sp, 44]	// tmp107, EPSILON
	fcmpe	s1, s0	// tmp107, _10
	bmi	.L18		//,
	b	.L19		//
.L18:
// problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	mov	w0, 0	// _12,
	b	.L16		//
.L19:
// problem22.c:22:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 40]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 40]	// tmp108, i
.L13:
// problem22.c:22:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 40]	// tmp110, i
	ldr	w0, [sp, 12]	// tmp111, size
	cmp	w1, w0	// tmp110, tmp111
	blt	.L17		//,
// problem22.c:25:     return 1;
	mov	w0, 1	// _12,
.L16:
// problem22.c:26: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem22.c"
	.align	3
.LC6:
	.string	"issame(test1, expected1, 2)"
	.align	3
.LC7:
	.string	"issame(test2, expected2, 2)"
	.align	3
.LC8:
	.string	"issame(test3, expected3, 5)"
	.align	3
.LC9:
	.string	"issame(test4, expected4, 5)"
	.align	3
.LC10:
	.string	"issame(test5, expected5, 5)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!	//,,,
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp	//,
// problem22.c:28: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x1, [x0]	// tmp179,
	str	x1, [sp, 200]	// tmp179, D.5376
	mov	x1, 0	// tmp179
// problem22.c:29:     float test1[] = {2.0, 49.9};
	fmov	s0, 2.0e+0	// tmp101,
	str	s0, [sp, 24]	// tmp101, test1[0]
	mov	w0, 39322	// tmp178,
	movk	w0, 0x4247, lsl 16	// tmp178,,
	fmov	s0, w0	// tmp102, tmp178
	str	s0, [sp, 28]	// tmp102, test1[1]
// problem22.c:30:     float expected1[] = {0.0, 1.0};
	str	wzr, [sp, 32]	//, expected1[0]
	fmov	s0, 1.0e+0	// tmp103,
	str	s0, [sp, 36]	// tmp103, expected1[1]
// problem22.c:31:     func0(test1, 2);
	add	x0, sp, 24	// tmp104,,
	mov	w1, 2	//,
	bl	func0		//
// problem22.c:32:     assert(issame(test1, expected1, 2));
	add	x1, sp, 32	// tmp105,,
	add	x0, sp, 24	// tmp106,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L21		//,
// problem22.c:32:     assert(issame(test1, expected1, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 32	//,
	adrp	x0, .LC5	// tmp108,
	add	x1, x0, :lo12:.LC5	//, tmp108,
	adrp	x0, .LC6	// tmp109,
	add	x0, x0, :lo12:.LC6	//, tmp109,
	bl	__assert_fail		//
.L21:
// problem22.c:34:     float test2[] = {100.0, 49.9};
	mov	w0, 1120403456	// tmp176,
	fmov	s0, w0	// tmp110, tmp176
	str	s0, [sp, 40]	// tmp110, test2[0]
	mov	w0, 39322	// tmp177,
	movk	w0, 0x4247, lsl 16	// tmp177,,
	fmov	s0, w0	// tmp111, tmp177
	str	s0, [sp, 44]	// tmp111, test2[1]
// problem22.c:35:     float expected2[] = {1.0, 0.0};
	fmov	s0, 1.0e+0	// tmp112,
	str	s0, [sp, 48]	// tmp112, expected2[0]
	str	wzr, [sp, 52]	//, expected2[1]
// problem22.c:36:     func0(test2, 2);
	add	x0, sp, 40	// tmp113,,
	mov	w1, 2	//,
	bl	func0		//
// problem22.c:37:     assert(issame(test2, expected2, 2));
	add	x1, sp, 48	// tmp114,,
	add	x0, sp, 40	// tmp115,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L22		//,
// problem22.c:37:     assert(issame(test2, expected2, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 37	//,
	adrp	x0, .LC5	// tmp117,
	add	x1, x0, :lo12:.LC5	//, tmp117,
	adrp	x0, .LC7	// tmp118,
	add	x0, x0, :lo12:.LC7	//, tmp118,
	bl	__assert_fail		//
.L22:
// problem22.c:39:     float test3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	adrp	x0, .LC0	// tmp120,
	add	x0, x0, :lo12:.LC0	// tmp119, tmp120,
	add	x2, sp, 56	// tmp121,,
	mov	x3, x0	// tmp122, tmp119
	ldp	x0, x1, [x3]	// tmp123,
	stp	x0, x1, [x2]	// tmp123, test3
	ldr	w0, [x3, 16]	// tmp124,
	str	w0, [x2, 16]	// tmp124, test3
// problem22.c:40:     float expected3[] = {0.0, 0.25, 0.5, 0.75, 1.0};
	adrp	x0, .LC1	// tmp126,
	add	x0, x0, :lo12:.LC1	// tmp125, tmp126,
	add	x2, sp, 80	// tmp127,,
	mov	x3, x0	// tmp128, tmp125
	ldp	x0, x1, [x3]	// tmp129,
	stp	x0, x1, [x2]	// tmp129, expected3
	ldr	w0, [x3, 16]	// tmp130,
	str	w0, [x2, 16]	// tmp130, expected3
// problem22.c:41:     func0(test3, 5);
	add	x0, sp, 56	// tmp131,,
	mov	w1, 5	//,
	bl	func0		//
// problem22.c:42:     assert(issame(test3, expected3, 5));
	add	x1, sp, 80	// tmp132,,
	add	x0, sp, 56	// tmp133,,
	mov	w2, 5	//,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L23		//,
// problem22.c:42:     assert(issame(test3, expected3, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 42	//,
	adrp	x0, .LC5	// tmp135,
	add	x1, x0, :lo12:.LC5	//, tmp135,
	adrp	x0, .LC8	// tmp136,
	add	x0, x0, :lo12:.LC8	//, tmp136,
	bl	__assert_fail		//
.L23:
// problem22.c:44:     float test4[] = {2.0, 1.0, 5.0, 3.0, 4.0};
	adrp	x0, .LC2	// tmp138,
	add	x0, x0, :lo12:.LC2	// tmp137, tmp138,
	add	x2, sp, 104	// tmp139,,
	mov	x3, x0	// tmp140, tmp137
	ldp	x0, x1, [x3]	// tmp141,
	stp	x0, x1, [x2]	// tmp141, test4
	ldr	w0, [x3, 16]	// tmp142,
	str	w0, [x2, 16]	// tmp142, test4
// problem22.c:45:     float expected4[] = {0.25, 0.0, 1.0, 0.5, 0.75};
	adrp	x0, .LC3	// tmp144,
	add	x0, x0, :lo12:.LC3	// tmp143, tmp144,
	add	x2, sp, 128	// tmp145,,
	mov	x3, x0	// tmp146, tmp143
	ldp	x0, x1, [x3]	// tmp147,
	stp	x0, x1, [x2]	// tmp147, expected4
	ldr	w0, [x3, 16]	// tmp148,
	str	w0, [x2, 16]	// tmp148, expected4
// problem22.c:46:     func0(test4, 5);
	add	x0, sp, 104	// tmp149,,
	mov	w1, 5	//,
	bl	func0		//
// problem22.c:47:     assert(issame(test4, expected4, 5));
	add	x1, sp, 128	// tmp150,,
	add	x0, sp, 104	// tmp151,,
	mov	w2, 5	//,
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L24		//,
// problem22.c:47:     assert(issame(test4, expected4, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 47	//,
	adrp	x0, .LC5	// tmp153,
	add	x1, x0, :lo12:.LC5	//, tmp153,
	adrp	x0, .LC9	// tmp154,
	add	x0, x0, :lo12:.LC9	//, tmp154,
	bl	__assert_fail		//
.L24:
// problem22.c:49:     float test5[] = {12.0, 11.0, 15.0, 13.0, 14.0};
	adrp	x0, .LC4	// tmp156,
	add	x0, x0, :lo12:.LC4	// tmp155, tmp156,
	add	x2, sp, 152	// tmp157,,
	mov	x3, x0	// tmp158, tmp155
	ldp	x0, x1, [x3]	// tmp159,
	stp	x0, x1, [x2]	// tmp159, test5
	ldr	w0, [x3, 16]	// tmp160,
	str	w0, [x2, 16]	// tmp160, test5
// problem22.c:50:     float expected5[] = {0.25, 0.0, 1.0, 0.5, 0.75};
	adrp	x0, .LC3	// tmp162,
	add	x0, x0, :lo12:.LC3	// tmp161, tmp162,
	add	x2, sp, 176	// tmp163,,
	mov	x3, x0	// tmp164, tmp161
	ldp	x0, x1, [x3]	// tmp165,
	stp	x0, x1, [x2]	// tmp165, expected5
	ldr	w0, [x3, 16]	// tmp166,
	str	w0, [x2, 16]	// tmp166, expected5
// problem22.c:51:     func0(test5, 5);
	add	x0, sp, 152	// tmp167,,
	mov	w1, 5	//,
	bl	func0		//
// problem22.c:52:     assert(issame(test5, expected5, 5));
	add	x1, sp, 176	// tmp168,,
	add	x0, sp, 152	// tmp169,,
	mov	w2, 5	//,
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L25		//,
// problem22.c:52:     assert(issame(test5, expected5, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp170,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp170,
	mov	w2, 52	//,
	adrp	x0, .LC5	// tmp171,
	add	x1, x0, :lo12:.LC5	//, tmp171,
	adrp	x0, .LC10	// tmp172,
	add	x0, x0, :lo12:.LC10	//, tmp172,
	bl	__assert_fail		//
.L25:
// problem22.c:54:     return 0;
	mov	w0, 0	// _36,
// problem22.c:55: }
	mov	w1, w0	// <retval>, _36
	adrp	x0, :got:__stack_chk_guard	// tmp175,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp174, tmp175,
	ldr	x3, [sp, 200]	// tmp180, D.5376
	ldr	x2, [x0]	// tmp181,
	subs	x3, x3, x2	// tmp180, tmp181
	mov	x2, 0	// tmp181
	beq	.L27		//,
	bl	__stack_chk_fail		//
.L27:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 208	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	0
	.word	1048576000
	.word	1056964608
	.word	1061158912
	.word	1065353216
	.align	3
.LC2:
	.word	1073741824
	.word	1065353216
	.word	1084227584
	.word	1077936128
	.word	1082130432
	.align	3
.LC3:
	.word	1048576000
	.word	0
	.word	1065353216
	.word	1056964608
	.word	1061158912
	.align	3
.LC4:
	.word	1094713344
	.word	1093664768
	.word	1097859072
	.word	1095761920
	.word	1096810496
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
