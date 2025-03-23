	.arch armv8-a
	.file	"problem122.c"
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
	str	x0, [sp, 8]	// lst, lst
	str	w1, [sp, 4]	// size, size
// problem122.c:4:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	str	wzr, [sp, 28]	//, i
// problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	b	.L2		//
.L4:
// problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	ldr	w0, [sp, 28]	// tmp106, i
	lsl	w0, w0, 1	// _1, tmp106,
	sxtw	x0, w0	// _2, _1
// problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lsl	x0, x0, 2	// _3, _2,
	ldr	x1, [sp, 8]	// tmp107, lst
	add	x0, x1, x0	// _4, tmp107, _3
	ldr	w0, [x0]	// _5, *_4
// problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmp	w0, 0	// _5,
	and	w0, w0, 1	// tmp108, _5,
	csneg	w0, w0, w0, ge	// _6, tmp108, tmp108,
// problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmp	w0, 1	// _6,
	bne	.L3		//,
// problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	ldr	w0, [sp, 28]	// tmp109, i
	lsl	w0, w0, 1	// _7, tmp109,
	sxtw	x0, w0	// _8, _7
// problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 8]	// tmp110, lst
	add	x0, x1, x0	// _10, tmp110, _9
	ldr	w0, [x0]	// _11, *_10
// problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	ldr	w1, [sp, 24]	// tmp112, sum
	add	w0, w1, w0	// tmp111, tmp112, _11
	str	w0, [sp, 24]	// tmp111, sum
.L3:
// problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	ldr	w0, [sp, 28]	// tmp114, i
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 28]	// tmp113, i
.L2:
// problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	ldr	w0, [sp, 28]	// tmp115, i
	lsl	w0, w0, 1	// _12, tmp115,
// problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	ldr	w1, [sp, 4]	// tmp116, size
	cmp	w1, w0	// tmp116, _12
	bgt	.L4		//,
// problem122.c:7:     return sum;
	ldr	w0, [sp, 24]	// _19, sum
// problem122.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem122.c"
	.align	3
.LC3:
	.string	"func0(test1, 4) == 12"
	.align	3
.LC4:
	.string	"func0(test2, 5) == 9"
	.align	3
.LC5:
	.string	"func0(test3, 4) == 0"
	.align	3
.LC6:
	.string	"func0(test4, 2) == 5"
	.align	3
.LC7:
	.string	"func0(test5, 3) == 0"
	.align	3
.LC8:
	.string	"func0(test6, 4) == 23"
	.align	3
.LC9:
	.string	"func0(test7, 4) == 3"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #144	//,,
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128	//,,
// problem122.c:14: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp162,
	str	x1, [sp, 120]	// tmp162, D.4898
	mov	x1, 0	// tmp162
// problem122.c:15:     int test1[] = {5, 8, 7, 1};
	mov	w0, 5	// tmp102,
	str	w0, [sp, 32]	// tmp102, test1[0]
	mov	w0, 8	// tmp103,
	str	w0, [sp, 36]	// tmp103, test1[1]
	mov	w0, 7	// tmp104,
	str	w0, [sp, 40]	// tmp104, test1[2]
	mov	w0, 1	// tmp105,
	str	w0, [sp, 44]	// tmp105, test1[3]
// problem122.c:16:     assert(func0(test1, 4) == 12);
	add	x0, sp, 32	// tmp106,,
	mov	w1, 4	//,
	bl	func0		//
// problem122.c:16:     assert(func0(test1, 4) == 12);
	cmp	w0, 12	// _1,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 16	//,
	adrp	x0, .LC2	// tmp108,
	add	x1, x0, :lo12:.LC2	//, tmp108,
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	__assert_fail		//
.L7:
// problem122.c:18:     int test2[] = {3, 3, 3, 3, 3};
	adrp	x0, .LC0	// tmp111,
	add	x0, x0, :lo12:.LC0	// tmp110, tmp111,
	add	x2, sp, 96	// tmp112,,
	mov	x3, x0	// tmp113, tmp110
	ldp	x0, x1, [x3]	// tmp114,
	stp	x0, x1, [x2]	// tmp114, test2
	ldr	w0, [x3, 16]	// tmp115,
	str	w0, [x2, 16]	// tmp115, test2
// problem122.c:19:     assert(func0(test2, 5) == 9);
	add	x0, sp, 96	// tmp116,,
	mov	w1, 5	//,
	bl	func0		//
// problem122.c:19:     assert(func0(test2, 5) == 9);
	cmp	w0, 9	// _2,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 19	//,
	adrp	x0, .LC2	// tmp118,
	add	x1, x0, :lo12:.LC2	//, tmp118,
	adrp	x0, .LC4	// tmp119,
	add	x0, x0, :lo12:.LC4	//, tmp119,
	bl	__assert_fail		//
.L8:
// problem122.c:21:     int test3[] = {30, 13, 24, 321};
	mov	w0, 30	// tmp120,
	str	w0, [sp, 48]	// tmp120, test3[0]
	mov	w0, 13	// tmp121,
	str	w0, [sp, 52]	// tmp121, test3[1]
	mov	w0, 24	// tmp122,
	str	w0, [sp, 56]	// tmp122, test3[2]
	mov	w0, 321	// tmp123,
	str	w0, [sp, 60]	// tmp123, test3[3]
// problem122.c:22:     assert(func0(test3, 4) == 0);
	add	x0, sp, 48	// tmp124,,
	mov	w1, 4	//,
	bl	func0		//
// problem122.c:22:     assert(func0(test3, 4) == 0);
	cmp	w0, 0	// _3,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 22	//,
	adrp	x0, .LC2	// tmp126,
	add	x1, x0, :lo12:.LC2	//, tmp126,
	adrp	x0, .LC5	// tmp127,
	add	x0, x0, :lo12:.LC5	//, tmp127,
	bl	__assert_fail		//
.L9:
// problem122.c:24:     int test4[] = {5, 9};
	mov	w0, 5	// tmp128,
	str	w0, [sp, 8]	// tmp128, test4[0]
	mov	w0, 9	// tmp129,
	str	w0, [sp, 12]	// tmp129, test4[1]
// problem122.c:25:     assert(func0(test4, 2) == 5);
	add	x0, sp, 8	// tmp130,,
	mov	w1, 2	//,
	bl	func0		//
// problem122.c:25:     assert(func0(test4, 2) == 5);
	cmp	w0, 5	// _4,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 25	//,
	adrp	x0, .LC2	// tmp132,
	add	x1, x0, :lo12:.LC2	//, tmp132,
	adrp	x0, .LC6	// tmp133,
	add	x0, x0, :lo12:.LC6	//, tmp133,
	bl	__assert_fail		//
.L10:
// problem122.c:27:     int test5[] = {2, 4, 8};
	adrp	x0, .LC1	// tmp135,
	add	x1, x0, :lo12:.LC1	// tmp134, tmp135,
	add	x0, sp, 16	// tmp136,,
	ldr	x2, [x1]	// tmp138,
	str	x2, [x0]	// tmp138, test5
	ldr	w1, [x1, 8]	// tmp139,
	str	w1, [x0, 8]	// tmp139, test5
// problem122.c:28:     assert(func0(test5, 3) == 0);
	add	x0, sp, 16	// tmp140,,
	mov	w1, 3	//,
	bl	func0		//
// problem122.c:28:     assert(func0(test5, 3) == 0);
	cmp	w0, 0	// _5,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 28	//,
	adrp	x0, .LC2	// tmp142,
	add	x1, x0, :lo12:.LC2	//, tmp142,
	adrp	x0, .LC7	// tmp143,
	add	x0, x0, :lo12:.LC7	//, tmp143,
	bl	__assert_fail		//
.L11:
// problem122.c:30:     int test6[] = {30, 13, 23, 32};
	mov	w0, 30	// tmp144,
	str	w0, [sp, 64]	// tmp144, test6[0]
	mov	w0, 13	// tmp145,
	str	w0, [sp, 68]	// tmp145, test6[1]
	mov	w0, 23	// tmp146,
	str	w0, [sp, 72]	// tmp146, test6[2]
	mov	w0, 32	// tmp147,
	str	w0, [sp, 76]	// tmp147, test6[3]
// problem122.c:31:     assert(func0(test6, 4) == 23);
	add	x0, sp, 64	// tmp148,,
	mov	w1, 4	//,
	bl	func0		//
// problem122.c:31:     assert(func0(test6, 4) == 23);
	cmp	w0, 23	// _6,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 31	//,
	adrp	x0, .LC2	// tmp150,
	add	x1, x0, :lo12:.LC2	//, tmp150,
	adrp	x0, .LC8	// tmp151,
	add	x0, x0, :lo12:.LC8	//, tmp151,
	bl	__assert_fail		//
.L12:
// problem122.c:33:     int test7[] = {3, 13, 2, 9};
	mov	w0, 3	// tmp152,
	str	w0, [sp, 80]	// tmp152, test7[0]
	mov	w0, 13	// tmp153,
	str	w0, [sp, 84]	// tmp153, test7[1]
	mov	w0, 2	// tmp154,
	str	w0, [sp, 88]	// tmp154, test7[2]
	mov	w0, 9	// tmp155,
	str	w0, [sp, 92]	// tmp155, test7[3]
// problem122.c:34:     assert(func0(test7, 4) == 3);
	add	x0, sp, 80	// tmp156,,
	mov	w1, 4	//,
	bl	func0		//
// problem122.c:34:     assert(func0(test7, 4) == 3);
	cmp	w0, 3	// _7,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp158,
	add	x1, x0, :lo12:.LC2	//, tmp158,
	adrp	x0, .LC9	// tmp159,
	add	x0, x0, :lo12:.LC9	//, tmp159,
	bl	__assert_fail		//
.L13:
// problem122.c:36:     return 0;
	mov	w0, 0	// _43,
// problem122.c:37: }
	mov	w1, w0	// <retval>, _43
	adrp	x0, :got:__stack_chk_guard	// tmp161,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp161,
	ldr	x3, [sp, 120]	// tmp163, D.4898
	ldr	x2, [x0]	// tmp164,
	subs	x3, x3, x2	// tmp163, tmp164
	mov	x2, 0	// tmp164
	beq	.L15		//,
	bl	__stack_chk_fail		//
.L15:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 128]	//,,
	add	sp, sp, 144	//,,
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
	.word	3
	.word	3
	.word	3
	.word	3
	.align	3
.LC1:
	.word	2
	.word	4
	.word	8
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
