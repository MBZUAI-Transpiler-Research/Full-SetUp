	.arch armv8-a
	.file	"problem51.c"
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
	str	w1, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L2
	mov	w0, 5
	b	.L3
.L2:
	mov	w0, 21
.L3:
	str	w0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	strlen
	str	x0, [sp, 56]
	str	xzr, [sp, 48]
	b	.L4
.L5:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w1, w0, #97
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	mov	w0, 60495
	movk	w0, 0x4ec4, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 3
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 26
	mul	w0, w0, w2
	sub	w0, w1, w0
	add	w0, w0, 97
	str	w0, [sp, 44]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L4:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bcc	.L5
	nop
	nop
	ldp	x29, x30, [sp], 64
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
	.string	"problem51.c"
	.align	3
.LC1:
	.string	"strcmp(encoded_str, str) == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	mov	x0, 0
	bl	time
	bl	srand
	str	wzr, [sp, 20]
	b	.L7
.L11:
	bl	rand
	mov	w1, w0
	mov	w0, 41705
	movk	w0, 0x2e8b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 1
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 11
	mul	w0, w0, w2
	sub	w0, w1, w0
	add	w0, w0, 10
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 32]
	str	wzr, [sp, 24]
	b	.L8
.L9:
	bl	rand
	mov	w1, 60495
	movk	w1, 0x4ec4, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w2, w1, 3
	asr	w1, w0, 31
	sub	w1, w2, w1
	mov	w2, 26
	mul	w1, w1, w2
	sub	w1, w0, w1
	and	w0, w1, 255
	add	w0, w0, 97
	strb	w0, [sp, 19]
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w1, [sp, 19]
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L8:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L9
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	strcpy
	mov	w1, 1
	ldr	x0, [sp, 40]
	bl	func0
	mov	w1, 0
	ldr	x0, [sp, 40]
	bl	func0
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L10:
	ldr	x0, [sp, 32]
	bl	free
	ldr	x0, [sp, 40]
	bl	free
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L7:
	ldr	w0, [sp, 20]
	cmp	w0, 99
	ble	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
