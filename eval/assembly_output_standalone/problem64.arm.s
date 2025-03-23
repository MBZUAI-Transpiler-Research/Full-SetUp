	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -448]!
	.cfi_def_cfa_offset 448
	.cfi_offset 29, -448
	.cfi_offset 30, -440
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 440]
	mov	x1, 0
	add	x0, sp, 40
	mov	x1, 400
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 3
	str	w0, [sp, 36]
	b	.L2
.L3:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 36]
	sub	w0, w0, #2
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 40
	ldr	w0, [x2, x0]
	add	w1, w1, w0
	ldr	w0, [sp, 36]
	sub	w0, w0, #3
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 40
	ldr	w0, [x2, x0]
	add	w2, w1, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L3
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 440]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	mov	w0, w1
	ldp	x29, x30, [sp], 448
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
