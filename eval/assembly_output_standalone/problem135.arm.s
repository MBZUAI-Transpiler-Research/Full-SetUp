	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L2
	mov	w0, 0
	b	.L3
.L2:
	ldrsw	x0, [sp, 44]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 42]
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrb	w0, [sp, 42]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	bne	.L4
	mov	w0, 0
	b	.L3
.L4:
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L5
	mov	w0, 1
	b	.L3
.L5:
	ldrsw	x0, [sp, 44]
	sub	x0, x0, #2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 43]
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrb	w0, [sp, 43]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	beq	.L6
	mov	w0, 0
	b	.L3
.L6:
	mov	w0, 1
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
