	.arch armv8-a
	.file	"code.c"
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
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L2
	ldr	x0, [sp, 40]
	b	.L3
.L2:
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	mov	w1, 3
	str	w1, [x0]
	mov	w0, 2
	str	w0, [sp, 36]
	b	.L4
.L7:
	ldr	w0, [sp, 36]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 36]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	add	w1, w2, 1
	str	w1, [x0]
	b	.L6
.L5:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #8
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	add	w1, w0, 1
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	lsr	w2, w0, 31
	add	w0, w2, w0
	asr	w0, w0, 1
	mov	w3, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	add	w1, w1, w3
	str	w1, [x0]
.L6:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L7
	ldr	x0, [sp, 40]
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
