	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	x2, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	str	wzr, [sp, 24]
	b	.L2
.L3:
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w0, w0, w1
	and	w1, w0, 255
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	str	w2, [sp, 24]
	add	w1, w1, 48
	and	w2, w1, 255
	sxtw	x0, w0
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sdiv	w0, w1, w0
	str	w0, [sp, 12]
.L2:
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bgt	.L3
	str	wzr, [sp, 28]
	b	.L4
.L5:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp]
	add	x0, x1, x0
	ldrsw	x1, [sp, 24]
	add	x2, sp, 32
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
.L4:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bgt	.L5
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
