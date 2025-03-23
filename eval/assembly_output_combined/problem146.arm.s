	.arch armv8-a
	.file	"problem146.c"
	.text
	.section	.rodata
	.align	3
.LC10:
	.string	"%d"
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
	str	w1, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 48]
	str	wzr, [sp, 20]
	b	.L2
.L7:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	csneg	w0, w0, w0, ge
	add	x3, sp, 56
	mov	w2, w0
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	mov	x0, x3
	bl	sprintf
	str	wzr, [sp, 24]
	add	x0, sp, 56
	bl	strlen
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L3
.L4:
	ldrsw	x0, [sp, 28]
	add	x1, sp, 56
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L4
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L5
	ldrb	w0, [sp, 56]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	b	.L6
.L5:
	ldrb	w0, [sp, 56]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 24]
.L6:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [sp, 24]
	str	w1, [x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L2:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	str	wzr, [sp, 32]
	b	.L8
.L12:
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L9
.L11:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L10
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 48]
	add	x1, x1, x0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
.L10:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L9:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L8:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L12
	ldr	x0, [sp, 48]
	bl	free
	ldr	x0, [sp, 8]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
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
	str	w3, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
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
	ldr	x2, [sp, 16]
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
	ldr	w0, [sp, 12]
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
.LC11:
	.string	"problem146.c"
	.align	3
.LC12:
	.string	"issame(func0(test1, 5), expected1, 5, 5)"
	.align	3
.LC13:
	.string	"issame(func0(test2, 15), expected2, 15, 15)"
	.align	3
.LC14:
	.string	"issame(func0(test3, 0), expected3, 0, 0)"
	.align	3
.LC15:
	.string	"issame(func0(test4, 8), expected4, 8, 8)"
	.align	3
.LC16:
	.string	"issame(func0(test5, 11), expected5, 11, 11)"
	.align	3
.LC17:
	.string	"issame(func0(test6, 7), expected6, 7, 7)"
	.align	3
.LC18:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #448
	.cfi_def_cfa_offset 448
	stp	x29, x30, [sp, 432]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 432
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 424]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 24
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x0, sp, 24
	mov	w1, 5
	bl	func0
	mov	x4, x0
	add	x0, sp, 48
	mov	w3, 5
	mov	w2, 5
	mov	x1, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L22:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 296
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	q0, [x1, 44]
	str	q0, [x0, 44]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 360
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	q0, [x1, 44]
	str	q0, [x0, 44]
	add	x0, sp, 296
	mov	w1, 15
	bl	func0
	mov	x4, x0
	add	x0, sp, 360
	mov	w3, 15
	mov	w2, 15
	mov	x1, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L23:
	add	x0, sp, 8
	mov	w1, 0
	bl	func0
	mov	x4, x0
	add	x0, sp, 16
	mov	w3, 0
	mov	w2, 0
	mov	x1, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L24:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 136
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	add	x0, sp, 168
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 136
	mov	w1, 8
	bl	func0
	mov	x4, x0
	add	x0, sp, 168
	mov	w3, 8
	mov	w2, 8
	mov	x1, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L25:
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	add	x0, sp, 200
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 248
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	add	x0, sp, 200
	mov	w1, 11
	bl	func0
	mov	x4, x0
	add	x0, sp, 248
	mov	w3, 11
	mov	w2, 11
	mov	x1, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 61
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L26:
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 72
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 104
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x0, sp, 72
	mov	w1, 7
	bl	func0
	mov	x4, x0
	add	x0, sp, 104
	mov	w3, 7
	mov	w2, 7
	mov	x1, x0
	mov	x0, x4
	bl	issame
	cmp	w0, 0
	bne	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 65
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L27:
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	puts
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 424]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L29
	bl	__stack_chk_fail
.L29:
	mov	w0, w1
	ldp	x29, x30, [sp, 432]
	add	sp, sp, 448
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
	.word	11
	.word	-1
	.word	-11
	.word	-12
	.align	3
.LC1:
	.word	-1
	.word	-11
	.word	1
	.word	-12
	.word	11
	.align	3
.LC2:
	.word	1234
	.word	423
	.word	463
	.word	145
	.word	2
	.word	423
	.word	423
	.word	53
	.word	6
	.word	37
	.word	3457
	.word	3
	.word	56
	.word	0
	.word	46
	.align	3
.LC3:
	.word	0
	.word	2
	.word	3
	.word	6
	.word	53
	.word	423
	.word	423
	.word	423
	.word	1234
	.word	145
	.word	37
	.word	46
	.word	56
	.word	463
	.word	3457
	.align	3
.LC4:
	.word	1
	.word	-11
	.word	-32
	.word	43
	.word	54
	.word	-98
	.word	2
	.word	-3
	.align	3
.LC5:
	.word	-3
	.word	-32
	.word	-98
	.word	-11
	.word	1
	.word	2
	.word	43
	.word	54
	.align	3
.LC6:
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
	.align	3
.LC7:
	.word	1
	.word	10
	.word	2
	.word	11
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC8:
	.word	0
	.word	6
	.word	6
	.word	-76
	.word	-21
	.word	23
	.word	4
	.align	3
.LC9:
	.word	-76
	.word	-21
	.word	0
	.word	4
	.word	23
	.word	6
	.word	6
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
