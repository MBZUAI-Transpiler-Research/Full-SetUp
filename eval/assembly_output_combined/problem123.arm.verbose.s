	.arch armv8-a
	.file	"problem123.c"
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
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// k, k
// problem123.c:4:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// problem123.c:5:     for (int i = 0; i < k; i++)
	str	wzr, [sp, 28]	//, i
// problem123.c:5:     for (int i = 0; i < k; i++)
	b	.L2		//
.L4:
// problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp106, arr
	add	x0, x1, x0	// _3, tmp106, _2
	ldr	w0, [x0]	// _4, *_3
// problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	cmn	w0, #99	// _4,
	blt	.L3		//,
// problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp107, arr
	add	x0, x1, x0	// _7, tmp107, _6
	ldr	w0, [x0]	// _8, *_7
// problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	cmp	w0, 99	// _8,
	bgt	.L3		//,
// problem123.c:7:             sum += arr[i];
	ldrsw	x0, [sp, 28]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 8]	// tmp108, arr
	add	x0, x1, x0	// _11, tmp108, _10
	ldr	w0, [x0]	// _12, *_11
// problem123.c:7:             sum += arr[i];
	ldr	w1, [sp, 24]	// tmp110, sum
	add	w0, w1, w0	// tmp109, tmp110, _12
	str	w0, [sp, 24]	// tmp109, sum
.L3:
// problem123.c:5:     for (int i = 0; i < k; i++)
	ldr	w0, [sp, 28]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 28]	// tmp111, i
.L2:
// problem123.c:5:     for (int i = 0; i < k; i++)
	ldr	w1, [sp, 28]	// tmp113, i
	ldr	w0, [sp, 4]	// tmp114, k
	cmp	w1, w0	// tmp113, tmp114
	blt	.L4		//,
// problem123.c:8:     return sum;
	ldr	w0, [sp, 24]	// _19, sum
// problem123.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem123.c"
	.align	3
.LC5:
	.string	"func0(test1, 3) == -4"
	.align	3
.LC6:
	.string	"func0(test2, 2) == 0"
	.align	3
.LC7:
	.string	"func0(test3, 4) == 125"
	.align	3
.LC8:
	.string	"func0(test4, 4) == 24"
	.align	3
.LC9:
	.string	"func0(test5, 1) == 1"
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
// problem123.c:15: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x1, [x0]	// tmp152,
	str	x1, [sp, 168]	// tmp152, D.4312
	mov	x1, 0	// tmp152
// problem123.c:16:     int test1[] = {1, -2, -3, 41, 57, 76, 87, 88, 99};
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	// tmp101, tmp102,
	add	x0, sp, 48	// tmp103,,
	ldp	q0, q1, [x1]	// tmp105, tmp106,
	stp	q0, q1, [x0]	// tmp105, tmp106, test1
	ldr	w1, [x1, 32]	// tmp107,
	str	w1, [x0, 32]	// tmp107, test1
// problem123.c:17:     assert(func0(test1, 3) == -4);
	add	x0, sp, 48	// tmp108,,
	mov	w1, 3	//,
	bl	func0		//
	cmn	w0, #4	// _1,
	beq	.L7		//,
// problem123.c:17:     assert(func0(test1, 3) == -4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 17	//,
	adrp	x0, .LC4	// tmp110,
	add	x1, x0, :lo12:.LC4	//, tmp110,
	adrp	x0, .LC5	// tmp111,
	add	x0, x0, :lo12:.LC5	//, tmp111,
	bl	__assert_fail		//
.L7:
// problem123.c:19:     int test2[] = {111, 121, 3, 4000, 5, 6};
	adrp	x0, .LC1	// tmp113,
	add	x0, x0, :lo12:.LC1	// tmp112, tmp113,
	add	x2, sp, 24	// tmp114,,
	mov	x3, x0	// tmp115, tmp112
	ldp	x0, x1, [x3]	// tmp116,
	stp	x0, x1, [x2]	// tmp116, test2
	ldr	x0, [x3, 16]	// tmp117,
	str	x0, [x2, 16]	// tmp117, test2
// problem123.c:20:     assert(func0(test2, 2) == 0);
	add	x0, sp, 24	// tmp118,,
	mov	w1, 2	//,
	bl	func0		//
	cmp	w0, 0	// _2,
	beq	.L8		//,
// problem123.c:20:     assert(func0(test2, 2) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 20	//,
	adrp	x0, .LC4	// tmp120,
	add	x1, x0, :lo12:.LC4	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L8:
// problem123.c:22:     int test3[] = {11, 21, 3, 90, 5, 6, 7, 8, 9};
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	// tmp122, tmp123,
	add	x0, sp, 88	// tmp124,,
	ldp	q0, q1, [x1]	// tmp126, tmp127,
	stp	q0, q1, [x0]	// tmp126, tmp127, test3
	ldr	w1, [x1, 32]	// tmp128,
	str	w1, [x0, 32]	// tmp128, test3
// problem123.c:23:     assert(func0(test3, 4) == 125);
	add	x0, sp, 88	// tmp129,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 125	// _3,
	beq	.L9		//,
// problem123.c:23:     assert(func0(test3, 4) == 125);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 23	//,
	adrp	x0, .LC4	// tmp131,
	add	x1, x0, :lo12:.LC4	//, tmp131,
	adrp	x0, .LC7	// tmp132,
	add	x0, x0, :lo12:.LC7	//, tmp132,
	bl	__assert_fail		//
.L9:
// problem123.c:25:     int test4[] = {111, 21, 3, 4000, 5, 6, 7, 8, 9};
	adrp	x0, .LC3	// tmp134,
	add	x1, x0, :lo12:.LC3	// tmp133, tmp134,
	add	x0, sp, 128	// tmp135,,
	ldp	q0, q1, [x1]	// tmp137, tmp138,
	stp	q0, q1, [x0]	// tmp137, tmp138, test4
	ldr	w1, [x1, 32]	// tmp139,
	str	w1, [x0, 32]	// tmp139, test4
// problem123.c:26:     assert(func0(test4, 4) == 24);
	add	x0, sp, 128	// tmp140,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 24	// _4,
	beq	.L10		//,
// problem123.c:26:     assert(func0(test4, 4) == 24);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 26	//,
	adrp	x0, .LC4	// tmp142,
	add	x1, x0, :lo12:.LC4	//, tmp142,
	adrp	x0, .LC8	// tmp143,
	add	x0, x0, :lo12:.LC8	//, tmp143,
	bl	__assert_fail		//
.L10:
// problem123.c:28:     int test5[] = {1};
	mov	w0, 1	// tmp144,
	str	w0, [sp, 16]	// tmp144, test5[0]
// problem123.c:29:     assert(func0(test5, 1) == 1);
	add	x0, sp, 16	// tmp145,,
	mov	w1, 1	//,
	bl	func0		//
	cmp	w0, 1	// _5,
	beq	.L11		//,
// problem123.c:29:     assert(func0(test5, 1) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 29	//,
	adrp	x0, .LC4	// tmp147,
	add	x1, x0, :lo12:.LC4	//, tmp147,
	adrp	x0, .LC9	// tmp148,
	add	x0, x0, :lo12:.LC9	//, tmp148,
	bl	__assert_fail		//
.L11:
// problem123.c:31:     return 0;
	mov	w0, 0	// _22,
// problem123.c:32: }
	mov	w1, w0	// <retval>, _22
	adrp	x0, :got:__stack_chk_guard	// tmp151,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp150, tmp151,
	ldr	x3, [sp, 168]	// tmp153, D.4312
	ldr	x2, [x0]	// tmp154,
	subs	x3, x3, x2	// tmp153, tmp154
	mov	x2, 0	// tmp154
	beq	.L13		//,
	bl	__stack_chk_fail		//
.L13:
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
	.word	1
	.word	-2
	.word	-3
	.word	41
	.word	57
	.word	76
	.word	87
	.word	88
	.word	99
	.align	3
.LC1:
	.word	111
	.word	121
	.word	3
	.word	4000
	.word	5
	.word	6
	.align	3
.LC2:
	.word	11
	.word	21
	.word	3
	.word	90
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC3:
	.word	111
	.word	21
	.word	3
	.word	4000
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
