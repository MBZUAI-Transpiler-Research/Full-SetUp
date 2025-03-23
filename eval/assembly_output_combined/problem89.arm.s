	.arch armv8-a
	.file	"problem89.c"
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
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L2
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	b	.L1
.L2:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L4
	mov	w0, 1
	bl	exit
.L4:
	str	wzr, [sp, 56]
	b	.L5
.L6:
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L5:
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 40]
	ldr	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 68]
	str	wzr, [sp, 60]
	b	.L7
.L12:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 64]
	b	.L8
.L11:
	ldr	w0, [sp, 68]
	cmp	w0, 0
	beq	.L9
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L10
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 76]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 76]
	str	w1, [x0]
	b	.L10
.L9:
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L10
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 72]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 72]
	str	w1, [x0]
.L10:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L8:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L7:
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L12
.L1:
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
	beq	.L14
	mov	w0, 0
	b	.L15
.L14:
	str	wzr, [sp, 44]
	b	.L16
.L18:
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
	beq	.L17
	mov	w0, 0
	b	.L15
.L17:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L16:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L18
	mov	w0, 1
.L15:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC6:
	.string	"problem89.c"
	.align	3
.LC7:
	.string	"issame(result, result_size, (int[]){}, 0)"
	.align	3
.LC8:
	.string	"issame(result, result_size, (int[]){5}, 1)"
	.align	3
.LC9:
	.string	"issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6)"
	.align	3
.LC10:
	.string	"issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7)"
	.align	3
.LC11:
	.string	"issame(result, result_size, (int[]){1, 2}, 2)"
	.align	3
.LC12:
	.string	"issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6)"
	.align	3
.LC13:
	.string	"issame(result, result_size, (int[]){23, 21, 14, 11}, 4)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 184]
	mov	x1, 0
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	w1, 0
	bl	func0
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 20]
	add	x2, sp, 152
	mov	w3, 0
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 5
	str	w0, [sp, 40]
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 40
	mov	x3, x2
	mov	x2, x1
	mov	w1, 1
	bl	func0
	ldr	x4, [sp, 24]
	ldr	w1, [sp, 20]
	mov	w0, 5
	str	w0, [sp, 152]
	add	x0, sp, 152
	mov	w3, 1
	mov	x2, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 63
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 72
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 72
	mov	x3, x2
	mov	x2, x1
	mov	w1, 6
	bl	func0
	ldr	x4, [sp, 24]
	ldr	w5, [sp, 20]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 152
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 152
	mov	w3, 6
	mov	x2, x0
	mov	w1, w5
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 67
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 120
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 120
	mov	x3, x2
	mov	x2, x1
	mov	w1, 7
	bl	func0
	ldr	x4, [sp, 24]
	ldr	w5, [sp, 20]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 152
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x0, sp, 152
	mov	w3, 7
	mov	x2, x0
	mov	w1, w5
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 71
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 2
	str	w0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 52]
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 48
	mov	x3, x2
	mov	x2, x1
	mov	w1, 2
	bl	func0
	ldr	x4, [sp, 24]
	ldr	w1, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 152]
	mov	w0, 2
	str	w0, [sp, 156]
	add	x0, sp, 152
	mov	w3, 2
	mov	x2, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L24:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 96
	mov	x3, x2
	mov	x2, x1
	mov	w1, 6
	bl	func0
	ldr	x4, [sp, 24]
	ldr	w5, [sp, 20]
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	add	x2, sp, 152
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 152
	mov	w3, 6
	mov	x2, x0
	mov	w1, w5
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 79
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L25:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 21
	str	w0, [sp, 56]
	mov	w0, 14
	str	w0, [sp, 60]
	mov	w0, 23
	str	w0, [sp, 64]
	mov	w0, 11
	str	w0, [sp, 68]
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 56
	mov	x3, x2
	mov	x2, x1
	mov	w1, 4
	bl	func0
	ldr	x4, [sp, 24]
	ldr	w1, [sp, 20]
	mov	w0, 23
	str	w0, [sp, 152]
	mov	w0, 21
	str	w0, [sp, 156]
	mov	w0, 14
	str	w0, [sp, 160]
	mov	w0, 11
	str	w0, [sp, 164]
	add	x0, sp, 152
	mov	w3, 4
	mov	x2, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 83
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L26:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 184]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L28
	bl	__stack_chk_fail
.L28:
	mov	w0, w1
	ldp	x29, x30, [sp], 192
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
	.word	2
	.word	4
	.word	3
	.word	0
	.word	1
	.word	5
	.align	3
.LC1:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC2:
	.word	2
	.word	4
	.word	3
	.word	0
	.word	1
	.word	5
	.word	6
	.align	3
.LC3:
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.word	0
	.align	3
.LC4:
	.word	15
	.word	42
	.word	87
	.word	32
	.word	11
	.word	0
	.align	3
.LC5:
	.word	0
	.word	11
	.word	15
	.word	32
	.word	42
	.word	87
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
