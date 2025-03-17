	.arch armv8-a
	.file	"problem41.c"
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
	str	wzr, [sp, 20]
	b	.L2
.L9:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L3
.L8:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L4
.L7:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w1, w1, w0
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	cmp	w0, 0
	bne	.L5
	mov	w0, 1
	b	.L6
.L5:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L4:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L9
	mov	w0, 0
.L6:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem41.c"
	.align	3
.LC2:
	.string	"func0(test1, 4) == false"
	.align	3
.LC3:
	.string	"func0(test2, 4) == false"
	.align	3
.LC4:
	.string	"func0(test3, 4) == true"
	.align	3
.LC5:
	.string	"func0(test4, 4) == false"
	.align	3
.LC6:
	.string	"func0(test5, 4) == false"
	.align	3
.LC7:
	.string	"func0(test6, 6) == true"
	.align	3
.LC8:
	.string	"func0(test7, 1) == false"
	.align	3
.LC9:
	.string	"func0(test8, 4) == false"
	.align	3
.LC10:
	.string	"func0(test9, 4) == false"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 16]
	mov	w0, 3
	str	w0, [sp, 20]
	mov	w0, 5
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	add	x0, sp, 16
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 20
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L11:
	mov	w0, 1
	str	w0, [sp, 32]
	mov	w0, 3
	str	w0, [sp, 36]
	mov	w0, 5
	str	w0, [sp, 40]
	mov	w0, -1
	str	w0, [sp, 44]
	add	x0, sp, 32
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L12:
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 3
	str	w0, [sp, 52]
	mov	w0, -2
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	add	x0, sp, 48
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L13:
	mov	w0, 1
	str	w0, [sp, 64]
	mov	w0, 2
	str	w0, [sp, 68]
	mov	w0, 3
	str	w0, [sp, 72]
	mov	w0, 7
	str	w0, [sp, 76]
	add	x0, sp, 64
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L14:
	mov	w0, 1
	str	w0, [sp, 80]
	mov	w0, 2
	str	w0, [sp, 84]
	mov	w0, 5
	str	w0, [sp, 88]
	mov	w0, 7
	str	w0, [sp, 92]
	add	x0, sp, 80
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L15:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 128
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 128
	mov	w1, 6
	bl	func0
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L16:
	mov	w0, 1
	str	w0, [sp, 8]
	add	x0, sp, 8
	mov	w1, 1
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L17:
	mov	w0, 1
	str	w0, [sp, 96]
	mov	w0, 3
	str	w0, [sp, 100]
	mov	w0, 5
	str	w0, [sp, 104]
	mov	w0, -100
	str	w0, [sp, 108]
	add	x0, sp, 96
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L18:
	mov	w0, 100
	str	w0, [sp, 112]
	mov	w0, 3
	str	w0, [sp, 116]
	mov	w0, 5
	str	w0, [sp, 120]
	mov	w0, -100
	str	w0, [sp, 124]
	add	x0, sp, 112
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L19:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L21
	bl	__stack_chk_fail
.L21:
	mov	w0, w1
	ldp	x29, x30, [sp, 160]
	add	sp, sp, 176
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
	.word	2
	.word	4
	.word	-5
	.word	3
	.word	9
	.word	7
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
