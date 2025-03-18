	.arch armv8-a
	.file	"problem133.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48
	str	x0, [sp, 40]
	str	wzr, [sp, 52]
	str	wzr, [sp, 56]
	str	wzr, [sp, 60]
	b	.L2
.L9:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 91
	bne	.L3
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L3:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 93
	bne	.L4
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
.L4:
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L5
	str	wzr, [sp, 52]
.L5:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 52]
	str	w0, [sp, 56]
.L6:
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bge	.L7
	mov	w0, 1
	b	.L8
.L7:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldrsw	x19, [sp, 60]
	ldr	x0, [sp, 40]
	bl	strlen
	cmp	x19, x0
	bcc	.L9
	mov	w0, 0
.L8:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"[[]]"
	.align	3
.LC1:
	.string	"problem133.c"
	.align	3
.LC2:
	.string	"func0(\"[[]]\") == 1"
	.align	3
.LC3:
	.string	"[]]]]]]][[[[[]"
	.align	3
.LC4:
	.string	"func0(\"[]]]]]]][[[[[]\") == 0"
	.align	3
.LC5:
	.string	"[][]"
	.align	3
.LC6:
	.string	"func0(\"[][]\") == 0"
	.align	3
.LC7:
	.string	"[]"
	.align	3
.LC8:
	.string	"func0(\"[]\") == 0"
	.align	3
.LC9:
	.string	"[[[[]]]]"
	.align	3
.LC10:
	.string	"func0(\"[[[[]]]]\") == 1"
	.align	3
.LC11:
	.string	"[]]]]]]]]]]"
	.align	3
.LC12:
	.string	"func0(\"[]]]]]]]]]]\") == 0"
	.align	3
.LC13:
	.string	"[][][[]]"
	.align	3
.LC14:
	.string	"func0(\"[][][[]]\") == 1"
	.align	3
.LC15:
	.string	"[[]"
	.align	3
.LC16:
	.string	"func0(\"[[]\") == 0"
	.align	3
.LC17:
	.string	"[]]"
	.align	3
.LC18:
	.string	"func0(\"[]]\") == 0"
	.align	3
.LC19:
	.string	"[[]][["
	.align	3
.LC20:
	.string	"func0(\"[[]][[\") == 1"
	.align	3
.LC21:
	.string	"[[][]]"
	.align	3
.LC22:
	.string	"func0(\"[[][]]\") == 1"
	.align	3
.LC23:
	.string	""
	.align	3
.LC24:
	.string	"func0(\"\") == 0"
	.align	3
.LC25:
	.string	"[[[[[[[["
	.align	3
.LC26:
	.string	"func0(\"[[[[[[[[\") == 0"
	.align	3
.LC27:
	.string	"]]]]]]]]"
	.align	3
.LC28:
	.string	"func0(\"]]]]]]]]\") == 0"
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
	cmp	w0, 1
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L11:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L12:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L13:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L14:
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	cmp	w0, 1
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L15:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L16:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	cmp	w0, 1
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L17:
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	func0
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L18:
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	func0
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L19:
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	func0
	cmp	w0, 1
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L20:
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	func0
	cmp	w0, 1
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	__assert_fail
.L21:
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	func0
	cmp	w0, 0
	beq	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L22:
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	func0
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	__assert_fail
.L23:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	func0
	cmp	w0, 0
	beq	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	__assert_fail
.L24:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
