	.arch armv8-a
	.file	"problem59.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	w3, [sp, 32]
	str	x4, [sp, 16]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	b	.L2
.L11:
	str	wzr, [sp, 64]
	str	wzr, [sp, 60]
	b	.L3
.L6:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	str	w0, [sp, 64]
	b	.L5
.L4:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L3:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	blt	.L6
.L5:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bne	.L7
	str	wzr, [sp, 56]
	b	.L8
.L10:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L9
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 48]
	add	w2, w0, 1
	str	w2, [sp, 48]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	b	.L7
.L9:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L8:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L10
.L7:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L11
	str	wzr, [sp, 52]
	b	.L12
.L16:
	str	wzr, [sp, 56]
	b	.L13
.L15:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 56]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L14
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 56]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 56]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w1, [sp, 68]
	str	w1, [x0]
.L14:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L13:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L12:
	ldr	w0, [sp, 48]
	sub	w0, w0, #1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L16
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 48]
	str	w1, [x0]
	ldr	x0, [sp, 72]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem59.c"
	.align	3
.LC6:
	.string	"result1[i] == expected1[i]"
	.align	3
.LC7:
	.string	"result2[i] == expected2[i]"
	.align	3
.LC8:
	.string	"result3[i] == expected3[i]"
	.align	3
.LC9:
	.string	"size == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 248]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 184
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 216
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 88
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x2, sp, 16
	add	x1, sp, 216
	add	x0, sp, 184
	mov	x4, x2
	mov	w3, 7
	mov	x2, x1
	mov	w1, 7
	bl	func0
	str	x0, [sp, 32]
	str	wzr, [sp, 20]
	b	.L19
.L21:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	add	x2, sp, 88
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L20:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L19:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L21
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 5
	str	w0, [sp, 136]
	mov	w0, 3
	str	w0, [sp, 140]
	mov	w0, 2
	str	w0, [sp, 144]
	mov	w0, 8
	str	w0, [sp, 148]
	mov	w0, 3
	str	w0, [sp, 72]
	mov	w0, 2
	str	w0, [sp, 76]
	mov	w0, 2
	str	w0, [sp, 80]
	mov	w0, 3
	str	w0, [sp, 84]
	add	x2, sp, 16
	add	x1, sp, 72
	add	x0, sp, 136
	mov	x4, x2
	mov	w3, 2
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 40]
	str	wzr, [sp, 24]
	b	.L22
.L24:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	add	x2, sp, 80
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 63
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L23:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L22:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L24
	ldr	x0, [sp, 40]
	bl	free
	mov	w0, 4
	str	w0, [sp, 152]
	mov	w0, 3
	str	w0, [sp, 156]
	mov	w0, 2
	str	w0, [sp, 160]
	mov	w0, 8
	str	w0, [sp, 164]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 104
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 120
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x2, sp, 16
	add	x1, sp, 104
	add	x0, sp, 152
	mov	x4, x2
	mov	w3, 3
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 48]
	str	wzr, [sp, 28]
	b	.L25
.L27:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	add	x2, sp, 120
	ldr	w0, [x2, x0]
	cmp	w1, w0
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 72
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L26:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L25:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L27
	ldr	x0, [sp, 48]
	bl	free
	mov	w0, 4
	str	w0, [sp, 168]
	mov	w0, 3
	str	w0, [sp, 172]
	mov	w0, 2
	str	w0, [sp, 176]
	mov	w0, 8
	str	w0, [sp, 180]
	add	x2, sp, 16
	add	x1, sp, 64
	add	x0, sp, 168
	mov	x4, x2
	mov	w3, 0
	mov	x2, x1
	mov	w1, 4
	bl	func0
	str	x0, [sp, 56]
	ldr	w0, [sp, 16]
	cmp	w0, 0
	beq	.L28
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 79
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L28:
	ldr	x0, [sp, 56]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 248]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L30
	bl	__stack_chk_fail
.L30:
	mov	w0, w1
	ldp	x29, x30, [sp], 256
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	4
	.word	3
	.word	34
	.word	653
	.word	2
	.word	5
	.align	3
.LC1:
	.word	5
	.word	7
	.word	1
	.word	5
	.word	9
	.word	653
	.word	121
	.align	3
.LC2:
	.word	1
	.word	5
	.word	653
	.align	3
.LC3:
	.word	3
	.word	2
	.word	4
	.align	3
.LC4:
	.word	2
	.word	3
	.word	4
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
