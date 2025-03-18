	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	strlen
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	add	w0, w0, 2
	mov	w1, 21846
	movk	w1, 0x5555, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 40]
	str	wzr, [sp, 32]
	b	.L2
.L7:
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 32]
	mov	w1, w0
	lsl	w0, w0, 2
	sub	w1, w1, w0
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	b	.L4
.L3:
	mov	w0, 3
.L4:
	str	w0, [sp, 44]
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x2, [sp, 44]
	add	x0, sp, 48
	bl	strncpy
	ldrsw	x0, [sp, 44]
	add	x1, sp, 48
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 44]
	cmp	w0, 3
	bne	.L5
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L6
	ldrb	w0, [sp, 50]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 49]
	strb	w0, [sp, 50]
	ldrb	w0, [sp, 48]
	strb	w0, [sp, 49]
	ldrb	w0, [sp, 31]
	strb	w0, [sp, 48]
	b	.L5
.L6:
	ldrb	w0, [sp, 48]
	strb	w0, [sp, 30]
	ldrb	w0, [sp, 49]
	strb	w0, [sp, 48]
	ldrb	w0, [sp, 50]
	strb	w0, [sp, 49]
	ldrb	w0, [sp, 30]
	strb	w0, [sp, 50]
.L5:
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrsw	x2, [sp, 44]
	add	x1, sp, 48
	bl	strncpy
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	blt	.L7
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
