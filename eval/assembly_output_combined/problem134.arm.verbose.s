	.arch armv8-a
	.file	"problem134.c"
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
	stp	x29, x30, [sp, -192]!	//,,,
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp	//,
// problem134.c:16: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x1, [x0]	// tmp219,
	str	x1, [sp, 184]	// tmp219, D.5375
	mov	x1, 0	// tmp219
// problem134.c:17:     float lst1[] = {1, 2, 3};
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	// tmp108, tmp109,
	add	x0, sp, 40	// tmp110,,
	ldr	x2, [x1]	// tmp112,
	str	x2, [x0]	// tmp112, lst1
	ldr	w1, [x1, 8]	// tmp113,
	str	w1, [x0, 8]	// tmp113, lst1
// problem134.c:18:     assert(func0(lst1, 3) == 14);
	add	x0, sp, 40	// tmp114,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 14	// _1,
	beq	.L6		//,
// problem134.c:18:     assert(func0(lst1, 3) == 14);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 18	//,
	adrp	x0, .LC5	// tmp116,
	add	x1, x0, :lo12:.LC5	//, tmp116,
	adrp	x0, .LC6	// tmp117,
	add	x0, x0, :lo12:.LC6	//, tmp117,
	bl	__assert_fail		//
.L6:
// problem134.c:20:     float lst2[] = {1.0, 2, 3};
	adrp	x0, .LC0	// tmp119,
	add	x1, x0, :lo12:.LC0	// tmp118, tmp119,
	add	x0, sp, 56	// tmp120,,
	ldr	x2, [x1]	// tmp122,
	str	x2, [x0]	// tmp122, lst2
	ldr	w1, [x1, 8]	// tmp123,
	str	w1, [x0, 8]	// tmp123, lst2
// problem134.c:21:     assert(func0(lst2, 3) == 14);
	add	x0, sp, 56	// tmp124,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 14	// _2,
	beq	.L7		//,
// problem134.c:21:     assert(func0(lst2, 3) == 14);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 21	//,
	adrp	x0, .LC5	// tmp126,
	add	x1, x0, :lo12:.LC5	//, tmp126,
	adrp	x0, .LC7	// tmp127,
	add	x0, x0, :lo12:.LC7	//, tmp127,
	bl	__assert_fail		//
.L7:
// problem134.c:23:     float lst3[] = {1, 3, 5, 7};
	fmov	s0, 1.0e+0	// tmp128,
	str	s0, [sp, 136]	// tmp128, lst3[0]
	fmov	s0, 3.0e+0	// tmp129,
	str	s0, [sp, 140]	// tmp129, lst3[1]
	fmov	s0, 5.0e+0	// tmp130,
	str	s0, [sp, 144]	// tmp130, lst3[2]
	fmov	s0, 7.0e+0	// tmp131,
	str	s0, [sp, 148]	// tmp131, lst3[3]
// problem134.c:24:     assert(func0(lst3, 4) == 84);
	add	x0, sp, 136	// tmp132,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 84	// _3,
	beq	.L8		//,
// problem134.c:24:     assert(func0(lst3, 4) == 84);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 24	//,
	adrp	x0, .LC5	// tmp134,
	add	x1, x0, :lo12:.LC5	//, tmp134,
	adrp	x0, .LC8	// tmp135,
	add	x0, x0, :lo12:.LC8	//, tmp135,
	bl	__assert_fail		//
.L8:
// problem134.c:26:     float lst4[] = {1.4, 4.2, 0};
	adrp	x0, .LC1	// tmp137,
	add	x1, x0, :lo12:.LC1	// tmp136, tmp137,
	add	x0, sp, 72	// tmp138,,
	ldr	x2, [x1]	// tmp140,
	str	x2, [x0]	// tmp140, lst4
	ldr	w1, [x1, 8]	// tmp141,
	str	w1, [x0, 8]	// tmp141, lst4
// problem134.c:27:     assert(func0(lst4, 3) == 29);
	add	x0, sp, 72	// tmp142,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 29	// _4,
	beq	.L9		//,
// problem134.c:27:     assert(func0(lst4, 3) == 29);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 27	//,
	adrp	x0, .LC5	// tmp144,
	add	x1, x0, :lo12:.LC5	//, tmp144,
	adrp	x0, .LC9	// tmp145,
	add	x0, x0, :lo12:.LC9	//, tmp145,
	bl	__assert_fail		//
.L9:
// problem134.c:29:     float lst5[] = {-2.4, 1, 1};
	adrp	x0, .LC2	// tmp147,
	add	x1, x0, :lo12:.LC2	// tmp146, tmp147,
	add	x0, sp, 88	// tmp148,,
	ldr	x2, [x1]	// tmp150,
	str	x2, [x0]	// tmp150, lst5
	ldr	w1, [x1, 8]	// tmp151,
	str	w1, [x0, 8]	// tmp151, lst5
// problem134.c:30:     assert(func0(lst5, 3) == 6);
	add	x0, sp, 88	// tmp152,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 6	// _5,
	beq	.L10		//,
// problem134.c:30:     assert(func0(lst5, 3) == 6);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 30	//,
	adrp	x0, .LC5	// tmp154,
	add	x1, x0, :lo12:.LC5	//, tmp154,
	adrp	x0, .LC10	// tmp155,
	add	x0, x0, :lo12:.LC10	//, tmp155,
	bl	__assert_fail		//
.L10:
// problem134.c:32:     float lst6[] = {100, 1, 15, 2};
	mov	w0, 1120403456	// tmp218,
	fmov	s0, w0	// tmp156, tmp218
	str	s0, [sp, 152]	// tmp156, lst6[0]
	fmov	s0, 1.0e+0	// tmp157,
	str	s0, [sp, 156]	// tmp157, lst6[1]
	fmov	s0, 1.5e+1	// tmp158,
	str	s0, [sp, 160]	// tmp158, lst6[2]
	fmov	s0, 2.0e+0	// tmp159,
	str	s0, [sp, 164]	// tmp159, lst6[3]
// problem134.c:33:     assert(func0(lst6, 4) == 10230);
	add	x0, sp, 152	// tmp160,,
	mov	w1, 4	//,
	bl	func0		//
	mov	w1, w0	// _6,
	mov	w0, 10230	// tmp161,
	cmp	w1, w0	// _6, tmp161
	beq	.L11		//,
// problem134.c:33:     assert(func0(lst6, 4) == 10230);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 33	//,
	adrp	x0, .LC5	// tmp163,
	add	x1, x0, :lo12:.LC5	//, tmp163,
	adrp	x0, .LC11	// tmp164,
	add	x0, x0, :lo12:.LC11	//, tmp164,
	bl	__assert_fail		//
.L11:
// problem134.c:35:     float lst7[] = {10000, 10000};
	mov	w0, 16384	// tmp216,
	movk	w0, 0x461c, lsl 16	// tmp216,,
	fmov	s0, w0	// tmp165, tmp216
	str	s0, [sp, 32]	// tmp165, lst7[0]
	mov	w0, 16384	// tmp217,
	movk	w0, 0x461c, lsl 16	// tmp217,,
	fmov	s0, w0	// tmp166, tmp217
	str	s0, [sp, 36]	// tmp166, lst7[1]
// problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	add	x0, sp, 32	// tmp167,,
	mov	w1, 2	//,
	bl	func0		//
	mov	w1, w0	// _7,
	mov	w0, 49664	// tmp168,
	movk	w0, 0xbeb, lsl 16	// tmp168,,
	cmp	w1, w0	// _7, tmp168
	beq	.L12		//,
// problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp169,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp169,
	mov	w2, 36	//,
	adrp	x0, .LC5	// tmp170,
	add	x1, x0, :lo12:.LC5	//, tmp170,
	adrp	x0, .LC12	// tmp171,
	add	x0, x0, :lo12:.LC12	//, tmp171,
	bl	__assert_fail		//
.L12:
// problem134.c:38:     float lst8[] = {-1.4, 4.6, 6.3};
	adrp	x0, .LC3	// tmp173,
	add	x1, x0, :lo12:.LC3	// tmp172, tmp173,
	add	x0, sp, 104	// tmp174,,
	ldr	x2, [x1]	// tmp176,
	str	x2, [x0]	// tmp176, lst8
	ldr	w1, [x1, 8]	// tmp177,
	str	w1, [x0, 8]	// tmp177, lst8
// problem134.c:39:     assert(func0(lst8, 3) == 75);
	add	x0, sp, 104	// tmp178,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 75	// _8,
	beq	.L13		//,
// problem134.c:39:     assert(func0(lst8, 3) == 75);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp179,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp179,
	mov	w2, 39	//,
	adrp	x0, .LC5	// tmp180,
	add	x1, x0, :lo12:.LC5	//, tmp180,
	adrp	x0, .LC13	// tmp181,
	add	x0, x0, :lo12:.LC13	//, tmp181,
	bl	__assert_fail		//
.L13:
// problem134.c:41:     float lst9[] = {-1.4, 17.9, 18.9, 19.9};
	mov	w0, 13107	// tmp212,
	movk	w0, 0xbfb3, lsl 16	// tmp212,,
	fmov	s0, w0	// tmp182, tmp212
	str	s0, [sp, 168]	// tmp182, lst9[0]
	mov	w0, 13107	// tmp213,
	movk	w0, 0x418f, lsl 16	// tmp213,,
	fmov	s0, w0	// tmp183, tmp213
	str	s0, [sp, 172]	// tmp183, lst9[1]
	mov	w0, 13107	// tmp214,
	movk	w0, 0x4197, lsl 16	// tmp214,,
	fmov	s0, w0	// tmp184, tmp214
	str	s0, [sp, 176]	// tmp184, lst9[2]
	mov	w0, 13107	// tmp215,
	movk	w0, 0x419f, lsl 16	// tmp215,,
	fmov	s0, w0	// tmp185, tmp215
	str	s0, [sp, 180]	// tmp185, lst9[3]
// problem134.c:42:     assert(func0(lst9, 4) == 1086);
	add	x0, sp, 168	// tmp186,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 1086	// _9,
	beq	.L14		//,
// problem134.c:42:     assert(func0(lst9, 4) == 1086);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp187,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp187,
	mov	w2, 42	//,
	adrp	x0, .LC5	// tmp188,
	add	x1, x0, :lo12:.LC5	//, tmp188,
	adrp	x0, .LC14	// tmp189,
	add	x0, x0, :lo12:.LC14	//, tmp189,
	bl	__assert_fail		//
.L14:
// problem134.c:44:     float lst10[] = {0};
	str	wzr, [sp, 16]	//, lst10[0]
// problem134.c:45:     assert(func0(lst10, 1) == 0);
	add	x0, sp, 16	// tmp190,,
	mov	w1, 1	//,
	bl	func0		//
	cmp	w0, 0	// _10,
	beq	.L15		//,
// problem134.c:45:     assert(func0(lst10, 1) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp191,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp191,
	mov	w2, 45	//,
	adrp	x0, .LC5	// tmp192,
	add	x1, x0, :lo12:.LC5	//, tmp192,
	adrp	x0, .LC15	// tmp193,
	add	x0, x0, :lo12:.LC15	//, tmp193,
	bl	__assert_fail		//
.L15:
// problem134.c:47:     float lst11[] = {-1};
	fmov	s0, -1.0e+0	// tmp194,
	str	s0, [sp, 24]	// tmp194, lst11[0]
// problem134.c:48:     assert(func0(lst11, 1) == 1);
	add	x0, sp, 24	// tmp195,,
	mov	w1, 1	//,
	bl	func0		//
	cmp	w0, 1	// _11,
	beq	.L16		//,
// problem134.c:48:     assert(func0(lst11, 1) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp196,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp196,
	mov	w2, 48	//,
	adrp	x0, .LC5	// tmp197,
	add	x1, x0, :lo12:.LC5	//, tmp197,
	adrp	x0, .LC16	// tmp198,
	add	x0, x0, :lo12:.LC16	//, tmp198,
	bl	__assert_fail		//
.L16:
// problem134.c:50:     float lst12[] = {-1, 1, 0};
	adrp	x0, .LC4	// tmp200,
	add	x1, x0, :lo12:.LC4	// tmp199, tmp200,
	add	x0, sp, 120	// tmp201,,
	ldr	x2, [x1]	// tmp203,
	str	x2, [x0]	// tmp203, lst12
	ldr	w1, [x1, 8]	// tmp204,
	str	w1, [x0, 8]	// tmp204, lst12
// problem134.c:51:     assert(func0(lst12, 3) == 2);
	add	x0, sp, 120	// tmp205,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 2	// _12,
	beq	.L17		//,
// problem134.c:51:     assert(func0(lst12, 3) == 2);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp206,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp206,
	mov	w2, 51	//,
	adrp	x0, .LC5	// tmp207,
	add	x1, x0, :lo12:.LC5	//, tmp207,
	adrp	x0, .LC17	// tmp208,
	add	x0, x0, :lo12:.LC17	//, tmp208,
	bl	__assert_fail		//
.L17:
// problem134.c:53:     return 0;
	mov	w0, 0	// _60,
// problem134.c:54: }
	mov	w1, w0	// <retval>, _60
	adrp	x0, :got:__stack_chk_guard	// tmp211,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp210, tmp211,
	ldr	x3, [sp, 184]	// tmp220, D.5375
	ldr	x2, [x0]	// tmp221,
	subs	x3, x3, x2	// tmp220, tmp221
	mov	x2, 0	// tmp221
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 192	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
