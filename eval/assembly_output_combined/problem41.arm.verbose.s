	.arch armv8-a
	.file	"problem41.c"
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
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
// problem41.c:5:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 20]	//, i
// problem41.c:5:     for (int i = 0; i < size; i++)
	b	.L2		//
.L9:
// problem41.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w0, [sp, 20]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 24]	// tmp108, j
// problem41.c:6:         for (int j = i + 1; j < size; j++)
	b	.L3		//
.L8:
// problem41.c:7:             for (int k = j + 1; k < size; k++)
	ldr	w0, [sp, 24]	// tmp111, j
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 28]	// tmp110, k
// problem41.c:7:             for (int k = j + 1; k < size; k++)
	b	.L4		//
.L7:
// problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	ldrsw	x0, [sp, 20]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp112, l
	add	x0, x1, x0	// _3, tmp112, _2
	ldr	w1, [x0]	// _4, *_3
// problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	ldrsw	x0, [sp, 24]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp113, l
	add	x0, x2, x0	// _7, tmp113, _6
	ldr	w0, [x0]	// _8, *_7
// problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	add	w1, w1, w0	// _9, _4, _8
// problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	ldrsw	x0, [sp, 28]	// _10, k
	lsl	x0, x0, 2	// _11, _10,
	ldr	x2, [sp, 8]	// tmp114, l
	add	x0, x2, x0	// _12, tmp114, _11
	ldr	w0, [x0]	// _13, *_12
// problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	add	w0, w1, w0	// _14, _9, _13
// problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	cmp	w0, 0	// _14,
	bne	.L5		//,
// problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	mov	w0, 1	// _18,
	b	.L6		//
.L5:
// problem41.c:7:             for (int k = j + 1; k < size; k++)
	ldr	w0, [sp, 28]	// tmp116, k
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, k
.L4:
// problem41.c:7:             for (int k = j + 1; k < size; k++)
	ldr	w1, [sp, 28]	// tmp117, k
	ldr	w0, [sp, 4]	// tmp118, size
	cmp	w1, w0	// tmp117, tmp118
	blt	.L7		//,
// problem41.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w0, [sp, 24]	// tmp120, j
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 24]	// tmp119, j
.L3:
// problem41.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w1, [sp, 24]	// tmp121, j
	ldr	w0, [sp, 4]	// tmp122, size
	cmp	w1, w0	// tmp121, tmp122
	blt	.L8		//,
// problem41.c:5:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 20]	// tmp124, i
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 20]	// tmp123, i
.L2:
// problem41.c:5:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 20]	// tmp125, i
	ldr	w0, [sp, 4]	// tmp126, size
	cmp	w1, w0	// tmp125, tmp126
	blt	.L9		//,
// problem41.c:9:     return false;
	mov	w0, 0	// _18,
.L6:
// problem41.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem41.c"
	.align	3
.LC2:
	.string	"func0(test1, 4) == false"
	.align	3
.LC3:
	.string	"func0(test2, 4) == false"
	.align	3
.LC4:
	.string	"func0(test3, 4) == true"
	.align	3
.LC5:
	.string	"func0(test4, 4) == false"
	.align	3
.LC6:
	.string	"func0(test5, 4) == false"
	.align	3
.LC7:
	.string	"func0(test6, 6) == true"
	.align	3
.LC8:
	.string	"func0(test7, 1) == false"
	.align	3
.LC9:
	.string	"func0(test8, 4) == false"
	.align	3
.LC10:
	.string	"func0(test9, 4) == false"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -176]!	//,,,
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp	//,
// problem41.c:18: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x1, [x0]	// tmp201,
	str	x1, [sp, 168]	// tmp201, D.4332
	mov	x1, 0	// tmp201
// problem41.c:19:     int test1[] = {1, 3, 5, 0};
	mov	w0, 1	// tmp112,
	str	w0, [sp, 32]	// tmp112, test1[0]
	mov	w0, 3	// tmp113,
	str	w0, [sp, 36]	// tmp113, test1[1]
	mov	w0, 5	// tmp114,
	str	w0, [sp, 40]	// tmp114, test1[2]
	str	wzr, [sp, 44]	//, test1[3]
// problem41.c:20:     assert(func0(test1, 4) == false);
	add	x0, sp, 32	// tmp115,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp116
	eor	w0, w0, 1	// tmp117, _1,
	and	w0, w0, 255	// _2, tmp117
	cmp	w0, 0	// _2,
	bne	.L11		//,
// problem41.c:20:     assert(func0(test1, 4) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 20	//,
	adrp	x0, .LC1	// tmp119,
	add	x1, x0, :lo12:.LC1	//, tmp119,
	adrp	x0, .LC2	// tmp120,
	add	x0, x0, :lo12:.LC2	//, tmp120,
	bl	__assert_fail		//
.L11:
// problem41.c:22:     int test2[] = {1, 3, 5, -1};
	mov	w0, 1	// tmp121,
	str	w0, [sp, 48]	// tmp121, test2[0]
	mov	w0, 3	// tmp122,
	str	w0, [sp, 52]	// tmp122, test2[1]
	mov	w0, 5	// tmp123,
	str	w0, [sp, 56]	// tmp123, test2[2]
	mov	w0, -1	// tmp124,
	str	w0, [sp, 60]	// tmp124, test2[3]
// problem41.c:23:     assert(func0(test2, 4) == false);
	add	x0, sp, 48	// tmp125,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp126
	eor	w0, w0, 1	// tmp127, _3,
	and	w0, w0, 255	// _4, tmp127
	cmp	w0, 0	// _4,
	bne	.L12		//,
// problem41.c:23:     assert(func0(test2, 4) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp129,
	add	x1, x0, :lo12:.LC1	//, tmp129,
	adrp	x0, .LC3	// tmp130,
	add	x0, x0, :lo12:.LC3	//, tmp130,
	bl	__assert_fail		//
.L12:
// problem41.c:25:     int test3[] = {1, 3, -2, 1};
	mov	w0, 1	// tmp131,
	str	w0, [sp, 64]	// tmp131, test3[0]
	mov	w0, 3	// tmp132,
	str	w0, [sp, 68]	// tmp132, test3[1]
	mov	w0, -2	// tmp133,
	str	w0, [sp, 72]	// tmp133, test3[2]
	mov	w0, 1	// tmp134,
	str	w0, [sp, 76]	// tmp134, test3[3]
// problem41.c:26:     assert(func0(test3, 4) == true);
	add	x0, sp, 64	// tmp135,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp136
	cmp	w0, 0	// _5,
	bne	.L13		//,
// problem41.c:26:     assert(func0(test3, 4) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp138,
	add	x1, x0, :lo12:.LC1	//, tmp138,
	adrp	x0, .LC4	// tmp139,
	add	x0, x0, :lo12:.LC4	//, tmp139,
	bl	__assert_fail		//
.L13:
// problem41.c:28:     int test4[] = {1, 2, 3, 7};
	mov	w0, 1	// tmp140,
	str	w0, [sp, 80]	// tmp140, test4[0]
	mov	w0, 2	// tmp141,
	str	w0, [sp, 84]	// tmp141, test4[1]
	mov	w0, 3	// tmp142,
	str	w0, [sp, 88]	// tmp142, test4[2]
	mov	w0, 7	// tmp143,
	str	w0, [sp, 92]	// tmp143, test4[3]
// problem41.c:29:     assert(func0(test4, 4) == false);
	add	x0, sp, 80	// tmp144,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp145
	eor	w0, w0, 1	// tmp146, _6,
	and	w0, w0, 255	// _7, tmp146
	cmp	w0, 0	// _7,
	bne	.L14		//,
// problem41.c:29:     assert(func0(test4, 4) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp148,
	add	x1, x0, :lo12:.LC1	//, tmp148,
	adrp	x0, .LC5	// tmp149,
	add	x0, x0, :lo12:.LC5	//, tmp149,
	bl	__assert_fail		//
.L14:
// problem41.c:31:     int test5[] = {1, 2, 5, 7};
	mov	w0, 1	// tmp150,
	str	w0, [sp, 96]	// tmp150, test5[0]
	mov	w0, 2	// tmp151,
	str	w0, [sp, 100]	// tmp151, test5[1]
	mov	w0, 5	// tmp152,
	str	w0, [sp, 104]	// tmp152, test5[2]
	mov	w0, 7	// tmp153,
	str	w0, [sp, 108]	// tmp153, test5[3]
// problem41.c:32:     assert(func0(test5, 4) == false);
	add	x0, sp, 96	// tmp154,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _8, tmp155
	eor	w0, w0, 1	// tmp156, _8,
	and	w0, w0, 255	// _9, tmp156
	cmp	w0, 0	// _9,
	bne	.L15		//,
// problem41.c:32:     assert(func0(test5, 4) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp158,
	add	x1, x0, :lo12:.LC1	//, tmp158,
	adrp	x0, .LC6	// tmp159,
	add	x0, x0, :lo12:.LC6	//, tmp159,
	bl	__assert_fail		//
.L15:
// problem41.c:34:     int test6[] = {2, 4, -5, 3, 9, 7};
	adrp	x0, .LC0	// tmp161,
	add	x0, x0, :lo12:.LC0	// tmp160, tmp161,
	add	x2, sp, 144	// tmp162,,
	mov	x3, x0	// tmp163, tmp160
	ldp	x0, x1, [x3]	// tmp164,
	stp	x0, x1, [x2]	// tmp164, test6
	ldr	x0, [x3, 16]	// tmp165,
	str	x0, [x2, 16]	// tmp165, test6
// problem41.c:35:     assert(func0(test6, 6) == true);
	add	x0, sp, 144	// tmp166,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp167
	cmp	w0, 0	// _10,
	bne	.L16		//,
// problem41.c:35:     assert(func0(test6, 6) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp168,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp168,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp169,
	add	x1, x0, :lo12:.LC1	//, tmp169,
	adrp	x0, .LC7	// tmp170,
	add	x0, x0, :lo12:.LC7	//, tmp170,
	bl	__assert_fail		//
.L16:
// problem41.c:37:     int test7[] = {1};
	mov	w0, 1	// tmp171,
	str	w0, [sp, 24]	// tmp171, test7[0]
// problem41.c:38:     assert(func0(test7, 1) == false);
	add	x0, sp, 24	// tmp172,,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp173
	eor	w0, w0, 1	// tmp174, _11,
	and	w0, w0, 255	// _12, tmp174
	cmp	w0, 0	// _12,
	bne	.L17		//,
// problem41.c:38:     assert(func0(test7, 1) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp175,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp175,
	mov	w2, 38	//,
	adrp	x0, .LC1	// tmp176,
	add	x1, x0, :lo12:.LC1	//, tmp176,
	adrp	x0, .LC8	// tmp177,
	add	x0, x0, :lo12:.LC8	//, tmp177,
	bl	__assert_fail		//
.L17:
// problem41.c:40:     int test8[] = {1, 3, 5, -100};
	mov	w0, 1	// tmp178,
	str	w0, [sp, 112]	// tmp178, test8[0]
	mov	w0, 3	// tmp179,
	str	w0, [sp, 116]	// tmp179, test8[1]
	mov	w0, 5	// tmp180,
	str	w0, [sp, 120]	// tmp180, test8[2]
	mov	w0, -100	// tmp181,
	str	w0, [sp, 124]	// tmp181, test8[3]
// problem41.c:41:     assert(func0(test8, 4) == false);
	add	x0, sp, 112	// tmp182,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp183
	eor	w0, w0, 1	// tmp184, _13,
	and	w0, w0, 255	// _14, tmp184
	cmp	w0, 0	// _14,
	bne	.L18		//,
// problem41.c:41:     assert(func0(test8, 4) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp185,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp185,
	mov	w2, 41	//,
	adrp	x0, .LC1	// tmp186,
	add	x1, x0, :lo12:.LC1	//, tmp186,
	adrp	x0, .LC9	// tmp187,
	add	x0, x0, :lo12:.LC9	//, tmp187,
	bl	__assert_fail		//
.L18:
// problem41.c:43:     int test9[] = {100, 3, 5, -100};
	mov	w0, 100	// tmp188,
	str	w0, [sp, 128]	// tmp188, test9[0]
	mov	w0, 3	// tmp189,
	str	w0, [sp, 132]	// tmp189, test9[1]
	mov	w0, 5	// tmp190,
	str	w0, [sp, 136]	// tmp190, test9[2]
	mov	w0, -100	// tmp191,
	str	w0, [sp, 140]	// tmp191, test9[3]
// problem41.c:44:     assert(func0(test9, 4) == false);
	add	x0, sp, 128	// tmp192,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _15, tmp193
	eor	w0, w0, 1	// tmp194, _15,
	and	w0, w0, 255	// _16, tmp194
	cmp	w0, 0	// _16,
	bne	.L19		//,
// problem41.c:44:     assert(func0(test9, 4) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp195,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp195,
	mov	w2, 44	//,
	adrp	x0, .LC1	// tmp196,
	add	x1, x0, :lo12:.LC1	//, tmp196,
	adrp	x0, .LC10	// tmp197,
	add	x0, x0, :lo12:.LC10	//, tmp197,
	bl	__assert_fail		//
.L19:
// problem41.c:46:     return 0;
	mov	w0, 0	// _66,
// problem41.c:47: }
	mov	w1, w0	// <retval>, _66
	adrp	x0, :got:__stack_chk_guard	// tmp200,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp199, tmp200,
	ldr	x3, [sp, 168]	// tmp202, D.4332
	ldr	x2, [x0]	// tmp203,
	subs	x3, x3, x2	// tmp202, tmp203
	mov	x2, 0	// tmp203
	beq	.L21		//,
	bl	__stack_chk_fail		//
.L21:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 176	//,,,
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
	.word	2
	.word	4
	.word	-5
	.word	3
	.word	9
	.word	7
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
