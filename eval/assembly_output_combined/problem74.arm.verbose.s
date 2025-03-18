	.arch armv8-a
	.file	"problem74.c"
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
	sub	sp, sp, #176	//,,
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160	//,,
// problem74.c:18: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp171,
	str	x1, [sp, 152]	// tmp171, D.4904
	mov	x1, 0	// tmp171
// problem74.c:19:     int test1[] = {1, 2, 3, 5, 4, 7, 9, 6};
	adrp	x0, .LC0	// tmp104,
	add	x1, x0, :lo12:.LC0	// tmp103, tmp104,
	add	x0, sp, 120	// tmp105,,
	ldp	q0, q1, [x1]	// tmp107, tmp108,
	stp	q0, q1, [x0]	// tmp107, tmp108, test1
// problem74.c:20:     assert(func0(test1, 8) == 4);
	add	x0, sp, 120	// tmp109,,
	mov	w1, 8	//,
	bl	func0		//
// problem74.c:20:     assert(func0(test1, 8) == 4);
	cmp	w0, 4	// _1,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 20	//,
	adrp	x0, .LC4	// tmp111,
	add	x1, x0, :lo12:.LC4	//, tmp111,
	adrp	x0, .LC5	// tmp112,
	add	x0, x0, :lo12:.LC5	//, tmp112,
	bl	__assert_fail		//
.L7:
// problem74.c:22:     int test2[] = {1, 2, 3, 4, 3, 2, 2};
	adrp	x0, .LC1	// tmp114,
	add	x1, x0, :lo12:.LC1	// tmp113, tmp114,
	add	x0, sp, 88	// tmp115,,
	ldr	q0, [x1]	// tmp117,
	str	q0, [x0]	// tmp117, test2
	ldr	q0, [x1, 12]	// tmp118,
	str	q0, [x0, 12]	// tmp118, test2
// problem74.c:23:     assert(func0(test2, 7) == 1);
	add	x0, sp, 88	// tmp119,,
	mov	w1, 7	//,
	bl	func0		//
// problem74.c:23:     assert(func0(test2, 7) == 1);
	cmp	w0, 1	// _2,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 23	//,
	adrp	x0, .LC4	// tmp121,
	add	x1, x0, :lo12:.LC4	//, tmp121,
	adrp	x0, .LC6	// tmp122,
	add	x0, x0, :lo12:.LC6	//, tmp122,
	bl	__assert_fail		//
.L8:
// problem74.c:25:     int test3[] = {1, 4, 2};
	adrp	x0, .LC2	// tmp124,
	add	x1, x0, :lo12:.LC2	// tmp123, tmp124,
	add	x0, sp, 16	// tmp125,,
	ldr	x2, [x1]	// tmp127,
	str	x2, [x0]	// tmp127, test3
	ldr	w1, [x1, 8]	// tmp128,
	str	w1, [x0, 8]	// tmp128, test3
// problem74.c:26:     assert(func0(test3, 3) == 1);
	add	x0, sp, 16	// tmp129,,
	mov	w1, 3	//,
	bl	func0		//
// problem74.c:26:     assert(func0(test3, 3) == 1);
	cmp	w0, 1	// _3,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 26	//,
	adrp	x0, .LC4	// tmp131,
	add	x1, x0, :lo12:.LC4	//, tmp131,
	adrp	x0, .LC7	// tmp132,
	add	x0, x0, :lo12:.LC7	//, tmp132,
	bl	__assert_fail		//
.L9:
// problem74.c:28:     int test4[] = {1, 4, 4, 2};
	mov	w0, 1	// tmp133,
	str	w0, [sp, 32]	// tmp133, test4[0]
	mov	w0, 4	// tmp134,
	str	w0, [sp, 36]	// tmp134, test4[1]
	mov	w0, 4	// tmp135,
	str	w0, [sp, 40]	// tmp135, test4[2]
	mov	w0, 2	// tmp136,
	str	w0, [sp, 44]	// tmp136, test4[3]
// problem74.c:29:     assert(func0(test4, 4) == 1);
	add	x0, sp, 32	// tmp137,,
	mov	w1, 4	//,
	bl	func0		//
// problem74.c:29:     assert(func0(test4, 4) == 1);
	cmp	w0, 1	// _4,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 29	//,
	adrp	x0, .LC4	// tmp139,
	add	x1, x0, :lo12:.LC4	//, tmp139,
	adrp	x0, .LC8	// tmp140,
	add	x0, x0, :lo12:.LC8	//, tmp140,
	bl	__assert_fail		//
.L10:
// problem74.c:31:     int test5[] = {1, 2, 3, 2, 1};
	adrp	x0, .LC3	// tmp142,
	add	x0, x0, :lo12:.LC3	// tmp141, tmp142,
	add	x2, sp, 64	// tmp143,,
	mov	x3, x0	// tmp144, tmp141
	ldp	x0, x1, [x3]	// tmp145,
	stp	x0, x1, [x2]	// tmp145, test5
	ldr	w0, [x3, 16]	// tmp146,
	str	w0, [x2, 16]	// tmp146, test5
// problem74.c:32:     assert(func0(test5, 5) == 0);
	add	x0, sp, 64	// tmp147,,
	mov	w1, 5	//,
	bl	func0		//
// problem74.c:32:     assert(func0(test5, 5) == 0);
	cmp	w0, 0	// _5,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp148,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp148,
	mov	w2, 32	//,
	adrp	x0, .LC4	// tmp149,
	add	x1, x0, :lo12:.LC4	//, tmp149,
	adrp	x0, .LC9	// tmp150,
	add	x0, x0, :lo12:.LC9	//, tmp150,
	bl	__assert_fail		//
.L11:
// problem74.c:34:     int test6[] = {3, 1, 1, 3};
	mov	w0, 3	// tmp151,
	str	w0, [sp, 48]	// tmp151, test6[0]
	mov	w0, 1	// tmp152,
	str	w0, [sp, 52]	// tmp152, test6[1]
	mov	w0, 1	// tmp153,
	str	w0, [sp, 56]	// tmp153, test6[2]
	mov	w0, 3	// tmp154,
	str	w0, [sp, 60]	// tmp154, test6[3]
// problem74.c:35:     assert(func0(test6, 4) == 0);
	add	x0, sp, 48	// tmp155,,
	mov	w1, 4	//,
	bl	func0		//
// problem74.c:35:     assert(func0(test6, 4) == 0);
	cmp	w0, 0	// _6,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp156,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp156,
	mov	w2, 35	//,
	adrp	x0, .LC4	// tmp157,
	add	x1, x0, :lo12:.LC4	//, tmp157,
	adrp	x0, .LC10	// tmp158,
	add	x0, x0, :lo12:.LC10	//, tmp158,
	bl	__assert_fail		//
.L12:
// problem74.c:37:     int test7[] = {1};
	mov	w0, 1	// tmp159,
	str	w0, [sp]	// tmp159, test7[0]
// problem74.c:38:     assert(func0(test7, 1) == 0);
	mov	x0, sp	// tmp160,
	mov	w1, 1	//,
	bl	func0		//
// problem74.c:38:     assert(func0(test7, 1) == 0);
	cmp	w0, 0	// _7,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 38	//,
	adrp	x0, .LC4	// tmp162,
	add	x1, x0, :lo12:.LC4	//, tmp162,
	adrp	x0, .LC11	// tmp163,
	add	x0, x0, :lo12:.LC11	//, tmp163,
	bl	__assert_fail		//
.L13:
// problem74.c:40:     int test8[] = {0, 1};
	str	wzr, [sp, 8]	//, test8[0]
	mov	w0, 1	// tmp164,
	str	w0, [sp, 12]	// tmp164, test8[1]
// problem74.c:41:     assert(func0(test8, 2) == 1);
	add	x0, sp, 8	// tmp165,,
	mov	w1, 2	//,
	bl	func0		//
// problem74.c:41:     assert(func0(test8, 2) == 1);
	cmp	w0, 1	// _8,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp166,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp166,
	mov	w2, 41	//,
	adrp	x0, .LC4	// tmp167,
	add	x1, x0, :lo12:.LC4	//, tmp167,
	adrp	x0, .LC12	// tmp168,
	add	x0, x0, :lo12:.LC12	//, tmp168,
	bl	__assert_fail		//
.L14:
// problem74.c:43:     return 0;
	mov	w0, 0	// _41,
// problem74.c:44: }
	mov	w1, w0	// <retval>, _41
	adrp	x0, :got:__stack_chk_guard	// tmp170,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp170,
	ldr	x3, [sp, 152]	// tmp172, D.4904
	ldr	x2, [x0]	// tmp173,
	subs	x3, x3, x2	// tmp172, tmp173
	mov	x2, 0	// tmp173
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
