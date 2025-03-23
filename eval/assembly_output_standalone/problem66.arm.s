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
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	ldr	w2, [sp, 12]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, xs.0
	add	x0, x0, :lo12:xs.0
	bl	sprintf
	adrp	x0, xs.0
	add	x0, x0, :lo12:xs.0
	bl	strlen
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bge	.L2
	str	wzr, [sp, 24]
	b	.L3
.L4:
	adrp	x0, xs.0
	add	x1, x0, :lo12:xs.0
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 23]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w1, w0
	adrp	x0, xs.0
	add	x1, x0, :lo12:xs.0
	sxtw	x0, w2
	ldrb	w2, [x1, x0]
	adrp	x0, xs.0
	add	x1, x0, :lo12:xs.0
	ldrsw	x0, [sp, 24]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w1, w0
	adrp	x0, xs.0
	add	x1, x0, :lo12:xs.0
	sxtw	x0, w2
	ldrb	w2, [sp, 23]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	cmp	w0, w1
	blt	.L4
	b	.L5
.L2:
	ldrsw	x1, [sp, 28]
	ldrsw	x0, [sp, 8]
	sub	x1, x1, x0
	adrp	x0, xs.0
	add	x0, x0, :lo12:xs.0
	add	x1, x1, x0
	add	x0, sp, 32
	bl	strcpy
	ldrsw	x0, [sp, 8]
	add	x1, sp, 32
	strb	wzr, [x1, x0]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	sxtw	x0, w0
	add	x3, sp, 32
	mov	x2, x0
	adrp	x0, xs.0
	add	x1, x0, :lo12:xs.0
	mov	x0, x3
	bl	strncat
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, xs.0
	add	x0, x0, :lo12:xs.0
	bl	strcpy
.L5:
	adrp	x0, xs.0
	add	x0, x0, :lo12:xs.0
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	mov	x0, x1
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	xs.0
	.comm	xs.0,50,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
