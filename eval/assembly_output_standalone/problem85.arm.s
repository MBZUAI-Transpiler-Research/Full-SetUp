	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	w0, [sp, 12]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	add	x3, sp, 48
	ldr	w2, [sp, 12]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	sprintf
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldrsw	x0, [sp, 28]
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldrsw	x0, [sp, 28]
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	mov	x0, 33
	bl	malloc
	str	x0, [sp, 40]
	str	wzr, [sp, 32]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	str	w1, [sp, 32]
	sxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	mov	w1, 48
	strb	w1, [x0]
	b	.L5
.L7:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	and	w1, w0, 255
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	str	w2, [sp, 32]
	sxtw	x0, w0
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	add	w1, w1, 48
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 24]
.L6:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bgt	.L7
.L5:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [x0]
	str	wzr, [sp, 36]
	b	.L8
.L9:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 23]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 36]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [sp, 23]
	strb	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L8:
	ldr	w0, [sp, 32]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 36]
	cmp	w0, w1
	blt	.L9
	ldr	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L11
	bl	__stack_chk_fail
.L11:
	mov	x0, x1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
