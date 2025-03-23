	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 328]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 64]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	b	.L2
.L8:
	stp	xzr, xzr, [sp, 72]
	add	x0, sp, 88
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	stp	q0, q0, [x0, 96]
	stp	q0, q0, [x0, 128]
	stp	q0, q0, [x0, 160]
	stp	q0, q0, [x0, 192]
	str	q0, [x0, 224]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	b	.L3
.L5:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	add	x0, sp, 72
	bl	strchr
	cmp	x0, 0
	bne	.L4
	add	x0, sp, 72
	bl	strlen
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 60]
	add	x1, sp, 72
	strb	w2, [x1, x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 72
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L4:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L3:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bgt	.L6
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L7
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 64]
	bl	strcmp
	cmp	w0, 0
	bge	.L7
.L6:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 64]
	ldr	w0, [sp, 52]
	str	w0, [sp, 44]
.L7:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L8
	ldr	x0, [sp, 64]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 328]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	mov	x0, x1
	ldp	x29, x30, [sp], 336
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
