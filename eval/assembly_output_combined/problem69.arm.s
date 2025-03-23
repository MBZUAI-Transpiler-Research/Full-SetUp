	.arch armv8-a
	.file	"problem69.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	mov	w0, 2147483647
	str	w0, [sp, 36]
	mov	w0, -1
	str	w0, [sp, 40]
	str	wzr, [sp, 44]
	b	.L2
.L5:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bgt	.L4
	ldr	w0, [sp, 40]
	cmn	w0, #1
	bne	.L3
.L4:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
.L3:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 40]
	cmn	w0, #1
	bne	.L6
	mov	x0, 0
	b	.L7
.L6:
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 8]
.L7:
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
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	w3, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
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
	ldr	x2, [sp, 16]
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
	ldr	w0, [sp, 12]
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
.LC5:
	.string	"problem69.c"
	.align	3
.LC6:
	.string	"issame(result, expect1, 2, 2)"
	.align	3
.LC7:
	.string	"issame(result, expect2, 2, 2)"
	.align	3
.LC8:
	.string	"result == NULL"
	.align	3
.LC9:
	.string	"issame(result, expect4, 2, 2)"
	.align	3
.LC10:
	.string	"issame(result, expect5, 2, 2)"
	.align	3
.LC11:
	.string	"issame(result, expect6, 2, 2)"
	.align	3
.LC12:
	.string	"issame(result, expect7, 2, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 232]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 96
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	w0, 2
	str	w0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 52]
	add	x1, sp, 40
	add	x0, sp, 96
	mov	x2, x1
	mov	w1, 3
	bl	func0
	str	x0, [sp, 24]
	add	x0, sp, 48
	mov	w3, 2
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L15:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 112
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	w0, 2
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	add	x1, sp, 40
	add	x0, sp, 112
	mov	x2, x1
	mov	w1, 3
	bl	func0
	str	x0, [sp, 24]
	add	x0, sp, 56
	mov	w3, 2
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L16:
	add	x1, sp, 40
	add	x0, sp, 32
	mov	x2, x1
	mov	w1, 0
	bl	func0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L17:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	add	x2, sp, 184
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	str	wzr, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 68]
	add	x1, sp, 40
	add	x0, sp, 184
	mov	x2, x1
	mov	w1, 6
	bl	func0
	str	x0, [sp, 24]
	add	x0, sp, 64
	mov	w3, 2
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L18:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	add	x2, sp, 208
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	str	wzr, [sp, 72]
	mov	w0, 3
	str	w0, [sp, 76]
	add	x1, sp, 40
	add	x0, sp, 208
	mov	x2, x1
	mov	w1, 6
	bl	func0
	str	x0, [sp, 24]
	add	x0, sp, 72
	mov	w3, 2
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 64
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L19:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 160
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	mov	w0, 4
	str	w0, [sp, 80]
	mov	w0, 1
	str	w0, [sp, 84]
	add	x1, sp, 40
	add	x0, sp, 160
	mov	x2, x1
	mov	w1, 5
	bl	func0
	str	x0, [sp, 24]
	add	x0, sp, 80
	mov	w3, 2
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 69
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L20:
	mov	w0, 7
	str	w0, [sp, 128]
	mov	w0, 6
	str	w0, [sp, 132]
	mov	w0, 7
	str	w0, [sp, 136]
	mov	w0, 1
	str	w0, [sp, 140]
	mov	w0, 6
	str	w0, [sp, 88]
	mov	w0, 1
	str	w0, [sp, 92]
	add	x1, sp, 40
	add	x0, sp, 128
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 24]
	add	x0, sp, 88
	mov	w3, 2
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 74
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L21:
	mov	w0, 7
	str	w0, [sp, 144]
	mov	w0, 9
	str	w0, [sp, 148]
	mov	w0, 7
	str	w0, [sp, 152]
	mov	w0, 1
	str	w0, [sp, 156]
	add	x1, sp, 40
	add	x0, sp, 144
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 78
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L22:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 232]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L24
	bl	__stack_chk_fail
.L24:
	mov	w0, w1
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	4
	.word	2
	.word	3
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.align	3
.LC2:
	.word	5
	.word	0
	.word	3
	.word	0
	.word	4
	.word	2
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	0
	.word	5
	.word	3
	.align	3
.LC4:
	.word	5
	.word	4
	.word	8
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
