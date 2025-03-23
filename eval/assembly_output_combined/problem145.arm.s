	.arch armv8-a
	.file	"problem145.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -272]!
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 264]
	mov	x1, 0
	str	wzr, [sp, 32]
	b	.L2
.L3:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 32]
	add	x1, sp, 56
	strb	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bne	.L3
	ldrsw	x0, [sp, 32]
	add	x1, sp, 56
	strb	wzr, [x1, x0]
	add	x0, sp, 56
	bl	atoi
	str	w0, [sp, 40]
	str	wzr, [sp, 36]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	b	.L4
.L5:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 36]
	add	x1, sp, 160
	strb	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldrsw	x0, [sp, 36]
	add	x1, sp, 160
	strb	wzr, [x1, x0]
	add	x0, sp, 160
	bl	atoi
	str	w0, [sp, 44]
	str	wzr, [sp, 32]
	b	.L6
.L7:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 32]
	add	x1, sp, 56
	strb	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L6:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bne	.L7
	ldrsw	x0, [sp, 32]
	add	x1, sp, 56
	strb	wzr, [x1, x0]
	add	x0, sp, 56
	bl	atoi
	str	w0, [sp, 48]
	str	wzr, [sp, 36]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	b	.L8
.L9:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 36]
	add	x1, sp, 160
	strb	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L8:
	ldrsw	x0, [sp, 32]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	ldrsw	x0, [sp, 36]
	add	x1, sp, 160
	strb	wzr, [x1, x0]
	add	x0, sp, 160
	bl	atoi
	str	w0, [sp, 52]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 48]
	mul	w0, w1, w0
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 52]
	mul	w1, w2, w1
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L10
	mov	w0, 1
	b	.L12
.L10:
	mov	w0, 0
.L12:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 264]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L13
	bl	__stack_chk_fail
.L13:
	mov	w0, w1
	ldp	x29, x30, [sp], 272
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
	.string	"5/1"
	.align	3
.LC1:
	.string	"1/5"
	.align	3
.LC2:
	.string	"problem145.c"
	.align	3
.LC3:
	.string	"func0(\"1/5\", \"5/1\") == 1"
	.align	3
.LC4:
	.string	"2/1"
	.align	3
.LC5:
	.string	"1/6"
	.align	3
.LC6:
	.string	"func0(\"1/6\", \"2/1\") == 0"
	.align	3
.LC7:
	.string	"3/1"
	.align	3
.LC8:
	.string	"func0(\"5/1\", \"3/1\") == 1"
	.align	3
.LC9:
	.string	"10/2"
	.align	3
.LC10:
	.string	"7/10"
	.align	3
.LC11:
	.string	"func0(\"7/10\", \"10/2\") == 0"
	.align	3
.LC12:
	.string	"50/10"
	.align	3
.LC13:
	.string	"2/10"
	.align	3
.LC14:
	.string	"func0(\"2/10\", \"50/10\") == 1"
	.align	3
.LC15:
	.string	"4/2"
	.align	3
.LC16:
	.string	"7/2"
	.align	3
.LC17:
	.string	"func0(\"7/2\", \"4/2\") == 1"
	.align	3
.LC18:
	.string	"6/1"
	.align	3
.LC19:
	.string	"11/6"
	.align	3
.LC20:
	.string	"func0(\"11/6\", \"6/1\") == 1"
	.align	3
.LC21:
	.string	"5/2"
	.align	3
.LC22:
	.string	"2/3"
	.align	3
.LC23:
	.string	"func0(\"2/3\", \"5/2\") == 0"
	.align	3
.LC24:
	.string	"3/5"
	.align	3
.LC25:
	.string	"func0(\"5/2\", \"3/5\") == 0"
	.align	3
.LC26:
	.string	"8/4"
	.align	3
.LC27:
	.string	"2/4"
	.align	3
.LC28:
	.string	"func0(\"2/4\", \"8/4\") == 1"
	.align	3
.LC29:
	.string	"func0(\"2/4\", \"4/2\") == 1"
	.align	3
.LC30:
	.string	"func0(\"1/5\", \"1/5\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	cmp	w0, 1
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L15:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L16:
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	cmp	w0, 1
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 43
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L17:
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	func0
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L18:
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	cmp	w0, 1
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L19:
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	func0
	cmp	w0, 1
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L20:
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	func0
	cmp	w0, 1
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L21:
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	func0
	cmp	w0, 0
	beq	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	__assert_fail
.L22:
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	func0
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	__assert_fail
.L23:
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	func0
	cmp	w0, 1
	beq	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	__assert_fail
.L24:
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	func0
	cmp	w0, 1
	beq	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	bl	__assert_fail
.L25:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	cmp	w0, 1
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L26:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	cmp	w0, 0
	beq	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	bl	__assert_fail
.L27:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
