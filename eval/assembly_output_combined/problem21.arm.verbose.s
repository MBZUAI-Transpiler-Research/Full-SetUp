	.arch armv8-a
	.file	"problem21.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]	// numbers, numbers
	str	w1, [sp, 20]	// size, size
	str	x2, [sp, 8]	// out, out
// problem21.c:6:     float min_diff = FLT_MAX;
	mov	w0, 2139095039	// tmp151,
	fmov	s0, w0	// tmp118, tmp151
	str	s0, [sp, 44]	// tmp118, min_diff
// problem21.c:9:     out[0] = numbers[0];
	ldr	x0, [sp, 24]	// tmp119, numbers
	ldr	s0, [x0]	// _1, *numbers_38(D)
// problem21.c:9:     out[0] = numbers[0];
	ldr	x0, [sp, 8]	// tmp120, out
	str	s0, [x0]	// _1, *out_39(D)
// problem21.c:10:     out[1] = numbers[1];
	ldr	x0, [sp, 8]	// tmp121, out
	add	x0, x0, 4	// _2, tmp121,
// problem21.c:10:     out[1] = numbers[1];
	ldr	x1, [sp, 24]	// tmp122, numbers
	ldr	s0, [x1, 4]	// _3, MEM[(float *)numbers_38(D) + 4B]
	str	s0, [x0]	// _3, *_2
// problem21.c:12:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 48]	//, i
// problem21.c:12:     for (i = 0; i < size; i++) {
	b	.L2		//
.L7:
// problem21.c:13:         for (j = i + 1; j < size; j++) {
	ldr	w0, [sp, 48]	// tmp124, i
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 52]	// tmp123, j
// problem21.c:13:         for (j = i + 1; j < size; j++) {
	b	.L3		//
.L6:
// problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	ldrsw	x0, [sp, 48]	// _4, i
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 24]	// tmp125, numbers
	add	x0, x1, x0	// _6, tmp125, _5
	ldr	s1, [x0]	// _7, *_6
// problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	ldrsw	x0, [sp, 52]	// _8, j
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 24]	// tmp126, numbers
	add	x0, x1, x0	// _10, tmp126, _9
	ldr	s0, [x0]	// _11, *_10
// problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fsub	s0, s1, s0	// _12, _7, _11
// problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fabs	s0, s0	// tmp127, _12
	str	s0, [sp, 60]	// tmp127, diff
// problem21.c:15:             if (diff < min_diff) {
	ldr	s1, [sp, 60]	// tmp128, diff
	ldr	s0, [sp, 44]	// tmp129, min_diff
	fcmpe	s1, s0	// tmp128, tmp129
	bmi	.L10		//,
	b	.L4		//
.L10:
// problem21.c:16:                 min_diff = diff;
	ldr	s0, [sp, 60]	// tmp130, diff
	str	s0, [sp, 44]	// tmp130, min_diff
// problem21.c:17:                 out[0] = numbers[i];
	ldrsw	x0, [sp, 48]	// _13, i
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 24]	// tmp131, numbers
	add	x0, x1, x0	// _15, tmp131, _14
	ldr	s0, [x0]	// _16, *_15
// problem21.c:17:                 out[0] = numbers[i];
	ldr	x0, [sp, 8]	// tmp132, out
	str	s0, [x0]	// _16, *out_39(D)
// problem21.c:18:                 out[1] = numbers[j];
	ldrsw	x0, [sp, 52]	// _17, j
	lsl	x0, x0, 2	// _18, _17,
	ldr	x1, [sp, 24]	// tmp133, numbers
	add	x1, x1, x0	// _19, tmp133, _18
// problem21.c:18:                 out[1] = numbers[j];
	ldr	x0, [sp, 8]	// tmp134, out
	add	x0, x0, 4	// _20, tmp134,
// problem21.c:18:                 out[1] = numbers[j];
	ldr	s0, [x1]	// _21, *_19
// problem21.c:18:                 out[1] = numbers[j];
	str	s0, [x0]	// _21, *_20
.L4:
// problem21.c:13:         for (j = i + 1; j < size; j++) {
	ldr	w0, [sp, 52]	// tmp136, j
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp, 52]	// tmp135, j
.L3:
// problem21.c:13:         for (j = i + 1; j < size; j++) {
	ldr	w1, [sp, 52]	// tmp137, j
	ldr	w0, [sp, 20]	// tmp138, size
	cmp	w1, w0	// tmp137, tmp138
	blt	.L6		//,
// problem21.c:12:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 48]	// tmp140, i
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 48]	// tmp139, i
.L2:
// problem21.c:12:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 48]	// tmp141, i
	ldr	w0, [sp, 20]	// tmp142, size
	cmp	w1, w0	// tmp141, tmp142
	blt	.L7		//,
// problem21.c:23:     if (out[0] > out[1]) {
	ldr	x0, [sp, 8]	// tmp143, out
	ldr	s1, [x0]	// _22, *out_39(D)
// problem21.c:23:     if (out[0] > out[1]) {
	ldr	x0, [sp, 8]	// tmp144, out
	add	x0, x0, 4	// _23, tmp144,
	ldr	s0, [x0]	// _24, *_23
// problem21.c:23:     if (out[0] > out[1]) {
	fcmpe	s1, s0	// _22, _24
	bgt	.L11		//,
// problem21.c:28: }
	b	.L12		//
.L11:
// problem21.c:24:         float temp = out[0];
	ldr	x0, [sp, 8]	// tmp145, out
	ldr	s0, [x0]	// tmp146, *out_39(D)
	str	s0, [sp, 56]	// tmp146, temp
// problem21.c:25:         out[0] = out[1];
	ldr	x0, [sp, 8]	// tmp147, out
	ldr	s0, [x0, 4]	// _25, MEM[(float *)out_39(D) + 4B]
	ldr	x0, [sp, 8]	// tmp148, out
	str	s0, [x0]	// _25, *out_39(D)
// problem21.c:26:         out[1] = temp;
	ldr	x0, [sp, 8]	// tmp149, out
	add	x0, x0, 4	// _26, tmp149,
// problem21.c:26:         out[1] = temp;
	ldr	s0, [sp, 56]	// tmp150, temp
	str	s0, [x0]	// tmp150, *_26
.L12:
// problem21.c:28: }
	nop	
	add	sp, sp, 64	//,,
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
// problem21.c:36:     const float EPSILON = 1e-4;
	mov	w0, 46871	// tmp113,
	movk	w0, 0x38d1, lsl 16	// tmp113,,
	fmov	s0, w0	// tmp104, tmp113
	str	s0, [sp, 44]	// tmp104, EPSILON
// problem21.c:37:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 40]	//, i
// problem21.c:37:     for (int i = 0; i < size; i++) {
	b	.L14		//
.L18:
// problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	ldrsw	x0, [sp, 40]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	s1, [x0]	// _4, *_3
// problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	ldrsw	x0, [sp, 40]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 16]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
	ldr	s0, [x0]	// _8, *_7
// problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fsub	s0, s1, s0	// _9, _4, _8
// problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fabs	s0, s0	// _10, _9
// problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	ldr	s1, [sp, 44]	// tmp107, EPSILON
	fcmpe	s1, s0	// tmp107, _10
	bmi	.L19		//,
	b	.L20		//
.L19:
// problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	mov	w0, 0	// _12,
// problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	b	.L17		//
.L20:
// problem21.c:37:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 40]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 40]	// tmp108, i
.L14:
// problem21.c:37:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 40]	// tmp110, i
	ldr	w0, [sp, 12]	// tmp111, size
	cmp	w1, w0	// tmp110, tmp111
	blt	.L18		//,
// problem21.c:40:     return 1;
	mov	w0, 1	// _12,
.L17:
// problem21.c:41: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem21.c"
	.align	3
.LC6:
	.string	"issame(result, expected1, 2)"
	.align	3
.LC7:
	.string	"issame(result, expected2, 2)"
	.align	3
.LC8:
	.string	"issame(result, expected3, 2)"
	.align	3
.LC9:
	.string	"issame(result, expected4, 2)"
	.align	3
.LC10:
	.string	"issame(result, expected5, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #192	//,,
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176	//,,
// problem21.c:43: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp99,
	ldr	x1, [x0]	// tmp182,
	str	x1, [sp, 168]	// tmp182, D.6122
	mov	x1, 0	// tmp182
// problem21.c:46:     float test1[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
	adrp	x0, .LC0	// tmp101,
	add	x0, x0, :lo12:.LC0	// tmp100, tmp101,
	add	x2, sp, 96	// tmp102,,
	mov	x3, x0	// tmp103, tmp100
	ldp	x0, x1, [x3]	// tmp104,
	stp	x0, x1, [x2]	// tmp104, test1
	ldr	x0, [x3, 16]	// tmp105,
	str	x0, [x2, 16]	// tmp105, test1
// problem21.c:47:     float expected1[] = {3.9, 4.0};
	mov	w0, 39322	// tmp181,
	movk	w0, 0x4079, lsl 16	// tmp181,,
	fmov	s0, w0	// tmp106, tmp181
	str	s0, [sp, 8]	// tmp106, expected1[0]
	fmov	s0, 4.0e+0	// tmp107,
	str	s0, [sp, 12]	// tmp107, expected1[1]
// problem21.c:48:     func0(test1, 6, result);
	mov	x1, sp	// tmp108,
	add	x0, sp, 96	// tmp109,,
	mov	x2, x1	//, tmp108
	mov	w1, 6	//,
	bl	func0		//
// problem21.c:49:     assert(issame(result, expected1, 2));
	add	x1, sp, 8	// tmp110,,
	mov	x0, sp	// tmp111,
	mov	w2, 2	//,
	bl	issame		//
// problem21.c:49:     assert(issame(result, expected1, 2));
	cmp	w0, 0	// _1,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 49	//,
	adrp	x0, .LC5	// tmp113,
	add	x1, x0, :lo12:.LC5	//, tmp113,
	adrp	x0, .LC6	// tmp114,
	add	x0, x0, :lo12:.LC6	//, tmp114,
	bl	__assert_fail		//
.L22:
// problem21.c:51:     float test2[] = {1.0, 2.0, 5.9, 4.0, 5.0};
	adrp	x0, .LC1	// tmp116,
	add	x0, x0, :lo12:.LC1	// tmp115, tmp116,
	add	x2, sp, 48	// tmp117,,
	mov	x3, x0	// tmp118, tmp115
	ldp	x0, x1, [x3]	// tmp119,
	stp	x0, x1, [x2]	// tmp119, test2
	ldr	w0, [x3, 16]	// tmp120,
	str	w0, [x2, 16]	// tmp120, test2
// problem21.c:52:     float expected2[] = {5.0, 5.9};
	fmov	s0, 5.0e+0	// tmp121,
	str	s0, [sp, 16]	// tmp121, expected2[0]
	mov	w0, 52429	// tmp180,
	movk	w0, 0x40bc, lsl 16	// tmp180,,
	fmov	s0, w0	// tmp122, tmp180
	str	s0, [sp, 20]	// tmp122, expected2[1]
// problem21.c:53:     func0(test2, 5, result);
	mov	x1, sp	// tmp123,
	add	x0, sp, 48	// tmp124,,
	mov	x2, x1	//, tmp123
	mov	w1, 5	//,
	bl	func0		//
// problem21.c:54:     assert(issame(result, expected2, 2));
	add	x1, sp, 16	// tmp125,,
	mov	x0, sp	// tmp126,
	mov	w2, 2	//,
	bl	issame		//
// problem21.c:54:     assert(issame(result, expected2, 2));
	cmp	w0, 0	// _2,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 54	//,
	adrp	x0, .LC5	// tmp128,
	add	x1, x0, :lo12:.LC5	//, tmp128,
	adrp	x0, .LC7	// tmp129,
	add	x0, x0, :lo12:.LC7	//, tmp129,
	bl	__assert_fail		//
.L23:
// problem21.c:56:     float test3[] = {1.0, 2.0, 3.0, 4.0, 5.0, 2.2};
	adrp	x0, .LC2	// tmp131,
	add	x0, x0, :lo12:.LC2	// tmp130, tmp131,
	add	x2, sp, 120	// tmp132,,
	mov	x3, x0	// tmp133, tmp130
	ldp	x0, x1, [x3]	// tmp134,
	stp	x0, x1, [x2]	// tmp134, test3
	ldr	x0, [x3, 16]	// tmp135,
	str	x0, [x2, 16]	// tmp135, test3
// problem21.c:57:     float expected3[] = {2.0, 2.2};
	fmov	s0, 2.0e+0	// tmp136,
	str	s0, [sp, 24]	// tmp136, expected3[0]
	mov	w0, 52429	// tmp179,
	movk	w0, 0x400c, lsl 16	// tmp179,,
	fmov	s0, w0	// tmp137, tmp179
	str	s0, [sp, 28]	// tmp137, expected3[1]
// problem21.c:58:     func0(test3, 6, result);
	mov	x1, sp	// tmp138,
	add	x0, sp, 120	// tmp139,,
	mov	x2, x1	//, tmp138
	mov	w1, 6	//,
	bl	func0		//
// problem21.c:59:     assert(issame(result, expected3, 2));
	add	x1, sp, 24	// tmp140,,
	mov	x0, sp	// tmp141,
	mov	w2, 2	//,
	bl	issame		//
// problem21.c:59:     assert(issame(result, expected3, 2));
	cmp	w0, 0	// _3,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 59	//,
	adrp	x0, .LC5	// tmp143,
	add	x1, x0, :lo12:.LC5	//, tmp143,
	adrp	x0, .LC8	// tmp144,
	add	x0, x0, :lo12:.LC8	//, tmp144,
	bl	__assert_fail		//
.L24:
// problem21.c:61:     float test4[] = {1.0, 2.0, 3.0, 4.0, 5.0, 2.0};
	adrp	x0, .LC3	// tmp146,
	add	x0, x0, :lo12:.LC3	// tmp145, tmp146,
	add	x2, sp, 144	// tmp147,,
	mov	x3, x0	// tmp148, tmp145
	ldp	x0, x1, [x3]	// tmp149,
	stp	x0, x1, [x2]	// tmp149, test4
	ldr	x0, [x3, 16]	// tmp150,
	str	x0, [x2, 16]	// tmp150, test4
// problem21.c:62:     float expected4[] = {2.0, 2.0};
	fmov	s0, 2.0e+0	// tmp151,
	str	s0, [sp, 32]	// tmp151, expected4[0]
	fmov	s0, 2.0e+0	// tmp152,
	str	s0, [sp, 36]	// tmp152, expected4[1]
// problem21.c:63:     func0(test4, 6, result);
	mov	x1, sp	// tmp153,
	add	x0, sp, 144	// tmp154,,
	mov	x2, x1	//, tmp153
	mov	w1, 6	//,
	bl	func0		//
// problem21.c:64:     assert(issame(result, expected4, 2));
	add	x1, sp, 32	// tmp155,,
	mov	x0, sp	// tmp156,
	mov	w2, 2	//,
	bl	issame		//
// problem21.c:64:     assert(issame(result, expected4, 2));
	cmp	w0, 0	// _4,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 64	//,
	adrp	x0, .LC5	// tmp158,
	add	x1, x0, :lo12:.LC5	//, tmp158,
	adrp	x0, .LC9	// tmp159,
	add	x0, x0, :lo12:.LC9	//, tmp159,
	bl	__assert_fail		//
.L25:
// problem21.c:66:     float test5[] = {1.1, 2.2, 3.1, 4.1, 5.1};
	adrp	x0, .LC4	// tmp161,
	add	x0, x0, :lo12:.LC4	// tmp160, tmp161,
	add	x2, sp, 72	// tmp162,,
	mov	x3, x0	// tmp163, tmp160
	ldp	x0, x1, [x3]	// tmp164,
	stp	x0, x1, [x2]	// tmp164, test5
	ldr	w0, [x3, 16]	// tmp165,
	str	w0, [x2, 16]	// tmp165, test5
// problem21.c:67:     float expected5[] = {2.2, 3.1};
	mov	w0, 52429	// tmp177,
	movk	w0, 0x400c, lsl 16	// tmp177,,
	fmov	s0, w0	// tmp166, tmp177
	str	s0, [sp, 40]	// tmp166, expected5[0]
	mov	w0, 26214	// tmp178,
	movk	w0, 0x4046, lsl 16	// tmp178,,
	fmov	s0, w0	// tmp167, tmp178
	str	s0, [sp, 44]	// tmp167, expected5[1]
// problem21.c:68:     func0(test5, 5, result);
	mov	x1, sp	// tmp168,
	add	x0, sp, 72	// tmp169,,
	mov	x2, x1	//, tmp168
	mov	w1, 5	//,
	bl	func0		//
// problem21.c:69:     assert(issame(result, expected5, 2));
	add	x1, sp, 40	// tmp170,,
	mov	x0, sp	// tmp171,
	mov	w2, 2	//,
	bl	issame		//
// problem21.c:69:     assert(issame(result, expected5, 2));
	cmp	w0, 0	// _5,
	bne	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 69	//,
	adrp	x0, .LC5	// tmp173,
	add	x1, x0, :lo12:.LC5	//, tmp173,
	adrp	x0, .LC10	// tmp174,
	add	x0, x0, :lo12:.LC10	//, tmp174,
	bl	__assert_fail		//
.L26:
// problem21.c:71:     return 0;
	mov	w0, 0	// _37,
// problem21.c:72: }
	mov	w1, w0	// <retval>, _37
	adrp	x0, :got:__stack_chk_guard	// tmp176,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp176,
	ldr	x3, [sp, 168]	// tmp183, D.6122
	ldr	x2, [x0]	// tmp184,
	subs	x3, x3, x2	// tmp183, tmp184
	mov	x2, 0	// tmp184
	beq	.L28		//,
	bl	__stack_chk_fail		//
.L28:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 176]	//,,
	add	sp, sp, 192	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.word	1081711002
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1086115021
	.word	1082130432
	.word	1084227584
	.align	3
.LC2:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC3:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1073741824
	.align	3
.LC4:
	.word	1066192077
	.word	1074580685
	.word	1078355558
	.word	1082340147
	.word	1084437299
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
