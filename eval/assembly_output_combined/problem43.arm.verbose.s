	.arch armv8-a
	.file	"problem43.c"
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
// problem43.c:4:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 28]	//, i
// problem43.c:4:     for (int i = 0; i < size; i++)
	b	.L2		//
.L3:
// problem43.c:5:         l[i] += 1;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp100, l
	add	x0, x1, x0	// _3, tmp100, _2
	ldr	w1, [x0]	// _4, *_3
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp101, l
	add	x0, x2, x0	// _7, tmp101, _6
// problem43.c:5:         l[i] += 1;
	add	w1, w1, 1	// _8, _4,
	str	w1, [x0]	// _8, *_7
// problem43.c:4:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 28]	// tmp103, i
	add	w0, w0, 1	// tmp102, tmp103,
	str	w0, [sp, 28]	// tmp102, i
.L2:
// problem43.c:4:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 28]	// tmp104, i
	ldr	w0, [sp, 4]	// tmp105, size
	cmp	w1, w0	// tmp104, tmp105
	blt	.L3		//,
// problem43.c:6: }
	nop	
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	w1, [sp, 20]	// size_a, size_a
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// size_b, size_b
// problem43.c:14:     if (size_a != size_b) return 0;
	ldr	w1, [sp, 20]	// tmp102, size_a
	ldr	w0, [sp, 16]	// tmp103, size_b
	cmp	w1, w0	// tmp102, tmp103
	beq	.L5		//,
// problem43.c:14:     if (size_a != size_b) return 0;
	mov	w0, 0	// _10,
// problem43.c:14:     if (size_a != size_b) return 0;
	b	.L6		//
.L5:
// problem43.c:15:     for (int i = 0; i < size_a; i++) {
	str	wzr, [sp, 44]	//, i
// problem43.c:15:     for (int i = 0; i < size_a; i++) {
	b	.L7		//
.L9:
// problem43.c:16:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem43.c:16:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem43.c:16:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L8		//,
// problem43.c:16:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem43.c:16:         if (a[i] != b[i]) return 0;
	b	.L6		//
.L8:
// problem43.c:15:     for (int i = 0; i < size_a; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L7:
// problem43.c:15:     for (int i = 0; i < size_a; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, size_a
	cmp	w1, w0	// tmp108, tmp109
	blt	.L9		//,
// problem43.c:18:     return 1;
	mov	w0, 1	// _10,
.L6:
// problem43.c:19: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC4:
	.string	"problem43.c"
	.align	3
.LC5:
	.string	"issame(list1, 0, result1, 0)"
	.align	3
.LC6:
	.string	"issame(list2, 3, result2, 3)"
	.align	3
.LC7:
	.string	"issame(list3, 9, result3, 9)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144	//,,
// problem43.c:21: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp97,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp97,
	ldr	x1, [x0]	// tmp144,
	str	x1, [sp, 136]	// tmp144, D.4900
	mov	x1, 0	// tmp144
// problem43.c:24:     func0(list1, 0);
	add	x0, sp, 8	// tmp98,,
	mov	w1, 0	//,
	bl	func0		//
// problem43.c:25:     assert(issame(list1, 0, result1, 0));
	add	x1, sp, 16	// tmp99,,
	add	x0, sp, 8	// tmp100,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp99
	mov	w1, 0	//,
	bl	issame		//
// problem43.c:25:     assert(issame(list1, 0, result1, 0));
	cmp	w0, 0	// _1,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 25	//,
	adrp	x0, .LC4	// tmp102,
	add	x1, x0, :lo12:.LC4	//, tmp102,
	adrp	x0, .LC5	// tmp103,
	add	x0, x0, :lo12:.LC5	//, tmp103,
	bl	__assert_fail		//
.L11:
// problem43.c:27:     int list2[] = {3, 2, 1};
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	// tmp104, tmp105,
	add	x0, sp, 24	// tmp106,,
	ldr	x2, [x1]	// tmp108,
	str	x2, [x0]	// tmp108, list2
	ldr	w1, [x1, 8]	// tmp109,
	str	w1, [x0, 8]	// tmp109, list2
// problem43.c:28:     int result2[] = {4, 3, 2};
	adrp	x0, .LC1	// tmp111,
	add	x1, x0, :lo12:.LC1	// tmp110, tmp111,
	add	x0, sp, 40	// tmp112,,
	ldr	x2, [x1]	// tmp114,
	str	x2, [x0]	// tmp114, result2
	ldr	w1, [x1, 8]	// tmp115,
	str	w1, [x0, 8]	// tmp115, result2
// problem43.c:29:     func0(list2, 3);
	add	x0, sp, 24	// tmp116,,
	mov	w1, 3	//,
	bl	func0		//
// problem43.c:30:     assert(issame(list2, 3, result2, 3));
	add	x1, sp, 40	// tmp117,,
	add	x0, sp, 24	// tmp118,,
	mov	w3, 3	//,
	mov	x2, x1	//, tmp117
	mov	w1, 3	//,
	bl	issame		//
// problem43.c:30:     assert(issame(list2, 3, result2, 3));
	cmp	w0, 0	// _2,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 30	//,
	adrp	x0, .LC4	// tmp120,
	add	x1, x0, :lo12:.LC4	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L12:
// problem43.c:32:     int list3[] = {5, 2, 5, 2, 3, 3, 9, 0, 123};
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	// tmp122, tmp123,
	add	x0, sp, 56	// tmp124,,
	ldp	q0, q1, [x1]	// tmp126, tmp127,
	stp	q0, q1, [x0]	// tmp126, tmp127, list3
	ldr	w1, [x1, 32]	// tmp128,
	str	w1, [x0, 32]	// tmp128, list3
// problem43.c:33:     int result3[] = {6, 3, 6, 3, 4, 4, 10, 1, 124};
	adrp	x0, .LC3	// tmp130,
	add	x1, x0, :lo12:.LC3	// tmp129, tmp130,
	add	x0, sp, 96	// tmp131,,
	ldp	q0, q1, [x1]	// tmp133, tmp134,
	stp	q0, q1, [x0]	// tmp133, tmp134, result3
	ldr	w1, [x1, 32]	// tmp135,
	str	w1, [x0, 32]	// tmp135, result3
// problem43.c:34:     func0(list3, 9);
	add	x0, sp, 56	// tmp136,,
	mov	w1, 9	//,
	bl	func0		//
// problem43.c:35:     assert(issame(list3, 9, result3, 9));
	add	x1, sp, 96	// tmp137,,
	add	x0, sp, 56	// tmp138,,
	mov	w3, 9	//,
	mov	x2, x1	//, tmp137
	mov	w1, 9	//,
	bl	issame		//
// problem43.c:35:     assert(issame(list3, 9, result3, 9));
	cmp	w0, 0	// _3,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 35	//,
	adrp	x0, .LC4	// tmp140,
	add	x1, x0, :lo12:.LC4	//, tmp140,
	adrp	x0, .LC7	// tmp141,
	add	x0, x0, :lo12:.LC7	//, tmp141,
	bl	__assert_fail		//
.L13:
// problem43.c:37:     return 0;
	mov	w0, 0	// _18,
// problem43.c:38: }
	mov	w1, w0	// <retval>, _18
	adrp	x0, :got:__stack_chk_guard	// tmp143,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp143,
	ldr	x3, [sp, 136]	// tmp145, D.4900
	ldr	x2, [x0]	// tmp146,
	subs	x3, x3, x2	// tmp145, tmp146
	mov	x2, 0	// tmp146
	beq	.L15		//,
	bl	__stack_chk_fail		//
.L15:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 144]	//,,
	add	sp, sp, 160	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	3
	.word	2
	.word	1
	.align	3
.LC1:
	.word	4
	.word	3
	.word	2
	.align	3
.LC2:
	.word	5
	.word	2
	.word	5
	.word	2
	.word	3
	.word	3
	.word	9
	.word	0
	.word	123
	.align	3
.LC3:
	.word	6
	.word	3
	.word	6
	.word	3
	.word	4
	.word	4
	.word	10
	.word	1
	.word	124
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
