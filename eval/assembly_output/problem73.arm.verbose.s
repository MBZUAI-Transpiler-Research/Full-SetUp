	.arch armv8-a
	.file	"problem73.c"
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
	str	x0, [sp, 8]	// q, q
	str	w1, [sp, 4]	// size, size
	str	w2, [sp]	// w, w
// problem73.c:5:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	str	wzr, [sp, 28]	//, i
// problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	b	.L2		//
.L5:
// problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp122, q
	add	x0, x1, x0	// _3, tmp122, _2
	ldr	w1, [x0]	// _4, *_3
// problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	ldr	w0, [sp, 4]	// tmp123, size
	sub	w2, w0, #1	// _5, tmp123,
// problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	ldr	w0, [sp, 28]	// tmp124, i
	sub	w0, w2, w0	// _6, _5, tmp124
	sxtw	x0, w0	// _7, _6
// problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lsl	x0, x0, 2	// _8, _7,
	ldr	x2, [sp, 8]	// tmp125, q
	add	x0, x2, x0	// _9, tmp125, _8
	ldr	w0, [x0]	// _10, *_9
// problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	cmp	w1, w0	// _4, _10
	beq	.L3		//,
// problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	mov	w0, 0	// _32,
// problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	b	.L4		//
.L3:
// problem73.c:8:         sum += q[i] + q[size - 1 - i];
	ldrsw	x0, [sp, 28]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 8]	// tmp126, q
	add	x0, x1, x0	// _13, tmp126, _12
	ldr	w1, [x0]	// _14, *_13
// problem73.c:8:         sum += q[i] + q[size - 1 - i];
	ldr	w0, [sp, 4]	// tmp127, size
	sub	w2, w0, #1	// _15, tmp127,
// problem73.c:8:         sum += q[i] + q[size - 1 - i];
	ldr	w0, [sp, 28]	// tmp128, i
	sub	w0, w2, w0	// _16, _15, tmp128
	sxtw	x0, w0	// _17, _16
// problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 8]	// tmp129, q
	add	x0, x2, x0	// _19, tmp129, _18
	ldr	w0, [x0]	// _20, *_19
// problem73.c:8:         sum += q[i] + q[size - 1 - i];
	add	w0, w1, w0	// _21, _14, _20
// problem73.c:8:         sum += q[i] + q[size - 1 - i];
	ldr	w1, [sp, 24]	// tmp131, sum
	add	w0, w1, w0	// tmp130, tmp131, _21
	str	w0, [sp, 24]	// tmp130, sum
// problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 28]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 28]	// tmp132, i
.L2:
// problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 4]	// tmp134, size
	lsr	w1, w0, 31	// tmp135, tmp134,
	add	w0, w1, w0	// tmp136, tmp135, tmp134
	asr	w0, w0, 1	// tmp137, tmp136,
	mov	w1, w0	// _22, tmp137
// problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 28]	// tmp138, i
	cmp	w0, w1	// tmp138, _22
	blt	.L5		//,
// problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	ldr	w0, [sp, 4]	// tmp139, size
	cmp	w0, 0	// tmp139,
	and	w0, w0, 1	// tmp140, tmp139,
	csneg	w0, w0, w0, ge	// _23, tmp140, tmp140,
// problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	cmp	w0, 1	// _23,
	bne	.L6		//,
// problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	ldr	w0, [sp, 4]	// tmp141, size
	lsr	w1, w0, 31	// tmp142, tmp141,
	add	w0, w1, w0	// tmp143, tmp142, tmp141
	asr	w0, w0, 1	// tmp144, tmp143,
	sxtw	x0, w0	// _25, _24
// problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lsl	x0, x0, 2	// _26, _25,
	ldr	x1, [sp, 8]	// tmp145, q
	add	x0, x1, x0	// _27, tmp145, _26
	ldr	w0, [x0]	// _28, *_27
// problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	ldr	w1, [sp, 24]	// tmp147, sum
	add	w0, w1, w0	// tmp146, tmp147, _28
	str	w0, [sp, 24]	// tmp146, sum
.L6:
// problem73.c:11:     return sum <= w;
	ldr	w1, [sp, 24]	// tmp149, sum
	ldr	w0, [sp]	// tmp150, w
	cmp	w1, w0	// tmp149, tmp150
	cset	w0, le	// tmp151,
	and	w0, w0, 255	// _32, tmp148
.L4:
// problem73.c:12: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem73.c"
	.align	3
.LC3:
	.string	"func0(test1, 3, 9) == true"
	.align	3
.LC4:
	.string	"func0(test2, 2, 5) == false"
	.align	3
.LC5:
	.string	"func0(test3, 1, 5) == true"
	.align	3
.LC6:
	.string	"func0(test4, 3, 1) == false"
	.align	3
.LC7:
	.string	"func0(test5, 3, 6) == false"
	.align	3
.LC8:
	.string	"func0(test6, 1, 5) == true"
	.align	3
.LC9:
	.string	"All tests passed."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
// problem73.c:20: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp103,
	ldr	x1, [x0]	// tmp168,
	str	x1, [sp, 72]	// tmp168, D.4899
	mov	x1, 0	// tmp168
// problem73.c:21:     int test1[] = {3, 2, 3};
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	// tmp104, tmp105,
	add	x0, sp, 24	// tmp106,,
	ldr	x2, [x1]	// tmp108,
	str	x2, [x0]	// tmp108, test1
	ldr	w1, [x1, 8]	// tmp109,
	str	w1, [x0, 8]	// tmp109, test1
// problem73.c:22:     assert(func0(test1, 3, 9) == true);
	add	x0, sp, 24	// tmp110,,
	mov	w2, 9	//,
	mov	w1, 3	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp111
// problem73.c:22:     assert(func0(test1, 3, 9) == true);
	and	w0, w0, 1	// tmp112, _1,
	cmp	w0, 0	// tmp112,
	bne	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 22	//,
	adrp	x0, .LC2	// tmp114,
	add	x1, x0, :lo12:.LC2	//, tmp114,
	adrp	x0, .LC3	// tmp115,
	add	x0, x0, :lo12:.LC3	//, tmp115,
	bl	__assert_fail		//
.L8:
// problem73.c:24:     int test2[] = {1, 2};
	mov	w0, 1	// tmp116,
	str	w0, [sp, 16]	// tmp116, test2[0]
	mov	w0, 2	// tmp117,
	str	w0, [sp, 20]	// tmp117, test2[1]
// problem73.c:25:     assert(func0(test2, 2, 5) == false);
	add	x0, sp, 16	// tmp118,,
	mov	w2, 5	//,
	mov	w1, 2	//,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp119
// problem73.c:25:     assert(func0(test2, 2, 5) == false);
	eor	w0, w0, 1	// tmp120, _2,
	and	w0, w0, 255	// _3, tmp120
	and	w0, w0, 1	// tmp121, _3,
	cmp	w0, 0	// tmp121,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 25	//,
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	//, tmp123,
	adrp	x0, .LC4	// tmp124,
	add	x0, x0, :lo12:.LC4	//, tmp124,
	bl	__assert_fail		//
.L9:
// problem73.c:27:     int test3[] = {3};
	mov	w0, 3	// tmp125,
	str	w0, [sp]	// tmp125, test3[0]
// problem73.c:28:     assert(func0(test3, 1, 5) == true);
	mov	x0, sp	// tmp126,
	mov	w2, 5	//,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp127
// problem73.c:28:     assert(func0(test3, 1, 5) == true);
	and	w0, w0, 1	// tmp128, _4,
	cmp	w0, 0	// tmp128,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 28	//,
	adrp	x0, .LC2	// tmp130,
	add	x1, x0, :lo12:.LC2	//, tmp130,
	adrp	x0, .LC5	// tmp131,
	add	x0, x0, :lo12:.LC5	//, tmp131,
	bl	__assert_fail		//
.L10:
// problem73.c:30:     int test4[] = {3, 2, 3};
	adrp	x0, .LC0	// tmp133,
	add	x1, x0, :lo12:.LC0	// tmp132, tmp133,
	add	x0, sp, 40	// tmp134,,
	ldr	x2, [x1]	// tmp136,
	str	x2, [x0]	// tmp136, test4
	ldr	w1, [x1, 8]	// tmp137,
	str	w1, [x0, 8]	// tmp137, test4
// problem73.c:31:     assert(func0(test4, 3, 1) == false);
	add	x0, sp, 40	// tmp138,,
	mov	w2, 1	//,
	mov	w1, 3	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp139
// problem73.c:31:     assert(func0(test4, 3, 1) == false);
	eor	w0, w0, 1	// tmp140, _5,
	and	w0, w0, 255	// _6, tmp140
	and	w0, w0, 1	// tmp141, _6,
	cmp	w0, 0	// tmp141,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 31	//,
	adrp	x0, .LC2	// tmp143,
	add	x1, x0, :lo12:.LC2	//, tmp143,
	adrp	x0, .LC6	// tmp144,
	add	x0, x0, :lo12:.LC6	//, tmp144,
	bl	__assert_fail		//
.L11:
// problem73.c:33:     int test5[] = {1, 2, 3};
	adrp	x0, .LC1	// tmp146,
	add	x1, x0, :lo12:.LC1	// tmp145, tmp146,
	add	x0, sp, 56	// tmp147,,
	ldr	x2, [x1]	// tmp149,
	str	x2, [x0]	// tmp149, test5
	ldr	w1, [x1, 8]	// tmp150,
	str	w1, [x0, 8]	// tmp150, test5
// problem73.c:34:     assert(func0(test5, 3, 6) == false);
	add	x0, sp, 56	// tmp151,,
	mov	w2, 6	//,
	mov	w1, 3	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp152
// problem73.c:34:     assert(func0(test5, 3, 6) == false);
	eor	w0, w0, 1	// tmp153, _7,
	and	w0, w0, 255	// _8, tmp153
	and	w0, w0, 1	// tmp154, _8,
	cmp	w0, 0	// tmp154,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp156,
	add	x1, x0, :lo12:.LC2	//, tmp156,
	adrp	x0, .LC7	// tmp157,
	add	x0, x0, :lo12:.LC7	//, tmp157,
	bl	__assert_fail		//
.L12:
// problem73.c:36:     int test6[] = {5};
	mov	w0, 5	// tmp158,
	str	w0, [sp, 8]	// tmp158, test6[0]
// problem73.c:37:     assert(func0(test6, 1, 5) == true);
	add	x0, sp, 8	// tmp159,,
	mov	w2, 5	//,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp160
// problem73.c:37:     assert(func0(test6, 1, 5) == true);
	and	w0, w0, 1	// tmp161, _9,
	cmp	w0, 0	// tmp161,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp163,
	add	x1, x0, :lo12:.LC2	//, tmp163,
	adrp	x0, .LC8	// tmp164,
	add	x0, x0, :lo12:.LC8	//, tmp164,
	bl	__assert_fail		//
.L13:
// problem73.c:39:     printf("All tests passed.\n");
	adrp	x0, .LC9	// tmp165,
	add	x0, x0, :lo12:.LC9	//, tmp165,
	bl	puts		//
// problem73.c:40:     return 0;
	mov	w0, 0	// _31,
// problem73.c:41: }
	mov	w1, w0	// <retval>, _31
	adrp	x0, :got:__stack_chk_guard	// tmp167,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp167,
	ldr	x3, [sp, 72]	// tmp169, D.4899
	ldr	x2, [x0]	// tmp170,
	subs	x3, x3, x2	// tmp169, tmp170
	mov	x2, 0	// tmp170
	beq	.L15		//,
	bl	__stack_chk_fail		//
.L15:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
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
	.word	3
	.word	2
	.word	3
	.align	3
.LC1:
	.word	1
	.word	2
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
