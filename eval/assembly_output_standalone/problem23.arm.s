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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	str	wzr, [sp, 32]
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	b	.L2
.L5:
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L3:
	ldr	x0, [sp, 48]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L4
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldr	x0, [sp, 48]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 2048
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 48]
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L5
.L4:
	ldr	x0, [sp, 48]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L16
	add	x0, sp, 40
	mov	w2, 10
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	strtol
	str	w0, [sp, 36]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	beq	.L11
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 44
	beq	.L9
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L11
.L9:
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	str	w1, [sp, 32]
	adrp	x1, out.0
	add	x1, x1, :lo12:out.0
	sxtw	x0, w0
	ldr	w2, [sp, 36]
	str	w2, [x1, x0, lsl 2]
	b	.L10
.L12:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L11:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L10
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 44
	bne	.L12
.L10:
	ldr	x0, [sp, 40]
	str	x0, [sp, 48]
.L2:
	ldr	x0, [sp, 48]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	b	.L7
.L16:
	nop
.L7:
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 32]
	str	w1, [x0]
	adrp	x0, out.0
	add	x0, x0, :lo12:out.0
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L15
	bl	__stack_chk_fail
.L15:
	mov	x0, x1
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1024,8
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
