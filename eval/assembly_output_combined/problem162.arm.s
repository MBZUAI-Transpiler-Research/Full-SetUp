	.arch armv8-a
	.file	"problem162.c"
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
	str	wzr, [sp, 48]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 60]
	str	wzr, [sp, 52]
	b	.L2
.L6:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	beq	.L3
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 256
	cmp	w0, 0
	beq	.L4
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	tolower
	mov	w2, w0
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	and	w1, w2, 255
	strb	w1, [x0]
	b	.L5
.L4:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 512
	cmp	w0, 0
	beq	.L5
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	toupper
	mov	w2, w0
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	and	w1, w2, 255
	strb	w1, [x0]
	b	.L5
.L3:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L5:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	blt	.L6
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	bne	.L7
	str	wzr, [sp, 56]
	b	.L8
.L9:
	ldrsw	x0, [sp, 56]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 56]
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [sp, 47]
	strb	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L8:
	ldr	w0, [sp, 60]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 56]
	cmp	w0, w1
	blt	.L9
.L7:
	ldr	x0, [sp, 24]
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
	.string	"aSdF"
	.align	3
.LC2:
	.string	"problem162.c"
	.align	3
.LC3:
	.string	"strcmp(func0(test1), \"aSdF\") == 0"
	.align	3
.LC5:
	.string	"4321"
	.align	3
.LC6:
	.string	"strcmp(func0(test2), \"4321\") == 0"
	.align	3
.LC8:
	.string	"AB"
	.align	3
.LC9:
	.string	"strcmp(func0(test3), \"AB\") == 0"
	.align	3
.LC11:
	.string	"#A@c"
	.align	3
.LC12:
	.string	"strcmp(func0(test4), \"#A@c\") == 0"
	.align	3
.LC14:
	.string	"#aSDFw^45"
	.align	3
.LC15:
	.string	"strcmp(func0(test5), \"#aSDFw^45\") == 0"
	.align	3
.LC17:
	.string	"2@6#"
	.align	3
.LC18:
	.string	"strcmp(func0(test6), \"2@6#\") == 0"
	.align	3
.LC20:
	.string	"#$A^d"
	.align	3
.LC21:
	.string	"strcmp(func0(test7), \"#$A^d\") == 0"
	.align	3
.LC23:
	.string	"#CCC"
	.align	3
.LC24:
	.string	"strcmp(func0(test8), \"#CCC\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldr	w2, [x1]
	str	w2, [x0]
	ldrb	w1, [x1, 4]
	strb	w1, [x0, 4]
	add	x0, sp, 24
	bl	func0
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L12:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 32
	ldr	w2, [x1]
	str	w2, [x0]
	ldrb	w1, [x1, 4]
	strb	w1, [x0, 4]
	add	x0, sp, 32
	bl	func0
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L13:
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	add	x0, sp, 16
	ldrh	w2, [x1]
	strh	w2, [x0]
	ldrb	w1, [x1, 2]
	strb	w1, [x0, 2]
	add	x0, sp, 16
	bl	func0
	mov	x2, x0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L14:
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, sp, 40
	ldr	w2, [x1]
	str	w2, [x0]
	ldrb	w1, [x1, 4]
	strb	w1, [x0, 4]
	add	x0, sp, 40
	bl	func0
	mov	x2, x0
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L15:
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	add	x0, sp, 72
	ldr	x2, [x1]
	str	x2, [x0]
	ldrh	w1, [x1, 8]
	strh	w1, [x0, 8]
	add	x0, sp, 72
	bl	func0
	mov	x2, x0
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L16:
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	add	x0, sp, 48
	ldr	w2, [x1]
	str	w2, [x0]
	ldrb	w1, [x1, 4]
	strb	w1, [x0, 4]
	add	x0, sp, 48
	bl	func0
	mov	x2, x0
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L17:
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	add	x0, sp, 64
	ldr	w2, [x1]
	str	w2, [x0]
	ldrh	w1, [x1, 4]
	strh	w1, [x0, 4]
	add	x0, sp, 64
	bl	func0
	mov	x2, x0
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	__assert_fail
.L18:
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	add	x0, sp, 56
	ldr	w2, [x1]
	str	w2, [x0]
	ldrb	w1, [x1, 4]
	strb	w1, [x0, 4]
	add	x0, sp, 56
	bl	func0
	mov	x2, x0
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L19:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L21
	bl	__stack_chk_fail
.L21:
	mov	w0, w1
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"AsDf"
	.align	3
.LC4:
	.string	"1234"
	.align	3
.LC7:
	.string	"ab"
	.align	3
.LC10:
	.string	"#a@C"
	.align	3
.LC13:
	.string	"#AsdfW^45"
	.align	3
.LC16:
	.string	"#6@2"
	.align	3
.LC19:
	.string	"#$a^D"
	.align	3
.LC22:
	.string	"#ccc"
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
