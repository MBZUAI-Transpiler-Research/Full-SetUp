	.arch armv8-a
	.file	"problem68.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -96
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldrb	w0, [x0]
	strb	w0, [sp, 72]
	str	xzr, [sp, 73]
	strb	wzr, [sp, 81]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldrb	w0, [x0]
	strb	w0, [sp, 88]
	str	xzr, [sp, 89]
	strb	wzr, [sp, 97]
	str	wzr, [sp, 60]
	str	wzr, [sp, 64]
	str	wzr, [sp, 68]
	b	.L2
.L6:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 2048
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L4
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 64]
	add	w2, w0, 1
	str	w2, [sp, 64]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 72
	strb	w2, [x1, x0]
	b	.L5
.L4:
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 64]
	add	w2, w0, 1
	str	w2, [sp, 64]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 88
	strb	w2, [x1, x0]
	b	.L5
.L3:
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 64]
	cmp	w0, 0
	ble	.L5
	mov	w0, 1
	str	w0, [sp, 60]
	str	wzr, [sp, 64]
.L5:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L2:
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L6
	add	x0, sp, 72
	bl	atoi
	mov	w1, w0
	ldr	w0, [sp, 36]
	sub	w19, w0, w1
	add	x0, sp, 88
	bl	atoi
	sub	w0, w19, w0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	mov	w0, w1
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.zero	9
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"5 apples and 6 oranges"
	.align	3
.LC2:
	.string	"problem68.c"
	.align	3
.LC3:
	.string	"func0(\"5 apples and 6 oranges\", 19) == 8"
	.align	3
.LC4:
	.string	"func0(\"5 apples and 6 oranges\", 21) == 10"
	.align	3
.LC5:
	.string	"0 apples and 1 oranges"
	.align	3
.LC6:
	.string	"func0(\"0 apples and 1 oranges\", 3) == 2"
	.align	3
.LC7:
	.string	"1 apples and 0 oranges"
	.align	3
.LC8:
	.string	"func0(\"1 apples and 0 oranges\", 3) == 2"
	.align	3
.LC9:
	.string	"2 apples and 3 oranges"
	.align	3
.LC10:
	.string	"func0(\"2 apples and 3 oranges\", 100) == 95"
	.align	3
.LC11:
	.string	"func0(\"2 apples and 3 oranges\", 5) == 0"
	.align	3
.LC12:
	.string	"1 apples and 100 oranges"
	.align	3
.LC13:
	.string	"func0(\"1 apples and 100 oranges\", 120) == 19"
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
	mov	w1, 19
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	cmp	w0, 8
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L10:
	mov	w1, 21
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	cmp	w0, 10
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L11:
	mov	w1, 3
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	cmp	w0, 2
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L12:
	mov	w1, 3
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	cmp	w0, 2
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L13:
	mov	w1, 100
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	cmp	w0, 95
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L14:
	mov	w1, 5
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L15:
	mov	w1, 120
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	cmp	w0, 19
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L16:
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
