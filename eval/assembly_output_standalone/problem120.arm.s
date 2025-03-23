	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 56]
	ldr	x0, [sp, 16]
	bl	strlen
	str	w0, [sp, 60]
	mov	w0, 1
	str	w0, [sp, 52]
	str	wzr, [sp, 48]
	b	.L2
.L6:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L4
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L5
	str	wzr, [sp, 52]
.L5:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 48]
	b	.L7
.L11:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L8
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L8:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L9
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L9:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L10
	str	wzr, [sp, 52]
.L10:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L7:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 52]
	cmp	w0, 0
	beq	.L12
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L13
.L12:
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 52]
	str	wzr, [sp, 48]
	b	.L14
.L18:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L15
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L15:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L16
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L16:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L17
	str	wzr, [sp, 52]
.L17:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L14:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L18
	str	wzr, [sp, 48]
	b	.L19
.L23:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L20
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L20:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L21
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L21:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L22
	str	wzr, [sp, 52]
.L22:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L19:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L24
	ldr	w0, [sp, 52]
	cmp	w0, 0
	beq	.L24
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L13
.L24:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L13:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
