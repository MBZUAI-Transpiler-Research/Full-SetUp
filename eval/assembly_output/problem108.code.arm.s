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
	str	w0, [sp, 28]
	mov	x0, 8
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	str	wzr, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 4
	str	wzr, [x0]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L2
.L7:
	str	wzr, [sp, 44]
	ldr	w0, [sp, 40]
	str	w0, [sp, 52]
	ldr	w0, [sp, 40]
	str	w0, [sp, 48]
	b	.L3
.L4:
	ldr	w1, [sp, 44]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w3, w0
	ldr	w2, [sp, 48]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	add	w0, w3, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 48]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 48]
.L3:
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 52]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L6
	ldr	x0, [sp, 56]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 56]
	str	w1, [x0]
	b	.L5
.L6:
	ldr	x0, [sp, 56]
	add	x0, x0, 4
	ldr	w1, [x0]
	add	w1, w1, 1
	str	w1, [x0]
.L5:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L7
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
