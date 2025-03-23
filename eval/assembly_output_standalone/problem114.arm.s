	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 60]
	b	.L2
.L6:
	str	wzr, [sp, 64]
	str	wzr, [sp, 68]
	b	.L3
.L5:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L4
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 57
	bhi	.L4
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L4
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L4:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L3:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, 100
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x5, [x0]
	ldr	w4, [sp, 64]
	ldr	w3, [sp, 64]
	ldr	w2, [sp, 64]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x5
	bl	sprintf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
