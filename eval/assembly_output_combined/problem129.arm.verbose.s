	.arch armv8-a
	.file	"problem129.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// arr_size, arr_size
// problem129.c:5:     if (arr_size == 0) return -32768;
	ldr	w0, [sp, 4]	// tmp107, arr_size
	cmp	w0, 0	// tmp107,
	bne	.L2		//,
// problem129.c:5:     if (arr_size == 0) return -32768;
	mov	w0, -32768	// _19,
	b	.L3		//
.L2:
// problem129.c:6:     int sum = 0, prods = 1, i;
	str	wzr, [sp, 20]	//, sum
// problem129.c:6:     int sum = 0, prods = 1, i;
	mov	w0, 1	// tmp108,
	str	w0, [sp, 24]	// tmp108, prods
// problem129.c:7:     for (i = 0; i < arr_size; i++) {
	str	wzr, [sp, 28]	//, i
// problem129.c:7:     for (i = 0; i < arr_size; i++) {
	b	.L4		//
.L7:
// problem129.c:8:         sum += abs(arr[i]);
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp109, arr
	add	x0, x1, x0	// _3, tmp109, _2
	ldr	w0, [x0]	// _4, *_3
// problem129.c:8:         sum += abs(arr[i]);
	cmp	w0, 0	// _4,
	csneg	w0, w0, w0, ge	// _5, _4, _4,
// problem129.c:8:         sum += abs(arr[i]);
	ldr	w1, [sp, 20]	// tmp111, sum
	add	w0, w1, w0	// tmp110, tmp111, _5
	str	w0, [sp, 20]	// tmp110, sum
// problem129.c:9:         if (arr[i] == 0) prods = 0;
	ldrsw	x0, [sp, 28]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 8]	// tmp112, arr
	add	x0, x1, x0	// _8, tmp112, _7
	ldr	w0, [x0]	// _9, *_8
// problem129.c:9:         if (arr[i] == 0) prods = 0;
	cmp	w0, 0	// _9,
	bne	.L5		//,
// problem129.c:9:         if (arr[i] == 0) prods = 0;
	str	wzr, [sp, 24]	//, prods
.L5:
// problem129.c:10:         if (arr[i] < 0) prods = -prods;
	ldrsw	x0, [sp, 28]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 8]	// tmp113, arr
	add	x0, x1, x0	// _12, tmp113, _11
	ldr	w0, [x0]	// _13, *_12
// problem129.c:10:         if (arr[i] < 0) prods = -prods;
	cmp	w0, 0	// _13,
	bge	.L6		//,
// problem129.c:10:         if (arr[i] < 0) prods = -prods;
	ldr	w0, [sp, 24]	// tmp115, prods
	neg	w0, w0	// tmp114, tmp115
	str	w0, [sp, 24]	// tmp114, prods
.L6:
// problem129.c:7:     for (i = 0; i < arr_size; i++) {
	ldr	w0, [sp, 28]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 28]	// tmp116, i
.L4:
// problem129.c:7:     for (i = 0; i < arr_size; i++) {
	ldr	w1, [sp, 28]	// tmp118, i
	ldr	w0, [sp, 4]	// tmp119, arr_size
	cmp	w1, w0	// tmp118, tmp119
	blt	.L7		//,
// problem129.c:12:     return sum * prods;
	ldr	w1, [sp, 20]	// tmp120, sum
	ldr	w0, [sp, 24]	// tmp121, prods
	mul	w0, w1, w0	// _19, tmp120, tmp121
.L3:
// problem129.c:13: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem129.c"
	.align	3
.LC3:
	.string	"func0(arr1, 4) == -9"
	.align	3
.LC4:
	.string	"func0(arr2, 2) == 0"
	.align	3
.LC5:
	.string	"func0(arr3, 7) == -10"
	.align	3
.LC6:
	.string	"func0(NULL, 0) == -32768"
	.align	3
.LC7:
	.string	"func0(arr5, 7) == 20"
	.align	3
.LC8:
	.string	"func0(arr6, 4) == 4"
	.align	3
.LC9:
	.string	"func0(arr7, 4) == -4"
	.align	3
.LC10:
	.string	"func0(arr8, 4) == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!	//,,,
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp	//,
// problem129.c:20: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp166,
	str	x1, [sp, 152]	// tmp166, D.4841
	mov	x1, 0	// tmp166
// problem129.c:21:     int arr1[] = {1, 2, 2, -4};
	mov	w0, 1	// tmp104,
	str	w0, [sp, 24]	// tmp104, arr1[0]
	mov	w0, 2	// tmp105,
	str	w0, [sp, 28]	// tmp105, arr1[1]
	mov	w0, 2	// tmp106,
	str	w0, [sp, 32]	// tmp106, arr1[2]
	mov	w0, -4	// tmp107,
	str	w0, [sp, 36]	// tmp107, arr1[3]
// problem129.c:22:     assert(func0(arr1, 4) == -9);
	add	x0, sp, 24	// tmp108,,
	mov	w1, 4	//,
	bl	func0		//
	cmn	w0, #9	// _1,
	beq	.L9		//,
// problem129.c:22:     assert(func0(arr1, 4) == -9);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 22	//,
	adrp	x0, .LC2	// tmp110,
	add	x1, x0, :lo12:.LC2	//, tmp110,
	adrp	x0, .LC3	// tmp111,
	add	x0, x0, :lo12:.LC3	//, tmp111,
	bl	__assert_fail		//
.L9:
// problem129.c:24:     int arr2[] = {0, 1};
	str	wzr, [sp, 16]	//, arr2[0]
	mov	w0, 1	// tmp112,
	str	w0, [sp, 20]	// tmp112, arr2[1]
// problem129.c:25:     assert(func0(arr2, 2) == 0);
	add	x0, sp, 16	// tmp113,,
	mov	w1, 2	//,
	bl	func0		//
	cmp	w0, 0	// _2,
	beq	.L10		//,
// problem129.c:25:     assert(func0(arr2, 2) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 25	//,
	adrp	x0, .LC2	// tmp115,
	add	x1, x0, :lo12:.LC2	//, tmp115,
	adrp	x0, .LC4	// tmp116,
	add	x0, x0, :lo12:.LC4	//, tmp116,
	bl	__assert_fail		//
.L10:
// problem129.c:27:     int arr3[] = {1, 1, 1, 2, 3, -1, 1};
	adrp	x0, .LC0	// tmp118,
	add	x1, x0, :lo12:.LC0	// tmp117, tmp118,
	add	x0, sp, 88	// tmp119,,
	ldr	q0, [x1]	// tmp121,
	str	q0, [x0]	// tmp121, arr3
	ldr	q0, [x1, 12]	// tmp122,
	str	q0, [x0, 12]	// tmp122, arr3
// problem129.c:28:     assert(func0(arr3, 7) == -10);
	add	x0, sp, 88	// tmp123,,
	mov	w1, 7	//,
	bl	func0		//
	cmn	w0, #10	// _3,
	beq	.L11		//,
// problem129.c:28:     assert(func0(arr3, 7) == -10);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 28	//,
	adrp	x0, .LC2	// tmp125,
	add	x1, x0, :lo12:.LC2	//, tmp125,
	adrp	x0, .LC5	// tmp126,
	add	x0, x0, :lo12:.LC5	//, tmp126,
	bl	__assert_fail		//
.L11:
// problem129.c:30:     assert(func0(NULL, 0) == -32768);
	mov	w1, 0	//,
	mov	x0, 0	//,
	bl	func0		//
	cmn	w0, #32768	// _4,
	beq	.L12		//,
// problem129.c:30:     assert(func0(NULL, 0) == -32768);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 30	//,
	adrp	x0, .LC2	// tmp128,
	add	x1, x0, :lo12:.LC2	//, tmp128,
	adrp	x0, .LC6	// tmp129,
	add	x0, x0, :lo12:.LC6	//, tmp129,
	bl	__assert_fail		//
.L12:
// problem129.c:32:     int arr5[] = {2, 4, 1, 2, -1, -1, 9};
	adrp	x0, .LC1	// tmp131,
	add	x1, x0, :lo12:.LC1	// tmp130, tmp131,
	add	x0, sp, 120	// tmp132,,
	ldr	q0, [x1]	// tmp134,
	str	q0, [x0]	// tmp134, arr5
	ldr	q0, [x1, 12]	// tmp135,
	str	q0, [x0, 12]	// tmp135, arr5
// problem129.c:33:     assert(func0(arr5, 7) == 20);
	add	x0, sp, 120	// tmp136,,
	mov	w1, 7	//,
	bl	func0		//
	cmp	w0, 20	// _5,
	beq	.L13		//,
// problem129.c:33:     assert(func0(arr5, 7) == 20);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp138,
	add	x1, x0, :lo12:.LC2	//, tmp138,
	adrp	x0, .LC7	// tmp139,
	add	x0, x0, :lo12:.LC7	//, tmp139,
	bl	__assert_fail		//
.L13:
// problem129.c:35:     int arr6[] = {-1, 1, -1, 1};
	mov	w0, -1	// tmp140,
	str	w0, [sp, 40]	// tmp140, arr6[0]
	mov	w0, 1	// tmp141,
	str	w0, [sp, 44]	// tmp141, arr6[1]
	mov	w0, -1	// tmp142,
	str	w0, [sp, 48]	// tmp142, arr6[2]
	mov	w0, 1	// tmp143,
	str	w0, [sp, 52]	// tmp143, arr6[3]
// problem129.c:36:     assert(func0(arr6, 4) == 4);
	add	x0, sp, 40	// tmp144,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 4	// _6,
	beq	.L14		//,
// problem129.c:36:     assert(func0(arr6, 4) == 4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 36	//,
	adrp	x0, .LC2	// tmp146,
	add	x1, x0, :lo12:.LC2	//, tmp146,
	adrp	x0, .LC8	// tmp147,
	add	x0, x0, :lo12:.LC8	//, tmp147,
	bl	__assert_fail		//
.L14:
// problem129.c:38:     int arr7[] = {-1, 1, 1, 1};
	mov	w0, -1	// tmp148,
	str	w0, [sp, 56]	// tmp148, arr7[0]
	mov	w0, 1	// tmp149,
	str	w0, [sp, 60]	// tmp149, arr7[1]
	mov	w0, 1	// tmp150,
	str	w0, [sp, 64]	// tmp150, arr7[2]
	mov	w0, 1	// tmp151,
	str	w0, [sp, 68]	// tmp151, arr7[3]
// problem129.c:39:     assert(func0(arr7, 4) == -4);
	add	x0, sp, 56	// tmp152,,
	mov	w1, 4	//,
	bl	func0		//
	cmn	w0, #4	// _7,
	beq	.L15		//,
// problem129.c:39:     assert(func0(arr7, 4) == -4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 39	//,
	adrp	x0, .LC2	// tmp154,
	add	x1, x0, :lo12:.LC2	//, tmp154,
	adrp	x0, .LC9	// tmp155,
	add	x0, x0, :lo12:.LC9	//, tmp155,
	bl	__assert_fail		//
.L15:
// problem129.c:41:     int arr8[] = {-1, 1, 1, 0};
	mov	w0, -1	// tmp156,
	str	w0, [sp, 72]	// tmp156, arr8[0]
	mov	w0, 1	// tmp157,
	str	w0, [sp, 76]	// tmp157, arr8[1]
	mov	w0, 1	// tmp158,
	str	w0, [sp, 80]	// tmp158, arr8[2]
	str	wzr, [sp, 84]	//, arr8[3]
// problem129.c:42:     assert(func0(arr8, 4) == 0);
	add	x0, sp, 72	// tmp159,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 0	// _8,
	beq	.L16		//,
// problem129.c:42:     assert(func0(arr8, 4) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp160,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp160,
	mov	w2, 42	//,
	adrp	x0, .LC2	// tmp161,
	add	x1, x0, :lo12:.LC2	//, tmp161,
	adrp	x0, .LC10	// tmp162,
	add	x0, x0, :lo12:.LC10	//, tmp162,
	bl	__assert_fail		//
.L16:
// problem129.c:44:     return 0;
	mov	w0, 0	// _46,
// problem129.c:45: }
	mov	w1, w0	// <retval>, _46
	adrp	x0, :got:__stack_chk_guard	// tmp165,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp164, tmp165,
	ldr	x3, [sp, 152]	// tmp167, D.4841
	ldr	x2, [x0]	// tmp168,
	subs	x3, x3, x2	// tmp167, tmp168
	mov	x2, 0	// tmp168
	beq	.L18		//,
	bl	__stack_chk_fail		//
.L18:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 160	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	1
	.word	1
	.word	2
	.word	3
	.word	-1
	.word	1
	.align	3
.LC1:
	.word	2
	.word	4
	.word	1
	.word	2
	.word	-1
	.word	-1
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
