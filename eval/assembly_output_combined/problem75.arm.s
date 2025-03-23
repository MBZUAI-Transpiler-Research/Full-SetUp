	.arch armv8-a
	.file	"problem75.c"
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
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	w3, [sp, 32]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	str	wzr, [sp, 52]
	b	.L2
.L3:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	mov	w1, w0
	ldr	w0, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 52]
	b	.L4
.L5:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L4:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L5
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	bge	.L6
	ldr	x0, [sp, 40]
	b	.L7
.L6:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	ble	.L8
	ldr	x0, [sp, 24]
	b	.L7
.L8:
	ldr	x0, [sp, 40]
.L7:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	w3, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	beq	.L10
	mov	w0, 0
	b	.L11
.L10:
	str	wzr, [sp, 60]
	b	.L12
.L14:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	mov	w0, 0
	b	.L11
.L13:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L12:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L14
	mov	w0, 1
.L11:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"hi"
	.align	3
.LC1:
	.string	"admin"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	str	wzr, [sp, 16]
	str	wzr, [sp, 20]
	add	x1, sp, 32
	add	x0, sp, 24
	ldr	w3, [sp, 20]
	mov	x2, x1
	ldr	w1, [sp, 16]
	bl	func0
	mov	x4, x0
	add	x0, sp, 32
	ldr	w3, [sp, 20]
	mov	x2, x0
	ldr	w1, [sp, 16]
	mov	x0, x4
	bl	issame
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	str	x0, [sp, 48]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 56]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 64]
	mov	w0, 2
	str	w0, [sp, 16]
	mov	w0, 2
	str	w0, [sp, 20]
	add	x1, sp, 56
	add	x0, sp, 40
	ldr	w3, [sp, 20]
	mov	x2, x1
	ldr	w1, [sp, 16]
	bl	func0
	mov	x4, x0
	add	x0, sp, 56
	ldr	w3, [sp, 20]
	mov	x2, x0
	ldr	w1, [sp, 16]
	mov	x0, x4
	bl	issame
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 72]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	str	x0, [sp, 80]
	add	x0, sp, 136
	sub	x0, x0, #48
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	mov	w0, 2
	str	w0, [sp, 16]
	mov	w0, 4
	str	w0, [sp, 20]
	add	x1, sp, 88
	add	x0, sp, 72
	ldr	w3, [sp, 20]
	mov	x2, x1
	ldr	w1, [sp, 16]
	bl	func0
	mov	x4, x0
	add	x0, sp, 72
	ldr	w3, [sp, 16]
	mov	x2, x0
	ldr	w1, [sp, 16]
	mov	x0, x4
	bl	issame
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L17
	bl	__stack_chk_fail
.L17:
	mov	w0, w1
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	"project"
	.data
	.align	3
.LC4:
	.xword	.LC0
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
