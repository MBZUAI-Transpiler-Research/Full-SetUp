	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	add	w0, w0, 2
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	str	wzr, [sp, 28]
	str	wzr, [sp, 32]
	str	wzr, [sp, 36]
	b	.L2
.L14:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L3
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
.L3:
	str	wzr, [sp, 40]
	b	.L5
.L9:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L6
.L8:
	ldrsw	x0, [sp, 40]
	add	x1, sp, 64
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 44]
	add	x2, sp, 64
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bls	.L7
	ldrsw	x0, [sp, 40]
	add	x1, sp, 64
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 27]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 64
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 40]
	add	x1, sp, 64
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 64
	ldrb	w2, [sp, 27]
	strb	w2, [x1, x0]
.L7:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L6:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L5:
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L10
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 32
	strb	w1, [x0]
.L10:
	str	wzr, [sp, 48]
	b	.L11
.L12:
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrsw	x1, [sp, 48]
	add	x2, sp, 64
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L11:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 32]
	b	.L13
.L4:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	str	w2, [sp, 32]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 64
	strb	w2, [x1, x0]
.L13:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	ble	.L14
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	mov	x0, x1
	ldp	x29, x30, [sp, 128]
	add	sp, sp, 144
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
