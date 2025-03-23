	.arch armv8-a
	.file	"problem44.c"
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
	stp	x29, x30, [sp, -208]!	//,,,
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp	//,
// problem44.c:17: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp109, tmp110,
	ldr	x1, [x0]	// tmp207,
	str	x1, [sp, 200]	// tmp207, D.4331
	mov	x1, 0	// tmp207
// problem44.c:18:     int test1[] = {1, 3, 5, 0};
	mov	w0, 1	// tmp111,
	str	w0, [sp, 32]	// tmp111, test1[0]
	mov	w0, 3	// tmp112,
	str	w0, [sp, 36]	// tmp112, test1[1]
	mov	w0, 5	// tmp113,
	str	w0, [sp, 40]	// tmp113, test1[2]
	str	wzr, [sp, 44]	//, test1[3]
// problem44.c:19:     assert(func0(test1, 4) == false);
	add	x0, sp, 32	// tmp114,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp115
	eor	w0, w0, 1	// tmp116, _1,
	and	w0, w0, 255	// _2, tmp116
	cmp	w0, 0	// _2,
	bne	.L9		//,
// problem44.c:19:     assert(func0(test1, 4) == false);
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
	str	w0, [sp, 48]	// tmp120, test2[0]
	mov	w0, 3	// tmp121,
	str	w0, [sp, 52]	// tmp121, test2[1]
	mov	w0, -2	// tmp122,
	str	w0, [sp, 56]	// tmp122, test2[2]
	mov	w0, 1	// tmp123,
	str	w0, [sp, 60]	// tmp123, test2[3]
// problem44.c:22:     assert(func0(test2, 4) == false);
	add	x0, sp, 48	// tmp124,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp125
	eor	w0, w0, 1	// tmp126, _3,
	and	w0, w0, 255	// _4, tmp126
	cmp	w0, 0	// _4,
	bne	.L10		//,
// problem44.c:22:     assert(func0(test2, 4) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 22	//,
	adrp	x0, .LC5	// tmp128,
	add	x1, x0, :lo12:.LC5	//, tmp128,
	adrp	x0, .LC7	// tmp129,
	add	x0, x0, :lo12:.LC7	//, tmp129,
	bl	__assert_fail		//
.L10:
// problem44.c:24:     int test3[] = {1, 2, 3, 7};
	mov	w0, 1	// tmp130,
	str	w0, [sp, 64]	// tmp130, test3[0]
	mov	w0, 2	// tmp131,
	str	w0, [sp, 68]	// tmp131, test3[1]
	mov	w0, 3	// tmp132,
	str	w0, [sp, 72]	// tmp132, test3[2]
	mov	w0, 7	// tmp133,
	str	w0, [sp, 76]	// tmp133, test3[3]
// problem44.c:25:     assert(func0(test3, 4) == false);
	add	x0, sp, 64	// tmp134,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp135
	eor	w0, w0, 1	// tmp136, _5,
	and	w0, w0, 255	// _6, tmp136
	cmp	w0, 0	// _6,
	bne	.L11		//,
// problem44.c:25:     assert(func0(test3, 4) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 25	//,
	adrp	x0, .LC5	// tmp138,
	add	x1, x0, :lo12:.LC5	//, tmp138,
	adrp	x0, .LC8	// tmp139,
	add	x0, x0, :lo12:.LC8	//, tmp139,
	bl	__assert_fail		//
.L11:
// problem44.c:27:     int test4[] = {2, 4, -5, 3, 5, 7};
	adrp	x0, .LC0	// tmp141,
	add	x0, x0, :lo12:.LC0	// tmp140, tmp141,
	add	x2, sp, 80	// tmp142,,
	mov	x3, x0	// tmp143, tmp140
	ldp	x0, x1, [x3]	// tmp144,
	stp	x0, x1, [x2]	// tmp144, test4
	ldr	x0, [x3, 16]	// tmp145,
	str	x0, [x2, 16]	// tmp145, test4
// problem44.c:28:     assert(func0(test4, 6) == true);
	add	x0, sp, 80	// tmp146,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp147
	cmp	w0, 0	// _7,
	bne	.L12		//,
// problem44.c:28:     assert(func0(test4, 6) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp148,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp148,
	mov	w2, 28	//,
	adrp	x0, .LC5	// tmp149,
	add	x1, x0, :lo12:.LC5	//, tmp149,
	adrp	x0, .LC9	// tmp150,
	add	x0, x0, :lo12:.LC9	//, tmp150,
	bl	__assert_fail		//
.L12:
// problem44.c:30:     int test5[] = {1};
	mov	w0, 1	// tmp151,
	str	w0, [sp, 24]	// tmp151, test5[0]
// problem44.c:31:     assert(func0(test5, 1) == false);
	add	x0, sp, 24	// tmp152,,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _8, tmp153
	eor	w0, w0, 1	// tmp154, _8,
	and	w0, w0, 255	// _9, tmp154
	cmp	w0, 0	// _9,
	bne	.L13		//,
// problem44.c:31:     assert(func0(test5, 1) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 31	//,
	adrp	x0, .LC5	// tmp156,
	add	x1, x0, :lo12:.LC5	//, tmp156,
	adrp	x0, .LC10	// tmp157,
	add	x0, x0, :lo12:.LC10	//, tmp157,
	bl	__assert_fail		//
.L13:
// problem44.c:33:     int test6[] = {-3, 9, -1, 3, 2, 30};
	adrp	x0, .LC1	// tmp159,
	add	x0, x0, :lo12:.LC1	// tmp158, tmp159,
	add	x2, sp, 104	// tmp160,,
	mov	x3, x0	// tmp161, tmp158
	ldp	x0, x1, [x3]	// tmp162,
	stp	x0, x1, [x2]	// tmp162, test6
	ldr	x0, [x3, 16]	// tmp163,
	str	x0, [x2, 16]	// tmp163, test6
// problem44.c:34:     assert(func0(test6, 6) == true);
	add	x0, sp, 104	// tmp164,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp165
	cmp	w0, 0	// _10,
	bne	.L14		//,
// problem44.c:34:     assert(func0(test6, 6) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp166,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp166,
	mov	w2, 34	//,
	adrp	x0, .LC5	// tmp167,
	add	x1, x0, :lo12:.LC5	//, tmp167,
	adrp	x0, .LC11	// tmp168,
	add	x0, x0, :lo12:.LC11	//, tmp168,
	bl	__assert_fail		//
.L14:
// problem44.c:36:     int test7[] = {-3, 9, -1, 3, 2, 31};
	adrp	x0, .LC2	// tmp170,
	add	x0, x0, :lo12:.LC2	// tmp169, tmp170,
	add	x2, sp, 128	// tmp171,,
	mov	x3, x0	// tmp172, tmp169
	ldp	x0, x1, [x3]	// tmp173,
	stp	x0, x1, [x2]	// tmp173, test7
	ldr	x0, [x3, 16]	// tmp174,
	str	x0, [x2, 16]	// tmp174, test7
// problem44.c:37:     assert(func0(test7, 6) == true);
	add	x0, sp, 128	// tmp175,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp176
	cmp	w0, 0	// _11,
	bne	.L15		//,
// problem44.c:37:     assert(func0(test7, 6) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 37	//,
	adrp	x0, .LC5	// tmp178,
	add	x1, x0, :lo12:.LC5	//, tmp178,
	adrp	x0, .LC12	// tmp179,
	add	x0, x0, :lo12:.LC12	//, tmp179,
	bl	__assert_fail		//
.L15:
// problem44.c:39:     int test8[] = {-3, 9, -1, 4, 2, 30};
	adrp	x0, .LC3	// tmp181,
	add	x0, x0, :lo12:.LC3	// tmp180, tmp181,
	add	x2, sp, 152	// tmp182,,
	mov	x3, x0	// tmp183, tmp180
	ldp	x0, x1, [x3]	// tmp184,
	stp	x0, x1, [x2]	// tmp184, test8
	ldr	x0, [x3, 16]	// tmp185,
	str	x0, [x2, 16]	// tmp185, test8
// problem44.c:40:     assert(func0(test8, 6) == false);
	add	x0, sp, 152	// tmp186,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _12, tmp187
	eor	w0, w0, 1	// tmp188, _12,
	and	w0, w0, 255	// _13, tmp188
	cmp	w0, 0	// _13,
	bne	.L16		//,
// problem44.c:40:     assert(func0(test8, 6) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp189,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp189,
	mov	w2, 40	//,
	adrp	x0, .LC5	// tmp190,
	add	x1, x0, :lo12:.LC5	//, tmp190,
	adrp	x0, .LC13	// tmp191,
	add	x0, x0, :lo12:.LC13	//, tmp191,
	bl	__assert_fail		//
.L16:
// problem44.c:42:     int test9[] = {-3, 9, -1, 4, 2, 31};
	adrp	x0, .LC4	// tmp193,
	add	x0, x0, :lo12:.LC4	// tmp192, tmp193,
	add	x2, sp, 176	// tmp194,,
	mov	x3, x0	// tmp195, tmp192
	ldp	x0, x1, [x3]	// tmp196,
	stp	x0, x1, [x2]	// tmp196, test9
	ldr	x0, [x3, 16]	// tmp197,
	str	x0, [x2, 16]	// tmp197, test9
// problem44.c:43:     assert(func0(test9, 6) == false);
	add	x0, sp, 176	// tmp198,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _14, tmp199
	eor	w0, w0, 1	// tmp200, _14,
	and	w0, w0, 255	// _15, tmp200
	cmp	w0, 0	// _15,
	bne	.L17		//,
// problem44.c:43:     assert(func0(test9, 6) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp201,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp201,
	mov	w2, 43	//,
	adrp	x0, .LC5	// tmp202,
	add	x1, x0, :lo12:.LC5	//, tmp202,
	adrp	x0, .LC14	// tmp203,
	add	x0, x0, :lo12:.LC14	//, tmp203,
	bl	__assert_fail		//
.L17:
// problem44.c:45:     return 0;
	mov	w0, 0	// _53,
// problem44.c:46: }
	mov	w1, w0	// <retval>, _53
	adrp	x0, :got:__stack_chk_guard	// tmp206,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp205, tmp206,
	ldr	x3, [sp, 200]	// tmp208, D.4331
	ldr	x2, [x0]	// tmp209,
	subs	x3, x3, x2	// tmp208, tmp209
	mov	x2, 0	// tmp209
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 208	//,,,
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
