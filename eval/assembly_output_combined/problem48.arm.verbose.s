	.arch armv8-a
	.file	"problem48.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
// problem48.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 20]	//, i
// problem48.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// problem48.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 20]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 24]	// tmp132, j
// problem48.c:7:         for (int j = i + 1; j < size; j++) {
	b	.L3		//
.L6:
// problem48.c:8:             if (l[i] > l[j]) {
	ldrsw	x0, [sp, 20]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp134, l
	add	x0, x1, x0	// _3, tmp134, _2
	ldr	s1, [x0]	// _4, *_3
// problem48.c:8:             if (l[i] > l[j]) {
	ldrsw	x0, [sp, 24]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp135, l
	add	x0, x1, x0	// _7, tmp135, _6
	ldr	s0, [x0]	// _8, *_7
// problem48.c:8:             if (l[i] > l[j]) {
	fcmpe	s1, s0	// _4, _8
	bgt	.L10		//,
	b	.L4		//
.L10:
// problem48.c:9:                 float temp = l[i];
	ldrsw	x0, [sp, 20]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 8]	// tmp136, l
	add	x0, x1, x0	// _11, tmp136, _10
// problem48.c:9:                 float temp = l[i];
	ldr	s0, [x0]	// tmp137, *_11
	str	s0, [sp, 28]	// tmp137, temp
// problem48.c:10:                 l[i] = l[j];
	ldrsw	x0, [sp, 24]	// _12, j
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 8]	// tmp138, l
	add	x1, x1, x0	// _14, tmp138, _13
// problem48.c:10:                 l[i] = l[j];
	ldrsw	x0, [sp, 20]	// _15, i
	lsl	x0, x0, 2	// _16, _15,
	ldr	x2, [sp, 8]	// tmp139, l
	add	x0, x2, x0	// _17, tmp139, _16
// problem48.c:10:                 l[i] = l[j];
	ldr	s0, [x1]	// _18, *_14
// problem48.c:10:                 l[i] = l[j];
	str	s0, [x0]	// _18, *_17
// problem48.c:11:                 l[j] = temp;
	ldrsw	x0, [sp, 24]	// _19, j
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 8]	// tmp140, l
	add	x0, x1, x0	// _21, tmp140, _20
// problem48.c:11:                 l[j] = temp;
	ldr	s0, [sp, 28]	// tmp141, temp
	str	s0, [x0]	// tmp141, *_21
.L4:
// problem48.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 24]	// tmp143, j
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 24]	// tmp142, j
.L3:
// problem48.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w1, [sp, 24]	// tmp144, j
	ldr	w0, [sp, 4]	// tmp145, size
	cmp	w1, w0	// tmp144, tmp145
	blt	.L6		//,
// problem48.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 20]	// tmp147, i
	add	w0, w0, 1	// tmp146, tmp147,
	str	w0, [sp, 20]	// tmp146, i
.L2:
// problem48.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 20]	// tmp148, i
	ldr	w0, [sp, 4]	// tmp149, size
	cmp	w1, w0	// tmp148, tmp149
	blt	.L7		//,
// problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	ldr	w0, [sp, 4]	// tmp150, size
	cmp	w0, 0	// tmp150,
	and	w0, w0, 1	// tmp151, tmp150,
	csneg	w0, w0, w0, ge	// _22, tmp151, tmp151,
// problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	cmp	w0, 1	// _22,
	bne	.L8		//,
// problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	ldr	w0, [sp, 4]	// tmp152, size
	lsr	w1, w0, 31	// tmp153, tmp152,
	add	w0, w1, w0	// tmp154, tmp153, tmp152
	asr	w0, w0, 1	// tmp155, tmp154,
	sxtw	x0, w0	// _24, _23
// problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 8]	// tmp156, l
	add	x0, x1, x0	// _26, tmp156, _25
	ldr	s0, [x0]	// _41, *_26
// problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	b	.L9		//
.L8:
// problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	ldr	w0, [sp, 4]	// tmp157, size
	lsr	w1, w0, 31	// tmp158, tmp157,
	add	w0, w1, w0	// tmp159, tmp158, tmp157
	asr	w0, w0, 1	// tmp160, tmp159,
	sxtw	x0, w0	// _28, _27
// problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 8]	// tmp161, l
	add	x0, x1, x0	// _30, tmp161, _29
	ldr	s1, [x0]	// _31, *_30
// problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	ldr	w0, [sp, 4]	// tmp162, size
	lsr	w1, w0, 31	// tmp163, tmp162,
	add	w0, w1, w0	// tmp164, tmp163, tmp162
	asr	w0, w0, 1	// tmp165, tmp164,
	sxtw	x0, w0	// _33, _32
// problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lsl	x0, x0, 2	// _34, _33,
	sub	x0, x0, #4	// _35, _34,
	ldr	x1, [sp, 8]	// tmp166, l
	add	x0, x1, x0	// _36, tmp166, _35
	ldr	s0, [x0]	// _37, *_36
// problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fadd	s1, s1, s0	// _38, _31, _37
// problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fmov	s0, 5.0e-1	// tmp167,
	fmul	s0, s1, s0	// _41, _38, tmp167
.L9:
// problem48.c:17: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem48.c"
	.align	3
.LC4:
	.string	"fabs(func0(list1, 5) - 3) < 1e-4"
	.align	3
.LC5:
	.string	"fabs(func0(list2, 6) - 8.0) < 1e-4"
	.align	3
.LC6:
	.string	"fabs(func0(list3, 1) - 5) < 1e-4"
	.align	3
.LC7:
	.string	"fabs(func0(list4, 2) - 5.5) < 1e-4"
	.align	3
.LC8:
	.string	"fabs(func0(list5, 7) - 7) < 1e-4"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem48.c:25: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp114,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp114,
	ldr	x1, [x0]	// tmp168,
	str	x1, [sp, 104]	// tmp168, D.6619
	mov	x1, 0	// tmp168
// problem48.c:26:     float list1[] = {3, 1, 2, 4, 5};
	adrp	x0, .LC0	// tmp116,
	add	x0, x0, :lo12:.LC0	// tmp115, tmp116,
	add	x2, sp, 24	// tmp117,,
	mov	x3, x0	// tmp118, tmp115
	ldp	x0, x1, [x3]	// tmp119,
	stp	x0, x1, [x2]	// tmp119, list1
	ldr	w0, [x3, 16]	// tmp120,
	str	w0, [x2, 16]	// tmp120, list1
// problem48.c:27:     assert(fabs(func0(list1, 5) - 3) < 1e-4);
	add	x0, sp, 24	// tmp121,,
	mov	w1, 5	//,
	bl	func0		//
	fmov	s1, s0	// _1,
// problem48.c:27:     assert(fabs(func0(list1, 5) - 3) < 1e-4);
	fmov	s0, 3.0e+0	// tmp122,
	fsub	s0, s1, s0	// _2, _1, tmp122
	fabs	s0, s0	// _3, _2
	fcvt	d0, s0	// _4, _3
	adrp	x0, .LC9	// tmp173,
	ldr	d1, [x0, #:lo12:.LC9]	// tmp123,
	fcmpe	d0, d1	// _4, tmp123
	bmi	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 27	//,
	adrp	x0, .LC3	// tmp125,
	add	x1, x0, :lo12:.LC3	//, tmp125,
	adrp	x0, .LC4	// tmp126,
	add	x0, x0, :lo12:.LC4	//, tmp126,
	bl	__assert_fail		//
.L12:
// problem48.c:29:     float list2[] = {-10, 4, 6, 1000, 10, 20};
	adrp	x0, .LC1	// tmp128,
	add	x0, x0, :lo12:.LC1	// tmp127, tmp128,
	add	x2, sp, 48	// tmp129,,
	mov	x3, x0	// tmp130, tmp127
	ldp	x0, x1, [x3]	// tmp131,
	stp	x0, x1, [x2]	// tmp131, list2
	ldr	x0, [x3, 16]	// tmp132,
	str	x0, [x2, 16]	// tmp132, list2
// problem48.c:30:     assert(fabs(func0(list2, 6) - 8.0) < 1e-4);
	add	x0, sp, 48	// tmp133,,
	mov	w1, 6	//,
	bl	func0		//
// problem48.c:30:     assert(fabs(func0(list2, 6) - 8.0) < 1e-4);
	fcvt	d1, s0	// _6, _5
	fmov	d0, 8.0e+0	// tmp134,
	fsub	d0, d1, d0	// _7, _6, tmp134
	fabs	d0, d0	// _8, _7
	adrp	x0, .LC9	// tmp174,
	ldr	d1, [x0, #:lo12:.LC9]	// tmp135,
	fcmpe	d0, d1	// _8, tmp135
	bmi	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 30	//,
	adrp	x0, .LC3	// tmp137,
	add	x1, x0, :lo12:.LC3	//, tmp137,
	adrp	x0, .LC5	// tmp138,
	add	x0, x0, :lo12:.LC5	//, tmp138,
	bl	__assert_fail		//
.L13:
// problem48.c:32:     float list3[] = {5};
	fmov	s0, 5.0e+0	// tmp139,
	str	s0, [sp, 8]	// tmp139, list3[0]
// problem48.c:33:     assert(fabs(func0(list3, 1) - 5) < 1e-4);
	add	x0, sp, 8	// tmp140,,
	mov	w1, 1	//,
	bl	func0		//
	fmov	s1, s0	// _9,
// problem48.c:33:     assert(fabs(func0(list3, 1) - 5) < 1e-4);
	fmov	s0, 5.0e+0	// tmp141,
	fsub	s0, s1, s0	// _10, _9, tmp141
	fabs	s0, s0	// _11, _10
	fcvt	d0, s0	// _12, _11
	adrp	x0, .LC9	// tmp175,
	ldr	d1, [x0, #:lo12:.LC9]	// tmp142,
	fcmpe	d0, d1	// _12, tmp142
	bmi	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 33	//,
	adrp	x0, .LC3	// tmp144,
	add	x1, x0, :lo12:.LC3	//, tmp144,
	adrp	x0, .LC6	// tmp145,
	add	x0, x0, :lo12:.LC6	//, tmp145,
	bl	__assert_fail		//
.L14:
// problem48.c:35:     float list4[] = {6, 5};
	fmov	s0, 6.0e+0	// tmp146,
	str	s0, [sp, 16]	// tmp146, list4[0]
	fmov	s0, 5.0e+0	// tmp147,
	str	s0, [sp, 20]	// tmp147, list4[1]
// problem48.c:36:     assert(fabs(func0(list4, 2) - 5.5) < 1e-4);
	add	x0, sp, 16	// tmp148,,
	mov	w1, 2	//,
	bl	func0		//
// problem48.c:36:     assert(fabs(func0(list4, 2) - 5.5) < 1e-4);
	fcvt	d1, s0	// _14, _13
	fmov	d0, 5.5e+0	// tmp149,
	fsub	d0, d1, d0	// _15, _14, tmp149
	fabs	d0, d0	// _16, _15
	adrp	x0, .LC9	// tmp176,
	ldr	d1, [x0, #:lo12:.LC9]	// tmp150,
	fcmpe	d0, d1	// _16, tmp150
	bmi	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 36	//,
	adrp	x0, .LC3	// tmp152,
	add	x1, x0, :lo12:.LC3	//, tmp152,
	adrp	x0, .LC7	// tmp153,
	add	x0, x0, :lo12:.LC7	//, tmp153,
	bl	__assert_fail		//
.L15:
// problem48.c:38:     float list5[] = {8, 1, 3, 9, 9, 2, 7};
	adrp	x0, .LC2	// tmp155,
	add	x1, x0, :lo12:.LC2	// tmp154, tmp155,
	add	x0, sp, 72	// tmp156,,
	ldr	q0, [x1]	// tmp158,
	str	q0, [x0]	// tmp158, list5
	ldr	q0, [x1, 12]	// tmp159,
	str	q0, [x0, 12]	// tmp159, list5
// problem48.c:39:     assert(fabs(func0(list5, 7) - 7) < 1e-4);
	add	x0, sp, 72	// tmp160,,
	mov	w1, 7	//,
	bl	func0		//
	fmov	s1, s0	// _17,
// problem48.c:39:     assert(fabs(func0(list5, 7) - 7) < 1e-4);
	fmov	s0, 7.0e+0	// tmp161,
	fsub	s0, s1, s0	// _18, _17, tmp161
	fabs	s0, s0	// _19, _18
	fcvt	d0, s0	// _20, _19
	adrp	x0, .LC9	// tmp177,
	ldr	d1, [x0, #:lo12:.LC9]	// tmp162,
	fcmpe	d0, d1	// _20, tmp162
	bmi	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 39	//,
	adrp	x0, .LC3	// tmp164,
	add	x1, x0, :lo12:.LC3	//, tmp164,
	adrp	x0, .LC8	// tmp165,
	add	x0, x0, :lo12:.LC8	//, tmp165,
	bl	__assert_fail		//
.L16:
// problem48.c:41:     return 0;
	mov	w0, 0	// _38,
// problem48.c:42: }
	mov	w1, w0	// <retval>, _38
	adrp	x0, :got:__stack_chk_guard	// tmp167,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp167,
	ldr	x3, [sp, 104]	// tmp169, D.6619
	ldr	x2, [x0]	// tmp170,
	subs	x3, x3, x2	// tmp169, tmp170
	mov	x2, 0	// tmp170
	beq	.L18		//,
	bl	__stack_chk_fail		//
.L18:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1077936128
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	-1054867456
	.word	1082130432
	.word	1086324736
	.word	1148846080
	.word	1092616192
	.word	1101004800
	.align	3
.LC2:
	.word	1090519040
	.word	1065353216
	.word	1077936128
	.word	1091567616
	.word	1091567616
	.word	1073741824
	.word	1088421888
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC9:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
