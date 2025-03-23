	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldrb	w0, [x0]
	strb	w0, [sp, 72]
	str	xzr, [sp, 73]
	strb	wzr, [sp, 81]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldrb	w0, [x0]
	strb	w0, [sp, 88]
	str	xzr, [sp, 89]
	strb	wzr, [sp, 97]
	str	wzr, [sp, 60]
	str	wzr, [sp, 64]
	str	wzr, [sp, 68]
	b	.L2
.L6:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 2048
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L4
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 64]
	add	w2, w0, 1
	str	w2, [sp, 64]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 72
	strb	w2, [x1, x0]
	b	.L5
.L4:
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 64]
	add	w2, w0, 1
	str	w2, [sp, 64]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 88
	strb	w2, [x1, x0]
	b	.L5
.L3:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L5
	mov	w0, 1
	str	w0, [sp, 60]
	str	wzr, [sp, 64]
.L5:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L2:
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L6
	add	x0, sp, 72
	bl	atoi
	mov	w1, w0
	ldr	w0, [sp, 36]
	sub	w19, w0, w1
	add	x0, sp, 88
	bl	atoi
	sub	w0, w19, w0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	mov	w0, w1
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.zero	9
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
