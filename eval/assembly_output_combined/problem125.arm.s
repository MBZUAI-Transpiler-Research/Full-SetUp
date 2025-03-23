	.arch armv8-a
	.file	"problem125.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	strlen
	cmp	x0, 10
	beq	.L2
	mov	w0, 0
	b	.L18
.L2:
	str	wzr, [sp, 16]
	b	.L4
.L10:
	ldr	w0, [sp, 16]
	cmp	w0, 2
	beq	.L5
	ldr	w0, [sp, 16]
	cmp	w0, 5
	bne	.L6
.L5:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 45
	beq	.L8
	mov	w0, 0
	b	.L18
.L6:
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L9
	ldrsw	x0, [sp, 16]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 57
	bls	.L8
.L9:
	mov	w0, 0
	b	.L18
.L8:
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L4:
	ldr	w0, [sp, 16]
	cmp	w0, 9
	ble	.L10
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	strb	w0, [sp, 32]
	ldr	x0, [sp, 8]
	add	x0, x0, 1
	ldrb	w0, [x0]
	strb	w0, [sp, 33]
	strb	wzr, [sp, 34]
	ldr	x0, [sp, 8]
	add	x0, x0, 3
	ldrb	w0, [x0]
	strb	w0, [sp, 40]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldrb	w0, [x0]
	strb	w0, [sp, 41]
	strb	wzr, [sp, 42]
	ldr	x0, [sp, 8]
	add	x0, x0, 6
	ldrb	w0, [x0]
	strb	w0, [sp, 48]
	ldr	x0, [sp, 8]
	add	x0, x0, 7
	ldrb	w0, [x0]
	strb	w0, [sp, 49]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldrb	w0, [x0]
	strb	w0, [sp, 50]
	ldr	x0, [sp, 8]
	add	x0, x0, 9
	ldrb	w0, [x0]
	strb	w0, [sp, 51]
	strb	wzr, [sp, 52]
	add	x0, sp, 32
	bl	atoi
	str	w0, [sp, 20]
	add	x0, sp, 40
	bl	atoi
	str	w0, [sp, 24]
	add	x0, sp, 48
	bl	atoi
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	ble	.L11
	ldr	w0, [sp, 20]
	cmp	w0, 12
	ble	.L12
.L11:
	mov	w0, 0
	b	.L18
.L12:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L13
	ldr	w0, [sp, 24]
	cmp	w0, 31
	ble	.L14
.L13:
	mov	w0, 0
	b	.L18
.L14:
	ldr	w0, [sp, 20]
	cmp	w0, 4
	beq	.L15
	ldr	w0, [sp, 20]
	cmp	w0, 6
	beq	.L15
	ldr	w0, [sp, 20]
	cmp	w0, 9
	beq	.L15
	ldr	w0, [sp, 20]
	cmp	w0, 11
	bne	.L16
.L15:
	ldr	w0, [sp, 24]
	cmp	w0, 31
	bne	.L16
	mov	w0, 0
	b	.L18
.L16:
	ldr	w0, [sp, 20]
	cmp	w0, 2
	bne	.L17
	ldr	w0, [sp, 24]
	cmp	w0, 29
	ble	.L17
	mov	w0, 0
	b	.L18
.L17:
	mov	w0, 1
.L18:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
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
	.string	"03-11-2000"
	.align	3
.LC1:
	.string	"problem125.c"
	.align	3
.LC2:
	.string	"func0(\"03-11-2000\") == 1"
	.align	3
.LC3:
	.string	"15-01-2012"
	.align	3
.LC4:
	.string	"func0(\"15-01-2012\") == 0"
	.align	3
.LC5:
	.string	"04-0-2040"
	.align	3
.LC6:
	.string	"func0(\"04-0-2040\") == 0"
	.align	3
.LC7:
	.string	"06-04-2020"
	.align	3
.LC8:
	.string	"func0(\"06-04-2020\") == 1"
	.align	3
.LC9:
	.string	"01-01-2007"
	.align	3
.LC10:
	.string	"func0(\"01-01-2007\") == 1"
	.align	3
.LC11:
	.string	"03-32-2011"
	.align	3
.LC12:
	.string	"func0(\"03-32-2011\") == 0"
	.align	3
.LC13:
	.string	""
	.align	3
.LC14:
	.string	"func0(\"\") == 0"
	.align	3
.LC15:
	.string	"04-31-3000"
	.align	3
.LC16:
	.string	"func0(\"04-31-3000\") == 0"
	.align	3
.LC17:
	.string	"06-06-2005"
	.align	3
.LC18:
	.string	"func0(\"06-06-2005\") == 1"
	.align	3
.LC19:
	.string	"21-31-2000"
	.align	3
.LC20:
	.string	"func0(\"21-31-2000\") == 0"
	.align	3
.LC21:
	.string	"04-12-2003"
	.align	3
.LC22:
	.string	"func0(\"04-12-2003\") == 1"
	.align	3
.LC23:
	.string	"04122003"
	.align	3
.LC24:
	.string	"func0(\"04122003\") == 0"
	.align	3
.LC25:
	.string	"20030412"
	.align	3
.LC26:
	.string	"func0(\"20030412\") == 0"
	.align	3
.LC27:
	.string	"2003-04"
	.align	3
.LC28:
	.string	"func0(\"2003-04\") == 0"
	.align	3
.LC29:
	.string	"2003-04-12"
	.align	3
.LC30:
	.string	"func0(\"2003-04-12\") == 0"
	.align	3
.LC31:
	.string	"04-2003"
	.align	3
.LC32:
	.string	"func0(\"04-2003\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
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
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L21:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	cmp	w0, 0
	beq	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L22:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L23:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	cmp	w0, 1
	beq	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L24:
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	cmp	w0, 1
	beq	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L25:
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	cmp	w0, 0
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 43
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L26:
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	cmp	w0, 0
	beq	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L27:
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	func0
	cmp	w0, 0
	beq	.L28
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L28:
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	func0
	cmp	w0, 1
	beq	.L29
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L29:
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	func0
	cmp	w0, 0
	beq	.L30
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L30:
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	func0
	cmp	w0, 1
	beq	.L31
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	__assert_fail
.L31:
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	func0
	cmp	w0, 0
	beq	.L32
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L32:
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	func0
	cmp	w0, 0
	beq	.L33
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	__assert_fail
.L33:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	func0
	cmp	w0, 0
	beq	.L34
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	__assert_fail
.L34:
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	bl	func0
	cmp	w0, 0
	beq	.L35
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	bl	__assert_fail
.L35:
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	func0
	cmp	w0, 0
	beq	.L36
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC32
	add	x0, x0, :lo12:.LC32
	bl	__assert_fail
.L36:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
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
