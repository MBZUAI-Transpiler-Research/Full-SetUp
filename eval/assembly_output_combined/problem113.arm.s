	.arch armv8-a
	.file	"problem113.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"True"
	.align	3
.LC1:
	.string	"False"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	ldr	x0, [sp, 40]
	bl	strlen
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 88]
	str	wzr, [sp, 60]
	str	wzr, [sp, 64]
	b	.L2
.L8:
	ldr	x0, [sp, 32]
	str	x0, [sp, 80]
	strb	wzr, [sp, 58]
	b	.L3
.L6:
	ldrsw	x0, [sp, 64]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	strb	w0, [sp, 58]
	b	.L5
.L4:
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
.L3:
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L6
.L5:
	ldrb	w0, [sp, 58]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldrsw	x0, [sp, 64]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 60]
	add	w2, w0, 1
	str	w2, [sp, 60]
	sxtw	x0, w0
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
.L7:
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L2:
	ldrsw	x0, [sp, 64]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L8
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 88]
	bl	strlen
	str	w0, [sp, 76]
	mov	w0, 1
	strb	w0, [sp, 59]
	str	wzr, [sp, 68]
	b	.L9
.L12:
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	w0, [sp, 76]
	sub	w2, w0, #1
	ldr	w0, [sp, 68]
	sub	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L10
	strb	wzr, [sp, 59]
	b	.L11
.L10:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L9:
	ldr	w0, [sp, 76]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 68]
	cmp	w0, w1
	blt	.L12
.L11:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 24]
	bl	strcpy
	ldrb	w0, [sp, 59]
	cmp	w0, 0
	beq	.L13
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L14
.L13:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L14:
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcpy
	ldr	x0, [sp, 88]
	bl	free
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"ae"
	.align	3
.LC3:
	.string	"abcde"
	.align	3
.LC4:
	.string	"bcd"
	.align	3
.LC5:
	.string	"problem113.c"
	.align	3
.LC6:
	.string	"strcmp(result, \"bcd\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC7:
	.string	"b"
	.align	3
.LC8:
	.string	"abcdef"
	.align	3
.LC9:
	.string	"acdef"
	.align	3
.LC10:
	.string	"strcmp(result, \"acdef\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC11:
	.string	"ab"
	.align	3
.LC12:
	.string	"abcdedcba"
	.align	3
.LC13:
	.string	"cdedc"
	.align	3
.LC14:
	.string	"strcmp(result, \"cdedc\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC15:
	.string	"w"
	.align	3
.LC16:
	.string	"dwik"
	.align	3
.LC17:
	.string	"dik"
	.align	3
.LC18:
	.string	"strcmp(result, \"dik\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC19:
	.string	"a"
	.align	3
.LC20:
	.string	"strcmp(result, \"\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC21:
	.string	""
	.align	3
.LC22:
	.string	"strcmp(result, \"abcdedcba\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC23:
	.string	"v"
	.align	3
.LC24:
	.string	"vabba"
	.align	3
.LC25:
	.string	"abba"
	.align	3
.LC26:
	.string	"strcmp(result, \"abba\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC27:
	.string	"mia"
	.align	3
.LC28:
	.string	"mamma"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	add	x2, sp, 32
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L16
	add	x2, sp, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L36
.L16:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L36:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	add	x2, sp, 32
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L18
	add	x2, sp, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L37
.L18:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L37:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	add	x2, sp, 32
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L20
	add	x2, sp, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L38
.L20:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L38:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	func0
	add	x2, sp, 32
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L22
	add	x2, sp, 24
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L39
.L22:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L39:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	func0
	ldrb	w0, [sp, 32]
	cmp	w0, 0
	bne	.L24
	add	x2, sp, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L40
.L24:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 63
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L40:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	add	x2, sp, 32
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L26
	add	x2, sp, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L41
.L26:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 66
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	__assert_fail
.L41:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	add	x2, sp, 32
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L28
	add	x2, sp, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L42
.L28:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 69
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	__assert_fail
.L42:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	func0
	add	x2, sp, 32
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L30
	add	x2, sp, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L43
.L30:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 72
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	__assert_fail
.L43:
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x1
	mov	x2, x0
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	func0
	ldrb	w0, [sp, 32]
	cmp	w0, 0
	bne	.L32
	add	x2, sp, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L44
.L32:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L44:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 136]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L35
	bl	__stack_chk_fail
.L35:
	mov	w0, w1
	ldp	x29, x30, [sp], 144
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
