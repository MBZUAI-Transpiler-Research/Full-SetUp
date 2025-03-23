	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 184]
	mov	x1, 0
	add	x0, sp, 80
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	str	wzr, [sp, 56]
	ldr	x0, [sp, 40]
	str	x0, [sp, 72]
	str	wzr, [sp, 60]
	b	.L2
.L4:
	ldr	x0, [sp, 72]
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L3
	ldr	x0, [sp, 72]
	ldrb	w0, [x0]
	sub	w0, w0, #97
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, sp, 80
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bge	.L3
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	str	w0, [sp, 56]
.L3:
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
.L2:
	ldr	x0, [sp, 72]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 64]
	b	.L5
.L7:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrsw	x1, [sp, 64]
	lsl	x1, x1, 2
	add	x2, sp, 80
	ldr	w1, [x2, x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 64]
	and	w1, w0, 255
	ldr	w0, [sp, 60]
	add	w2, w0, 1
	str	w2, [sp, 60]
	sxtw	x0, w0
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	add	w1, w1, 97
	and	w1, w1, 255
	strb	w1, [x0]
.L6:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L5:
	ldr	w0, [sp, 64]
	cmp	w0, 25
	ble	.L7
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 56]
	str	w1, [x0]
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 184]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	ldp	x29, x30, [sp], 192
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
