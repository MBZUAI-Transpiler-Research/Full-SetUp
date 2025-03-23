	.arch armv8-a
	.file	"problem26.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	mov	x0, 256
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	mov	w0, 2
	str	w0, [sp, 36]
	b	.L2
.L4:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 36]
	sdiv	w0, w1, w0
	str	w0, [sp, 28]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	add	w2, w0, 1
	ldr	x1, [sp, 16]
	str	w2, [x1]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 36]
	str	w1, [x0]
.L3:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 36]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w0, [sp, 36]
	mul	w0, w0, w0
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 1
	ble	.L6
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	add	w2, w0, 1
	ldr	x1, [sp, 16]
	str	w2, [x1]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0]
.L6:
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
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
	beq	.L9
	mov	w0, 0
	b	.L10
.L9:
	str	wzr, [sp, 44]
	b	.L11
.L13:
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
	beq	.L12
	mov	w0, 0
	b	.L10
.L12:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L13
	mov	w0, 1
.L10:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem26.c"
	.align	3
.LC4:
	.string	"issame(result, size, (int[]){2}, 1)"
	.align	3
.LC5:
	.string	"issame(result, size, (int[]){2, 2}, 2)"
	.align	3
.LC6:
	.string	"issame(result, size, (int[]){2, 2, 2}, 3)"
	.align	3
.LC7:
	.string	"issame(result, size, (int[]){3, 19}, 2)"
	.align	3
.LC8:
	.string	"issame(result, size, (int[]){3, 3, 19, 19}, 4)"
	.align	3
.LC9:
	.string	"issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6)"
	.align	3
.LC10:
	.string	"issame(result, size, (int[]){3, 19, 19, 19}, 4)"
	.align	3
.LC11:
	.string	"issame(result, size, (int[]){2, 3, 3}, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	add	x0, sp, 4
	mov	x1, x0
	mov	w0, 2
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	mov	w0, 2
	str	w0, [sp, 16]
	add	x0, sp, 16
	mov	w3, 1
	mov	x2, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L15:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 4
	mov	x1, x0
	mov	w0, 4
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	mov	w0, 2
	str	w0, [sp, 16]
	mov	w0, 2
	str	w0, [sp, 20]
	add	x0, sp, 16
	mov	w3, 2
	mov	x2, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 4
	mov	x1, x0
	mov	w0, 8
	bl	func0
	str	x0, [sp, 8]
	ldr	w4, [sp, 4]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 16
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 16
	mov	w3, 3
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 4
	mov	x1, x0
	mov	w0, 57
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	mov	w0, 3
	str	w0, [sp, 16]
	mov	w0, 19
	str	w0, [sp, 20]
	add	x0, sp, 16
	mov	w3, 2
	mov	x2, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L18:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 4
	mov	x1, x0
	mov	w0, 3249
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	mov	w0, 3
	str	w0, [sp, 16]
	mov	w0, 3
	str	w0, [sp, 20]
	mov	w0, 19
	str	w0, [sp, 24]
	mov	w0, 19
	str	w0, [sp, 28]
	add	x0, sp, 16
	mov	w3, 4
	mov	x2, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 4
	mov	x1, x0
	mov	w0, 54121
	movk	w0, 0x2, lsl 16
	bl	func0
	str	x0, [sp, 8]
	ldr	w4, [sp, 4]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 16
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 16
	mov	w3, 6
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 4
	mov	x1, x0
	mov	w0, 20577
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	mov	w0, 3
	str	w0, [sp, 16]
	mov	w0, 19
	str	w0, [sp, 20]
	mov	w0, 19
	str	w0, [sp, 24]
	mov	w0, 19
	str	w0, [sp, 28]
	add	x0, sp, 16
	mov	w3, 4
	mov	x2, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 62
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 4
	mov	x1, x0
	mov	w0, 18
	bl	func0
	str	x0, [sp, 8]
	ldr	w4, [sp, 4]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 16
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 16
	mov	w3, 3
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 66
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 8]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L24
	bl	__stack_chk_fail
.L24:
	mov	w0, w1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	2
	.word	2
	.word	2
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	19
	.word	19
	.word	19
	.align	3
.LC2:
	.word	2
	.word	3
	.word	3
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
