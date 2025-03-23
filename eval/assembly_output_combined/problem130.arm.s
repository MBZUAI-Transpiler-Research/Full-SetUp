	.arch armv8-a
	.file	"problem130.c"
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
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	str	wzr, [sp, 52]
	b	.L2
.L6:
	str	wzr, [sp, 56]
	b	.L3
.L5:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L4
	ldr	w0, [sp, 52]
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	str	w0, [sp, 64]
.L4:
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L3:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 36]
	mul	w0, w0, w0
	str	w0, [sp, 68]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	ble	.L7
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L7
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
.L7:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	.L8
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L8
	ldrsw	x0, [sp, 60]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
.L8:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L9
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L9
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
.L9:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	ldr	w1, [sp, 64]
	cmp	w1, w0
	bge	.L10
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 68]
	cmp	w1, w0
	ble	.L10
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 68]
.L10:
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 32]
	str	w1, [x0]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 52]
	b	.L11
.L14:
	ldr	w0, [sp, 52]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L12
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	b	.L13
.L12:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	w1, [sp, 68]
	str	w1, [x0]
.L13:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L11:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L14
	ldr	x0, [sp, 72]
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
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	wzr, [sp, 44]
	b	.L17
.L20:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L18
	mov	w0, 0
	b	.L19
.L18:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L17:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L20
	mov	w0, 1
.L19:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"problem130.c"
	.align	3
.LC9:
	.string	"issame(out1, result1, size)"
	.align	3
.LC10:
	.string	"issame(out2, result2, size)"
	.align	3
.LC11:
	.string	"issame(out3, result3, size)"
	.align	3
.LC12:
	.string	"issame(out4, result4, size)"
	.align	3
.LC13:
	.string	"issame(out5, result5, size)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #576
	.cfi_def_cfa_offset 592
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 568]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 296
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	add	x0, sp, 296
	str	x0, [sp, 120]
	add	x0, sp, 296
	add	x0, x0, 12
	str	x0, [sp, 128]
	add	x0, sp, 296
	add	x0, x0, 24
	str	x0, [sp, 136]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 64
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x1, sp, 12
	add	x0, sp, 120
	mov	x3, x1
	mov	w2, 3
	mov	w1, 3
	bl	func0
	str	x0, [sp, 16]
	ldr	w1, [sp, 12]
	add	x0, sp, 64
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 16]
	bl	free
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 336
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	add	x0, sp, 336
	str	x0, [sp, 144]
	add	x0, sp, 336
	add	x0, x0, 12
	str	x0, [sp, 152]
	add	x0, sp, 336
	add	x0, x0, 24
	str	x0, [sp, 160]
	mov	w0, 1
	str	w0, [sp, 56]
	add	x1, sp, 12
	add	x0, sp, 144
	mov	x3, x1
	mov	w2, 1
	mov	w1, 3
	bl	func0
	str	x0, [sp, 24]
	ldr	w1, [sp, 12]
	add	x0, sp, 56
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 55
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 376
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	add	x0, sp, 584
	sub	x0, x0, #384
	add	x1, sp, 376
	str	x1, [x0]
	add	x0, sp, 584
	sub	x0, x0, #384
	add	x1, sp, 376
	add	x1, x1, 16
	str	x1, [x0, 8]
	add	x0, sp, 584
	sub	x0, x0, #384
	add	x1, sp, 376
	add	x1, x1, 32
	str	x1, [x0, 16]
	add	x0, sp, 584
	sub	x0, x0, #384
	add	x1, sp, 376
	add	x1, x1, 48
	str	x1, [x0, 24]
	mov	w0, 1
	str	w0, [sp, 80]
	mov	w0, 2
	str	w0, [sp, 84]
	mov	w0, 1
	str	w0, [sp, 88]
	mov	w0, 2
	str	w0, [sp, 92]
	add	x1, sp, 12
	add	x0, sp, 200
	mov	x3, x1
	mov	w2, 4
	mov	w1, 4
	bl	func0
	str	x0, [sp, 32]
	ldr	w1, [sp, 12]
	add	x0, sp, 80
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 63
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L24:
	ldr	x0, [sp, 32]
	bl	free
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 440
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	add	x0, sp, 584
	sub	x0, x0, #352
	add	x1, sp, 440
	str	x1, [x0]
	add	x0, sp, 584
	sub	x0, x0, #352
	add	x1, sp, 440
	add	x1, x1, 16
	str	x1, [x0, 8]
	add	x0, sp, 584
	sub	x0, x0, #352
	add	x1, sp, 440
	add	x1, x1, 32
	str	x1, [x0, 16]
	add	x0, sp, 584
	sub	x0, x0, #352
	add	x1, sp, 440
	add	x1, x1, 48
	str	x1, [x0, 24]
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 168
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 12
	add	x0, sp, 232
	mov	x3, x1
	mov	w2, 7
	mov	w1, 4
	bl	func0
	str	x0, [sp, 40]
	ldr	w1, [sp, 12]
	add	x0, sp, 168
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 71
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L25:
	ldr	x0, [sp, 40]
	bl	free
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 504
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	add	x0, sp, 584
	sub	x0, x0, #320
	add	x1, sp, 504
	str	x1, [x0]
	add	x0, sp, 584
	sub	x0, x0, #320
	add	x1, sp, 504
	add	x1, x1, 16
	str	x1, [x0, 8]
	add	x0, sp, 584
	sub	x0, x0, #320
	add	x1, sp, 504
	add	x1, x1, 32
	str	x1, [x0, 16]
	add	x0, sp, 584
	sub	x0, x0, #320
	add	x1, sp, 504
	add	x1, x1, 48
	str	x1, [x0, 24]
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x1, sp, 12
	add	x0, sp, 264
	mov	x3, x1
	mov	w2, 5
	mov	w1, 4
	bl	func0
	str	x0, [sp, 48]
	ldr	w1, [sp, 12]
	add	x0, sp, 96
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 79
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L26:
	ldr	x0, [sp, 48]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 568]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L28
	bl	__stack_chk_fail
.L28:
	mov	w0, w1
	add	sp, sp, 576
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
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
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC1:
	.word	1
	.word	2
	.word	1
	.align	3
.LC2:
	.word	5
	.word	9
	.word	3
	.word	4
	.word	1
	.word	6
	.word	7
	.word	8
	.word	2
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.align	3
.LC4:
	.word	6
	.word	4
	.word	13
	.word	10
	.word	5
	.word	7
	.word	12
	.word	1
	.word	3
	.word	16
	.word	11
	.word	15
	.word	8
	.word	14
	.word	9
	.word	2
	.align	3
.LC5:
	.word	1
	.word	10
	.word	1
	.word	10
	.word	1
	.word	10
	.word	1
	.align	3
.LC6:
	.word	8
	.word	14
	.word	9
	.word	2
	.word	6
	.word	4
	.word	13
	.word	15
	.word	5
	.word	7
	.word	1
	.word	12
	.word	3
	.word	10
	.word	11
	.word	16
	.align	3
.LC7:
	.word	1
	.word	7
	.word	1
	.word	7
	.word	1
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
