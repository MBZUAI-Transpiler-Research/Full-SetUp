	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	x2, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	str	wzr, [sp, 40]
	b	.L2
.L3:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	and	w1, w0, 255
	ldr	w0, [sp, 40]
	add	w2, w0, 1
	str	w2, [sp, 40]
	add	w1, w1, 48
	and	w2, w1, 255
	sxtw	x0, w0
	add	x1, sp, 48
	strb	w2, [x1, x0]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sdiv	w0, w1, w0
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L3
	str	wzr, [sp, 44]
	b	.L4
.L5:
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	sxtw	x0, w0
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrsw	x1, [sp, 40]
	add	x2, sp, 48
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
.L4:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L5
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 88]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
