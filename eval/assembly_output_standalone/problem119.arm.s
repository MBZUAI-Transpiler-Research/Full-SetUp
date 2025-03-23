	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
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
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	bl	strlen
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	sub	w0, w0, #2
	str	w0, [sp, 44]
	b	.L2
.L5:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 48]
	bl	strchr
	cmp	x0, 0
	beq	.L3
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 48]
	bl	strchr
	cmp	x0, 0
	bne	.L3
	ldrsw	x0, [sp, 44]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 48]
	bl	strchr
	cmp	x0, 0
	bne	.L3
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	adrp	x0, out.0
	add	x0, x0, :lo12:out.0
	strb	w1, [x0]
	adrp	x0, out.0
	add	x0, x0, :lo12:out.0
	b	.L4
.L3:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L5
	adrp	x0, out.0
	add	x0, x0, :lo12:out.0
	strb	wzr, [x0]
	adrp	x0, out.0
	add	x0, x0, :lo12:out.0
.L4:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,2,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
