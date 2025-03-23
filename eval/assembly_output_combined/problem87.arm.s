	.arch armv8-a
	.file	"problem87.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	add	w0, w0, 2
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	str	wzr, [sp, 28]
	str	wzr, [sp, 32]
	str	wzr, [sp, 36]
	b	.L2
.L14:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L3
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L4
.L3:
	str	wzr, [sp, 40]
	b	.L5
.L9:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L6
.L8:
	ldrsw	x0, [sp, 40]
	add	x1, sp, 64
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 44]
	add	x2, sp, 64
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bls	.L7
	ldrsw	x0, [sp, 40]
	add	x1, sp, 64
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 27]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 64
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 40]
	add	x1, sp, 64
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 64
	ldrb	w2, [sp, 27]
	strb	w2, [x1, x0]
.L7:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L6:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L5:
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L10
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 32
	strb	w1, [x0]
.L10:
	str	wzr, [sp, 48]
	b	.L11
.L12:
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrsw	x1, [sp, 48]
	add	x2, sp, 64
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L11:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 32]
	b	.L13
.L4:
	ldrsw	x0, [sp, 36]
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	str	w2, [sp, 32]
	ldrb	w2, [x1]
	sxtw	x0, w0
	add	x1, sp, 64
	strb	w2, [x1, x0]
.L13:
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	ble	.L14
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	mov	x0, x1
	ldp	x29, x30, [sp, 128]
	add	sp, sp, 144
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Hi"
	.align	3
.LC1:
	.string	"problem87.c"
	.align	3
.LC2:
	.string	"strcmp(result, \"Hi\") == 0"
	.align	3
.LC3:
	.string	"hello"
	.align	3
.LC4:
	.string	"ehllo"
	.align	3
.LC5:
	.string	"strcmp(result, \"ehllo\") == 0"
	.align	3
.LC6:
	.string	"number"
	.align	3
.LC7:
	.string	"bemnru"
	.align	3
.LC8:
	.string	"strcmp(result, \"bemnru\") == 0"
	.align	3
.LC9:
	.string	"abcd"
	.align	3
.LC10:
	.string	"strcmp(result, \"abcd\") == 0"
	.align	3
.LC11:
	.string	"Hello World!!!"
	.align	3
.LC12:
	.string	"Hello !!!Wdlor"
	.align	3
.LC13:
	.string	"strcmp(result, \"Hello !!!Wdlor\") == 0"
	.align	3
.LC14:
	.string	""
	.align	3
.LC15:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC16:
	.string	"Hi. My name is Mister Robot. How are you?"
	.align	3
.LC17:
	.string	".Hi My aemn is Meirst .Rboot How aer ?ouy"
	.align	3
.LC18:
	.string	"strcmp(result, \".Hi My aemn is Meirst .Rboot How aer ?ouy\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L18:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L20:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L21:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 62
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	func0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 66
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 24]
	bl	free
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	func0
	str	x0, [sp, 24]
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	ldr	x0, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	beq	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 70
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L24:
	ldr	x0, [sp, 24]
	bl	free
	mov	w0, 0
	ldp	x29, x30, [sp], 32
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
