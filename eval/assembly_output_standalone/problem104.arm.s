	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"-1"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 32]
	mov	x0, 33
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	strb	wzr, [x0]
	mov	w0, 32
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	sxtw	x0, w0
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	strb	wzr, [x0]
.L4:
	ldr	w0, [sp, 32]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	and	w1, w0, 255
	ldr	w0, [sp, 36]
	sub	w2, w0, #1
	str	w2, [sp, 36]
	sxtw	x0, w0
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	add	w1, w1, 48
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 32]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bgt	.L4
	ldrsw	x0, [sp, 36]
	add	x0, x0, 1
	ldr	x1, [sp, 40]
	add	x0, x1, x0
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
