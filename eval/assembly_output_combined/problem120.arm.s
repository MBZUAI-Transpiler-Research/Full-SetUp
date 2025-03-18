	.arch armv8-a
	.file	"problem120.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
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
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 56]
	ldr	x0, [sp, 16]
	bl	strlen
	str	w0, [sp, 60]
	mov	w0, 1
	str	w0, [sp, 52]
	str	wzr, [sp, 48]
	b	.L2
.L6:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L4
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L4:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L5
	str	wzr, [sp, 52]
.L5:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 48]
	b	.L7
.L11:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L8
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L8:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L9
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L9:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L10
	str	wzr, [sp, 52]
.L10:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L7:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 52]
	cmp	w0, 0
	beq	.L12
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L13
.L12:
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 52]
	str	wzr, [sp, 48]
	b	.L14
.L18:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L15
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L15:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L16
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L16:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L17
	str	wzr, [sp, 52]
.L17:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L14:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L18
	str	wzr, [sp, 48]
	b	.L19
.L23:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 40
	bne	.L20
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L20:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 41
	bne	.L21
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L21:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L22
	str	wzr, [sp, 52]
.L22:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L19:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L24
	ldr	w0, [sp, 52]
	cmp	w0, 0
	beq	.L24
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L13
.L24:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L13:
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
.LC2:
	.string	")"
	.align	3
.LC3:
	.string	"()("
	.align	3
.LC4:
	.string	"problem120.c"
	.align	3
.LC5:
	.string	"strcmp(func0(\"()(\", \")\"), \"Yes\") == 0"
	.align	3
.LC6:
	.string	"strcmp(func0(\")\", \")\"), \"No\") == 0"
	.align	3
.LC7:
	.string	"())())"
	.align	3
.LC8:
	.string	"(()(())"
	.align	3
.LC9:
	.string	"strcmp(func0(\"(()(())\", \"())())\"), \"No\") == 0"
	.align	3
.LC10:
	.string	"(()()("
	.align	3
.LC11:
	.string	")())"
	.align	3
.LC12:
	.string	"strcmp(func0(\")())\", \"(()()(\"), \"Yes\") == 0"
	.align	3
.LC13:
	.string	"(()())(("
	.align	3
.LC14:
	.string	"(())))"
	.align	3
.LC15:
	.string	"strcmp(func0(\"(())))\", \"(()())((\"), \"Yes\") == 0"
	.align	3
.LC16:
	.string	"())"
	.align	3
.LC17:
	.string	"()"
	.align	3
.LC18:
	.string	"strcmp(func0(\"()\", \"())\"), \"No\") == 0"
	.align	3
.LC19:
	.string	"()))()"
	.align	3
.LC20:
	.string	"(()("
	.align	3
.LC21:
	.string	"strcmp(func0(\"(()(\", \"()))()\"), \"Yes\") == 0"
	.align	3
.LC22:
	.string	"((())"
	.align	3
.LC23:
	.string	"(((("
	.align	3
.LC24:
	.string	"strcmp(func0(\"((((\", \"((())\"), \"No\") == 0"
	.align	3
.LC25:
	.string	")(()"
	.align	3
.LC26:
	.string	"strcmp(func0(\")(()\", \"(()(\"), \"No\") == 0"
	.align	3
.LC27:
	.string	")("
	.align	3
.LC28:
	.string	"strcmp(func0(\")(\", \")(\"), \"No\") == 0"
	.align	3
.LC29:
	.string	"("
	.align	3
.LC30:
	.string	"strcmp(func0(\"(\", \")\"), \"Yes\") == 0"
	.align	3
.LC31:
	.string	"strcmp(func0(\")\", \"(\"), \"Yes\") == 0"
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
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L26:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L27:
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L28
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L28:
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L29
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L29:
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L30
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L30:
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L31
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L31:
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L32
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	__assert_fail
.L32:
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L33
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 55
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L33:
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L34
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	__assert_fail
.L34:
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L35
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	__assert_fail
.L35:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L36
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	bl	__assert_fail
.L36:
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L37
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	__assert_fail
.L37:
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
