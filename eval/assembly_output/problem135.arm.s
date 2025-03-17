	.arch armv8-a
	.file	"problem135.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L2
	mov	w0, 0
	b	.L3
.L2:
	ldrsw	x0, [sp, 44]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 42]
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrb	w0, [sp, 42]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	bne	.L4
	mov	w0, 0
	b	.L3
.L4:
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L5
	mov	w0, 1
	b	.L3
.L5:
	ldrsw	x0, [sp, 44]
	sub	x0, x0, #2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 43]
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrb	w0, [sp, 43]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	beq	.L6
	mov	w0, 0
	b	.L3
.L6:
	mov	w0, 1
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"apple"
	.align	3
.LC1:
	.string	"problem135.c"
	.align	3
.LC2:
	.string	"func0(\"apple\") == 0"
	.align	3
.LC3:
	.string	"apple pi e"
	.align	3
.LC4:
	.string	"func0(\"apple pi e\") == 1"
	.align	3
.LC5:
	.string	"eeeee"
	.align	3
.LC6:
	.string	"func0(\"eeeee\") == 0"
	.align	3
.LC7:
	.string	"A"
	.align	3
.LC8:
	.string	"func0(\"A\") == 1"
	.align	3
.LC9:
	.string	"Pumpkin pie "
	.align	3
.LC10:
	.string	"func0(\"Pumpkin pie \") == 0"
	.align	3
.LC11:
	.string	"Pumpkin pie 1"
	.align	3
.LC12:
	.string	"func0(\"Pumpkin pie 1\") == 0"
	.align	3
.LC13:
	.string	""
	.align	3
.LC14:
	.string	"func0(\"\") == 0"
	.align	3
.LC15:
	.string	"eeeee e "
	.align	3
.LC16:
	.string	"func0(\"eeeee e \") == 0"
	.align	3
.LC17:
	.string	"apple pie"
	.align	3
.LC18:
	.string	"func0(\"apple pie\") == 0"
	.align	3
.LC19:
	.string	"apple pi e "
	.align	3
.LC20:
	.string	"func0(\"apple pi e \") == 0"
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
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 21
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L8:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	cmp	w0, 1
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 22
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L9:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L10:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	cmp	w0, 1
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L11:
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 25
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L12:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L13:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L14:
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	func0
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L15:
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	func0
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L16:
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	func0
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L17:
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
