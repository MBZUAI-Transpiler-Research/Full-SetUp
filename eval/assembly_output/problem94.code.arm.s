	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
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
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 56]
	str	wzr, [sp, 48]
	b	.L2
.L10:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrb	w0, [sp, 47]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 512
	cmp	w0, 0
	beq	.L3
	ldrb	w0, [sp, 47]
	bl	toupper
	strb	w0, [sp, 47]
	b	.L4
.L3:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrb	w0, [sp, 47]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 256
	cmp	w0, 0
	beq	.L4
	ldrb	w0, [sp, 47]
	bl	tolower
	strb	w0, [sp, 47]
.L4:
	str	wzr, [sp, 52]
	b	.L5
.L9:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	ldrb	w1, [sp, 47]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 52]
	cmp	w0, 9
	bgt	.L11
	ldrb	w0, [sp, 47]
	add	w0, w0, 2
	strb	w0, [sp, 47]
	b	.L11
.L6:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L5:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	b	.L8
.L11:
	nop
.L8:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w1, [sp, 47]
	strb	w1, [x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
