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
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 64]
	str	wzr, [sp, 36]
	b	.L2
.L7:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	add	x3, sp, 72
	mov	w2, w0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	sprintf
	str	wzr, [sp, 40]
	add	x0, sp, 72
	bl	strlen
	str	w0, [sp, 60]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L3
.L4:
	ldrsw	x0, [sp, 44]
	add	x1, sp, 72
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L4
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L5
	ldrb	w0, [sp, 72]
	sub	w0, w0, #48
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	b	.L6
.L5:
	ldrb	w0, [sp, 72]
	sub	w0, w0, #48
	ldr	w1, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 40]
.L6:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L7
	str	wzr, [sp, 48]
	b	.L8
.L12:
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L9
.L11:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L10
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 64]
	add	x1, x1, x0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [sp, 56]
	str	w1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 56]
	str	w1, [x0]
.L10:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L9:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L8:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L12
	ldr	x0, [sp, 64]
	bl	free
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	mov	x0, x1
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
