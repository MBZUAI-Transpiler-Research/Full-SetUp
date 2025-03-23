	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s.%s"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	x3, [sp, 16]
	mov	w0, -1000
	str	w0, [sp, 64]
	str	xzr, [sp, 80]
	str	wzr, [sp, 68]
	b	.L2
.L8:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 88]
	str	wzr, [sp, 72]
	str	wzr, [sp, 76]
	b	.L3
.L6:
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 63]
	ldrb	w0, [sp, 63]
	cmp	w0, 64
	bls	.L4
	ldrb	w0, [sp, 63]
	cmp	w0, 90
	bhi	.L4
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L4:
	ldrb	w0, [sp, 63]
	cmp	w0, 96
	bls	.L5
	ldrb	w0, [sp, 63]
	cmp	w0, 122
	bhi	.L5
	ldr	w0, [sp, 72]
	sub	w0, w0, #1
	str	w0, [sp, 72]
.L5:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L3:
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 72]
	str	w0, [sp, 64]
	ldr	x0, [sp, 88]
	str	x0, [sp, 80]
.L7:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L2:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L8
	ldr	x3, [sp, 80]
	ldr	x2, [sp, 40]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [sp, 16]
	bl	sprintf
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
