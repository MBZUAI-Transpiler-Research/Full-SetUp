	.arch armv8-a
	.file	"problem44.c"
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
	b	.L2
.L7:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L3
.L6:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	cmp	w0, 0
	bne	.L4
	mov	w0, 1
	b	.L5
.L4:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	mov	w0, 0
.L5:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem44.c"
	.align	3
.LC6:
	.string	"func0(test1, 4) == false"
	.align	3
.LC7:
	.string	"func0(test2, 4) == false"
	.align	3
.LC8:
	.string	"func0(test3, 4) == false"
	.align	3
.LC9:
	.string	"func0(test4, 6) == true"
	.align	3
.LC10:
	.string	"func0(test5, 1) == false"
	.align	3
.LC11:
	.string	"func0(test6, 6) == true"
	.align	3
.LC12:
	.string	"func0(test7, 6) == true"
	.align	3
.LC13:
	.string	"func0(test8, 6) == false"
	.align	3
.LC14:
	.string	"func0(test9, 6) == false"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 200]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 32]
	mov	w0, 3
	str	w0, [sp, 36]
	mov	w0, 5
	str	w0, [sp, 40]
	str	wzr, [sp, 44]
	add	x0, sp, 32
	mov	w1, 4
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 19
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L9:
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
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L10:
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
	cmp	w0, 0
	bne	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L11:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 80
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 80
	mov	w1, 6
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L12:
	mov	w0, 1
	str	w0, [sp, 24]
	add	x0, sp, 24
	mov	w1, 1
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L13:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 104
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 104
	mov	w1, 6
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L14:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
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
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L15:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 152
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 152
	mov	w1, 6
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L16:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 176
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 176
	mov	w1, 6
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 43
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L17:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 200]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp], 208
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
	.word	2
	.word	4
	.word	-5
	.word	3
	.word	5
	.word	7
	.align	3
.LC1:
	.word	-3
	.word	9
	.word	-1
	.word	3
	.word	2
	.word	30
	.align	3
.LC2:
	.word	-3
	.word	9
	.word	-1
	.word	3
	.word	2
	.word	31
	.align	3
.LC3:
	.word	-3
	.word	9
	.word	-1
	.word	4
	.word	2
	.word	30
	.align	3
.LC4:
	.word	-3
	.word	9
	.word	-1
	.word	4
	.word	2
	.word	31
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
