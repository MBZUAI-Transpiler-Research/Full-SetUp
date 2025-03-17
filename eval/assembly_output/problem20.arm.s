	.arch armv8-a
	.file	"problem20.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 168]
	mov	x1, 0
	stp	xzr, xzr, [sp, 40]
	stp	xzr, xzr, [sp, 56]
	str	xzr, [sp, 72]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 80
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	str	wzr, [sp, 24]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L2
.L10:
	str	wzr, [sp, 28]
	b	.L3
.L5:
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 28]
	add	x1, sp, 160
	strb	w2, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L3:
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L4
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
.L4:
	ldrsw	x0, [sp, 28]
	add	x1, sp, 160
	strb	wzr, [x1, x0]
	str	wzr, [sp, 32]
	b	.L6
.L9:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x1, sp, 80
	ldr	x1, [x1, x0]
	add	x0, sp, 160
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	w2, [x1, x0]
	b	.L8
.L7:
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L6:
	ldr	w0, [sp, 32]
	cmp	w0, 9
	ble	.L9
.L8:
	ldrsw	x0, [sp, 28]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
.L2:
	str	wzr, [sp, 28]
	b	.L11
.L16:
	str	wzr, [sp, 32]
	b	.L12
.L15:
	str	wzr, [sp, 36]
	b	.L13
.L14:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x1, sp, 80
	ldr	x1, [x1, x0]
	ldrsw	x0, [sp, 36]
	add	x0, x1, x0
	ldrb	w2, [x0]
	adrp	x0, out.1
	add	x1, x0, :lo12:out.1
	ldrsw	x0, [sp, 24]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L13:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x1, sp, 80
	ldr	x1, [x1, x0]
	ldrsw	x0, [sp, 36]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L14
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	adrp	x1, out.1
	add	x1, x1, :lo12:out.1
	sxtw	x0, w0
	mov	w2, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L12:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L11:
	ldr	w0, [sp, 28]
	cmp	w0, 9
	ble	.L16
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L17
	ldr	w0, [sp, 24]
	sub	w2, w0, #1
	adrp	x0, out.1
	add	x1, x0, :lo12:out.1
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	b	.L18
.L17:
	adrp	x0, out.1
	add	x0, x0, :lo12:out.1
	strb	wzr, [x0]
.L18:
	adrp	x0, out.1
	add	x0, x0, :lo12:out.1
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 168]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L20
	bl	__stack_chk_fail
.L20:
	mov	x0, x1
	ldp	x29, x30, [sp, 176]
	add	sp, sp, 192
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"zero"
	.align	3
.LC1:
	.string	"one"
	.align	3
.LC2:
	.string	"two"
	.align	3
.LC3:
	.string	"three"
	.align	3
.LC4:
	.string	"four"
	.align	3
.LC5:
	.string	"five"
	.align	3
.LC6:
	.string	"six"
	.align	3
.LC7:
	.string	"seven"
	.align	3
.LC8:
	.string	"eight"
	.align	3
.LC9:
	.string	"nine"
	.data
	.align	3
.LC11:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.text
	.section	.rodata
	.align	3
.LC12:
	.string	""
	.align	3
.LC13:
	.string	"problem20.c"
	.align	3
.LC14:
	.string	"strcmp(func0(\"\"), \"\") == 0"
	.align	3
.LC15:
	.string	"strcmp(func0(\"three\"), \"three\") == 0"
	.align	3
.LC16:
	.string	"three five nine"
	.align	3
.LC17:
	.string	"strcmp(func0(\"three five nine\"), \"three five nine\") == 0"
	.align	3
.LC18:
	.string	"five zero four seven nine eight"
	.align	3
.LC19:
	.string	"zero four five seven eight nine"
	.align	3
.LC20:
	.string	"strcmp(func0(\"five zero four seven nine eight\"), \"zero four five seven eight nine\") == 0"
	.align	3
.LC21:
	.string	"six five four three two one zero"
	.align	3
.LC22:
	.string	"zero one two three four five six"
	.align	3
.LC23:
	.string	"strcmp(func0(\"six five four three two one zero\"), \"zero one two three four five six\") == 0"
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
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 52
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L22:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	mov	x2, x0
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L23:
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	func0
	mov	x2, x0
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 54
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L24:
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	func0
	mov	x2, x0
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 55
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	__assert_fail
.L25:
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	func0
	mov	x2, x0
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	__assert_fail
.L26:
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
	.comm	out.1,1000,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
