	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"True"
	.align	3
.LC1:
	.string	"False"
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
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x0, [sp, 40]
	bl	strlen
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 88]
	str	wzr, [sp, 60]
	str	wzr, [sp, 64]
	b	.L2
.L8:
	ldr	x0, [sp, 32]
	str	x0, [sp, 80]
	strb	wzr, [sp, 58]
	b	.L3
.L6:
	ldrsw	x0, [sp, 64]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	strb	w0, [sp, 58]
	b	.L5
.L4:
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
.L3:
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L6
.L5:
	ldrb	w0, [sp, 58]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldrsw	x0, [sp, 64]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	add	w2, w0, 1
	str	w2, [sp, 60]
	sxtw	x0, w0
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L7:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L2:
	ldrsw	x0, [sp, 64]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L8
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 88]
	bl	strlen
	str	w0, [sp, 76]
	mov	w0, 1
	strb	w0, [sp, 59]
	str	wzr, [sp, 68]
	b	.L9
.L12:
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	w0, [sp, 76]
	sub	w2, w0, #1
	ldr	w0, [sp, 68]
	sub	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L10
	strb	wzr, [sp, 59]
	b	.L11
.L10:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L9:
	ldr	w0, [sp, 76]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 68]
	cmp	w0, w1
	blt	.L12
.L11:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 24]
	bl	strcpy
	ldrb	w0, [sp, 59]
	cmp	w0, 0
	beq	.L13
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L14
.L13:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L14:
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcpy
	ldr	x0, [sp, 88]
	bl	free
	nop
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
