	.arch armv8-a
	.file	"problem86.c"
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
	str	x0, [sp, 8]	// lst, lst
	str	w1, [sp, 4]	// size, size
// problem86.c:4:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	str	wzr, [sp, 28]	//, i
// problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	b	.L2		//
.L4:
// problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	ldr	w0, [sp, 28]	// tmp110, i
	lsl	w0, w0, 1	// _1, tmp110,
// problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	sxtw	x0, w0	// _2, _1
	add	x0, x0, 1	// _3, _2,
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 8]	// tmp111, lst
	add	x0, x1, x0	// _5, tmp111, _4
	ldr	w0, [x0]	// _6, *_5
// problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	and	w0, w0, 1	// _8, _7,
// problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	cmp	w0, 0	// _8,
	bne	.L3		//,
// problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	ldr	w0, [sp, 28]	// tmp112, i
	lsl	w0, w0, 1	// _9, tmp112,
// problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	sxtw	x0, w0	// _10, _9
	add	x0, x0, 1	// _11, _10,
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 8]	// tmp113, lst
	add	x0, x1, x0	// _13, tmp113, _12
	ldr	w0, [x0]	// _14, *_13
// problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	ldr	w1, [sp, 24]	// tmp115, sum
	add	w0, w1, w0	// tmp114, tmp115, _14
	str	w0, [sp, 24]	// tmp114, sum
.L3:
// problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	ldr	w0, [sp, 28]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 28]	// tmp116, i
.L2:
// problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	ldr	w0, [sp, 28]	// tmp118, i
	lsl	w0, w0, 1	// _15, tmp118,
// problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	add	w0, w0, 1	// _16, _15,
// problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	ldr	w1, [sp, 4]	// tmp119, size
	cmp	w1, w0	// tmp119, _16
	bgt	.L4		//,
// problem86.c:7:     return sum;
	ldr	w0, [sp, 24]	// _23, sum
// problem86.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem86.c"
	.align	3
.LC2:
	.string	"func0(array1, sizeof(array1) / sizeof(array1[0])) == 88"
	.align	3
.LC3:
	.string	"func0(array2, sizeof(array2) / sizeof(array2[0])) == 122"
	.align	3
.LC4:
	.string	"func0(array3, sizeof(array3) / sizeof(array3[0])) == 0"
	.align	3
.LC5:
	.string	"func0(array4, sizeof(array4) / sizeof(array4[0])) == 12"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
// problem86.c:14: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp98, tmp99,
	ldr	x1, [x0]	// tmp134,
	str	x1, [sp, 88]	// tmp134, D.4303
	mov	x1, 0	// tmp134
// problem86.c:15:     int array1[] = {4, 88};
	mov	w0, 4	// tmp100,
	str	w0, [sp, 24]	// tmp100, array1[0]
	mov	w0, 88	// tmp101,
	str	w0, [sp, 28]	// tmp101, array1[1]
// problem86.c:16:     assert(func0(array1, sizeof(array1) / sizeof(array1[0])) == 88);
	add	x0, sp, 24	// tmp102,,
	mov	w1, 2	//,
	bl	func0		//
	cmp	w0, 88	// _1,
	beq	.L7		//,
// problem86.c:16:     assert(func0(array1, sizeof(array1) / sizeof(array1[0])) == 88);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp103,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp103,
	mov	w2, 16	//,
	adrp	x0, .LC1	// tmp104,
	add	x1, x0, :lo12:.LC1	//, tmp104,
	adrp	x0, .LC2	// tmp105,
	add	x0, x0, :lo12:.LC2	//, tmp105,
	bl	__assert_fail		//
.L7:
// problem86.c:18:     int array2[] = {4, 5, 6, 7, 2, 122};
	adrp	x0, .LC0	// tmp107,
	add	x0, x0, :lo12:.LC0	// tmp106, tmp107,
	add	x2, sp, 64	// tmp108,,
	mov	x3, x0	// tmp109, tmp106
	ldp	x0, x1, [x3]	// tmp110,
	stp	x0, x1, [x2]	// tmp110, array2
	ldr	x0, [x3, 16]	// tmp111,
	str	x0, [x2, 16]	// tmp111, array2
// problem86.c:19:     assert(func0(array2, sizeof(array2) / sizeof(array2[0])) == 122);
	add	x0, sp, 64	// tmp112,,
	mov	w1, 6	//,
	bl	func0		//
	cmp	w0, 122	// _2,
	beq	.L8		//,
// problem86.c:19:     assert(func0(array2, sizeof(array2) / sizeof(array2[0])) == 122);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 19	//,
	adrp	x0, .LC1	// tmp114,
	add	x1, x0, :lo12:.LC1	//, tmp114,
	adrp	x0, .LC3	// tmp115,
	add	x0, x0, :lo12:.LC3	//, tmp115,
	bl	__assert_fail		//
.L8:
// problem86.c:21:     int array3[] = {4, 0, 6, 7};
	mov	w0, 4	// tmp116,
	str	w0, [sp, 32]	// tmp116, array3[0]
	str	wzr, [sp, 36]	//, array3[1]
	mov	w0, 6	// tmp117,
	str	w0, [sp, 40]	// tmp117, array3[2]
	mov	w0, 7	// tmp118,
	str	w0, [sp, 44]	// tmp118, array3[3]
// problem86.c:22:     assert(func0(array3, sizeof(array3) / sizeof(array3[0])) == 0);
	add	x0, sp, 32	// tmp119,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 0	// _3,
	beq	.L9		//,
// problem86.c:22:     assert(func0(array3, sizeof(array3) / sizeof(array3[0])) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp121,
	add	x1, x0, :lo12:.LC1	//, tmp121,
	adrp	x0, .LC4	// tmp122,
	add	x0, x0, :lo12:.LC4	//, tmp122,
	bl	__assert_fail		//
.L9:
// problem86.c:24:     int array4[] = {4, 4, 6, 8};
	mov	w0, 4	// tmp123,
	str	w0, [sp, 48]	// tmp123, array4[0]
	mov	w0, 4	// tmp124,
	str	w0, [sp, 52]	// tmp124, array4[1]
	mov	w0, 6	// tmp125,
	str	w0, [sp, 56]	// tmp125, array4[2]
	mov	w0, 8	// tmp126,
	str	w0, [sp, 60]	// tmp126, array4[3]
// problem86.c:25:     assert(func0(array4, sizeof(array4) / sizeof(array4[0])) == 12);
	add	x0, sp, 48	// tmp127,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 12	// _4,
	beq	.L10		//,
// problem86.c:25:     assert(func0(array4, sizeof(array4) / sizeof(array4[0])) == 12);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 25	//,
	adrp	x0, .LC1	// tmp129,
	add	x1, x0, :lo12:.LC1	//, tmp129,
	adrp	x0, .LC5	// tmp130,
	add	x0, x0, :lo12:.LC5	//, tmp130,
	bl	__assert_fail		//
.L10:
// problem86.c:27:     return 0;
	mov	w0, 0	// _25,
// problem86.c:28: }
	mov	w1, w0	// <retval>, _25
	adrp	x0, :got:__stack_chk_guard	// tmp133,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp132, tmp133,
	ldr	x3, [sp, 88]	// tmp135, D.4303
	ldr	x2, [x0]	// tmp136,
	subs	x3, x3, x2	// tmp135, tmp136
	mov	x2, 0	// tmp136
	beq	.L12		//,
	bl	__stack_chk_fail		//
.L12:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 96	//,,,
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
	.word	4
	.word	5
	.word	6
	.word	7
	.word	2
	.word	122
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
