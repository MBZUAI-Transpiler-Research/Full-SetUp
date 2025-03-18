	.arch armv8-a
	.file	"problem131.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L2
	ldr	x0, [sp, 40]
	b	.L3
.L2:
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	mov	w1, 3
	str	w1, [x0]
	mov	w0, 2
	str	w0, [sp, 36]
	b	.L4
.L7:
	ldr	w0, [sp, 36]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 36]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	add	w1, w2, 1
	str	w1, [x0]
	b	.L6
.L5:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #8
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	add	w1, w0, 1
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	lsr	w2, w0, 31
	add	w0, w2, w0
	asr	w0, w0, 1
	mov	w3, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	add	w1, w1, w3
	str	w1, [x0]
.L6:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L7
	ldr	x0, [sp, 40]
.L3:
	ldp	x29, x30, [sp], 48
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
	b	.L9
.L12:
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
	beq	.L10
	mov	w0, 0
	b	.L11
.L10:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L9:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L12
	mov	w0, 1
.L11:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC7:
	.string	"problem131.c"
	.align	3
.LC8:
	.string	"issame(out3, tri_3, size)"
	.align	3
.LC9:
	.string	"issame(out4, tri_4, size)"
	.align	3
.LC10:
	.string	"issame(out5, tri_5, size)"
	.align	3
.LC11:
	.string	"issame(out6, tri_6, size)"
	.align	3
.LC12:
	.string	"issame(out7, tri_7, size)"
	.align	3
.LC13:
	.string	"issame(out8, tri_8, size)"
	.align	3
.LC14:
	.string	"issame(out9, tri_9, size)"
	.align	3
.LC15:
	.string	"issame(out20, tri_20, size)"
	.align	3
.LC16:
	.string	"issame(out0, tri_0, size)"
	.align	3
.LC17:
	.string	"issame(out1, tri_1, size)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #432
	.cfi_def_cfa_offset 432
	stp	x29, x30, [sp, 416]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 416
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 408]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 112]
	mov	w0, 3
	str	w0, [sp, 116]
	mov	w0, 2
	str	w0, [sp, 120]
	mov	w0, 8
	str	w0, [sp, 124]
	mov	w0, 4
	str	w0, [sp, 12]
	mov	w0, 3
	bl	func0
	str	x0, [sp, 16]
	add	x0, sp, 112
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L14:
	ldr	x0, [sp, 16]
	bl	free
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 128
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	mov	w0, 5
	str	w0, [sp, 12]
	mov	w0, 4
	bl	func0
	str	x0, [sp, 24]
	add	x0, sp, 128
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L15:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 152
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	mov	w0, 6
	str	w0, [sp, 12]
	mov	w0, 5
	bl	func0
	str	x0, [sp, 32]
	add	x0, sp, 152
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L16:
	ldr	x0, [sp, 32]
	bl	free
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 176
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	mov	w0, 7
	str	w0, [sp, 12]
	mov	w0, 6
	bl	func0
	str	x0, [sp, 40]
	add	x0, sp, 176
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L17:
	ldr	x0, [sp, 40]
	bl	free
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 208
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	mov	w0, 8
	str	w0, [sp, 12]
	mov	w0, 7
	bl	func0
	str	x0, [sp, 48]
	add	x0, sp, 208
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	issame
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L18:
	ldr	x0, [sp, 48]
	bl	free
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 240
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	mov	w0, 9
	str	w0, [sp, 12]
	mov	w0, 8
	bl	func0
	str	x0, [sp, 56]
	add	x0, sp, 240
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 65
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 56]
	bl	free
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 280
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	mov	w0, 10
	str	w0, [sp, 12]
	mov	w0, 9
	bl	func0
	str	x0, [sp, 64]
	add	x0, sp, 280
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 64]
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 71
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 64]
	bl	free
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 320
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	ldr	w1, [x1, 80]
	str	w1, [x0, 80]
	mov	w0, 21
	str	w0, [sp, 12]
	mov	w0, 20
	bl	func0
	str	x0, [sp, 72]
	add	x0, sp, 320
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 72]
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 77
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 72]
	bl	free
	mov	w0, 1
	str	w0, [sp, 96]
	mov	w0, 1
	str	w0, [sp, 12]
	mov	w0, 0
	bl	func0
	str	x0, [sp, 80]
	add	x0, sp, 96
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 80]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 83
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 80]
	bl	free
	mov	w0, 1
	str	w0, [sp, 104]
	mov	w0, 3
	str	w0, [sp, 108]
	mov	w0, 2
	str	w0, [sp, 12]
	mov	w0, 1
	bl	func0
	str	x0, [sp, 88]
	add	x0, sp, 104
	ldr	w2, [sp, 12]
	mov	x1, x0
	ldr	x0, [sp, 88]
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 89
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 88]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 408]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L25
	bl	__stack_chk_fail
.L25:
	mov	w0, w1
	ldp	x29, x30, [sp, 416]
	add	sp, sp, 432
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.align	3
.LC1:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.align	3
.LC2:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.align	3
.LC3:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.align	3
.LC4:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.align	3
.LC5:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.word	35
	.align	3
.LC6:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.word	35
	.word	6
	.word	48
	.word	7
	.word	63
	.word	8
	.word	80
	.word	9
	.word	99
	.word	10
	.word	120
	.word	11
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
