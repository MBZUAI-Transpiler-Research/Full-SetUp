	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	mov	w0, 10
	str	w0, [sp, 48]
	ldr	x0, [sp, 24]
	mov	w1, 1
	str	w1, [x0]
	ldr	x0, [sp, 32]
	mov	w1, 1
	str	w1, [x0]
	b	.L2
.L5:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L3
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	bgt	.L4
	ldr	w0, [sp, 48]
	lsl	w0, w0, 1
	str	w0, [sp, 48]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	realloc
	str	x0, [sp, 32]
.L4:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	add	w2, w0, 1
	ldr	x1, [sp, 24]
	str	w2, [x1]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w1, [sp, 44]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L2
.L3:
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L5
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L6
.L10:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	b	.L7
.L9:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
.L7:
	ldr	w0, [sp, 56]
	cmp	w0, 0
	blt	.L8
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L9
.L8:
	ldrsw	x0, [sp, 56]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [sp, 60]
	str	w1, [x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L6:
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L10
	nop
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
