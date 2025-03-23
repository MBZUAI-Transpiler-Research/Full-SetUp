	.arch armv8-a
	.file	"code.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"o"
	.align	3
.LC2:
	.string	"o|"
	.align	3
.LC3:
	.string	".|"
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
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	str	xzr, [sp, 56]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldrb	w0, [x0]
	strb	w0, [sp, 80]
	strh	wzr, [sp, 81]
	ldr	x0, [sp, 24]
	bl	strlen
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 64]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 64]
	bl	strcpy
	ldr	x0, [sp, 64]
	bl	strlen
	mov	x1, x0
	ldr	x0, [sp, 64]
	add	x0, x0, x1
	mov	w1, 32
	strh	w1, [x0]
	str	wzr, [sp, 48]
	b	.L2
.L17:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	bne	.L3
	add	x2, sp, 80
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L6
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	b	.L7
.L6:
	mov	w0, 4
.L7:
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
.L5:
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 4
	str	w1, [x0]
.L4:
	add	x2, sp, 80
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L10
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	b	.L11
.L10:
	mov	w0, 4
.L11:
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
.L9:
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 2
	str	w1, [x0]
.L8:
	add	x2, sp, 80
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L12
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L13
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L14
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	b	.L15
.L14:
	mov	w0, 4
.L15:
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
.L13:
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
.L12:
	strb	wzr, [sp, 80]
	b	.L16
.L3:
	add	x0, sp, 80
	bl	strlen
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 1
	bhi	.L16
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x0, [sp, 72]
	add	x1, sp, 80
	strb	w2, [x1, x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	add	x1, sp, 80
	strb	wzr, [x1, x0]
.L16:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L17
	ldr	x0, [sp, 64]
	bl	free
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	x0, x1
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.zero	2
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
