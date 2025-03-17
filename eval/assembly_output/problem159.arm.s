	.arch armv8-a
	.file	"problem159.c"
	.text
	.section	.rodata
	.align	3
.LC28:
	.string	""
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 312]
	mov	x1, 0
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	str	x0, [sp, 48]
	str	wzr, [sp, 28]
	str	wzr, [sp, 32]
	b	.L2
.L8:
	add	x0, sp, 56
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	stp	q0, q0, [x0, 96]
	stp	q0, q0, [x0, 128]
	stp	q0, q0, [x0, 160]
	stp	q0, q0, [x0, 192]
	stp	q0, q0, [x0, 224]
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L3
.L5:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	add	x0, sp, 56
	bl	strchr
	cmp	x0, 0
	bne	.L4
	add	x0, sp, 56
	bl	strlen
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 56
	strb	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 56
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L3:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L6
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L7
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 48]
	bl	strcmp
	cmp	w0, 0
	bge	.L7
.L6:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	w0, [sp, 36]
	str	w0, [sp, 28]
.L7:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L2:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L8
	ldr	x0, [sp, 48]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 312]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	mov	x0, x1
	ldp	x29, x30, [sp, 320]
	add	sp, sp, 336
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"string"
	.align	3
.LC30:
	.string	"problem159.c"
	.align	3
.LC31:
	.string	"strcmp(func0(words1, 3), \"string\") == 0"
	.align	3
.LC4:
	.string	"enam"
	.align	3
.LC33:
	.string	"strcmp(func0(words2, 3), \"enam\") == 0"
	.align	3
.LC7:
	.string	"aaaaaaa"
	.align	3
.LC35:
	.string	"strcmp(func0(words3, 3), \"aaaaaaa\") == 0"
	.align	3
.LC36:
	.string	"abc"
	.align	3
.LC37:
	.string	"cba"
	.align	3
.LC38:
	.string	"strcmp(func0(words4, 2), \"abc\") == 0"
	.align	3
.LC13:
	.string	"footbott"
	.align	3
.LC40:
	.string	"strcmp(func0(words5, 5), \"footbott\") == 0"
	.align	3
.LC17:
	.string	"gonna"
	.align	3
.LC42:
	.string	"strcmp(func0(words6, 4), \"gonna\") == 0"
	.align	3
.LC22:
	.string	"nation"
	.align	3
.LC44:
	.string	"strcmp(func0(words7, 5), \"nation\") == 0"
	.align	3
.LC12:
	.string	"this"
	.align	3
.LC46:
	.string	"strcmp(func0(words8, 4), \"this\") == 0"
	.align	3
.LC47:
	.string	"b"
	.align	3
.LC48:
	.string	"strcmp(func0(words9, 1), \"b\") == 0"
	.align	3
.LC11:
	.string	"play"
	.align	3
.LC50:
	.string	"strcmp(func0(words10, 3), \"play\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 264]
	mov	x1, 0
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	add	x2, sp, 24
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 24
	mov	w1, 3
	bl	func0
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	__assert_fail
.L12:
	adrp	x0, .LC32
	add	x0, x0, :lo12:.LC32
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 48
	mov	w1, 3
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
	bl	__assert_fail
.L13:
	adrp	x0, .LC34
	add	x0, x0, :lo12:.LC34
	add	x2, sp, 72
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 72
	mov	w1, 3
	bl	func0
	mov	x2, x0
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC35
	add	x0, x0, :lo12:.LC35
	bl	__assert_fail
.L14:
	adrp	x0, .LC36
	add	x0, x0, :lo12:.LC36
	str	x0, [sp, 8]
	adrp	x0, .LC37
	add	x0, x0, :lo12:.LC37
	str	x0, [sp, 16]
	add	x0, sp, 8
	mov	w1, 2
	bl	func0
	mov	x2, x0
	adrp	x0, .LC36
	add	x1, x0, :lo12:.LC36
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC38
	add	x0, x0, :lo12:.LC38
	bl	__assert_fail
.L15:
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	add	x0, sp, 184
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 184
	mov	w1, 5
	bl	func0
	mov	x2, x0
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC40
	add	x0, x0, :lo12:.LC40
	bl	__assert_fail
.L16:
	add	x0, sp, 280
	sub	x0, x0, #160
	adrp	x1, .LC41
	add	x1, x1, :lo12:.LC41
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x0, sp, 120
	mov	w1, 4
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
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC42
	add	x0, x0, :lo12:.LC42
	bl	__assert_fail
.L17:
	adrp	x0, .LC43
	add	x1, x0, :lo12:.LC43
	add	x0, sp, 224
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 224
	mov	w1, 5
	bl	func0
	mov	x2, x0
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC44
	add	x0, x0, :lo12:.LC44
	bl	__assert_fail
.L18:
	add	x0, sp, 280
	sub	x0, x0, #128
	adrp	x1, .LC45
	add	x1, x1, :lo12:.LC45
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x0, sp, 152
	mov	w1, 4
	bl	func0
	mov	x2, x0
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC46
	add	x0, x0, :lo12:.LC46
	bl	__assert_fail
.L19:
	adrp	x0, .LC47
	add	x0, x0, :lo12:.LC47
	str	x0, [sp]
	mov	x0, sp
	mov	w1, 1
	bl	func0
	mov	x2, x0
	adrp	x0, .LC47
	add	x1, x0, :lo12:.LC47
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC48
	add	x0, x0, :lo12:.LC48
	bl	__assert_fail
.L20:
	adrp	x0, .LC49
	add	x0, x0, :lo12:.LC49
	add	x2, sp, 96
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 96
	mov	w1, 3
	bl	func0
	mov	x2, x0
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC50
	add	x0, x0, :lo12:.LC50
	bl	__assert_fail
.L21:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 264]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L23
	bl	__stack_chk_fail
.L23:
	mov	w0, w1
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 288
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"name"
	.align	3
.LC1:
	.string	"of"
	.data
	.align	3
.LC29:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC5:
	.string	"game"
	.data
	.align	3
.LC32:
	.xword	.LC0
	.xword	.LC4
	.xword	.LC5
	.section	.rodata
	.align	3
.LC8:
	.string	"bb"
	.align	3
.LC9:
	.string	"cc"
	.data
	.align	3
.LC34:
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.align	3
.LC39:
	.xword	.LC11
	.xword	.LC12
	.xword	.LC5
	.xword	.LC1
	.xword	.LC13
	.section	.rodata
	.align	3
.LC15:
	.string	"we"
	.align	3
.LC16:
	.string	"are"
	.align	3
.LC18:
	.string	"rock"
	.data
	.align	3
.LC41:
	.xword	.LC15
	.xword	.LC16
	.xword	.LC17
	.xword	.LC18
	.section	.rodata
	.align	3
.LC20:
	.string	"a"
	.align	3
.LC21:
	.string	"mad"
	.data
	.align	3
.LC43:
	.xword	.LC15
	.xword	.LC16
	.xword	.LC20
	.xword	.LC21
	.xword	.LC22
	.section	.rodata
	.align	3
.LC24:
	.string	"is"
	.align	3
.LC25:
	.string	"prrk"
	.data
	.align	3
.LC45:
	.xword	.LC12
	.xword	.LC24
	.xword	.LC20
	.xword	.LC25
	.align	3
.LC49:
	.xword	.LC11
	.xword	.LC11
	.xword	.LC11
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
