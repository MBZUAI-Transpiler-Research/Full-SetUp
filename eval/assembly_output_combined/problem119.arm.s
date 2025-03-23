	.arch armv8-a
	.file	"problem119.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
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
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	bl	strlen
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	sub	w0, w0, #2
	str	w0, [sp, 44]
	b	.L2
.L5:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 48]
	bl	strchr
	cmp	x0, 0
	beq	.L3
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 48]
	bl	strchr
	cmp	x0, 0
	bne	.L3
	ldrsw	x0, [sp, 44]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp, 48]
	bl	strchr
	cmp	x0, 0
	bne	.L3
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	adrp	x0, out.1
	add	x0, x0, :lo12:out.1
	strb	w1, [x0]
	adrp	x0, out.1
	add	x0, x0, :lo12:out.1
	b	.L4
.L3:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L5
	adrp	x0, out.1
	add	x0, x0, :lo12:out.1
	strb	wzr, [x0]
	adrp	x0, out.1
	add	x0, x0, :lo12:out.1
.L4:
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
.LC1:
	.string	"yogurt"
	.align	3
.LC2:
	.string	"u"
	.align	3
.LC3:
	.string	"problem119.c"
	.align	3
.LC4:
	.string	"strcmp(func0(\"yogurt\"), \"u\") == 0"
	.align	3
.LC5:
	.string	"full"
	.align	3
.LC6:
	.string	"strcmp(func0(\"full\"), \"u\") == 0"
	.align	3
.LC7:
	.string	"easy"
	.align	3
.LC8:
	.string	"strcmp(func0(\"easy\"), \"\") == 0"
	.align	3
.LC9:
	.string	"eAsy"
	.align	3
.LC10:
	.string	"strcmp(func0(\"eAsy\"), \"\") == 0"
	.align	3
.LC11:
	.string	"ali"
	.align	3
.LC12:
	.string	"strcmp(func0(\"ali\"), \"\") == 0"
	.align	3
.LC13:
	.string	"bad"
	.align	3
.LC14:
	.string	"a"
	.align	3
.LC15:
	.string	"strcmp(func0(\"bad\"), \"a\") == 0"
	.align	3
.LC16:
	.string	"most"
	.align	3
.LC17:
	.string	"o"
	.align	3
.LC18:
	.string	"strcmp(func0(\"most\"), \"o\") == 0"
	.align	3
.LC19:
	.string	"ab"
	.align	3
.LC20:
	.string	"strcmp(func0(\"ab\"), \"\") == 0"
	.align	3
.LC21:
	.string	"ba"
	.align	3
.LC22:
	.string	"strcmp(func0(\"ba\"), \"\") == 0"
	.align	3
.LC23:
	.string	"quick"
	.align	3
.LC24:
	.string	"strcmp(func0(\"quick\"), \"\") == 0"
	.align	3
.LC25:
	.string	"anime"
	.align	3
.LC26:
	.string	"i"
	.align	3
.LC27:
	.string	"strcmp(func0(\"anime\"), \"i\") == 0"
	.align	3
.LC28:
	.string	"Asia"
	.align	3
.LC29:
	.string	"strcmp(func0(\"Asia\"), \"\") == 0"
	.align	3
.LC30:
	.string	"Above"
	.align	3
.LC31:
	.string	"strcmp(func0(\"Above\"), \"o\") == 0"
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
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L7:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L8:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L9:
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L10:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L11:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L12:
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	func0
	mov	x2, x0
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L13:
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L14:
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	__assert_fail
.L15:
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L16:
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	func0
	mov	x2, x0
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	__assert_fail
.L17:
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	bl	__assert_fail
.L18:
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	bl	func0
	mov	x2, x0
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	__assert_fail
.L19:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	out.1
	.comm	out.1,2,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
