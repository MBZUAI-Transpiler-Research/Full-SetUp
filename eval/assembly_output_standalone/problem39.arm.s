	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	add	w0, w0, 2
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 56]
	str	wzr, [sp, 48]
	b	.L2
.L7:
	ldr	w0, [sp, 48]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 48]
	mov	w1, w0
	lsl	w0, w0, 2
	sub	w1, w1, w0
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	b	.L4
.L3:
	mov	w0, 3
.L4:
	str	w0, [sp, 60]
	ldr	w1, [sp, 48]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x2, [sp, 60]
	add	x0, sp, 64
	bl	strncpy
	ldrsw	x0, [sp, 60]
	add	x1, sp, 64
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 60]
	cmp	w0, 3
	bne	.L5
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L6
	ldrb	w0, [sp, 66]
	strb	w0, [sp, 47]
	ldrb	w0, [sp, 65]
	strb	w0, [sp, 66]
	ldrb	w0, [sp, 64]
	strb	w0, [sp, 65]
	ldrb	w0, [sp, 47]
	strb	w0, [sp, 64]
	b	.L5
.L6:
	ldrb	w0, [sp, 64]
	strb	w0, [sp, 46]
	ldrb	w0, [sp, 65]
	strb	w0, [sp, 64]
	ldrb	w0, [sp, 66]
	strb	w0, [sp, 65]
	ldrb	w0, [sp, 46]
	strb	w0, [sp, 66]
.L5:
	ldr	w1, [sp, 48]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrsw	x2, [sp, 60]
	add	x1, sp, 64
	bl	strncpy
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L7
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
