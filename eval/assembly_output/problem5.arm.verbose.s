	.arch armv8-a
	.file	"problem5.c"
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
	str	x0, [sp, 8]	// numbers, numbers
	str	w1, [sp, 4]	// size, size
// problem5.c:5:     float sum = 0;
	str	wzr, [sp, 16]	//, sum
// problem5.c:7:     int i = 0;
	str	wzr, [sp, 24]	//, i
// problem5.c:9:     for (i = 0; i < size; i++)
	str	wzr, [sp, 24]	//, i
// problem5.c:9:     for (i = 0; i < size; i++)
	b	.L2		//
.L3:
// problem5.c:10:         sum += numbers[i];
	ldrsw	x0, [sp, 24]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp106, numbers
	add	x0, x1, x0	// _3, tmp106, _2
	ldr	s0, [x0]	// _4, *_3
// problem5.c:10:         sum += numbers[i];
	ldr	s1, [sp, 16]	// tmp108, sum
	fadd	s0, s1, s0	// tmp107, tmp108, _4
	str	s0, [sp, 16]	// tmp107, sum
// problem5.c:9:     for (i = 0; i < size; i++)
	ldr	w0, [sp, 24]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 24]	// tmp109, i
.L2:
// problem5.c:9:     for (i = 0; i < size; i++)
	ldr	w1, [sp, 24]	// tmp111, i
	ldr	w0, [sp, 4]	// tmp112, size
	cmp	w1, w0	// tmp111, tmp112
	blt	.L3		//,
// problem5.c:12:     avg = sum / size;
	ldr	s0, [sp, 4]	// tmp113, size
	scvtf	s0, s0	// _5, tmp113
// problem5.c:12:     avg = sum / size;
	ldr	s1, [sp, 16]	// tmp115, sum
	fdiv	s0, s1, s0	// tmp114, tmp115, _5
	str	s0, [sp, 28]	// tmp114, avg
// problem5.c:13:     msum = 0;
	str	wzr, [sp, 20]	//, msum
// problem5.c:15:     for (i = 0; i < size; i++)
	str	wzr, [sp, 24]	//, i
// problem5.c:15:     for (i = 0; i < size; i++)
	b	.L4		//
.L5:
// problem5.c:16:         msum += fabs(numbers[i] - avg);
	ldrsw	x0, [sp, 24]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 8]	// tmp116, numbers
	add	x0, x1, x0	// _8, tmp116, _7
	ldr	s1, [x0]	// _9, *_8
// problem5.c:16:         msum += fabs(numbers[i] - avg);
	ldr	s0, [sp, 28]	// tmp117, avg
	fsub	s0, s1, s0	// _10, _9, tmp117
// problem5.c:16:         msum += fabs(numbers[i] - avg);
	fabs	s0, s0	// _11, _10
// problem5.c:16:         msum += fabs(numbers[i] - avg);
	ldr	s1, [sp, 20]	// tmp119, msum
	fadd	s0, s1, s0	// tmp118, tmp119, _11
	str	s0, [sp, 20]	// tmp118, msum
// problem5.c:15:     for (i = 0; i < size; i++)
	ldr	w0, [sp, 24]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 24]	// tmp120, i
.L4:
// problem5.c:15:     for (i = 0; i < size; i++)
	ldr	w1, [sp, 24]	// tmp122, i
	ldr	w0, [sp, 4]	// tmp123, size
	cmp	w1, w0	// tmp122, tmp123
	blt	.L5		//,
// problem5.c:18:     return msum / size;
	ldr	s0, [sp, 4]	// tmp124, size
	scvtf	s0, s0	// _12, tmp124
	ldr	s1, [sp, 20]	// tmp125, msum
	fdiv	s0, s1, s0	// _24, tmp125, _12
// problem5.c:19: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem5.c"
	.align	3
.LC3:
	.string	"fabs(func0(case1, 3) - 2.0/3.0) < 1e-4"
	.align	3
.LC4:
	.string	"fabs(func0(case2, 4) - 1.0) < 1e-4"
	.align	3
.LC5:
	.string	"fabs(func0(case3, 5) - 6.0/5.0) < 1e-4"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
// problem5.c:26: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp106,
	ldr	x1, [x0]	// tmp145,
	str	x1, [sp, 56]	// tmp145, D.6084
	mov	x1, 0	// tmp145
// problem5.c:27:     float case1[] = {1.0, 2.0, 3.0};
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	// tmp107, tmp108,
	mov	x0, sp	// tmp109,
	ldr	x2, [x1]	// tmp111,
	str	x2, [x0]	// tmp111, case1
	ldr	w1, [x1, 8]	// tmp112,
	str	w1, [x0, 8]	// tmp112, case1
// problem5.c:28:     assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);
	mov	x0, sp	// tmp113,
	mov	w1, 3	//,
	bl	func0		//
// problem5.c:28:     assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);
	fcvt	d0, s0	// _2, _1
	mov	x0, 6148914691236517205	// tmp144,
	movk	x0, 0x3fe5, lsl 48	// tmp144,,
	fmov	d1, x0	// tmp114, tmp144
	fsub	d0, d0, d1	// _3, _2, tmp114
	fabs	d0, d0	// _4, _3
	adrp	x0, .LC6	// tmp150,
	ldr	d1, [x0, #:lo12:.LC6]	// tmp115,
	fcmpe	d0, d1	// _4, tmp115
	bmi	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 28	//,
	adrp	x0, .LC2	// tmp117,
	add	x1, x0, :lo12:.LC2	//, tmp117,
	adrp	x0, .LC3	// tmp118,
	add	x0, x0, :lo12:.LC3	//, tmp118,
	bl	__assert_fail		//
.L8:
// problem5.c:30:     float case2[] = {1.0, 2.0, 3.0, 4.0};
	fmov	s0, 1.0e+0	// tmp119,
	str	s0, [sp, 16]	// tmp119, case2[0]
	fmov	s0, 2.0e+0	// tmp120,
	str	s0, [sp, 20]	// tmp120, case2[1]
	fmov	s0, 3.0e+0	// tmp121,
	str	s0, [sp, 24]	// tmp121, case2[2]
	fmov	s0, 4.0e+0	// tmp122,
	str	s0, [sp, 28]	// tmp122, case2[3]
// problem5.c:31:     assert(fabs(func0(case2, 4) - 1.0) < 1e-4);
	add	x0, sp, 16	// tmp123,,
	mov	w1, 4	//,
	bl	func0		//
// problem5.c:31:     assert(fabs(func0(case2, 4) - 1.0) < 1e-4);
	fcvt	d1, s0	// _6, _5
	fmov	d0, 1.0e+0	// tmp124,
	fsub	d0, d1, d0	// _7, _6, tmp124
	fabs	d0, d0	// _8, _7
	adrp	x0, .LC6	// tmp151,
	ldr	d1, [x0, #:lo12:.LC6]	// tmp125,
	fcmpe	d0, d1	// _8, tmp125
	bmi	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 31	//,
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	//, tmp127,
	adrp	x0, .LC4	// tmp128,
	add	x0, x0, :lo12:.LC4	//, tmp128,
	bl	__assert_fail		//
.L9:
// problem5.c:33:     float case3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	adrp	x0, .LC1	// tmp130,
	add	x0, x0, :lo12:.LC1	// tmp129, tmp130,
	add	x2, sp, 32	// tmp131,,
	mov	x3, x0	// tmp132, tmp129
	ldp	x0, x1, [x3]	// tmp133,
	stp	x0, x1, [x2]	// tmp133, case3
	ldr	w0, [x3, 16]	// tmp134,
	str	w0, [x2, 16]	// tmp134, case3
// problem5.c:34:     assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);
	add	x0, sp, 32	// tmp135,,
	mov	w1, 5	//,
	bl	func0		//
// problem5.c:34:     assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);
	fcvt	d0, s0	// _10, _9
	mov	x0, 3689348814741910323	// tmp143,
	movk	x0, 0x3ff3, lsl 48	// tmp143,,
	fmov	d1, x0	// tmp136, tmp143
	fsub	d0, d0, d1	// _11, _10, tmp136
	fabs	d0, d0	// _12, _11
	adrp	x0, .LC6	// tmp152,
	ldr	d1, [x0, #:lo12:.LC6]	// tmp137,
	fcmpe	d0, d1	// _12, tmp137
	bmi	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp139,
	add	x1, x0, :lo12:.LC2	//, tmp139,
	adrp	x0, .LC5	// tmp140,
	add	x0, x0, :lo12:.LC5	//, tmp140,
	bl	__assert_fail		//
.L10:
// problem5.c:36:     return 0;
	mov	w0, 0	// _26,
// problem5.c:37: }
	mov	w1, w0	// <retval>, _26
	adrp	x0, :got:__stack_chk_guard	// tmp142,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp142,
	ldr	x3, [sp, 56]	// tmp146, D.6084
	ldr	x2, [x0]	// tmp147,
	subs	x3, x3, x2	// tmp146, tmp147
	mov	x2, 0	// tmp147
	beq	.L12		//,
	bl	__stack_chk_fail		//
.L12:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
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
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC6:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
