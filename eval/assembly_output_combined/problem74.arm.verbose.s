	.arch armv8-a
	.file	"problem74.c"
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
	str	w1, [sp, 4]	// size, size
// problem74.c:4:     int out = 0;
	str	wzr, [sp, 24]	//, out
// problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	str	wzr, [sp, 28]	//, i
// problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	b	.L2		//
.L4:
// problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp105, arr
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	w1, [x0]	// _4, *_3
// problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	ldr	w0, [sp, 4]	// tmp106, size
	sub	w2, w0, #1	// _5, tmp106,
// problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	ldr	w0, [sp, 28]	// tmp107, i
	sub	w0, w2, w0	// _6, _5, tmp107
	sxtw	x0, w0	// _7, _6
// problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lsl	x0, x0, 2	// _8, _7,
	ldr	x2, [sp, 8]	// tmp108, arr
	add	x0, x2, x0	// _9, tmp108, _8
	ldr	w0, [x0]	// _10, *_9
// problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	cmp	w1, w0	// _4, _10
	beq	.L3		//,
// problem74.c:7:             out++;
	ldr	w0, [sp, 24]	// tmp110, out
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 24]	// tmp109, out
.L3:
// problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 28]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 28]	// tmp111, i
.L2:
// problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 4]	// tmp113, size
	lsr	w1, w0, 31	// tmp114, tmp113,
	add	w0, w1, w0	// tmp115, tmp114, tmp113
	asr	w0, w0, 1	// tmp116, tmp115,
	mov	w1, w0	// _11, tmp116
// problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 28]	// tmp117, i
	cmp	w0, w1	// tmp117, _11
	blt	.L4		//,
// problem74.c:10:     return out;
	ldr	w0, [sp, 24]	// _18, out
// problem74.c:11: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem74.c"
	.align	3
.LC5:
	.string	"func0(test1, 8) == 4"
	.align	3
.LC6:
	.string	"func0(test2, 7) == 1"
	.align	3
.LC7:
	.string	"func0(test3, 3) == 1"
	.align	3
.LC8:
	.string	"func0(test4, 4) == 1"
	.align	3
.LC9:
	.string	"func0(test5, 5) == 0"
	.align	3
.LC10:
	.string	"func0(test6, 4) == 0"
	.align	3
.LC11:
	.string	"func0(test7, 1) == 0"
	.align	3
.LC12:
	.string	"func0(test8, 2) == 1"
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
// problem74.c:18: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp173,
	str	x1, [sp, 168]	// tmp173, D.4322
	mov	x1, 0	// tmp173
// problem74.c:19:     int test1[] = {1, 2, 3, 5, 4, 7, 9, 6};
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	// tmp104, tmp105,
	add	x0, sp, 136	// tmp106,,
	ldp	q0, q1, [x1]	// tmp108, tmp109,
	stp	q0, q1, [x0]	// tmp108, tmp109, test1
// problem74.c:20:     assert(func0(test1, 8) == 4);
	add	x0, sp, 136	// tmp110,,
	mov	w1, 8	//,
	bl	func0		//
	cmp	w0, 4	// _1,
	beq	.L7		//,
// problem74.c:20:     assert(func0(test1, 8) == 4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 20	//,
	adrp	x0, .LC4	// tmp112,
	add	x1, x0, :lo12:.LC4	//, tmp112,
	adrp	x0, .LC5	// tmp113,
	add	x0, x0, :lo12:.LC5	//, tmp113,
	bl	__assert_fail		//
.L7:
// problem74.c:22:     int test2[] = {1, 2, 3, 4, 3, 2, 2};
	adrp	x0, .LC1	// tmp115,
	add	x1, x0, :lo12:.LC1	// tmp114, tmp115,
	add	x0, sp, 104	// tmp116,,
	ldr	q0, [x1]	// tmp118,
	str	q0, [x0]	// tmp118, test2
	ldr	q0, [x1, 12]	// tmp119,
	str	q0, [x0, 12]	// tmp119, test2
// problem74.c:23:     assert(func0(test2, 7) == 1);
	add	x0, sp, 104	// tmp120,,
	mov	w1, 7	//,
	bl	func0		//
	cmp	w0, 1	// _2,
	beq	.L8		//,
// problem74.c:23:     assert(func0(test2, 7) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 23	//,
	adrp	x0, .LC4	// tmp122,
	add	x1, x0, :lo12:.LC4	//, tmp122,
	adrp	x0, .LC6	// tmp123,
	add	x0, x0, :lo12:.LC6	//, tmp123,
	bl	__assert_fail		//
.L8:
// problem74.c:25:     int test3[] = {1, 4, 2};
	adrp	x0, .LC2	// tmp125,
	add	x1, x0, :lo12:.LC2	// tmp124, tmp125,
	add	x0, sp, 32	// tmp126,,
	ldr	x2, [x1]	// tmp128,
	str	x2, [x0]	// tmp128, test3
	ldr	w1, [x1, 8]	// tmp129,
	str	w1, [x0, 8]	// tmp129, test3
// problem74.c:26:     assert(func0(test3, 3) == 1);
	add	x0, sp, 32	// tmp130,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 1	// _3,
	beq	.L9		//,
// problem74.c:26:     assert(func0(test3, 3) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 26	//,
	adrp	x0, .LC4	// tmp132,
	add	x1, x0, :lo12:.LC4	//, tmp132,
	adrp	x0, .LC7	// tmp133,
	add	x0, x0, :lo12:.LC7	//, tmp133,
	bl	__assert_fail		//
.L9:
// problem74.c:28:     int test4[] = {1, 4, 4, 2};
	mov	w0, 1	// tmp134,
	str	w0, [sp, 48]	// tmp134, test4[0]
	mov	w0, 4	// tmp135,
	str	w0, [sp, 52]	// tmp135, test4[1]
	mov	w0, 4	// tmp136,
	str	w0, [sp, 56]	// tmp136, test4[2]
	mov	w0, 2	// tmp137,
	str	w0, [sp, 60]	// tmp137, test4[3]
// problem74.c:29:     assert(func0(test4, 4) == 1);
	add	x0, sp, 48	// tmp138,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 1	// _4,
	beq	.L10		//,
// problem74.c:29:     assert(func0(test4, 4) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 29	//,
	adrp	x0, .LC4	// tmp140,
	add	x1, x0, :lo12:.LC4	//, tmp140,
	adrp	x0, .LC8	// tmp141,
	add	x0, x0, :lo12:.LC8	//, tmp141,
	bl	__assert_fail		//
.L10:
// problem74.c:31:     int test5[] = {1, 2, 3, 2, 1};
	adrp	x0, .LC3	// tmp143,
	add	x0, x0, :lo12:.LC3	// tmp142, tmp143,
	add	x2, sp, 80	// tmp144,,
	mov	x3, x0	// tmp145, tmp142
	ldp	x0, x1, [x3]	// tmp146,
	stp	x0, x1, [x2]	// tmp146, test5
	ldr	w0, [x3, 16]	// tmp147,
	str	w0, [x2, 16]	// tmp147, test5
// problem74.c:32:     assert(func0(test5, 5) == 0);
	add	x0, sp, 80	// tmp148,,
	mov	w1, 5	//,
	bl	func0		//
	cmp	w0, 0	// _5,
	beq	.L11		//,
// problem74.c:32:     assert(func0(test5, 5) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 32	//,
	adrp	x0, .LC4	// tmp150,
	add	x1, x0, :lo12:.LC4	//, tmp150,
	adrp	x0, .LC9	// tmp151,
	add	x0, x0, :lo12:.LC9	//, tmp151,
	bl	__assert_fail		//
.L11:
// problem74.c:34:     int test6[] = {3, 1, 1, 3};
	mov	w0, 3	// tmp152,
	str	w0, [sp, 64]	// tmp152, test6[0]
	mov	w0, 1	// tmp153,
	str	w0, [sp, 68]	// tmp153, test6[1]
	mov	w0, 1	// tmp154,
	str	w0, [sp, 72]	// tmp154, test6[2]
	mov	w0, 3	// tmp155,
	str	w0, [sp, 76]	// tmp155, test6[3]
// problem74.c:35:     assert(func0(test6, 4) == 0);
	add	x0, sp, 64	// tmp156,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 0	// _6,
	beq	.L12		//,
// problem74.c:35:     assert(func0(test6, 4) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 35	//,
	adrp	x0, .LC4	// tmp158,
	add	x1, x0, :lo12:.LC4	//, tmp158,
	adrp	x0, .LC10	// tmp159,
	add	x0, x0, :lo12:.LC10	//, tmp159,
	bl	__assert_fail		//
.L12:
// problem74.c:37:     int test7[] = {1};
	mov	w0, 1	// tmp160,
	str	w0, [sp, 16]	// tmp160, test7[0]
// problem74.c:38:     assert(func0(test7, 1) == 0);
	add	x0, sp, 16	// tmp161,,
	mov	w1, 1	//,
	bl	func0		//
	cmp	w0, 0	// _7,
	beq	.L13		//,
// problem74.c:38:     assert(func0(test7, 1) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 38	//,
	adrp	x0, .LC4	// tmp163,
	add	x1, x0, :lo12:.LC4	//, tmp163,
	adrp	x0, .LC11	// tmp164,
	add	x0, x0, :lo12:.LC11	//, tmp164,
	bl	__assert_fail		//
.L13:
// problem74.c:40:     int test8[] = {0, 1};
	str	wzr, [sp, 24]	//, test8[0]
	mov	w0, 1	// tmp165,
	str	w0, [sp, 28]	// tmp165, test8[1]
// problem74.c:41:     assert(func0(test8, 2) == 1);
	add	x0, sp, 24	// tmp166,,
	mov	w1, 2	//,
	bl	func0		//
	cmp	w0, 1	// _8,
	beq	.L14		//,
// problem74.c:41:     assert(func0(test8, 2) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 41	//,
	adrp	x0, .LC4	// tmp168,
	add	x1, x0, :lo12:.LC4	//, tmp168,
	adrp	x0, .LC12	// tmp169,
	add	x0, x0, :lo12:.LC12	//, tmp169,
	bl	__assert_fail		//
.L14:
// problem74.c:43:     return 0;
	mov	w0, 0	// _41,
// problem74.c:44: }
	mov	w1, w0	// <retval>, _41
	adrp	x0, :got:__stack_chk_guard	// tmp172,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp171, tmp172,
	ldr	x3, [sp, 168]	// tmp174, D.4322
	ldr	x2, [x0]	// tmp175,
	subs	x3, x3, x2	// tmp174, tmp175
	mov	x2, 0	// tmp175
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
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
	.word	2
	.word	3
	.word	5
	.word	4
	.word	7
	.word	9
	.word	6
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	3
	.word	2
	.word	2
	.align	3
.LC2:
	.word	1
	.word	4
	.word	2
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	2
	.word	1
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
