	.arch armv8-a
	.file	"problem41.c"
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
// problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
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
	sub	sp, sp, #176	//,,
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160	//,,
// problem41.c:18: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp110,
	ldr	x1, [x0]	// tmp208,
	str	x1, [sp, 152]	// tmp208, D.4914
	mov	x1, 0	// tmp208
// problem41.c:19:     int test1[] = {1, 3, 5, 0};
	mov	w0, 1	// tmp111,
	str	w0, [sp, 16]	// tmp111, test1[0]
	mov	w0, 3	// tmp112,
	str	w0, [sp, 20]	// tmp112, test1[1]
	mov	w0, 5	// tmp113,
	str	w0, [sp, 24]	// tmp113, test1[2]
	str	wzr, [sp, 28]	//, test1[3]
// problem41.c:20:     assert(func0(test1, 4) == false);
	add	x0, sp, 16	// tmp114,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp115
// problem41.c:20:     assert(func0(test1, 4) == false);
	eor	w0, w0, 1	// tmp116, _1,
	and	w0, w0, 255	// _2, tmp116
	and	w0, w0, 1	// tmp117, _2,
	cmp	w0, 0	// tmp117,
	bne	.L11		//,
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
	str	w0, [sp, 32]	// tmp121, test2[0]
	mov	w0, 3	// tmp122,
	str	w0, [sp, 36]	// tmp122, test2[1]
	mov	w0, 5	// tmp123,
	str	w0, [sp, 40]	// tmp123, test2[2]
	mov	w0, -1	// tmp124,
	str	w0, [sp, 44]	// tmp124, test2[3]
// problem41.c:23:     assert(func0(test2, 4) == false);
	add	x0, sp, 32	// tmp125,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp126
// problem41.c:23:     assert(func0(test2, 4) == false);
	eor	w0, w0, 1	// tmp127, _3,
	and	w0, w0, 255	// _4, tmp127
	and	w0, w0, 1	// tmp128, _4,
	cmp	w0, 0	// tmp128,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp130,
	add	x1, x0, :lo12:.LC1	//, tmp130,
	adrp	x0, .LC3	// tmp131,
	add	x0, x0, :lo12:.LC3	//, tmp131,
	bl	__assert_fail		//
.L12:
// problem41.c:25:     int test3[] = {1, 3, -2, 1};
	mov	w0, 1	// tmp132,
	str	w0, [sp, 48]	// tmp132, test3[0]
	mov	w0, 3	// tmp133,
	str	w0, [sp, 52]	// tmp133, test3[1]
	mov	w0, -2	// tmp134,
	str	w0, [sp, 56]	// tmp134, test3[2]
	mov	w0, 1	// tmp135,
	str	w0, [sp, 60]	// tmp135, test3[3]
// problem41.c:26:     assert(func0(test3, 4) == true);
	add	x0, sp, 48	// tmp136,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp137
// problem41.c:26:     assert(func0(test3, 4) == true);
	and	w0, w0, 1	// tmp138, _5,
	cmp	w0, 0	// tmp138,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp140,
	add	x1, x0, :lo12:.LC1	//, tmp140,
	adrp	x0, .LC4	// tmp141,
	add	x0, x0, :lo12:.LC4	//, tmp141,
	bl	__assert_fail		//
.L13:
// problem41.c:28:     int test4[] = {1, 2, 3, 7};
	mov	w0, 1	// tmp142,
	str	w0, [sp, 64]	// tmp142, test4[0]
	mov	w0, 2	// tmp143,
	str	w0, [sp, 68]	// tmp143, test4[1]
	mov	w0, 3	// tmp144,
	str	w0, [sp, 72]	// tmp144, test4[2]
	mov	w0, 7	// tmp145,
	str	w0, [sp, 76]	// tmp145, test4[3]
// problem41.c:29:     assert(func0(test4, 4) == false);
	add	x0, sp, 64	// tmp146,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp147
// problem41.c:29:     assert(func0(test4, 4) == false);
	eor	w0, w0, 1	// tmp148, _6,
	and	w0, w0, 255	// _7, tmp148
	and	w0, w0, 1	// tmp149, _7,
	cmp	w0, 0	// tmp149,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp151,
	add	x1, x0, :lo12:.LC1	//, tmp151,
	adrp	x0, .LC5	// tmp152,
	add	x0, x0, :lo12:.LC5	//, tmp152,
	bl	__assert_fail		//
.L14:
// problem41.c:31:     int test5[] = {1, 2, 5, 7};
	mov	w0, 1	// tmp153,
	str	w0, [sp, 80]	// tmp153, test5[0]
	mov	w0, 2	// tmp154,
	str	w0, [sp, 84]	// tmp154, test5[1]
	mov	w0, 5	// tmp155,
	str	w0, [sp, 88]	// tmp155, test5[2]
	mov	w0, 7	// tmp156,
	str	w0, [sp, 92]	// tmp156, test5[3]
// problem41.c:32:     assert(func0(test5, 4) == false);
	add	x0, sp, 80	// tmp157,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _8, tmp158
// problem41.c:32:     assert(func0(test5, 4) == false);
	eor	w0, w0, 1	// tmp159, _8,
	and	w0, w0, 255	// _9, tmp159
	and	w0, w0, 1	// tmp160, _9,
	cmp	w0, 0	// tmp160,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp162,
	add	x1, x0, :lo12:.LC1	//, tmp162,
	adrp	x0, .LC6	// tmp163,
	add	x0, x0, :lo12:.LC6	//, tmp163,
	bl	__assert_fail		//
.L15:
// problem41.c:34:     int test6[] = {2, 4, -5, 3, 9, 7};
	adrp	x0, .LC0	// tmp165,
	add	x0, x0, :lo12:.LC0	// tmp164, tmp165,
	add	x2, sp, 128	// tmp166,,
	mov	x3, x0	// tmp167, tmp164
	ldp	x0, x1, [x3]	// tmp168,
	stp	x0, x1, [x2]	// tmp168, test6
	ldr	x0, [x3, 16]	// tmp169,
	str	x0, [x2, 16]	// tmp169, test6
// problem41.c:35:     assert(func0(test6, 6) == true);
	add	x0, sp, 128	// tmp170,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp171
// problem41.c:35:     assert(func0(test6, 6) == true);
	and	w0, w0, 1	// tmp172, _10,
	cmp	w0, 0	// tmp172,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp174,
	add	x1, x0, :lo12:.LC1	//, tmp174,
	adrp	x0, .LC7	// tmp175,
	add	x0, x0, :lo12:.LC7	//, tmp175,
	bl	__assert_fail		//
.L16:
// problem41.c:37:     int test7[] = {1};
	mov	w0, 1	// tmp176,
	str	w0, [sp, 8]	// tmp176, test7[0]
// problem41.c:38:     assert(func0(test7, 1) == false);
	add	x0, sp, 8	// tmp177,,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp178
// problem41.c:38:     assert(func0(test7, 1) == false);
	eor	w0, w0, 1	// tmp179, _11,
	and	w0, w0, 255	// _12, tmp179
	and	w0, w0, 1	// tmp180, _12,
	cmp	w0, 0	// tmp180,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp181,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp181,
	mov	w2, 38	//,
	adrp	x0, .LC1	// tmp182,
	add	x1, x0, :lo12:.LC1	//, tmp182,
	adrp	x0, .LC8	// tmp183,
	add	x0, x0, :lo12:.LC8	//, tmp183,
	bl	__assert_fail		//
.L17:
// problem41.c:40:     int test8[] = {1, 3, 5, -100};
	mov	w0, 1	// tmp184,
	str	w0, [sp, 96]	// tmp184, test8[0]
	mov	w0, 3	// tmp185,
	str	w0, [sp, 100]	// tmp185, test8[1]
	mov	w0, 5	// tmp186,
	str	w0, [sp, 104]	// tmp186, test8[2]
	mov	w0, -100	// tmp187,
	str	w0, [sp, 108]	// tmp187, test8[3]
// problem41.c:41:     assert(func0(test8, 4) == false);
	add	x0, sp, 96	// tmp188,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp189
// problem41.c:41:     assert(func0(test8, 4) == false);
	eor	w0, w0, 1	// tmp190, _13,
	and	w0, w0, 255	// _14, tmp190
	and	w0, w0, 1	// tmp191, _14,
	cmp	w0, 0	// tmp191,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp192,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp192,
	mov	w2, 41	//,
	adrp	x0, .LC1	// tmp193,
	add	x1, x0, :lo12:.LC1	//, tmp193,
	adrp	x0, .LC9	// tmp194,
	add	x0, x0, :lo12:.LC9	//, tmp194,
	bl	__assert_fail		//
.L18:
// problem41.c:43:     int test9[] = {100, 3, 5, -100};
	mov	w0, 100	// tmp195,
	str	w0, [sp, 112]	// tmp195, test9[0]
	mov	w0, 3	// tmp196,
	str	w0, [sp, 116]	// tmp196, test9[1]
	mov	w0, 5	// tmp197,
	str	w0, [sp, 120]	// tmp197, test9[2]
	mov	w0, -100	// tmp198,
	str	w0, [sp, 124]	// tmp198, test9[3]
// problem41.c:44:     assert(func0(test9, 4) == false);
	add	x0, sp, 112	// tmp199,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _15, tmp200
// problem41.c:44:     assert(func0(test9, 4) == false);
	eor	w0, w0, 1	// tmp201, _15,
	and	w0, w0, 255	// _16, tmp201
	and	w0, w0, 1	// tmp202, _16,
	cmp	w0, 0	// tmp202,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp203,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp203,
	mov	w2, 44	//,
	adrp	x0, .LC1	// tmp204,
	add	x1, x0, :lo12:.LC1	//, tmp204,
	adrp	x0, .LC10	// tmp205,
	add	x0, x0, :lo12:.LC10	//, tmp205,
	bl	__assert_fail		//
.L19:
// problem41.c:46:     return 0;
	mov	w0, 0	// _66,
// problem41.c:47: }
	mov	w1, w0	// <retval>, _66
	adrp	x0, :got:__stack_chk_guard	// tmp207,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp207,
	ldr	x3, [sp, 152]	// tmp209, D.4914
	ldr	x2, [x0]	// tmp210,
	subs	x3, x3, x2	// tmp209, tmp210
	mov	x2, 0	// tmp210
	beq	.L21		//,
	bl	__stack_chk_fail		//
.L21:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
