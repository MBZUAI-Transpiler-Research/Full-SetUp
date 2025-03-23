	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 48]
	str	wzr, [sp, 20]
	b	.L2
.L7:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	add	x3, sp, 56
	mov	w2, w0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	sprintf
	str	wzr, [sp, 24]
	add	x0, sp, 56
	bl	strlen
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L3
.L4:
	ldrsw	x0, [sp, 28]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L4
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L5
	ldrb	w0, [sp, 56]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	b	.L6
.L5:
	ldrb	w0, [sp, 56]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 24]
.L6:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	str	wzr, [sp, 32]
	b	.L8
.L12:
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L9
.L11:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L10
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 48]
	add	x1, x1, x0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
.L10:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L9:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L8:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L12
	ldr	x0, [sp, 48]
	bl	free
	ldr	x0, [sp, 8]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	mov	x0, x1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
