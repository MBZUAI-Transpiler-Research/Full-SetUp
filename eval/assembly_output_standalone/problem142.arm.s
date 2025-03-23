	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"No"
	.align	3
.LC1:
	.string	".txt"
	.align	3
.LC2:
	.string	".exe"
	.align	3
.LC3:
	.string	".dll"
	.align	3
.LC4:
	.string	"Yes"
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
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 4
	bgt	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L2:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 39]
	cmp	w0, 64
	bls	.L4
	ldrb	w0, [sp, 39]
	cmp	w0, 90
	bls	.L5
	ldrb	w0, [sp, 39]
	cmp	w0, 96
	bls	.L4
.L5:
	ldrb	w0, [sp, 39]
	cmp	w0, 122
	bls	.L6
.L4:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L6:
	ldrsw	x0, [sp, 52]
	sub	x0, x0, #4
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	str	x0, [sp, 56]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	ldr	x0, [sp, 56]
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	x0, [sp, 56]
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	ldr	x0, [sp, 56]
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L7:
	str	wzr, [sp, 48]
	b	.L8
.L11:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L9
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 57
	bhi	.L9
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L9:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 46
	bne	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L8:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 40]
	cmp	w0, 3
	bgt	.L12
	ldr	w0, [sp, 44]
	cmp	w0, 1
	beq	.L13
.L12:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L13:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
.L3:
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
