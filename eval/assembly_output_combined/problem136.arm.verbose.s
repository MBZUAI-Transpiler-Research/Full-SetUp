	.arch armv8-a
	.file	"problem136.c"
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
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// size, size
// problem136.c:4:     int max = -1;
	mov	w0, -1	// tmp103,
	str	w0, [sp, 24]	// tmp103, max
// problem136.c:5:     for (int i = 1; i < size; ++i) {
	mov	w0, 1	// tmp104,
	str	w0, [sp, 28]	// tmp104, i
// problem136.c:5:     for (int i = 1; i < size; ++i) {
	b	.L2		//
.L4:
// problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp105, arr
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	w1, [x0]	// _4, *_3
// problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x2, [sp, 8]	// tmp106, arr
	add	x0, x2, x0	// _8, tmp106, _7
	ldr	w0, [x0]	// _9, *_8
// problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	cmp	w1, w0	// _4, _9
	bge	.L3		//,
// problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	ldr	w0, [sp, 28]	// tmp107, i
	str	w0, [sp, 24]	// tmp107, max
.L3:
// problem136.c:5:     for (int i = 1; i < size; ++i) {
	ldr	w0, [sp, 28]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 28]	// tmp108, i
.L2:
// problem136.c:5:     for (int i = 1; i < size; ++i) {
	ldr	w1, [sp, 28]	// tmp110, i
	ldr	w0, [sp, 4]	// tmp111, size
	cmp	w1, w0	// tmp110, tmp111
	blt	.L4		//,
// problem136.c:8:     return max;
	ldr	w0, [sp, 24]	// _16, max
// problem136.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem136.c"
	.align	3
.LC4:
	.string	"func0(arr1, 5) == 3"
	.align	3
.LC5:
	.string	"func0(arr2, 4) == -1"
	.align	3
.LC6:
	.string	"func0(arr3, 9) == 2"
	.align	3
.LC7:
	.string	"func0(arr4, 5) == 4"
	.align	3
.LC8:
	.string	"func0(NULL, 0) == -1"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem136.c:17: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp99,
	ldr	x1, [x0]	// tmp144,
	str	x1, [sp, 104]	// tmp144, D.4896
	mov	x1, 0	// tmp144
// problem136.c:18:     int arr1[] = {1, 2, 4, 3, 5};
	adrp	x0, .LC0	// tmp101,
	add	x0, x0, :lo12:.LC0	// tmp100, tmp101,
	add	x2, sp, 16	// tmp102,,
	mov	x3, x0	// tmp103, tmp100
	ldp	x0, x1, [x3]	// tmp104,
	stp	x0, x1, [x2]	// tmp104, arr1
	ldr	w0, [x3, 16]	// tmp105,
	str	w0, [x2, 16]	// tmp105, arr1
// problem136.c:19:     assert(func0(arr1, 5) == 3);
	add	x0, sp, 16	// tmp106,,
	mov	w1, 5	//,
	bl	func0		//
// problem136.c:19:     assert(func0(arr1, 5) == 3);
	cmp	w0, 3	// _1,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 19	//,
	adrp	x0, .LC3	// tmp108,
	add	x1, x0, :lo12:.LC3	//, tmp108,
	adrp	x0, .LC4	// tmp109,
	add	x0, x0, :lo12:.LC4	//, tmp109,
	bl	__assert_fail		//
.L7:
// problem136.c:21:     int arr2[] = {1, 2, 4, 5};
	mov	w0, 1	// tmp110,
	str	w0, [sp]	// tmp110, arr2[0]
	mov	w0, 2	// tmp111,
	str	w0, [sp, 4]	// tmp111, arr2[1]
	mov	w0, 4	// tmp112,
	str	w0, [sp, 8]	// tmp112, arr2[2]
	mov	w0, 5	// tmp113,
	str	w0, [sp, 12]	// tmp113, arr2[3]
// problem136.c:22:     assert(func0(arr2, 4) == -1);
	mov	x0, sp	// tmp114,
	mov	w1, 4	//,
	bl	func0		//
// problem136.c:22:     assert(func0(arr2, 4) == -1);
	cmn	w0, #1	// _2,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 22	//,
	adrp	x0, .LC3	// tmp116,
	add	x1, x0, :lo12:.LC3	//, tmp116,
	adrp	x0, .LC5	// tmp117,
	add	x0, x0, :lo12:.LC5	//, tmp117,
	bl	__assert_fail		//
.L8:
// problem136.c:24:     int arr3[] = {1, 4, 2, 5, 6, 7, 8, 9, 10};
	adrp	x0, .LC1	// tmp119,
	add	x1, x0, :lo12:.LC1	// tmp118, tmp119,
	add	x0, sp, 64	// tmp120,,
	ldp	q0, q1, [x1]	// tmp122, tmp123,
	stp	q0, q1, [x0]	// tmp122, tmp123, arr3
	ldr	w1, [x1, 32]	// tmp124,
	str	w1, [x0, 32]	// tmp124, arr3
// problem136.c:25:     assert(func0(arr3, 9) == 2);
	add	x0, sp, 64	// tmp125,,
	mov	w1, 9	//,
	bl	func0		//
// problem136.c:25:     assert(func0(arr3, 9) == 2);
	cmp	w0, 2	// _3,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 25	//,
	adrp	x0, .LC3	// tmp127,
	add	x1, x0, :lo12:.LC3	//, tmp127,
	adrp	x0, .LC6	// tmp128,
	add	x0, x0, :lo12:.LC6	//, tmp128,
	bl	__assert_fail		//
.L9:
// problem136.c:27:     int arr4[] = {4, 8, 5, 7, 3};
	adrp	x0, .LC2	// tmp130,
	add	x0, x0, :lo12:.LC2	// tmp129, tmp130,
	add	x2, sp, 40	// tmp131,,
	mov	x3, x0	// tmp132, tmp129
	ldp	x0, x1, [x3]	// tmp133,
	stp	x0, x1, [x2]	// tmp133, arr4
	ldr	w0, [x3, 16]	// tmp134,
	str	w0, [x2, 16]	// tmp134, arr4
// problem136.c:28:     assert(func0(arr4, 5) == 4);
	add	x0, sp, 40	// tmp135,,
	mov	w1, 5	//,
	bl	func0		//
// problem136.c:28:     assert(func0(arr4, 5) == 4);
	cmp	w0, 4	// _4,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 28	//,
	adrp	x0, .LC3	// tmp137,
	add	x1, x0, :lo12:.LC3	//, tmp137,
	adrp	x0, .LC7	// tmp138,
	add	x0, x0, :lo12:.LC7	//, tmp138,
	bl	__assert_fail		//
.L10:
// problem136.c:30:     assert(func0(NULL, 0) == -1);
	mov	w1, 0	//,
	mov	x0, 0	//,
	bl	func0		//
// problem136.c:30:     assert(func0(NULL, 0) == -1);
	cmn	w0, #1	// _5,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 30	//,
	adrp	x0, .LC3	// tmp140,
	add	x1, x0, :lo12:.LC3	//, tmp140,
	adrp	x0, .LC8	// tmp141,
	add	x0, x0, :lo12:.LC8	//, tmp141,
	bl	__assert_fail		//
.L11:
// problem136.c:32:     return 0;
	mov	w0, 0	// _24,
// problem136.c:33: }
	mov	w1, w0	// <retval>, _24
	adrp	x0, :got:__stack_chk_guard	// tmp143,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp143,
	ldr	x3, [sp, 104]	// tmp145, D.4896
	ldr	x2, [x0]	// tmp146,
	subs	x3, x3, x2	// tmp145, tmp146
	mov	x2, 0	// tmp146
	beq	.L13		//,
	bl	__stack_chk_fail		//
.L13:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
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
	.word	1
	.word	2
	.word	4
	.word	3
	.word	5
	.align	3
.LC1:
	.word	1
	.word	4
	.word	2
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.align	3
.LC2:
	.word	4
	.word	8
	.word	5
	.word	7
	.word	3
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
