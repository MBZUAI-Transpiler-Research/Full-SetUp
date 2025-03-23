	.arch armv8-a
	.file	"problem4.c"
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
	str	x0, [sp, 8]	// operations, operations
	str	w1, [sp, 4]	// size, size
// problem4.c:4:     int num = 0;
	str	wzr, [sp, 24]	//, num
// problem4.c:5:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 28]	//, i
// problem4.c:5:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L5:
// problem4.c:6:         num += operations[i];
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp98, operations
	add	x0, x1, x0	// _3, tmp98, _2
	ldr	w0, [x0]	// _4, *_3
// problem4.c:6:         num += operations[i];
	ldr	w1, [sp, 24]	// tmp100, num
	add	w0, w1, w0	// tmp99, tmp100, _4
	str	w0, [sp, 24]	// tmp99, num
// problem4.c:7:         if (num < 0) return 1;
	ldr	w0, [sp, 24]	// tmp101, num
	cmp	w0, 0	// tmp101,
	bge	.L3		//,
// problem4.c:7:         if (num < 0) return 1;
	mov	w0, 1	// _7,
	b	.L4		//
.L3:
// problem4.c:5:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp103, i
	add	w0, w0, 1	// tmp102, tmp103,
	str	w0, [sp, 28]	// tmp102, i
.L2:
// problem4.c:5:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp104, i
	ldr	w0, [sp, 4]	// tmp105, size
	cmp	w1, w0	// tmp104, tmp105
	blt	.L5		//,
// problem4.c:9:     return 0;
	mov	w0, 0	// _7,
.L4:
// problem4.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem4.c"
	.align	3
.LC6:
	.string	"func0(case1, 0) == 0"
	.align	3
.LC7:
	.string	"func0(case2, 6) == 0"
	.align	3
.LC8:
	.string	"func0(case3, 5) == 1"
	.align	3
.LC9:
	.string	"func0(case4, 8) == 0"
	.align	3
.LC10:
	.string	"func0(case5, 8) == 1"
	.align	3
.LC11:
	.string	"func0(case6, 8) == 1"
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
// problem4.c:16: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp159,
	str	x1, [sp, 168]	// tmp159, D.4315
	mov	x1, 0	// tmp159
// problem4.c:18:     assert(func0(case1, 0) == 0);
	add	x0, sp, 16	// tmp102,,
	mov	w1, 0	//,
	bl	func0		//
	cmp	w0, 0	// _1,
	beq	.L7		//,
// problem4.c:18:     assert(func0(case1, 0) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp103,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp103,
	mov	w2, 18	//,
	adrp	x0, .LC5	// tmp104,
	add	x1, x0, :lo12:.LC5	//, tmp104,
	adrp	x0, .LC6	// tmp105,
	add	x0, x0, :lo12:.LC6	//, tmp105,
	bl	__assert_fail		//
.L7:
// problem4.c:20:     int case2[] = {1, 2, -3, 1, 2, -3};
	adrp	x0, .LC0	// tmp107,
	add	x0, x0, :lo12:.LC0	// tmp106, tmp107,
	add	x2, sp, 48	// tmp108,,
	mov	x3, x0	// tmp109, tmp106
	ldp	x0, x1, [x3]	// tmp110,
	stp	x0, x1, [x2]	// tmp110, case2
	ldr	x0, [x3, 16]	// tmp111,
	str	x0, [x2, 16]	// tmp111, case2
// problem4.c:21:     assert(func0(case2, 6) == 0);
	add	x0, sp, 48	// tmp112,,
	mov	w1, 6	//,
	bl	func0		//
	cmp	w0, 0	// _2,
	beq	.L8		//,
// problem4.c:21:     assert(func0(case2, 6) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 21	//,
	adrp	x0, .LC5	// tmp114,
	add	x1, x0, :lo12:.LC5	//, tmp114,
	adrp	x0, .LC7	// tmp115,
	add	x0, x0, :lo12:.LC7	//, tmp115,
	bl	__assert_fail		//
.L8:
// problem4.c:23:     int case3[] = {1, 2, -4, 5, 6};
	adrp	x0, .LC1	// tmp117,
	add	x0, x0, :lo12:.LC1	// tmp116, tmp117,
	add	x2, sp, 24	// tmp118,,
	mov	x3, x0	// tmp119, tmp116
	ldp	x0, x1, [x3]	// tmp120,
	stp	x0, x1, [x2]	// tmp120, case3
	ldr	w0, [x3, 16]	// tmp121,
	str	w0, [x2, 16]	// tmp121, case3
// problem4.c:24:     assert(func0(case3, 5) == 1);
	add	x0, sp, 24	// tmp122,,
	mov	w1, 5	//,
	bl	func0		//
	cmp	w0, 1	// _3,
	beq	.L9		//,
// problem4.c:24:     assert(func0(case3, 5) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 24	//,
	adrp	x0, .LC5	// tmp124,
	add	x1, x0, :lo12:.LC5	//, tmp124,
	adrp	x0, .LC8	// tmp125,
	add	x0, x0, :lo12:.LC8	//, tmp125,
	bl	__assert_fail		//
.L9:
// problem4.c:26:     int case4[] = {1, -1, 2, -2, 5, -5, 4, -4};
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	// tmp126, tmp127,
	add	x0, sp, 72	// tmp128,,
	ldp	q0, q1, [x1]	// tmp130, tmp131,
	stp	q0, q1, [x0]	// tmp130, tmp131, case4
// problem4.c:27:     assert(func0(case4, 8) == 0);
	add	x0, sp, 72	// tmp132,,
	mov	w1, 8	//,
	bl	func0		//
	cmp	w0, 0	// _4,
	beq	.L10		//,
// problem4.c:27:     assert(func0(case4, 8) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 27	//,
	adrp	x0, .LC5	// tmp134,
	add	x1, x0, :lo12:.LC5	//, tmp134,
	adrp	x0, .LC9	// tmp135,
	add	x0, x0, :lo12:.LC9	//, tmp135,
	bl	__assert_fail		//
.L10:
// problem4.c:29:     int case5[] = {1, -1, 2, -2, 5, -5, 4, -5};
	adrp	x0, .LC3	// tmp137,
	add	x1, x0, :lo12:.LC3	// tmp136, tmp137,
	add	x0, sp, 104	// tmp138,,
	ldp	q0, q1, [x1]	// tmp140, tmp141,
	stp	q0, q1, [x0]	// tmp140, tmp141, case5
// problem4.c:30:     assert(func0(case5, 8) == 1);
	add	x0, sp, 104	// tmp142,,
	mov	w1, 8	//,
	bl	func0		//
	cmp	w0, 1	// _5,
	beq	.L11		//,
// problem4.c:30:     assert(func0(case5, 8) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 30	//,
	adrp	x0, .LC5	// tmp144,
	add	x1, x0, :lo12:.LC5	//, tmp144,
	adrp	x0, .LC10	// tmp145,
	add	x0, x0, :lo12:.LC10	//, tmp145,
	bl	__assert_fail		//
.L11:
// problem4.c:32:     int case6[] = {1, -2, 2, -2, 5, -5, 4, -4};
	adrp	x0, .LC4	// tmp147,
	add	x1, x0, :lo12:.LC4	// tmp146, tmp147,
	add	x0, sp, 136	// tmp148,,
	ldp	q0, q1, [x1]	// tmp150, tmp151,
	stp	q0, q1, [x0]	// tmp150, tmp151, case6
// problem4.c:33:     assert(func0(case6, 8) == 1);
	add	x0, sp, 136	// tmp152,,
	mov	w1, 8	//,
	bl	func0		//
	cmp	w0, 1	// _6,
	beq	.L12		//,
// problem4.c:33:     assert(func0(case6, 8) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 33	//,
	adrp	x0, .LC5	// tmp154,
	add	x1, x0, :lo12:.LC5	//, tmp154,
	adrp	x0, .LC11	// tmp155,
	add	x0, x0, :lo12:.LC11	//, tmp155,
	bl	__assert_fail		//
.L12:
// problem4.c:35:     return 0;
	mov	w0, 0	// _26,
// problem4.c:36: }
	mov	w1, w0	// <retval>, _26
	adrp	x0, :got:__stack_chk_guard	// tmp158,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp157, tmp158,
	ldr	x3, [sp, 168]	// tmp160, D.4315
	ldr	x2, [x0]	// tmp161,
	subs	x3, x3, x2	// tmp160, tmp161
	mov	x2, 0	// tmp161
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
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
	.word	-3
	.word	1
	.word	2
	.word	-3
	.align	3
.LC1:
	.word	1
	.word	2
	.word	-4
	.word	5
	.word	6
	.align	3
.LC2:
	.word	1
	.word	-1
	.word	2
	.word	-2
	.word	5
	.word	-5
	.word	4
	.word	-4
	.align	3
.LC3:
	.word	1
	.word	-1
	.word	2
	.word	-2
	.word	5
	.word	-5
	.word	4
	.word	-5
	.align	3
.LC4:
	.word	1
	.word	-2
	.word	2
	.word	-2
	.word	5
	.word	-5
	.word	4
	.word	-4
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
