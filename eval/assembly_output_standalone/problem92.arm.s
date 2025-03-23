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
	mov	w0, 1
	str	w0, [sp, 32]
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	b	.L2
.L9:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 8192
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L3
	str	wzr, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 73
	bne	.L4
	ldr	w0, [sp, 32]
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L5
.L4:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 8192
	cmp	w0, 0
	bne	.L5
	str	wzr, [sp, 36]
.L5:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 8192
	cmp	w0, 0
	bne	.L6
	str	wzr, [sp, 32]
.L6:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 46
	beq	.L7
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 63
	beq	.L7
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 33
	bne	.L8
.L7:
	mov	w0, 1
	str	w0, [sp, 32]
.L8:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 40]
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
