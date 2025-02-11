	.arch armv8-a
	.file	"problem40.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	d8, [sp, 80]
	.cfi_offset 72, -16
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp]
	mov	w0, 1
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 4]
	str	wzr, [sp, 8]
	b	.L2
.L6:
	ldr	w0, [sp, 4]
	scvtf	d0, w0
	bl	log10
	fmov	d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	fcvtzs	w0, d0
	str	w0, [sp, 20]
	str	wzr, [sp, 16]
	b	.L3
.L5:
	ldr	w0, [sp]
	scvtf	d8, w0
	ldr	w0, [sp, 8]
	scvtf	d0, w0
	fmov	d1, d0
	fmov	d0, 1.0e+1
	bl	pow
	fcmp	d8, d0
	bne	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	sub	w0, w0, #1
	scvtf	d0, w0
	fmov	d1, d0
	fmov	d0, 1.0e+1
	bl	pow
	fcvtzs	w0, d0
	ldr	w1, [sp, 4]
	sdiv	w2, w1, w0
	ldr	w3, [sp, 8]
	add	w0, w3, 1
	str	w0, [sp, 8]
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
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x2, sp, 24
	str	w1, [x2, x0]
.L4:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	ldr	w0, [sp]
	add	w0, w0, 1
	str	w0, [sp]
.L3:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
.L2:
	ldr	w0, [sp, 8]
	cmp	w0, 6
	ble	.L6
	str	wzr, [sp, 4]
	b	.L7
.L8:
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 12]
	mul	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 4]
	add	w0, w0, 1
	str	w0, [sp, 4]
.L7:
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	blt	.L8
	ldr	w1, [sp, 12]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	mov	w0, w1
	ldr	d8, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
