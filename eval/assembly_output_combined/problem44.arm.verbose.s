	.arch armv8-a
	.file	"problem44.c"
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
// problem44.c:5:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 24]	//, i
// problem44.c:5:     for (int i = 0; i < size; i++)
	b	.L2		//
.L7:
// problem44.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w0, [sp, 24]	// tmp104, i
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 28]	// tmp103, j
// problem44.c:6:         for (int j = i + 1; j < size; j++)
	b	.L3		//
.L6:
// problem44.c:7:             if (l[i] + l[j] == 0) return true;
	ldrsw	x0, [sp, 24]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp105, l
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	w1, [x0]	// _4, *_3
// problem44.c:7:             if (l[i] + l[j] == 0) return true;
	ldrsw	x0, [sp, 28]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp106, l
	add	x0, x2, x0	// _7, tmp106, _6
	ldr	w0, [x0]	// _8, *_7
// problem44.c:7:             if (l[i] + l[j] == 0) return true;
	add	w0, w1, w0	// _9, _4, _8
// problem44.c:7:             if (l[i] + l[j] == 0) return true;
	cmp	w0, 0	// _9,
	bne	.L4		//,
// problem44.c:7:             if (l[i] + l[j] == 0) return true;
	mov	w0, 1	// _12,
// problem44.c:7:             if (l[i] + l[j] == 0) return true;
	b	.L5		//
.L4:
// problem44.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w0, [sp, 28]	// tmp108, j
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 28]	// tmp107, j
.L3:
// problem44.c:6:         for (int j = i + 1; j < size; j++)
	ldr	w1, [sp, 28]	// tmp109, j
	ldr	w0, [sp, 4]	// tmp110, size
	cmp	w1, w0	// tmp109, tmp110
	blt	.L6		//,
// problem44.c:5:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 24]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 24]	// tmp111, i
.L2:
// problem44.c:5:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 24]	// tmp113, i
	ldr	w0, [sp, 4]	// tmp114, size
	cmp	w1, w0	// tmp113, tmp114
	blt	.L7		//,
// problem44.c:8:     return false;
	mov	w0, 0	// _12,
.L5:
// problem44.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem44.c"
	.align	3
.LC6:
	.string	"func0(test1, 4) == false"
	.align	3
.LC7:
	.string	"func0(test2, 4) == false"
	.align	3
.LC8:
	.string	"func0(test3, 4) == false"
	.align	3
.LC9:
	.string	"func0(test4, 6) == true"
	.align	3
.LC10:
	.string	"func0(test5, 1) == false"
	.align	3
.LC11:
	.string	"func0(test6, 6) == true"
	.align	3
.LC12:
	.string	"func0(test7, 6) == true"
	.align	3
.LC13:
	.string	"func0(test8, 6) == false"
	.align	3
.LC14:
	.string	"func0(test9, 6) == false"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #208	//,,
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, 192]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 192	//,,
// problem44.c:17: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp109,
	ldr	x1, [x0]	// tmp214,
	str	x1, [sp, 184]	// tmp214, D.4913
	mov	x1, 0	// tmp214
// problem44.c:18:     int test1[] = {1, 3, 5, 0};
	mov	w0, 1	// tmp110,
	str	w0, [sp, 16]	// tmp110, test1[0]
	mov	w0, 3	// tmp111,
	str	w0, [sp, 20]	// tmp111, test1[1]
	mov	w0, 5	// tmp112,
	str	w0, [sp, 24]	// tmp112, test1[2]
	str	wzr, [sp, 28]	//, test1[3]
// problem44.c:19:     assert(func0(test1, 4) == false);
	add	x0, sp, 16	// tmp113,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp114
// problem44.c:19:     assert(func0(test1, 4) == false);
	eor	w0, w0, 1	// tmp115, _1,
	and	w0, w0, 255	// _2, tmp115
	and	w0, w0, 1	// tmp116, _2,
	cmp	w0, 0	// tmp116,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 19	//,
	adrp	x0, .LC5	// tmp118,
	add	x1, x0, :lo12:.LC5	//, tmp118,
	adrp	x0, .LC6	// tmp119,
	add	x0, x0, :lo12:.LC6	//, tmp119,
	bl	__assert_fail		//
.L9:
// problem44.c:21:     int test2[] = {1, 3, -2, 1};
	mov	w0, 1	// tmp120,
	str	w0, [sp, 32]	// tmp120, test2[0]
	mov	w0, 3	// tmp121,
	str	w0, [sp, 36]	// tmp121, test2[1]
	mov	w0, -2	// tmp122,
	str	w0, [sp, 40]	// tmp122, test2[2]
	mov	w0, 1	// tmp123,
	str	w0, [sp, 44]	// tmp123, test2[3]
// problem44.c:22:     assert(func0(test2, 4) == false);
	add	x0, sp, 32	// tmp124,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp125
// problem44.c:22:     assert(func0(test2, 4) == false);
	eor	w0, w0, 1	// tmp126, _3,
	and	w0, w0, 255	// _4, tmp126
	and	w0, w0, 1	// tmp127, _4,
	cmp	w0, 0	// tmp127,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 22	//,
	adrp	x0, .LC5	// tmp129,
	add	x1, x0, :lo12:.LC5	//, tmp129,
	adrp	x0, .LC7	// tmp130,
	add	x0, x0, :lo12:.LC7	//, tmp130,
	bl	__assert_fail		//
.L10:
// problem44.c:24:     int test3[] = {1, 2, 3, 7};
	mov	w0, 1	// tmp131,
	str	w0, [sp, 48]	// tmp131, test3[0]
	mov	w0, 2	// tmp132,
	str	w0, [sp, 52]	// tmp132, test3[1]
	mov	w0, 3	// tmp133,
	str	w0, [sp, 56]	// tmp133, test3[2]
	mov	w0, 7	// tmp134,
	str	w0, [sp, 60]	// tmp134, test3[3]
// problem44.c:25:     assert(func0(test3, 4) == false);
	add	x0, sp, 48	// tmp135,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp136
// problem44.c:25:     assert(func0(test3, 4) == false);
	eor	w0, w0, 1	// tmp137, _5,
	and	w0, w0, 255	// _6, tmp137
	and	w0, w0, 1	// tmp138, _6,
	cmp	w0, 0	// tmp138,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 25	//,
	adrp	x0, .LC5	// tmp140,
	add	x1, x0, :lo12:.LC5	//, tmp140,
	adrp	x0, .LC8	// tmp141,
	add	x0, x0, :lo12:.LC8	//, tmp141,
	bl	__assert_fail		//
.L11:
// problem44.c:27:     int test4[] = {2, 4, -5, 3, 5, 7};
	adrp	x0, .LC0	// tmp143,
	add	x0, x0, :lo12:.LC0	// tmp142, tmp143,
	add	x2, sp, 64	// tmp144,,
	mov	x3, x0	// tmp145, tmp142
	ldp	x0, x1, [x3]	// tmp146,
	stp	x0, x1, [x2]	// tmp146, test4
	ldr	x0, [x3, 16]	// tmp147,
	str	x0, [x2, 16]	// tmp147, test4
// problem44.c:28:     assert(func0(test4, 6) == true);
	add	x0, sp, 64	// tmp148,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp149
// problem44.c:28:     assert(func0(test4, 6) == true);
	and	w0, w0, 1	// tmp150, _7,
	cmp	w0, 0	// tmp150,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 28	//,
	adrp	x0, .LC5	// tmp152,
	add	x1, x0, :lo12:.LC5	//, tmp152,
	adrp	x0, .LC9	// tmp153,
	add	x0, x0, :lo12:.LC9	//, tmp153,
	bl	__assert_fail		//
.L12:
// problem44.c:30:     int test5[] = {1};
	mov	w0, 1	// tmp154,
	str	w0, [sp, 8]	// tmp154, test5[0]
// problem44.c:31:     assert(func0(test5, 1) == false);
	add	x0, sp, 8	// tmp155,,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _8, tmp156
// problem44.c:31:     assert(func0(test5, 1) == false);
	eor	w0, w0, 1	// tmp157, _8,
	and	w0, w0, 255	// _9, tmp157
	and	w0, w0, 1	// tmp158, _9,
	cmp	w0, 0	// tmp158,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 31	//,
	adrp	x0, .LC5	// tmp160,
	add	x1, x0, :lo12:.LC5	//, tmp160,
	adrp	x0, .LC10	// tmp161,
	add	x0, x0, :lo12:.LC10	//, tmp161,
	bl	__assert_fail		//
.L13:
// problem44.c:33:     int test6[] = {-3, 9, -1, 3, 2, 30};
	adrp	x0, .LC1	// tmp163,
	add	x0, x0, :lo12:.LC1	// tmp162, tmp163,
	add	x2, sp, 88	// tmp164,,
	mov	x3, x0	// tmp165, tmp162
	ldp	x0, x1, [x3]	// tmp166,
	stp	x0, x1, [x2]	// tmp166, test6
	ldr	x0, [x3, 16]	// tmp167,
	str	x0, [x2, 16]	// tmp167, test6
// problem44.c:34:     assert(func0(test6, 6) == true);
	add	x0, sp, 88	// tmp168,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp169
// problem44.c:34:     assert(func0(test6, 6) == true);
	and	w0, w0, 1	// tmp170, _10,
	cmp	w0, 0	// tmp170,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp171,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp171,
	mov	w2, 34	//,
	adrp	x0, .LC5	// tmp172,
	add	x1, x0, :lo12:.LC5	//, tmp172,
	adrp	x0, .LC11	// tmp173,
	add	x0, x0, :lo12:.LC11	//, tmp173,
	bl	__assert_fail		//
.L14:
// problem44.c:36:     int test7[] = {-3, 9, -1, 3, 2, 31};
	adrp	x0, .LC2	// tmp175,
	add	x0, x0, :lo12:.LC2	// tmp174, tmp175,
	add	x2, sp, 112	// tmp176,,
	mov	x3, x0	// tmp177, tmp174
	ldp	x0, x1, [x3]	// tmp178,
	stp	x0, x1, [x2]	// tmp178, test7
	ldr	x0, [x3, 16]	// tmp179,
	str	x0, [x2, 16]	// tmp179, test7
// problem44.c:37:     assert(func0(test7, 6) == true);
	add	x0, sp, 112	// tmp180,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp181
// problem44.c:37:     assert(func0(test7, 6) == true);
	and	w0, w0, 1	// tmp182, _11,
	cmp	w0, 0	// tmp182,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp183,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp183,
	mov	w2, 37	//,
	adrp	x0, .LC5	// tmp184,
	add	x1, x0, :lo12:.LC5	//, tmp184,
	adrp	x0, .LC12	// tmp185,
	add	x0, x0, :lo12:.LC12	//, tmp185,
	bl	__assert_fail		//
.L15:
// problem44.c:39:     int test8[] = {-3, 9, -1, 4, 2, 30};
	adrp	x0, .LC3	// tmp187,
	add	x0, x0, :lo12:.LC3	// tmp186, tmp187,
	add	x2, sp, 136	// tmp188,,
	mov	x3, x0	// tmp189, tmp186
	ldp	x0, x1, [x3]	// tmp190,
	stp	x0, x1, [x2]	// tmp190, test8
	ldr	x0, [x3, 16]	// tmp191,
	str	x0, [x2, 16]	// tmp191, test8
// problem44.c:40:     assert(func0(test8, 6) == false);
	add	x0, sp, 136	// tmp192,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _12, tmp193
// problem44.c:40:     assert(func0(test8, 6) == false);
	eor	w0, w0, 1	// tmp194, _12,
	and	w0, w0, 255	// _13, tmp194
	and	w0, w0, 1	// tmp195, _13,
	cmp	w0, 0	// tmp195,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp196,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp196,
	mov	w2, 40	//,
	adrp	x0, .LC5	// tmp197,
	add	x1, x0, :lo12:.LC5	//, tmp197,
	adrp	x0, .LC13	// tmp198,
	add	x0, x0, :lo12:.LC13	//, tmp198,
	bl	__assert_fail		//
.L16:
// problem44.c:42:     int test9[] = {-3, 9, -1, 4, 2, 31};
	adrp	x0, .LC4	// tmp200,
	add	x0, x0, :lo12:.LC4	// tmp199, tmp200,
	add	x2, sp, 160	// tmp201,,
	mov	x3, x0	// tmp202, tmp199
	ldp	x0, x1, [x3]	// tmp203,
	stp	x0, x1, [x2]	// tmp203, test9
	ldr	x0, [x3, 16]	// tmp204,
	str	x0, [x2, 16]	// tmp204, test9
// problem44.c:43:     assert(func0(test9, 6) == false);
	add	x0, sp, 160	// tmp205,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _14, tmp206
// problem44.c:43:     assert(func0(test9, 6) == false);
	eor	w0, w0, 1	// tmp207, _14,
	and	w0, w0, 255	// _15, tmp207
	and	w0, w0, 1	// tmp208, _15,
	cmp	w0, 0	// tmp208,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp209,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp209,
	mov	w2, 43	//,
	adrp	x0, .LC5	// tmp210,
	add	x1, x0, :lo12:.LC5	//, tmp210,
	adrp	x0, .LC14	// tmp211,
	add	x0, x0, :lo12:.LC14	//, tmp211,
	bl	__assert_fail		//
.L17:
// problem44.c:45:     return 0;
	mov	w0, 0	// _53,
// problem44.c:46: }
	mov	w1, w0	// <retval>, _53
	adrp	x0, :got:__stack_chk_guard	// tmp213,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp213,
	ldr	x3, [sp, 184]	// tmp215, D.4913
	ldr	x2, [x0]	// tmp216,
	subs	x3, x3, x2	// tmp215, tmp216
	mov	x2, 0	// tmp216
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 192]	//,,
	add	sp, sp, 208	//,,
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
	.word	5
	.word	7
	.align	3
.LC1:
	.word	-3
	.word	9
	.word	-1
	.word	3
	.word	2
	.word	30
	.align	3
.LC2:
	.word	-3
	.word	9
	.word	-1
	.word	3
	.word	2
	.word	31
	.align	3
.LC3:
	.word	-3
	.word	9
	.word	-1
	.word	4
	.word	2
	.word	30
	.align	3
.LC4:
	.word	-3
	.word	9
	.word	-1
	.word	4
	.word	2
	.word	31
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
