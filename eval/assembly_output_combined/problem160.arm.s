	.arch armv8-a
	.file	"problem160.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	x3, [sp, 8]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	str	wzr, [x0]
	b	.L4
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 24]
	sub	w1, w2, w1
	str	w1, [x0]
.L4:
	nop
	add	sp, sp, 32
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
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L6
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L6
	mov	w0, 1
	b	.L8
.L6:
	mov	w0, 0
.L8:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem160.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){11, 4})"
	.align	3
.LC2:
	.string	"issame(result, (int[]){12, 1})"
	.align	3
.LC3:
	.string	"issame(result, (int[]){11, 0})"
	.align	3
.LC4:
	.string	"issame(result, (int[]){7, 0})"
	.align	3
.LC5:
	.string	"issame(result, (int[]){9, 2})"
	.align	3
.LC6:
	.string	"issame(result, (int[]){5, 0})"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	add	x0, sp, 24
	mov	x3, x0
	mov	w2, 10
	mov	w1, 6
	mov	w0, 5
	bl	func0
	mov	w0, 11
	str	w0, [sp, 32]
	mov	w0, 4
	str	w0, [sp, 36]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L10:
	add	x0, sp, 24
	mov	x3, x0
	mov	w2, 9
	mov	w1, 8
	mov	w0, 4
	bl	func0
	mov	w0, 12
	str	w0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 36]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L11:
	add	x0, sp, 24
	mov	x3, x0
	mov	w2, 10
	mov	w1, 10
	mov	w0, 1
	bl	func0
	mov	w0, 11
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L12:
	add	x0, sp, 24
	mov	x3, x0
	mov	w2, 5
	mov	w1, 11
	mov	w0, 2
	bl	func0
	mov	w0, 7
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L13:
	add	x0, sp, 24
	mov	x3, x0
	mov	w2, 7
	mov	w1, 5
	mov	w0, 4
	bl	func0
	mov	w0, 9
	str	w0, [sp, 32]
	mov	w0, 2
	str	w0, [sp, 36]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L14:
	add	x0, sp, 24
	mov	x3, x0
	mov	w2, 1
	mov	w1, 5
	mov	w0, 4
	bl	func0
	mov	w0, 5
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L15:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	mov	w0, w1
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
