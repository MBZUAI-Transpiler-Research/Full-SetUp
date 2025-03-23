	.arch armv8-a
	.file	"problem53.c"
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
	str	w2, [sp]
	str	wzr, [sp, 28]
	b	.L2
.L5:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp]
	cmp	w1, w0
	bgt	.L3
	mov	w0, 0
	b	.L4
.L3:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L5
	mov	w0, 1
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem53.c"
	.align	3
.LC1:
	.string	"func0(list1, 4, 100)"
	.align	3
.LC2:
	.string	"!func0(list2, 4, 5)"
	.align	3
.LC3:
	.string	"func0(list3, 4, 21)"
	.align	3
.LC4:
	.string	"func0(list4, 4, 22)"
	.align	3
.LC5:
	.string	"func0(list5, 4, 11)"
	.align	3
.LC6:
	.string	"!func0(list6, 4, 10)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 28]
	mov	w0, 4
	str	w0, [sp, 32]
	mov	w0, 10
	str	w0, [sp, 36]
	add	x0, sp, 24
	mov	w2, 100
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 17
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L7:
	mov	w0, 1
	str	w0, [sp, 40]
	mov	w0, 20
	str	w0, [sp, 44]
	mov	w0, 4
	str	w0, [sp, 48]
	mov	w0, 10
	str	w0, [sp, 52]
	add	x0, sp, 40
	mov	w2, 5
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L8:
	mov	w0, 1
	str	w0, [sp, 56]
	mov	w0, 20
	str	w0, [sp, 60]
	mov	w0, 4
	str	w0, [sp, 64]
	mov	w0, 10
	str	w0, [sp, 68]
	add	x0, sp, 56
	mov	w2, 21
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L9:
	mov	w0, 1
	str	w0, [sp, 72]
	mov	w0, 20
	str	w0, [sp, 76]
	mov	w0, 4
	str	w0, [sp, 80]
	mov	w0, 10
	str	w0, [sp, 84]
	add	x0, sp, 72
	mov	w2, 22
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L10:
	mov	w0, 1
	str	w0, [sp, 88]
	mov	w0, 8
	str	w0, [sp, 92]
	mov	w0, 4
	str	w0, [sp, 96]
	mov	w0, 10
	str	w0, [sp, 100]
	add	x0, sp, 88
	mov	w2, 11
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L11:
	mov	w0, 1
	str	w0, [sp, 104]
	mov	w0, 8
	str	w0, [sp, 108]
	mov	w0, 4
	str	w0, [sp, 112]
	mov	w0, 10
	str	w0, [sp, 116]
	add	x0, sp, 104
	mov	w2, 10
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L12:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	mov	w0, w1
	ldp	x29, x30, [sp], 128
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
