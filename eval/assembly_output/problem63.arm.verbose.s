	.arch armv8-a
	.file	"problem63.c"
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// xs, xs
	str	w1, [sp, 20]	// xs_size, xs_size
	str	x2, [sp, 8]	// out, out
// problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	mov	w0, 1	// tmp102,
	str	w0, [sp, 44]	// tmp102, i
// problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	b	.L2		//
.L3:
// problem63.c:5:         out[i - 1] = i * xs[i];
	ldr	s0, [sp, 44]	// tmp103, i
	scvtf	s1, s0	// _1, tmp103
// problem63.c:5:         out[i - 1] = i * xs[i];
	ldrsw	x0, [sp, 44]	// _2, i
	lsl	x0, x0, 2	// _3, _2,
	ldr	x1, [sp, 24]	// tmp104, xs
	add	x0, x1, x0	// _4, tmp104, _3
	ldr	s0, [x0]	// _5, *_4
// problem63.c:5:         out[i - 1] = i * xs[i];
	ldrsw	x0, [sp, 44]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	sub	x0, x0, #4	// _8, _7,
	ldr	x1, [sp, 8]	// tmp105, out
	add	x0, x1, x0	// _9, tmp105, _8
// problem63.c:5:         out[i - 1] = i * xs[i];
	fmul	s0, s1, s0	// _10, _1, _5
// problem63.c:5:         out[i - 1] = i * xs[i];
	str	s0, [x0]	// _10, *_9
// problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L2:
// problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, xs_size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L3		//,
// problem63.c:7: }
	nop	
	nop	
	add	sp, sp, 48	//,,
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
	str	w1, [sp, 20]	// a_size, a_size
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// b_size, b_size
// problem63.c:17:     if (a_size != b_size) return false;
	ldr	w1, [sp, 20]	// tmp105, a_size
	ldr	w0, [sp, 16]	// tmp106, b_size
	cmp	w1, w0	// tmp105, tmp106
	beq	.L5		//,
// problem63.c:17:     if (a_size != b_size) return false;
	mov	w0, 0	// _13,
// problem63.c:17:     if (a_size != b_size) return false;
	b	.L6		//
.L5:
// problem63.c:18:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 44]	//, i
// problem63.c:18:     for (int i = 0; i < a_size; i++) {
	b	.L7		//
.L10:
// problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp107, a
	add	x0, x1, x0	// _3, tmp107, _2
	ldr	s1, [x0]	// _4, *_3
// problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp108, b
	add	x0, x1, x0	// _7, tmp108, _6
	ldr	s0, [x0]	// _8, *_7
// problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	fsub	s0, s1, s0	// _9, _4, _8
// problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	fabs	s0, s0	// _10, _9
	fcvt	d0, s0	// _11, _10
// problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	adrp	x0, .LC4	// tmp116,
	ldr	d1, [x0, #:lo12:.LC4]	// tmp109,
	fcmpe	d0, d1	// _11, tmp109
	bgt	.L11		//,
	b	.L12		//
.L11:
// problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	mov	w0, 0	// _13,
// problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	b	.L6		//
.L12:
// problem63.c:18:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 44]	// tmp111, i
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 44]	// tmp110, i
.L7:
// problem63.c:18:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 44]	// tmp112, i
	ldr	w0, [sp, 20]	// tmp113, a_size
	cmp	w1, w0	// tmp112, tmp113
	blt	.L10		//,
// problem63.c:21:     return true;
	mov	w0, 1	// _13,
.L6:
// problem63.c:22: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem63.c"
	.align	3
.LC6:
	.string	"issame(result, 4, expected1, 4)"
	.align	3
.LC7:
	.string	"issame(result, 2, expected2, 2)"
	.align	3
.LC8:
	.string	"issame(result, 2, expected3, 2)"
	.align	3
.LC9:
	.string	"issame(result, 4, expected4, 4)"
	.align	3
.LC10:
	.string	"issame(result, 0, NULL, 0)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #176	//,,
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160	//,,
// problem63.c:24: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp99,
	ldr	x1, [x0]	// tmp182,
	str	x1, [sp, 152]	// tmp182, D.6321
	mov	x1, 0	// tmp182
// problem63.c:27:     float case1[] = {3, 1, 2, 4, 5};
	adrp	x0, .LC0	// tmp101,
	add	x0, x0, :lo12:.LC0	// tmp100, tmp101,
	add	x2, sp, 104	// tmp102,,
	mov	x3, x0	// tmp103, tmp100
	ldp	x0, x1, [x3]	// tmp104,
	stp	x0, x1, [x2]	// tmp104, case1
	ldr	w0, [x3, 16]	// tmp105,
	str	w0, [x2, 16]	// tmp105, case1
// problem63.c:28:     float expected1[] = {1, 4, 12, 20};
	fmov	s0, 1.0e+0	// tmp106,
	str	s0, [sp, 72]	// tmp106, expected1[0]
	fmov	s0, 4.0e+0	// tmp107,
	str	s0, [sp, 76]	// tmp107, expected1[1]
	fmov	s0, 1.2e+1	// tmp108,
	str	s0, [sp, 80]	// tmp108, expected1[2]
	fmov	s0, 2.0e+1	// tmp109,
	str	s0, [sp, 84]	// tmp109, expected1[3]
// problem63.c:29:     func0(case1, 5, result);
	add	x1, sp, 56	// tmp110,,
	add	x0, sp, 104	// tmp111,,
	mov	x2, x1	//, tmp110
	mov	w1, 5	//,
	bl	func0		//
// problem63.c:30:     assert(issame(result, 4, expected1, 4));
	add	x1, sp, 72	// tmp112,,
	add	x0, sp, 56	// tmp113,,
	mov	w3, 4	//,
	mov	x2, x1	//, tmp112
	mov	w1, 4	//,
	bl	issame		//
	and	w0, w0, 255	// _1, tmp114
// problem63.c:30:     assert(issame(result, 4, expected1, 4));
	and	w0, w0, 1	// tmp115, _1,
	cmp	w0, 0	// tmp115,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 30	//,
	adrp	x0, .LC5	// tmp117,
	add	x1, x0, :lo12:.LC5	//, tmp117,
	adrp	x0, .LC6	// tmp118,
	add	x0, x0, :lo12:.LC6	//, tmp118,
	bl	__assert_fail		//
.L14:
// problem63.c:32:     float case2[] = {1, 2, 3};
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	// tmp119, tmp120,
	add	x0, sp, 24	// tmp121,,
	ldr	x2, [x1]	// tmp123,
	str	x2, [x0]	// tmp123, case2
	ldr	w1, [x1, 8]	// tmp124,
	str	w1, [x0, 8]	// tmp124, case2
// problem63.c:33:     float expected2[] = {2, 6};
	fmov	s0, 2.0e+0	// tmp125,
	str	s0, [sp, 8]	// tmp125, expected2[0]
	fmov	s0, 6.0e+0	// tmp126,
	str	s0, [sp, 12]	// tmp126, expected2[1]
// problem63.c:34:     func0(case2, 3, result);
	add	x1, sp, 56	// tmp127,,
	add	x0, sp, 24	// tmp128,,
	mov	x2, x1	//, tmp127
	mov	w1, 3	//,
	bl	func0		//
// problem63.c:35:     assert(issame(result, 2, expected2, 2));
	add	x1, sp, 8	// tmp129,,
	add	x0, sp, 56	// tmp130,,
	mov	w3, 2	//,
	mov	x2, x1	//, tmp129
	mov	w1, 2	//,
	bl	issame		//
	and	w0, w0, 255	// _2, tmp131
// problem63.c:35:     assert(issame(result, 2, expected2, 2));
	and	w0, w0, 1	// tmp132, _2,
	cmp	w0, 0	// tmp132,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 35	//,
	adrp	x0, .LC5	// tmp134,
	add	x1, x0, :lo12:.LC5	//, tmp134,
	adrp	x0, .LC7	// tmp135,
	add	x0, x0, :lo12:.LC7	//, tmp135,
	bl	__assert_fail		//
.L15:
// problem63.c:37:     float case3[] = {3, 2, 1};
	adrp	x0, .LC2	// tmp137,
	add	x1, x0, :lo12:.LC2	// tmp136, tmp137,
	add	x0, sp, 40	// tmp138,,
	ldr	x2, [x1]	// tmp140,
	str	x2, [x0]	// tmp140, case3
	ldr	w1, [x1, 8]	// tmp141,
	str	w1, [x0, 8]	// tmp141, case3
// problem63.c:38:     float expected3[] = {2, 2};
	fmov	s0, 2.0e+0	// tmp142,
	str	s0, [sp, 16]	// tmp142, expected3[0]
	fmov	s0, 2.0e+0	// tmp143,
	str	s0, [sp, 20]	// tmp143, expected3[1]
// problem63.c:39:     func0(case3, 3, result);
	add	x1, sp, 56	// tmp144,,
	add	x0, sp, 40	// tmp145,,
	mov	x2, x1	//, tmp144
	mov	w1, 3	//,
	bl	func0		//
// problem63.c:40:     assert(issame(result, 2, expected3, 2));
	add	x1, sp, 16	// tmp146,,
	add	x0, sp, 56	// tmp147,,
	mov	w3, 2	//,
	mov	x2, x1	//, tmp146
	mov	w1, 2	//,
	bl	issame		//
	and	w0, w0, 255	// _3, tmp148
// problem63.c:40:     assert(issame(result, 2, expected3, 2));
	and	w0, w0, 1	// tmp149, _3,
	cmp	w0, 0	// tmp149,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 40	//,
	adrp	x0, .LC5	// tmp151,
	add	x1, x0, :lo12:.LC5	//, tmp151,
	adrp	x0, .LC8	// tmp152,
	add	x0, x0, :lo12:.LC8	//, tmp152,
	bl	__assert_fail		//
.L16:
// problem63.c:42:     float case4[] = {3, 2, 1, 0, 4};
	adrp	x0, .LC3	// tmp154,
	add	x0, x0, :lo12:.LC3	// tmp153, tmp154,
	add	x2, sp, 128	// tmp155,,
	mov	x3, x0	// tmp156, tmp153
	ldp	x0, x1, [x3]	// tmp157,
	stp	x0, x1, [x2]	// tmp157, case4
	ldr	w0, [x3, 16]	// tmp158,
	str	w0, [x2, 16]	// tmp158, case4
// problem63.c:43:     float expected4[] = {2, 2, 0, 16};
	fmov	s0, 2.0e+0	// tmp159,
	str	s0, [sp, 88]	// tmp159, expected4[0]
	fmov	s0, 2.0e+0	// tmp160,
	str	s0, [sp, 92]	// tmp160, expected4[1]
	str	wzr, [sp, 96]	//, expected4[2]
	fmov	s0, 1.6e+1	// tmp161,
	str	s0, [sp, 100]	// tmp161, expected4[3]
// problem63.c:44:     func0(case4, 5, result);
	add	x1, sp, 56	// tmp162,,
	add	x0, sp, 128	// tmp163,,
	mov	x2, x1	//, tmp162
	mov	w1, 5	//,
	bl	func0		//
// problem63.c:45:     assert(issame(result, 4, expected4, 4));
	add	x1, sp, 88	// tmp164,,
	add	x0, sp, 56	// tmp165,,
	mov	w3, 4	//,
	mov	x2, x1	//, tmp164
	mov	w1, 4	//,
	bl	issame		//
	and	w0, w0, 255	// _4, tmp166
// problem63.c:45:     assert(issame(result, 4, expected4, 4));
	and	w0, w0, 1	// tmp167, _4,
	cmp	w0, 0	// tmp167,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp168,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp168,
	mov	w2, 45	//,
	adrp	x0, .LC5	// tmp169,
	add	x1, x0, :lo12:.LC5	//, tmp169,
	adrp	x0, .LC9	// tmp170,
	add	x0, x0, :lo12:.LC9	//, tmp170,
	bl	__assert_fail		//
.L17:
// problem63.c:47:     float case5[] = {1};
	fmov	s0, 1.0e+0	// tmp171,
	str	s0, [sp]	// tmp171, case5[0]
// problem63.c:48:     func0(case5, 1, result);
	add	x1, sp, 56	// tmp172,,
	mov	x0, sp	// tmp173,
	mov	x2, x1	//, tmp172
	mov	w1, 1	//,
	bl	func0		//
// problem63.c:49:     assert(issame(result, 0, NULL, 0));
	add	x0, sp, 56	// tmp174,,
	mov	w3, 0	//,
	mov	x2, 0	//,
	mov	w1, 0	//,
	bl	issame		//
	and	w0, w0, 255	// _5, tmp175
// problem63.c:49:     assert(issame(result, 0, NULL, 0));
	and	w0, w0, 1	// tmp176, _5,
	cmp	w0, 0	// tmp176,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 49	//,
	adrp	x0, .LC5	// tmp178,
	add	x1, x0, :lo12:.LC5	//, tmp178,
	adrp	x0, .LC10	// tmp179,
	add	x0, x0, :lo12:.LC10	//, tmp179,
	bl	__assert_fail		//
.L18:
// problem63.c:51:     return 0;
	mov	w0, 0	// _39,
// problem63.c:52: }
	mov	w1, w0	// <retval>, _39
	adrp	x0, :got:__stack_chk_guard	// tmp181,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp181,
	ldr	x3, [sp, 152]	// tmp183, D.6321
	ldr	x2, [x0]	// tmp184,
	subs	x3, x3, x2	// tmp183, tmp184
	mov	x2, 0	// tmp184
	beq	.L20		//,
	bl	__stack_chk_fail		//
.L20:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 160]	//,,
	add	sp, sp, 176	//,,
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
	.word	1077936128
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.align	3
.LC2:
	.word	1077936128
	.word	1073741824
	.word	1065353216
	.align	3
.LC3:
	.word	1077936128
	.word	1073741824
	.word	1065353216
	.word	0
	.word	1082130432
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
