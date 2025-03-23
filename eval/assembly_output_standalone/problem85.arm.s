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
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	add	x3, sp, 64
	ldr	w2, [sp, 28]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	sprintf
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	b	.L2
.L3:
	ldrsw	x0, [sp, 44]
	add	x1, sp, 64
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldrsw	x0, [sp, 44]
	add	x1, sp, 64
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	mov	x0, 33
	bl	malloc
	str	x0, [sp, 56]
	str	wzr, [sp, 48]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	str	w1, [sp, 48]
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 48
	strb	w1, [x0]
	b	.L5
.L7:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	and	w1, w0, 255
	ldr	w0, [sp, 48]
	add	w2, w0, 1
	str	w2, [sp, 48]
	sxtw	x0, w0
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	add	w1, w1, 48
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 40]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 40]
.L6:
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L7
.L5:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	str	wzr, [sp, 52]
	b	.L8
.L9:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	ldrsw	x0, [sp, 52]
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w1, [sp, 39]
	strb	w1, [x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L8:
	ldr	w0, [sp, 48]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 52]
	cmp	w0, w1
	blt	.L9
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L11
	bl	__stack_chk_fail
.L11:
	mov	x0, x1
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
