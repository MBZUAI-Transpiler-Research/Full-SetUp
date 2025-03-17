	.arch armv8-a
	.file	"problem134.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// lst, lst
	str	w1, [sp, 36]	// size, size
// problem134.c:5:     int sum = 0;
	str	wzr, [sp, 56]	//, sum
// problem134.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// problem134.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L3:
// problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 40]	// tmp109, lst
	add	x0, x1, x0	// _3, tmp109, _2
	ldr	s0, [x0]	// _4, *_3
// problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt	d0, s0	// _5, _4
	bl	ceil		//
// problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvtzs	w19, d0	// _7, _6
// problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	ldrsw	x0, [sp, 60]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 40]	// tmp110, lst
	add	x0, x1, x0	// _10, tmp110, _9
	ldr	s0, [x0]	// _11, *_10
// problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt	d0, s0	// _12, _11
	bl	ceil		//
// problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvtzs	w0, d0	// _14, _13
// problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	mul	w0, w19, w0	// _15, _7, _14
// problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	ldr	w1, [sp, 56]	// tmp112, sum
	add	w0, w1, w0	// tmp111, tmp112, _15
	str	w0, [sp, 56]	// tmp111, sum
// problem134.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp114, i
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 60]	// tmp113, i
.L2:
// problem134.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp115, i
	ldr	w0, [sp, 36]	// tmp116, size
	cmp	w1, w0	// tmp115, tmp116
	blt	.L3		//,
// problem134.c:9:     return sum;
	ldr	w0, [sp, 56]	// _21, sum
// problem134.c:10: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem134.c"
	.align	3
.LC6:
	.string	"func0(lst1, 3) == 14"
	.align	3
.LC7:
	.string	"func0(lst2, 3) == 14"
	.align	3
.LC8:
	.string	"func0(lst3, 4) == 84"
	.align	3
.LC9:
	.string	"func0(lst4, 3) == 29"
	.align	3
.LC10:
	.string	"func0(lst5, 3) == 6"
	.align	3
.LC11:
	.string	"func0(lst6, 4) == 10230"
	.align	3
.LC12:
	.string	"func0(lst7, 2) == 200000000"
	.align	3
.LC13:
	.string	"func0(lst8, 3) == 75"
	.align	3
.LC14:
	.string	"func0(lst9, 4) == 1086"
	.align	3
.LC15:
	.string	"func0(lst10, 1) == 0"
	.align	3
.LC16:
	.string	"func0(lst11, 1) == 1"
	.align	3
.LC17:
	.string	"func0(lst12, 3) == 2"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #192	//,,
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176	//,,
// problem134.c:16: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp106,
	ldr	x1, [x0]	// tmp217,
	str	x1, [sp, 168]	// tmp217, D.6116
	mov	x1, 0	// tmp217
// problem134.c:17:     float lst1[] = {1, 2, 3};
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	// tmp107, tmp108,
	add	x0, sp, 24	// tmp109,,
	ldr	x2, [x1]	// tmp111,
	str	x2, [x0]	// tmp111, lst1
	ldr	w1, [x1, 8]	// tmp112,
	str	w1, [x0, 8]	// tmp112, lst1
// problem134.c:18:     assert(func0(lst1, 3) == 14);
	add	x0, sp, 24	// tmp113,,
	mov	w1, 3	//,
	bl	func0		//
// problem134.c:18:     assert(func0(lst1, 3) == 14);
	cmp	w0, 14	// _1,
	beq	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 18	//,
	adrp	x0, .LC5	// tmp115,
	add	x1, x0, :lo12:.LC5	//, tmp115,
	adrp	x0, .LC6	// tmp116,
	add	x0, x0, :lo12:.LC6	//, tmp116,
	bl	__assert_fail		//
.L6:
// problem134.c:20:     float lst2[] = {1.0, 2, 3};
	adrp	x0, .LC0	// tmp118,
	add	x1, x0, :lo12:.LC0	// tmp117, tmp118,
	add	x0, sp, 40	// tmp119,,
	ldr	x2, [x1]	// tmp121,
	str	x2, [x0]	// tmp121, lst2
	ldr	w1, [x1, 8]	// tmp122,
	str	w1, [x0, 8]	// tmp122, lst2
// problem134.c:21:     assert(func0(lst2, 3) == 14);
	add	x0, sp, 40	// tmp123,,
	mov	w1, 3	//,
	bl	func0		//
// problem134.c:21:     assert(func0(lst2, 3) == 14);
	cmp	w0, 14	// _2,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 21	//,
	adrp	x0, .LC5	// tmp125,
	add	x1, x0, :lo12:.LC5	//, tmp125,
	adrp	x0, .LC7	// tmp126,
	add	x0, x0, :lo12:.LC7	//, tmp126,
	bl	__assert_fail		//
.L7:
// problem134.c:23:     float lst3[] = {1, 3, 5, 7};
	fmov	s0, 1.0e+0	// tmp127,
	str	s0, [sp, 120]	// tmp127, lst3[0]
	fmov	s0, 3.0e+0	// tmp128,
	str	s0, [sp, 124]	// tmp128, lst3[1]
	fmov	s0, 5.0e+0	// tmp129,
	str	s0, [sp, 128]	// tmp129, lst3[2]
	fmov	s0, 7.0e+0	// tmp130,
	str	s0, [sp, 132]	// tmp130, lst3[3]
// problem134.c:24:     assert(func0(lst3, 4) == 84);
	add	x0, sp, 120	// tmp131,,
	mov	w1, 4	//,
	bl	func0		//
// problem134.c:24:     assert(func0(lst3, 4) == 84);
	cmp	w0, 84	// _3,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp132,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp132,
	mov	w2, 24	//,
	adrp	x0, .LC5	// tmp133,
	add	x1, x0, :lo12:.LC5	//, tmp133,
	adrp	x0, .LC8	// tmp134,
	add	x0, x0, :lo12:.LC8	//, tmp134,
	bl	__assert_fail		//
.L8:
// problem134.c:26:     float lst4[] = {1.4, 4.2, 0};
	adrp	x0, .LC1	// tmp136,
	add	x1, x0, :lo12:.LC1	// tmp135, tmp136,
	add	x0, sp, 56	// tmp137,,
	ldr	x2, [x1]	// tmp139,
	str	x2, [x0]	// tmp139, lst4
	ldr	w1, [x1, 8]	// tmp140,
	str	w1, [x0, 8]	// tmp140, lst4
// problem134.c:27:     assert(func0(lst4, 3) == 29);
	add	x0, sp, 56	// tmp141,,
	mov	w1, 3	//,
	bl	func0		//
// problem134.c:27:     assert(func0(lst4, 3) == 29);
	cmp	w0, 29	// _4,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 27	//,
	adrp	x0, .LC5	// tmp143,
	add	x1, x0, :lo12:.LC5	//, tmp143,
	adrp	x0, .LC9	// tmp144,
	add	x0, x0, :lo12:.LC9	//, tmp144,
	bl	__assert_fail		//
.L9:
// problem134.c:29:     float lst5[] = {-2.4, 1, 1};
	adrp	x0, .LC2	// tmp146,
	add	x1, x0, :lo12:.LC2	// tmp145, tmp146,
	add	x0, sp, 72	// tmp147,,
	ldr	x2, [x1]	// tmp149,
	str	x2, [x0]	// tmp149, lst5
	ldr	w1, [x1, 8]	// tmp150,
	str	w1, [x0, 8]	// tmp150, lst5
// problem134.c:30:     assert(func0(lst5, 3) == 6);
	add	x0, sp, 72	// tmp151,,
	mov	w1, 3	//,
	bl	func0		//
// problem134.c:30:     assert(func0(lst5, 3) == 6);
	cmp	w0, 6	// _5,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 30	//,
	adrp	x0, .LC5	// tmp153,
	add	x1, x0, :lo12:.LC5	//, tmp153,
	adrp	x0, .LC10	// tmp154,
	add	x0, x0, :lo12:.LC10	//, tmp154,
	bl	__assert_fail		//
.L10:
// problem134.c:32:     float lst6[] = {100, 1, 15, 2};
	mov	w0, 1120403456	// tmp216,
	fmov	s0, w0	// tmp155, tmp216
	str	s0, [sp, 136]	// tmp155, lst6[0]
	fmov	s0, 1.0e+0	// tmp156,
	str	s0, [sp, 140]	// tmp156, lst6[1]
	fmov	s0, 1.5e+1	// tmp157,
	str	s0, [sp, 144]	// tmp157, lst6[2]
	fmov	s0, 2.0e+0	// tmp158,
	str	s0, [sp, 148]	// tmp158, lst6[3]
// problem134.c:33:     assert(func0(lst6, 4) == 10230);
	add	x0, sp, 136	// tmp159,,
	mov	w1, 4	//,
	bl	func0		//
	mov	w1, w0	// _6,
// problem134.c:33:     assert(func0(lst6, 4) == 10230);
	mov	w0, 10230	// tmp160,
	cmp	w1, w0	// _6, tmp160
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 33	//,
	adrp	x0, .LC5	// tmp162,
	add	x1, x0, :lo12:.LC5	//, tmp162,
	adrp	x0, .LC11	// tmp163,
	add	x0, x0, :lo12:.LC11	//, tmp163,
	bl	__assert_fail		//
.L11:
// problem134.c:35:     float lst7[] = {10000, 10000};
	mov	w0, 16384	// tmp214,
	movk	w0, 0x461c, lsl 16	// tmp214,,
	fmov	s0, w0	// tmp164, tmp214
	str	s0, [sp, 16]	// tmp164, lst7[0]
	mov	w0, 16384	// tmp215,
	movk	w0, 0x461c, lsl 16	// tmp215,,
	fmov	s0, w0	// tmp165, tmp215
	str	s0, [sp, 20]	// tmp165, lst7[1]
// problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	add	x0, sp, 16	// tmp166,,
	mov	w1, 2	//,
	bl	func0		//
	mov	w1, w0	// _7,
// problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	mov	w0, 49664	// tmp167,
	movk	w0, 0xbeb, lsl 16	// tmp167,,
	cmp	w1, w0	// _7, tmp167
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp168,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp168,
	mov	w2, 36	//,
	adrp	x0, .LC5	// tmp169,
	add	x1, x0, :lo12:.LC5	//, tmp169,
	adrp	x0, .LC12	// tmp170,
	add	x0, x0, :lo12:.LC12	//, tmp170,
	bl	__assert_fail		//
.L12:
// problem134.c:38:     float lst8[] = {-1.4, 4.6, 6.3};
	adrp	x0, .LC3	// tmp172,
	add	x1, x0, :lo12:.LC3	// tmp171, tmp172,
	add	x0, sp, 88	// tmp173,,
	ldr	x2, [x1]	// tmp175,
	str	x2, [x0]	// tmp175, lst8
	ldr	w1, [x1, 8]	// tmp176,
	str	w1, [x0, 8]	// tmp176, lst8
// problem134.c:39:     assert(func0(lst8, 3) == 75);
	add	x0, sp, 88	// tmp177,,
	mov	w1, 3	//,
	bl	func0		//
// problem134.c:39:     assert(func0(lst8, 3) == 75);
	cmp	w0, 75	// _8,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp178,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp178,
	mov	w2, 39	//,
	adrp	x0, .LC5	// tmp179,
	add	x1, x0, :lo12:.LC5	//, tmp179,
	adrp	x0, .LC13	// tmp180,
	add	x0, x0, :lo12:.LC13	//, tmp180,
	bl	__assert_fail		//
.L13:
// problem134.c:41:     float lst9[] = {-1.4, 17.9, 18.9, 19.9};
	mov	w0, 13107	// tmp210,
	movk	w0, 0xbfb3, lsl 16	// tmp210,,
	fmov	s0, w0	// tmp181, tmp210
	str	s0, [sp, 152]	// tmp181, lst9[0]
	mov	w0, 13107	// tmp211,
	movk	w0, 0x418f, lsl 16	// tmp211,,
	fmov	s0, w0	// tmp182, tmp211
	str	s0, [sp, 156]	// tmp182, lst9[1]
	mov	w0, 13107	// tmp212,
	movk	w0, 0x4197, lsl 16	// tmp212,,
	fmov	s0, w0	// tmp183, tmp212
	str	s0, [sp, 160]	// tmp183, lst9[2]
	mov	w0, 13107	// tmp213,
	movk	w0, 0x419f, lsl 16	// tmp213,,
	fmov	s0, w0	// tmp184, tmp213
	str	s0, [sp, 164]	// tmp184, lst9[3]
// problem134.c:42:     assert(func0(lst9, 4) == 1086);
	add	x0, sp, 152	// tmp185,,
	mov	w1, 4	//,
	bl	func0		//
// problem134.c:42:     assert(func0(lst9, 4) == 1086);
	cmp	w0, 1086	// _9,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp186,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp186,
	mov	w2, 42	//,
	adrp	x0, .LC5	// tmp187,
	add	x1, x0, :lo12:.LC5	//, tmp187,
	adrp	x0, .LC14	// tmp188,
	add	x0, x0, :lo12:.LC14	//, tmp188,
	bl	__assert_fail		//
.L14:
// problem134.c:44:     float lst10[] = {0};
	str	wzr, [sp]	//, lst10[0]
// problem134.c:45:     assert(func0(lst10, 1) == 0);
	mov	x0, sp	// tmp189,
	mov	w1, 1	//,
	bl	func0		//
// problem134.c:45:     assert(func0(lst10, 1) == 0);
	cmp	w0, 0	// _10,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp190,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp190,
	mov	w2, 45	//,
	adrp	x0, .LC5	// tmp191,
	add	x1, x0, :lo12:.LC5	//, tmp191,
	adrp	x0, .LC15	// tmp192,
	add	x0, x0, :lo12:.LC15	//, tmp192,
	bl	__assert_fail		//
.L15:
// problem134.c:47:     float lst11[] = {-1};
	fmov	s0, -1.0e+0	// tmp193,
	str	s0, [sp, 8]	// tmp193, lst11[0]
// problem134.c:48:     assert(func0(lst11, 1) == 1);
	add	x0, sp, 8	// tmp194,,
	mov	w1, 1	//,
	bl	func0		//
// problem134.c:48:     assert(func0(lst11, 1) == 1);
	cmp	w0, 1	// _11,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp195,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp195,
	mov	w2, 48	//,
	adrp	x0, .LC5	// tmp196,
	add	x1, x0, :lo12:.LC5	//, tmp196,
	adrp	x0, .LC16	// tmp197,
	add	x0, x0, :lo12:.LC16	//, tmp197,
	bl	__assert_fail		//
.L16:
// problem134.c:50:     float lst12[] = {-1, 1, 0};
	adrp	x0, .LC4	// tmp199,
	add	x1, x0, :lo12:.LC4	// tmp198, tmp199,
	add	x0, sp, 104	// tmp200,,
	ldr	x2, [x1]	// tmp202,
	str	x2, [x0]	// tmp202, lst12
	ldr	w1, [x1, 8]	// tmp203,
	str	w1, [x0, 8]	// tmp203, lst12
// problem134.c:51:     assert(func0(lst12, 3) == 2);
	add	x0, sp, 104	// tmp204,,
	mov	w1, 3	//,
	bl	func0		//
// problem134.c:51:     assert(func0(lst12, 3) == 2);
	cmp	w0, 2	// _12,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp205,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp205,
	mov	w2, 51	//,
	adrp	x0, .LC5	// tmp206,
	add	x1, x0, :lo12:.LC5	//, tmp206,
	adrp	x0, .LC17	// tmp207,
	add	x0, x0, :lo12:.LC17	//, tmp207,
	bl	__assert_fail		//
.L17:
// problem134.c:53:     return 0;
	mov	w0, 0	// _60,
// problem134.c:54: }
	mov	w1, w0	// <retval>, _60
	adrp	x0, :got:__stack_chk_guard	// tmp209,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp209,
	ldr	x3, [sp, 168]	// tmp218, D.6116
	ldr	x2, [x0]	// tmp219,
	subs	x3, x3, x2	// tmp218, tmp219
	mov	x2, 0	// tmp219
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 176]	//,,
	add	sp, sp, 192	//,,
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
	.align	3
.LC1:
	.word	1068708659
	.word	1082549862
	.word	0
	.align	3
.LC2:
	.word	-1072064102
	.word	1065353216
	.word	1065353216
	.align	3
.LC3:
	.word	-1078774989
	.word	1083388723
	.word	1086953882
	.align	3
.LC4:
	.word	-1082130432
	.word	1065353216
	.word	0
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
