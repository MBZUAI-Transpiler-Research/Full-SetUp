	.arch armv8-a
	.file	"problem164.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	x2, [sp, 16]
	str	x3, [sp, 8]
	ldr	x0, [sp, 8]
	str	wzr, [x0]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L2
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	str	w0, [sp, 24]
.L2:
	ldr	w0, [sp, 28]
	str	w0, [sp, 40]
	b	.L3
.L5:
	ldr	w0, [sp, 40]
	cmp	w0, 9
	bgt	.L4
	ldr	w0, [sp, 40]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	add	w2, w0, 1
	ldr	x1, [sp, 8]
	str	w2, [x1]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L5
	nop
	nop
	add	sp, sp, 48
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L7
	mov	w0, 0
	b	.L8
.L7:
	str	wzr, [sp, 44]
	b	.L9
.L11:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L10
	mov	w0, 0
	b	.L8
.L10:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L9:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L11
	mov	w0, 1
.L8:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem164.c"
	.align	3
.LC1:
	.string	"issame(result, size, expected1, 4)"
	.align	3
.LC2:
	.string	"issame(result, size, expected2, 4)"
	.align	3
.LC3:
	.string	"issame(result, size, expected3, 4)"
	.align	3
.LC4:
	.string	"issame(result, size, expected4, 0)"
	.align	3
.LC5:
	.string	"All tests passed."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
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
	mov	w0, 2
	str	w0, [sp, 32]
	mov	w0, 4
	str	w0, [sp, 36]
	mov	w0, 6
	str	w0, [sp, 40]
	mov	w0, 8
	str	w0, [sp, 44]
	add	x1, sp, 20
	add	x0, sp, 80
	mov	x3, x1
	mov	x2, x0
	mov	w1, 10
	mov	w0, 2
	bl	func0
	ldr	w1, [sp, 20]
	add	x2, sp, 32
	add	x0, sp, 80
	mov	w3, 4
	bl	issame
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L13:
	mov	w0, 2
	str	w0, [sp, 48]
	mov	w0, 4
	str	w0, [sp, 52]
	mov	w0, 6
	str	w0, [sp, 56]
	mov	w0, 8
	str	w0, [sp, 60]
	add	x1, sp, 20
	add	x0, sp, 80
	mov	x3, x1
	mov	x2, x0
	mov	w1, 2
	mov	w0, 10
	bl	func0
	ldr	w1, [sp, 20]
	add	x2, sp, 48
	add	x0, sp, 80
	mov	w3, 4
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L14:
	mov	w0, 2
	str	w0, [sp, 64]
	mov	w0, 4
	str	w0, [sp, 68]
	mov	w0, 6
	str	w0, [sp, 72]
	mov	w0, 8
	str	w0, [sp, 76]
	add	x1, sp, 20
	add	x0, sp, 80
	mov	x3, x1
	mov	x2, x0
	mov	w1, 2
	mov	w0, 132
	bl	func0
	ldr	w1, [sp, 20]
	add	x2, sp, 64
	add	x0, sp, 80
	mov	w3, 4
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L15:
	add	x1, sp, 20
	add	x0, sp, 80
	mov	x3, x1
	mov	x2, x0
	mov	w1, 89
	mov	w0, 17
	bl	func0
	ldr	w1, [sp, 20]
	add	x2, sp, 24
	add	x0, sp, 80
	mov	w3, 0
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L16:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L18
	bl	__stack_chk_fail
.L18:
	mov	w0, w1
	ldp	x29, x30, [sp], 128
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
