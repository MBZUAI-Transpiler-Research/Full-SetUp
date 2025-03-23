	.arch armv8-a
	.file	"problem24.c"
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
	str	x0, [sp, 8]	// str, str
// problem24.c:4:     int length = 0;
	str	wzr, [sp, 28]	//, length
// problem24.c:5:     while (str[length] != '\0') {
	b	.L2		//
.L3:
// problem24.c:6:         length++;
	ldr	w0, [sp, 28]	// tmp98, length
	add	w0, w0, 1	// tmp97, tmp98,
	str	w0, [sp, 28]	// tmp97, length
.L2:
// problem24.c:5:     while (str[length] != '\0') {
	ldrsw	x0, [sp, 28]	// _1, length
	ldr	x1, [sp, 8]	// tmp99, str
	add	x0, x1, x0	// _2, tmp99, _1
	ldrb	w0, [x0]	// _3, *_2
// problem24.c:5:     while (str[length] != '\0') {
	cmp	w0, 0	// _3,
	bne	.L3		//,
// problem24.c:8:     return length;
	ldr	w0, [sp, 28]	// _8, length
// problem24.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem24.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"func0(\"x\") == 1"
	.align	3
.LC5:
	.string	"asdasnakj"
	.align	3
.LC6:
	.string	"func0(\"asdasnakj\") == 9"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem24.c:16:     assert(func0("") == 0);
	adrp	x0, .LC0	// tmp97,
	add	x0, x0, :lo12:.LC0	//, tmp97,
	bl	func0		//
	cmp	w0, 0	// _1,
	beq	.L6		//,
// problem24.c:16:     assert(func0("") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp98,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp98,
	mov	w2, 16	//,
	adrp	x0, .LC1	// tmp99,
	add	x1, x0, :lo12:.LC1	//, tmp99,
	adrp	x0, .LC2	// tmp100,
	add	x0, x0, :lo12:.LC2	//, tmp100,
	bl	__assert_fail		//
.L6:
// problem24.c:17:     assert(func0("x") == 1);
	adrp	x0, .LC3	// tmp101,
	add	x0, x0, :lo12:.LC3	//, tmp101,
	bl	func0		//
	cmp	w0, 1	// _2,
	beq	.L7		//,
// problem24.c:17:     assert(func0("x") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 17	//,
	adrp	x0, .LC1	// tmp103,
	add	x1, x0, :lo12:.LC1	//, tmp103,
	adrp	x0, .LC4	// tmp104,
	add	x0, x0, :lo12:.LC4	//, tmp104,
	bl	__assert_fail		//
.L7:
// problem24.c:18:     assert(func0("asdasnakj") == 9);
	adrp	x0, .LC5	// tmp105,
	add	x0, x0, :lo12:.LC5	//, tmp105,
	bl	func0		//
	cmp	w0, 9	// _3,
	beq	.L8		//,
// problem24.c:18:     assert(func0("asdasnakj") == 9);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 18	//,
	adrp	x0, .LC1	// tmp107,
	add	x1, x0, :lo12:.LC1	//, tmp107,
	adrp	x0, .LC6	// tmp108,
	add	x0, x0, :lo12:.LC6	//, tmp108,
	bl	__assert_fail		//
.L8:
// problem24.c:20:     return 0;
	mov	w0, 0	// _11,
// problem24.c:21: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
