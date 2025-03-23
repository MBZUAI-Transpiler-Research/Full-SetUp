	.arch armv8-a
	.file	"problem58.c"
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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
// problem58.c:6:     incr = decr = 0;
	str	wzr, [sp, 24]	//, decr
// problem58.c:6:     incr = decr = 0;
	ldr	w0, [sp, 24]	// tmp113, decr
	str	w0, [sp, 20]	// tmp113, incr
// problem58.c:8:     for (int i = 1; i < size; i++) {
	mov	w0, 1	// tmp114,
	str	w0, [sp, 28]	// tmp114, i
// problem58.c:8:     for (int i = 1; i < size; i++) {
	b	.L2		//
.L7:
// problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp115, l
	add	x0, x1, x0	// _3, tmp115, _2
	ldr	s1, [x0]	// _4, *_3
// problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x1, [sp, 8]	// tmp116, l
	add	x0, x1, x0	// _8, tmp116, _7
	ldr	s0, [x0]	// _9, *_8
// problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	fcmpe	s1, s0	// _4, _9
	bgt	.L10		//,
	b	.L3		//
.L10:
// problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	mov	w0, 1	// tmp117,
	str	w0, [sp, 20]	// tmp117, incr
.L3:
// problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	ldrsw	x0, [sp, 28]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 8]	// tmp118, l
	add	x0, x1, x0	// _12, tmp118, _11
	ldr	s1, [x0]	// _13, *_12
// problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	ldrsw	x0, [sp, 28]	// _14, i
	lsl	x0, x0, 2	// _15, _14,
	sub	x0, x0, #4	// _16, _15,
	ldr	x1, [sp, 8]	// tmp119, l
	add	x0, x1, x0	// _17, tmp119, _16
	ldr	s0, [x0]	// _18, *_17
// problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	fcmpe	s1, s0	// _13, _18
	bmi	.L11		//,
	b	.L5		//
.L11:
// problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	mov	w0, 1	// tmp120,
	str	w0, [sp, 24]	// tmp120, decr
.L5:
// problem58.c:8:     for (int i = 1; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp122, i
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 28]	// tmp121, i
.L2:
// problem58.c:8:     for (int i = 1; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp123, i
	ldr	w0, [sp, 4]	// tmp124, size
	cmp	w1, w0	// tmp123, tmp124
	blt	.L7		//,
// problem58.c:12:     if (incr + decr == 2) return false;
	ldr	w1, [sp, 20]	// tmp125, incr
	ldr	w0, [sp, 24]	// tmp126, decr
	add	w0, w1, w0	// _19, tmp125, tmp126
// problem58.c:12:     if (incr + decr == 2) return false;
	cmp	w0, 2	// _19,
	bne	.L8		//,
// problem58.c:12:     if (incr + decr == 2) return false;
	mov	w0, 0	// _25,
// problem58.c:12:     if (incr + decr == 2) return false;
	b	.L9		//
.L8:
// problem58.c:13:     return true;
	mov	w0, 1	// _25,
.L9:
// problem58.c:14: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem58.c"
	.align	3
.LC3:
	.string	"func0(list1, 4) == true"
	.align	3
.LC4:
	.string	"func0(list2, 4) == true"
	.align	3
.LC5:
	.string	"func0(list3, 4) == false"
	.align	3
.LC6:
	.string	"func0(list4, 4) == true"
	.align	3
.LC7:
	.string	"func0(list5, 4) == true"
	.align	3
.LC8:
	.string	"func0(list6, 6) == false"
	.align	3
.LC9:
	.string	"func0(list7, 6) == true"
	.align	3
.LC10:
	.string	"func0(list8, 4) == true"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #176	//,,
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160	//,,
// problem58.c:21: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp104,
	ldr	x1, [x0]	// tmp191,
	str	x1, [sp, 152]	// tmp191, D.4907
	mov	x1, 0	// tmp191
// problem58.c:22:     float list1[] = {1, 2, 4, 10};
	fmov	s0, 1.0e+0	// tmp105,
	str	s0, [sp, 8]	// tmp105, list1[0]
	fmov	s0, 2.0e+0	// tmp106,
	str	s0, [sp, 12]	// tmp106, list1[1]
	fmov	s0, 4.0e+0	// tmp107,
	str	s0, [sp, 16]	// tmp107, list1[2]
	fmov	s0, 1.0e+1	// tmp108,
	str	s0, [sp, 20]	// tmp108, list1[3]
// problem58.c:23:     float list2[] = {1, 2, 4, 20};
	fmov	s0, 1.0e+0	// tmp109,
	str	s0, [sp, 24]	// tmp109, list2[0]
	fmov	s0, 2.0e+0	// tmp110,
	str	s0, [sp, 28]	// tmp110, list2[1]
	fmov	s0, 4.0e+0	// tmp111,
	str	s0, [sp, 32]	// tmp111, list2[2]
	fmov	s0, 2.0e+1	// tmp112,
	str	s0, [sp, 36]	// tmp112, list2[3]
// problem58.c:24:     float list3[] = {1, 20, 4, 10};
	fmov	s0, 1.0e+0	// tmp113,
	str	s0, [sp, 40]	// tmp113, list3[0]
	fmov	s0, 2.0e+1	// tmp114,
	str	s0, [sp, 44]	// tmp114, list3[1]
	fmov	s0, 4.0e+0	// tmp115,
	str	s0, [sp, 48]	// tmp115, list3[2]
	fmov	s0, 1.0e+1	// tmp116,
	str	s0, [sp, 52]	// tmp116, list3[3]
// problem58.c:25:     float list4[] = {4, 1, 0, -10};
	fmov	s0, 4.0e+0	// tmp117,
	str	s0, [sp, 56]	// tmp117, list4[0]
	fmov	s0, 1.0e+0	// tmp118,
	str	s0, [sp, 60]	// tmp118, list4[1]
	str	wzr, [sp, 64]	//, list4[2]
	fmov	s0, -1.0e+1	// tmp119,
	str	s0, [sp, 68]	// tmp119, list4[3]
// problem58.c:26:     float list5[] = {4, 1, 1, 0};
	fmov	s0, 4.0e+0	// tmp120,
	str	s0, [sp, 72]	// tmp120, list5[0]
	fmov	s0, 1.0e+0	// tmp121,
	str	s0, [sp, 76]	// tmp121, list5[1]
	fmov	s0, 1.0e+0	// tmp122,
	str	s0, [sp, 80]	// tmp122, list5[2]
	str	wzr, [sp, 84]	//, list5[3]
// problem58.c:27:     float list6[] = {1, 2, 3, 2, 5, 60};
	adrp	x0, .LC0	// tmp124,
	add	x0, x0, :lo12:.LC0	// tmp123, tmp124,
	add	x2, sp, 104	// tmp125,,
	mov	x3, x0	// tmp126, tmp123
	ldp	x0, x1, [x3]	// tmp127,
	stp	x0, x1, [x2]	// tmp127, list6
	ldr	x0, [x3, 16]	// tmp128,
	str	x0, [x2, 16]	// tmp128, list6
// problem58.c:28:     float list7[] = {1, 2, 3, 4, 5, 60};
	adrp	x0, .LC1	// tmp130,
	add	x0, x0, :lo12:.LC1	// tmp129, tmp130,
	add	x2, sp, 128	// tmp131,,
	mov	x3, x0	// tmp132, tmp129
	ldp	x0, x1, [x3]	// tmp133,
	stp	x0, x1, [x2]	// tmp133, list7
	ldr	x0, [x3, 16]	// tmp134,
	str	x0, [x2, 16]	// tmp134, list7
// problem58.c:29:     float list8[] = {9, 9, 9, 9};
	fmov	s0, 9.0e+0	// tmp135,
	str	s0, [sp, 88]	// tmp135, list8[0]
	fmov	s0, 9.0e+0	// tmp136,
	str	s0, [sp, 92]	// tmp136, list8[1]
	fmov	s0, 9.0e+0	// tmp137,
	str	s0, [sp, 96]	// tmp137, list8[2]
	fmov	s0, 9.0e+0	// tmp138,
	str	s0, [sp, 100]	// tmp138, list8[3]
// problem58.c:31:     assert(func0(list1, 4) == true);
	add	x0, sp, 8	// tmp139,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp140
// problem58.c:31:     assert(func0(list1, 4) == true);
	and	w0, w0, 1	// tmp141, _1,
	cmp	w0, 0	// tmp141,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 31	//,
	adrp	x0, .LC2	// tmp143,
	add	x1, x0, :lo12:.LC2	//, tmp143,
	adrp	x0, .LC3	// tmp144,
	add	x0, x0, :lo12:.LC3	//, tmp144,
	bl	__assert_fail		//
.L13:
// problem58.c:32:     assert(func0(list2, 4) == true);
	add	x0, sp, 24	// tmp145,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp146
// problem58.c:32:     assert(func0(list2, 4) == true);
	and	w0, w0, 1	// tmp147, _2,
	cmp	w0, 0	// tmp147,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp148,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp148,
	mov	w2, 32	//,
	adrp	x0, .LC2	// tmp149,
	add	x1, x0, :lo12:.LC2	//, tmp149,
	adrp	x0, .LC4	// tmp150,
	add	x0, x0, :lo12:.LC4	//, tmp150,
	bl	__assert_fail		//
.L14:
// problem58.c:33:     assert(func0(list3, 4) == false);
	add	x0, sp, 40	// tmp151,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp152
// problem58.c:33:     assert(func0(list3, 4) == false);
	eor	w0, w0, 1	// tmp153, _3,
	and	w0, w0, 255	// _4, tmp153
	and	w0, w0, 1	// tmp154, _4,
	cmp	w0, 0	// tmp154,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp156,
	add	x1, x0, :lo12:.LC2	//, tmp156,
	adrp	x0, .LC5	// tmp157,
	add	x0, x0, :lo12:.LC5	//, tmp157,
	bl	__assert_fail		//
.L15:
// problem58.c:34:     assert(func0(list4, 4) == true);
	add	x0, sp, 56	// tmp158,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp159
// problem58.c:34:     assert(func0(list4, 4) == true);
	and	w0, w0, 1	// tmp160, _5,
	cmp	w0, 0	// tmp160,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp162,
	add	x1, x0, :lo12:.LC2	//, tmp162,
	adrp	x0, .LC6	// tmp163,
	add	x0, x0, :lo12:.LC6	//, tmp163,
	bl	__assert_fail		//
.L16:
// problem58.c:35:     assert(func0(list5, 4) == true);
	add	x0, sp, 72	// tmp164,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp165
// problem58.c:35:     assert(func0(list5, 4) == true);
	and	w0, w0, 1	// tmp166, _6,
	cmp	w0, 0	// tmp166,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 35	//,
	adrp	x0, .LC2	// tmp168,
	add	x1, x0, :lo12:.LC2	//, tmp168,
	adrp	x0, .LC7	// tmp169,
	add	x0, x0, :lo12:.LC7	//, tmp169,
	bl	__assert_fail		//
.L17:
// problem58.c:36:     assert(func0(list6, 6) == false);
	add	x0, sp, 104	// tmp170,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp171
// problem58.c:36:     assert(func0(list6, 6) == false);
	eor	w0, w0, 1	// tmp172, _7,
	and	w0, w0, 255	// _8, tmp172
	and	w0, w0, 1	// tmp173, _8,
	cmp	w0, 0	// tmp173,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp174,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp174,
	mov	w2, 36	//,
	adrp	x0, .LC2	// tmp175,
	add	x1, x0, :lo12:.LC2	//, tmp175,
	adrp	x0, .LC8	// tmp176,
	add	x0, x0, :lo12:.LC8	//, tmp176,
	bl	__assert_fail		//
.L18:
// problem58.c:37:     assert(func0(list7, 6) == true);
	add	x0, sp, 128	// tmp177,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp178
// problem58.c:37:     assert(func0(list7, 6) == true);
	and	w0, w0, 1	// tmp179, _9,
	cmp	w0, 0	// tmp179,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp180,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp180,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp181,
	add	x1, x0, :lo12:.LC2	//, tmp181,
	adrp	x0, .LC9	// tmp182,
	add	x0, x0, :lo12:.LC9	//, tmp182,
	bl	__assert_fail		//
.L19:
// problem58.c:38:     assert(func0(list8, 4) == true);
	add	x0, sp, 88	// tmp183,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp184
// problem58.c:38:     assert(func0(list8, 4) == true);
	and	w0, w0, 1	// tmp185, _10,
	cmp	w0, 0	// tmp185,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp186,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp186,
	mov	w2, 38	//,
	adrp	x0, .LC2	// tmp187,
	add	x1, x0, :lo12:.LC2	//, tmp187,
	adrp	x0, .LC10	// tmp188,
	add	x0, x0, :lo12:.LC10	//, tmp188,
	bl	__assert_fail		//
.L20:
// problem58.c:40:     return 0;
	mov	w0, 0	// _54,
// problem58.c:41: }
	mov	w1, w0	// <retval>, _54
	adrp	x0, :got:__stack_chk_guard	// tmp190,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp190,
	ldr	x3, [sp, 152]	// tmp192, D.4907
	ldr	x2, [x0]	// tmp193,
	subs	x3, x3, x2	// tmp192, tmp193
	mov	x2, 0	// tmp193
	beq	.L22		//,
	bl	__stack_chk_fail		//
.L22:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 160]	//,,
	add	sp, sp, 176	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1073741824
	.word	1084227584
	.word	1114636288
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1114636288
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
