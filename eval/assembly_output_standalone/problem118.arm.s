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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	x2, [sp, 40]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 88]
	str	xzr, [sp, 80]
	str	wzr, [sp, 64]
	str	wzr, [sp, 68]
	str	wzr, [sp, 72]
	ldr	x0, [sp, 56]
	bl	strlen
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	add	x0, x0, 1
	bl	malloc
	str	x0, [sp, 104]
	str	wzr, [sp, 76]
	b	.L2
.L7:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 8192
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
.L3:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L5
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 80]
	bl	realloc
	str	x0, [sp, 80]
	ldr	x0, [sp, 104]
	bl	strlen
	add	x2, x0, 1
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 104]
	bl	strcpy
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L5:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 72]
	str	wzr, [sp, 64]
	b	.L6
.L4:
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	ldr	w2, [sp, 76]
	ldr	w0, [sp, 72]
	sub	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 104]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 88]
	bl	strchr
	cmp	x0, 0
	bne	.L6
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	beq	.L6
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L6:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L2:
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 96]
	cmp	x1, x0
	bcs	.L7
	ldr	x0, [sp, 104]
	bl	free
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 68]
	str	w1, [x0]
	ldr	x0, [sp, 80]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
