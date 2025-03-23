	.arch armv8-a
	.file	"problem57.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
.L7:
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 60
	bne	.L3
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 62
	bne	.L4
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L4:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bge	.L5
	mov	w0, 0
	b	.L6
.L5:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 24]
	cmp	w0, 0
	beq	.L8
	mov	w0, 0
	b	.L6
.L8:
	mov	w0, 1
.L6:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"<>"
	.align	3
.LC1:
	.string	"problem57.c"
	.align	3
.LC2:
	.string	"func0(\"<>\")"
	.align	3
.LC3:
	.string	"<<><>>"
	.align	3
.LC4:
	.string	"func0(\"<<><>>\")"
	.align	3
.LC5:
	.string	"<><><<><>><>"
	.align	3
.LC6:
	.string	"func0(\"<><><<><>><>\")"
	.align	3
.LC7:
	.string	"<><><<<><><>><>><<><><<>>>"
	.align	3
.LC8:
	.string	"func0(\"<><><<<><><>><>><<><><<>>>\")"
	.align	3
.LC9:
	.string	"<<<><>>>>"
	.align	3
.LC10:
	.string	"!func0(\"<<<><>>>>\")"
	.align	3
.LC11:
	.string	"><<>"
	.align	3
.LC12:
	.string	"!func0(\"><<>\")"
	.align	3
.LC13:
	.string	"<"
	.align	3
.LC14:
	.string	"!func0(\"<\")"
	.align	3
.LC15:
	.string	"<<<<"
	.align	3
.LC16:
	.string	"!func0(\"<<<<\")"
	.align	3
.LC17:
	.string	">"
	.align	3
.LC18:
	.string	"!func0(\">\")"
	.align	3
.LC19:
	.string	"<<>"
	.align	3
.LC20:
	.string	"!func0(\"<<>\")"
	.align	3
.LC21:
	.string	"<><><<><>><>><<>"
	.align	3
.LC22:
	.string	"!func0(\"<><><<><>><>><<>\")"
	.align	3
.LC23:
	.string	"<><><<><>><>>><>"
	.align	3
.LC24:
	.string	"!func0(\"<><><<><>><>>><>\")"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L10:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L11:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L12:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L13:
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L14:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L15:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L16:
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L17:
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L18:
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L19:
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	__assert_fail
.L20:
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L21:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
