	.arch armv8-a
	.file	"code.c"
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
	str	x0, [sp, 24]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	strlen
	cmp	x0, 10
	beq	.L2
	mov	w0, 0
	b	.L18
.L2:
	str	wzr, [sp, 32]
	b	.L4
.L10:
	ldr	w0, [sp, 32]
	cmp	w0, 2
	beq	.L5
	ldr	w0, [sp, 32]
	cmp	w0, 5
	bne	.L6
.L5:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 45
	beq	.L8
	mov	w0, 0
	b	.L18
.L6:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L9
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 57
	bls	.L8
.L9:
	mov	w0, 0
	b	.L18
.L8:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L4:
	ldr	w0, [sp, 32]
	cmp	w0, 9
	ble	.L10
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 48]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	ldrb	w0, [x0]
	strb	w0, [sp, 49]
	strb	wzr, [sp, 50]
	ldr	x0, [sp, 24]
	add	x0, x0, 3
	ldrb	w0, [x0]
	strb	w0, [sp, 56]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldrb	w0, [x0]
	strb	w0, [sp, 57]
	strb	wzr, [sp, 58]
	ldr	x0, [sp, 24]
	add	x0, x0, 6
	ldrb	w0, [x0]
	strb	w0, [sp, 64]
	ldr	x0, [sp, 24]
	add	x0, x0, 7
	ldrb	w0, [x0]
	strb	w0, [sp, 65]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldrb	w0, [x0]
	strb	w0, [sp, 66]
	ldr	x0, [sp, 24]
	add	x0, x0, 9
	ldrb	w0, [x0]
	strb	w0, [sp, 67]
	strb	wzr, [sp, 68]
	add	x0, sp, 48
	bl	atoi
	str	w0, [sp, 36]
	add	x0, sp, 56
	bl	atoi
	str	w0, [sp, 40]
	add	x0, sp, 64
	bl	atoi
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L11
	ldr	w0, [sp, 36]
	cmp	w0, 12
	ble	.L12
.L11:
	mov	w0, 0
	b	.L18
.L12:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	ble	.L13
	ldr	w0, [sp, 40]
	cmp	w0, 31
	ble	.L14
.L13:
	mov	w0, 0
	b	.L18
.L14:
	ldr	w0, [sp, 36]
	cmp	w0, 4
	beq	.L15
	ldr	w0, [sp, 36]
	cmp	w0, 6
	beq	.L15
	ldr	w0, [sp, 36]
	cmp	w0, 9
	beq	.L15
	ldr	w0, [sp, 36]
	cmp	w0, 11
	bne	.L16
.L15:
	ldr	w0, [sp, 40]
	cmp	w0, 31
	bne	.L16
	mov	w0, 0
	b	.L18
.L16:
	ldr	w0, [sp, 36]
	cmp	w0, 2
	bne	.L17
	ldr	w0, [sp, 40]
	cmp	w0, 29
	ble	.L17
	mov	w0, 0
	b	.L18
.L17:
	mov	w0, 1
.L18:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
