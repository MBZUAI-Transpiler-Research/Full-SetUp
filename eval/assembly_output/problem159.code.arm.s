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
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 312]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 48]
	str	wzr, [sp, 28]
	str	wzr, [sp, 32]
	b	.L2
.L8:
	add	x0, sp, 56
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	stp	q0, q0, [x0, 96]
	stp	q0, q0, [x0, 128]
	stp	q0, q0, [x0, 160]
	stp	q0, q0, [x0, 192]
	stp	q0, q0, [x0, 224]
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L3
.L5:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	add	x0, sp, 56
	bl	strchr
	cmp	x0, 0
	bne	.L4
	add	x0, sp, 56
	bl	strlen
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 56
	strb	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 56
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L6
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L7
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 48]
	bl	strcmp
	cmp	w0, 0
	bge	.L7
.L6:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	w0, [sp, 36]
	str	w0, [sp, 28]
.L7:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L8
	ldr	x0, [sp, 48]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 312]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	mov	x0, x1
	ldp	x29, x30, [sp, 320]
	add	sp, sp, 336
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
