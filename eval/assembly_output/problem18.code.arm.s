	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"o"
	.align	3
.LC1:
	.string	"o|"
	.align	3
.LC2:
	.string	".|"
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
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	str	xzr, [sp, 40]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	strh	wzr, [sp, 64]
	strb	wzr, [sp, 66]
	ldr	x0, [sp, 8]
	bl	strlen
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 48]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 48]
	bl	strcpy
	ldr	x0, [sp, 48]
	bl	strlen
	mov	x1, x0
	ldr	x0, [sp, 48]
	add	x0, x0, x1
	mov	w1, 32
	strh	w1, [x0]
	str	wzr, [sp, 32]
	b	.L2
.L17:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	bne	.L3
	add	x2, sp, 64
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L6
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	b	.L7
.L6:
	mov	w0, 4
.L7:
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	realloc
	str	x0, [sp, 40]
.L5:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	mov	w1, 4
	str	w1, [x0]
.L4:
	add	x2, sp, 64
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L10
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	b	.L11
.L10:
	mov	w0, 4
.L11:
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	realloc
	str	x0, [sp, 40]
.L9:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	mov	w1, 2
	str	w1, [x0]
.L8:
	add	x2, sp, 64
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L12
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L13
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L14
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	b	.L15
.L14:
	mov	w0, 4
.L15:
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	realloc
	str	x0, [sp, 40]
.L13:
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
.L12:
	strb	wzr, [sp, 64]
	b	.L16
.L3:
	add	x0, sp, 64
	bl	strlen
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 1
	bhi	.L16
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x0, [sp, 56]
	add	x1, sp, 64
	strb	w2, [x1, x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	add	x1, sp, 64
	strb	wzr, [x1, x0]
.L16:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L17
	ldr	x0, [sp, 48]
	bl	free
	ldr	x0, [sp]
	ldr	w1, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 40]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
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
