	.arch armv8-a
	.file	"problem105.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	str	wzr, [sp, 60]
	b	.L2
.L9:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 64]
	strb	wzr, [sp, 59]
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bne	.L4
	mov	w0, 1
	strb	w0, [sp, 59]
	b	.L4
.L7:
	ldr	w0, [sp, 64]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L5
	mov	w0, 1
	strb	w0, [sp, 59]
.L5:
	ldr	w0, [sp, 64]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 64]
.L4:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L6
	ldrb	w0, [sp, 59]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
.L6:
	ldrb	w0, [sp, 59]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 16]
	str	w1, [x0]
.L8:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L9
	str	wzr, [sp, 68]
	b	.L10
.L14:
	str	wzr, [sp, 72]
	b	.L11
.L13:
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L12
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 76]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 76]
	str	w1, [x0]
.L12:
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L11:
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	w0, [sp, 68]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 72]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L10:
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 68]
	cmp	w1, w0
	blt	.L14
	nop
	nop
	ldp	x29, x30, [sp], 80
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L16
	mov	w0, 0
	b	.L17
.L16:
	str	wzr, [sp, 44]
	b	.L18
.L20:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L19
	mov	w0, 0
	b	.L17
.L19:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L18:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L20
	mov	w0, 1
.L17:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem105.c"
	.align	3
.LC3:
	.string	"issame(out1, out1_size, expected1, 3)"
	.align	3
.LC4:
	.string	"issame(out2, out2_size, NULL, 0)"
	.align	3
.LC5:
	.string	"issame(out3, out3_size, expected3, 2)"
	.align	3
.LC6:
	.string	"issame(out4, out4_size, expected4, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	mov	w0, 15
	str	w0, [sp, 120]
	mov	w0, 33
	str	w0, [sp, 124]
	mov	w0, 1422
	str	w0, [sp, 128]
	mov	w0, 1
	str	w0, [sp, 132]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 88
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x2, sp, 24
	add	x1, sp, 40
	add	x0, sp, 120
	mov	x3, x2
	mov	x2, x1
	mov	w1, 4
	bl	func0
	ldr	x0, [sp, 40]
	ldr	w1, [sp, 24]
	add	x2, sp, 88
	mov	w3, 3
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 40]
	bl	free
	mov	w0, 152
	str	w0, [sp, 136]
	mov	w0, 323
	str	w0, [sp, 140]
	mov	w0, 1422
	str	w0, [sp, 144]
	mov	w0, 10
	str	w0, [sp, 148]
	add	x2, sp, 28
	add	x1, sp, 48
	add	x0, sp, 136
	mov	x3, x2
	mov	x2, x1
	mov	w1, 4
	bl	func0
	ldr	x0, [sp, 48]
	ldr	w1, [sp, 28]
	mov	w3, 0
	mov	x2, 0
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 65
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 48]
	bl	free
	mov	w0, 12345
	str	w0, [sp, 152]
	mov	w0, 2033
	str	w0, [sp, 156]
	mov	w0, 111
	str	w0, [sp, 160]
	mov	w0, 151
	str	w0, [sp, 164]
	mov	w0, 111
	str	w0, [sp, 72]
	mov	w0, 151
	str	w0, [sp, 76]
	add	x2, sp, 32
	add	x1, sp, 56
	add	x0, sp, 152
	mov	x3, x2
	mov	x2, x1
	mov	w1, 4
	bl	func0
	ldr	x0, [sp, 56]
	ldr	w1, [sp, 32]
	add	x2, sp, 72
	mov	w3, 2
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 73
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L24:
	ldr	x0, [sp, 56]
	bl	free
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 104
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	mov	w0, 31
	str	w0, [sp, 80]
	mov	w0, 135
	str	w0, [sp, 84]
	add	x2, sp, 36
	add	x1, sp, 64
	add	x0, sp, 104
	mov	x3, x2
	mov	x2, x1
	mov	w1, 3
	bl	func0
	ldr	x0, [sp, 64]
	ldr	w1, [sp, 36]
	add	x2, sp, 80
	mov	w3, 2
	bl	issame
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 81
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L25:
	ldr	x0, [sp, 64]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L27
	bl	__stack_chk_fail
.L27:
	mov	w0, w1
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	15
	.word	33
	.align	3
.LC1:
	.word	135
	.word	103
	.word	31
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
