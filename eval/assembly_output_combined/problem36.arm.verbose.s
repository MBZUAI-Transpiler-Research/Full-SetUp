	.arch armv8-a
	.file	"problem36.c"
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
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
// problem36.c:4:     float max = -10000;
	mov	w0, 16384	// tmp111,
	movk	w0, 0xc61c, lsl 16	// tmp111,,
	fmov	s0, w0	// tmp101, tmp111
	str	s0, [sp, 24]	// tmp101, max
// problem36.c:5:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 28]	//, i
// problem36.c:5:     for (int i = 0; i < size; i++)
	b	.L2		//
.L5:
// problem36.c:6:         if (max < l[i]) max = l[i];
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp102, l
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	s0, [x0]	// _4, *_3
// problem36.c:6:         if (max < l[i]) max = l[i];
	ldr	s1, [sp, 24]	// tmp103, max
	fcmpe	s1, s0	// tmp103, _4
	bmi	.L7		//,
	b	.L3		//
.L7:
// problem36.c:6:         if (max < l[i]) max = l[i];
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp104, l
	add	x0, x1, x0	// _7, tmp104, _6
// problem36.c:6:         if (max < l[i]) max = l[i];
	ldr	s0, [x0]	// tmp105, *_7
	str	s0, [sp, 24]	// tmp105, max
.L3:
// problem36.c:5:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 28]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 28]	// tmp106, i
.L2:
// problem36.c:5:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 28]	// tmp108, i
	ldr	w0, [sp, 4]	// tmp109, size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L5		//,
// problem36.c:7:     return max;
	ldr	s0, [sp, 24]	// _14, max
// problem36.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem36.c"
	.align	3
.LC3:
	.string	"fabs(func0(list1, 3) - 3) < 1e-4"
	.align	3
.LC4:
	.string	"fabs(func0(list2, 11) - 124) < 1e-4"
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
// problem36.c:16: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp131,
	str	x1, [sp, 72]	// tmp131, D.6074
	mov	x1, 0	// tmp131
// problem36.c:17:     float list1[] = {1, 2, 3};
	adrp	x0, .LC0	// tmp104,
	add	x1, x0, :lo12:.LC0	// tmp103, tmp104,
	add	x0, sp, 8	// tmp105,,
	ldr	x2, [x1]	// tmp107,
	str	x2, [x0]	// tmp107, list1
	ldr	w1, [x1, 8]	// tmp108,
	str	w1, [x0, 8]	// tmp108, list1
// problem36.c:18:     assert(fabs(func0(list1, 3) - 3) < 1e-4);
	add	x0, sp, 8	// tmp109,,
	mov	w1, 3	//,
	bl	func0		//
	fmov	s1, s0	// _1,
// problem36.c:18:     assert(fabs(func0(list1, 3) - 3) < 1e-4);
	fmov	s0, 3.0e+0	// tmp110,
	fsub	s0, s1, s0	// _2, _1, tmp110
	fabs	s0, s0	// _3, _2
	fcvt	d0, s0	// _4, _3
	adrp	x0, .LC5	// tmp136,
	ldr	d1, [x0, #:lo12:.LC5]	// tmp111,
	fcmpe	d0, d1	// _4, tmp111
	bmi	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 18	//,
	adrp	x0, .LC2	// tmp113,
	add	x1, x0, :lo12:.LC2	//, tmp113,
	adrp	x0, .LC3	// tmp114,
	add	x0, x0, :lo12:.LC3	//, tmp114,
	bl	__assert_fail		//
.L9:
// problem36.c:20:     float list2[] = {5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10};
	adrp	x0, .LC1	// tmp116,
	add	x1, x0, :lo12:.LC1	// tmp115, tmp116,
	add	x0, sp, 24	// tmp117,,
	ldp	q0, q1, [x1]	// tmp119, tmp120,
	stp	q0, q1, [x0]	// tmp119, tmp120, list2
	ldr	q0, [x1, 28]	// tmp121,
	str	q0, [x0, 28]	// tmp121, list2
// problem36.c:21:     assert(fabs(func0(list2, 11) - 124) < 1e-4);
	add	x0, sp, 24	// tmp122,,
	mov	w1, 11	//,
	bl	func0		//
// problem36.c:21:     assert(fabs(func0(list2, 11) - 124) < 1e-4);
	mov	w0, 1123549184	// tmp130,
	fmov	s1, w0	// tmp123, tmp130
	fsub	s0, s0, s1	// _6, _5, tmp123
	fabs	s0, s0	// _7, _6
	fcvt	d0, s0	// _8, _7
	adrp	x0, .LC5	// tmp137,
	ldr	d1, [x0, #:lo12:.LC5]	// tmp124,
	fcmpe	d0, d1	// _8, tmp124
	bmi	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 21	//,
	adrp	x0, .LC2	// tmp126,
	add	x1, x0, :lo12:.LC2	//, tmp126,
	adrp	x0, .LC4	// tmp127,
	add	x0, x0, :lo12:.LC4	//, tmp127,
	bl	__assert_fail		//
.L10:
	mov	w0, 0	// _18,
	mov	w1, w0	// <retval>, _18
// problem36.c:22: }
	adrp	x0, :got:__stack_chk_guard	// tmp129,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp129,
	ldr	x3, [sp, 72]	// tmp132, D.6074
	ldr	x2, [x0]	// tmp133,
	subs	x3, x3, x2	// tmp132, tmp133
	mov	x2, 0	// tmp133
	beq	.L12		//,
	bl	__stack_chk_fail		//
.L12:
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
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.align	3
.LC1:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123549184
	.word	1065353216
	.word	-1054867456
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC5:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
