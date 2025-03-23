	.arch armv8-a
	.file	"problem122.c"
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
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L3
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	sxtw	x0, w0
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
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bgt	.L4
	ldr	w0, [sp, 24]
	add	sp, sp, 32
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
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	mov	w0, 5
	str	w0, [sp, 48]
	mov	w0, 8
	str	w0, [sp, 52]
	mov	w0, 7
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	add	x0, sp, 48
	mov	w1, 4
	bl	func0
	cmp	w0, 12
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 16
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L7:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 112
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 112
	mov	w1, 5
	bl	func0
	cmp	w0, 9
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L8:
	mov	w0, 30
	str	w0, [sp, 64]
	mov	w0, 13
	str	w0, [sp, 68]
	mov	w0, 24
	str	w0, [sp, 72]
	mov	w0, 321
	str	w0, [sp, 76]
	add	x0, sp, 64
	mov	w1, 4
	bl	func0
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L9:
	mov	w0, 5
	str	w0, [sp, 24]
	mov	w0, 9
	str	w0, [sp, 28]
	add	x0, sp, 24
	mov	w1, 2
	bl	func0
	cmp	w0, 5
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L10:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 32
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 32
	mov	w1, 3
	bl	func0
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L11:
	mov	w0, 30
	str	w0, [sp, 80]
	mov	w0, 13
	str	w0, [sp, 84]
	mov	w0, 23
	str	w0, [sp, 88]
	mov	w0, 32
	str	w0, [sp, 92]
	add	x0, sp, 80
	mov	w1, 4
	bl	func0
	cmp	w0, 23
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L12:
	mov	w0, 3
	str	w0, [sp, 96]
	mov	w0, 13
	str	w0, [sp, 100]
	mov	w0, 2
	str	w0, [sp, 104]
	mov	w0, 9
	str	w0, [sp, 108]
	add	x0, sp, 96
	mov	w1, 4
	bl	func0
	cmp	w0, 3
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L13:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L15
	bl	__stack_chk_fail
.L15:
	mov	w0, w1
	ldp	x29, x30, [sp], 144
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
