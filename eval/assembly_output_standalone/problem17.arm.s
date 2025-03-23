	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1088
	stp	x29, x30, [sp]
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1080]
	mov	x1, 0
	str	wzr, [sp, 48]
	add	x0, sp, 56
	mov	x1, 1024
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 52]
	b	.L2
.L4:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	tolower
	strb	w0, [sp, 47]
	ldrb	w0, [sp, 47]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrb	w0, [sp, 47]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	beq	.L3
	ldrb	w0, [sp, 47]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 56
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L3:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 48]
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1080]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	mov	w0, w1
	ldp	x29, x30, [sp]
	add	sp, sp, 1088
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
