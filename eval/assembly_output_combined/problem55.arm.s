	.arch armv8-a
	.file	"problem55.c"
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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 56]
	ldr	x0, [sp, 16]
	bl	strlen
	str	w0, [sp, 60]
	str	wzr, [sp, 40]
	b	.L2
.L9:
	strb	wzr, [sp, 38]
	str	wzr, [sp, 44]
	b	.L3
.L6:
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 44]
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	strb	w0, [sp, 38]
	b	.L5
.L4:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L6
.L5:
	ldrb	w0, [sp, 38]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	mov	w0, 0
	b	.L8
.L7:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L9
	str	wzr, [sp, 48]
	b	.L10
.L16:
	strb	wzr, [sp, 39]
	str	wzr, [sp, 52]
	b	.L11
.L14:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 52]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L12
	mov	w0, 1
	strb	w0, [sp, 39]
	b	.L13
.L12:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L11:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L14
.L13:
	ldrb	w0, [sp, 39]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	mov	w0, 0
	b	.L8
.L15:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L10:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L16
	mov	w0, 1
.L8:
	ldp	x29, x30, [sp], 64
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
	.string	"dddzzzzzzzddeddabc"
	.align	3
.LC1:
	.string	"eabcdzzzz"
	.align	3
.LC2:
	.string	"problem55.c"
	.align	3
.LC3:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddeddabc\") == true"
	.align	3
.LC4:
	.string	"dddddddabc"
	.align	3
.LC5:
	.string	"abcd"
	.align	3
.LC6:
	.string	"func0(\"abcd\", \"dddddddabc\") == true"
	.align	3
.LC7:
	.string	"func0(\"dddddddabc\", \"abcd\") == true"
	.align	3
.LC8:
	.string	"eabcd"
	.align	3
.LC9:
	.string	"func0(\"eabcd\", \"dddddddabc\") == false"
	.align	3
.LC10:
	.string	"dddddddabce"
	.align	3
.LC11:
	.string	"func0(\"abcd\", \"dddddddabce\") == false"
	.align	3
.LC12:
	.string	"dddzzzzzzzddddabc"
	.align	3
.LC13:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddddabc\") == false"
	.align	3
.LC14:
	.string	"aaccc"
	.align	3
.LC15:
	.string	"aabb"
	.align	3
.LC16:
	.string	"func0(\"aabb\", \"aaccc\") == false"
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
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L18:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L19:
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L20:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L21:
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L22:
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L23:
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	func0
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
