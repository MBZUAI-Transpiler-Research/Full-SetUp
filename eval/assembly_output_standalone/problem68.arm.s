	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80
	str	x19, [sp, 96]
	.cfi_offset 19, -16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	str	xzr, [sp, 40]
	strh	wzr, [sp, 48]
	str	xzr, [sp, 56]
	strh	wzr, [sp, 64]
	str	wzr, [sp, 28]
	str	wzr, [sp, 32]
	str	wzr, [sp, 36]
	b	.L2
.L6:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 36]
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 2048
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L4
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	str	w2, [sp, 32]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 40
	strb	w2, [x1, x0]
	b	.L5
.L4:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	str	w2, [sp, 32]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 56
	strb	w2, [x1, x0]
	b	.L5
.L3:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 32]
	cmp	w0, 0
	ble	.L5
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 32]
.L5:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L6
	add	x0, sp, 40
	bl	atoi
	mov	w1, w0
	ldr	w0, [sp, 4]
	sub	w19, w0, w1
	add	x0, sp, 56
	bl	atoi
	sub	w0, w19, w0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	mov	w0, w1
	ldr	x19, [sp, 96]
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
