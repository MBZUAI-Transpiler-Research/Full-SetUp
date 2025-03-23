	.arch armv8-a
	.file	"problem123.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L4:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmn	w0, #99
	blt	.L3
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 99
	bgt	.L3
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 24]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem123.c"
	.align	3
.LC5:
	.string	"func0(test1, 3) == -4"
	.align	3
.LC6:
	.string	"func0(test2, 2) == 0"
	.align	3
.LC7:
	.string	"func0(test3, 4) == 125"
	.align	3
.LC8:
	.string	"func0(test4, 4) == 24"
	.align	3
.LC9:
	.string	"func0(test5, 1) == 1"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 48
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	add	x0, sp, 48
	mov	w1, 3
	bl	func0
	cmn	w0, #4
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 17
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L7:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 24
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 24
	mov	w1, 2
	bl	func0
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L8:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 88
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	add	x0, sp, 88
	mov	w1, 4
	bl	func0
	cmp	w0, 125
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L9:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 128
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	add	x0, sp, 128
	mov	w1, 4
	bl	func0
	cmp	w0, 24
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L10:
	mov	w0, 1
	str	w0, [sp, 16]
	add	x0, sp, 16
	mov	w1, 1
	bl	func0
	cmp	w0, 1
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L11:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L13
	bl	__stack_chk_fail
.L13:
	mov	w0, w1
	ldp	x29, x30, [sp], 176
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
	.word	-2
	.word	-3
	.word	41
	.word	57
	.word	76
	.word	87
	.word	88
	.word	99
	.align	3
.LC1:
	.word	111
	.word	121
	.word	3
	.word	4000
	.word	5
	.word	6
	.align	3
.LC2:
	.word	11
	.word	21
	.word	3
	.word	90
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC3:
	.word	111
	.word	21
	.word	3
	.word	4000
	.word	5
	.word	6
	.word	7
	.word	8
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
