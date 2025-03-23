	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	add	w0, w0, 2
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	str	wzr, [sp, 52]
	b	.L2
.L14:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L3
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
.L3:
	str	wzr, [sp, 56]
	b	.L5
.L9:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 60]
	b	.L6
.L8:
	ldrsw	x0, [sp, 56]
	add	x1, sp, 80
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 60]
	add	x2, sp, 80
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bls	.L7
	ldrsw	x0, [sp, 56]
	add	x1, sp, 80
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 43]
	ldrsw	x0, [sp, 60]
	add	x1, sp, 80
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 56]
	add	x1, sp, 80
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 60]
	add	x1, sp, 80
	ldrb	w2, [sp, 43]
	strb	w2, [x1, x0]
.L7:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L6:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L5:
	ldr	w0, [sp, 48]
	sub	w0, w0, #1
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L10
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	sxtw	x0, w0
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	w1, 32
	strb	w1, [x0]
.L10:
	str	wzr, [sp, 64]
	b	.L11
.L12:
	ldr	w0, [sp, 44]
	add	w1, w0, 1
	str	w1, [sp, 44]
	sxtw	x0, w0
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldrsw	x1, [sp, 64]
	add	x2, sp, 80
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L11:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 48]
	b	.L13
.L4:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	w0, [sp, 48]
	add	w2, w0, 1
	str	w2, [sp, 48]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 80
	strb	w2, [x1, x0]
.L13:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	ble	.L14
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 72]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	mov	x0, x1
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
