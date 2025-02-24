	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 256]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 256
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 248]
	mov	x1, 0
	str	wzr, [sp, 16]
	b	.L2
.L3:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 16]
	add	x1, sp, 40
	strb	w2, [x1, x0]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L2:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bne	.L3
	ldrsw	x0, [sp, 16]
	add	x1, sp, 40
	strb	wzr, [x1, x0]
	add	x0, sp, 40
	bl	atoi
	str	w0, [sp, 24]
	str	wzr, [sp, 20]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	b	.L4
.L5:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 20]
	add	x1, sp, 144
	strb	w2, [x1, x0]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L4:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldrsw	x0, [sp, 20]
	add	x1, sp, 144
	strb	wzr, [x1, x0]
	add	x0, sp, 144
	bl	atoi
	str	w0, [sp, 28]
	str	wzr, [sp, 16]
	b	.L6
.L7:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 16]
	add	x1, sp, 40
	strb	w2, [x1, x0]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L6:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bne	.L7
	ldrsw	x0, [sp, 16]
	add	x1, sp, 40
	strb	wzr, [x1, x0]
	add	x0, sp, 40
	bl	atoi
	str	w0, [sp, 32]
	str	wzr, [sp, 20]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	b	.L8
.L9:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 20]
	add	x1, sp, 144
	strb	w2, [x1, x0]
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L8:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	ldrsw	x0, [sp, 20]
	add	x1, sp, 144
	strb	wzr, [x1, x0]
	add	x0, sp, 144
	bl	atoi
	str	w0, [sp, 36]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 32]
	mul	w0, w1, w0
	ldr	w2, [sp, 28]
	ldr	w1, [sp, 36]
	mul	w1, w2, w1
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L10
	mov	w0, 1
	b	.L12
.L10:
	mov	w0, 0
.L12:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 248]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L13
	bl	__stack_chk_fail
.L13:
	mov	w0, w1
	ldp	x29, x30, [sp, 256]
	add	sp, sp, 272
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
