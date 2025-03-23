	.arch armv8-a
	.file	"problem96.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L2
	mov	w0, 0
	b	.L3
.L2:
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	b	.L4
.L11:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 4
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	str	wzr, [sp, 52]
	b	.L5
.L10:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1024
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	b	.L3
.L6:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 256
	cmp	w0, 0
	beq	.L7
	mov	w0, 1
	str	w0, [sp, 44]
.L7:
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldrsw	x0, [sp, 52]
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 512
	cmp	w0, 0
	beq	.L8
	mov	w0, 1
	str	w0, [sp, 40]
.L8:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	cmp	w0, 2
	bne	.L9
	mov	w0, 0
	b	.L3
.L9:
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L5:
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L4:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L11
	mov	w0, 1
.L3:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC30:
	.string	"problem96.c"
	.align	3
.LC31:
	.string	"func0(test1, 2) == 1"
	.align	3
.LC33:
	.string	"func0(test2, 3) == 0"
	.align	3
.LC35:
	.string	"func0(test3, 3) == 0"
	.align	3
.LC37:
	.string	"func0(test4, 3) == 0"
	.align	3
.LC39:
	.string	"func0(test5, 2) == 1"
	.align	3
.LC41:
	.string	"func0(test6, 2) == 1"
	.align	3
.LC42:
	.string	"func0(NULL, 0) == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -272]!
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 264]
	mov	x1, 0
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 24
	mov	w1, 2
	bl	func0
	cmp	w0, 1
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	__assert_fail
.L13:
	adrp	x0, .LC32
	add	x1, x0, :lo12:.LC32
	add	x0, sp, 120
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 120
	mov	w1, 3
	bl	func0
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
	bl	__assert_fail
.L14:
	adrp	x0, .LC34
	add	x1, x0, :lo12:.LC34
	add	x0, sp, 168
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 168
	mov	w1, 3
	bl	func0
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC35
	add	x0, x0, :lo12:.LC35
	bl	__assert_fail
.L15:
	adrp	x0, .LC36
	add	x1, x0, :lo12:.LC36
	add	x0, sp, 216
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 216
	mov	w1, 3
	bl	func0
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC37
	add	x0, x0, :lo12:.LC37
	bl	__assert_fail
.L16:
	adrp	x0, .LC38
	add	x1, x0, :lo12:.LC38
	add	x0, sp, 56
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 56
	mov	w1, 2
	bl	func0
	cmp	w0, 1
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC39
	add	x0, x0, :lo12:.LC39
	bl	__assert_fail
.L17:
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	add	x0, sp, 88
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 88
	mov	w1, 2
	bl	func0
	cmp	w0, 1
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 43
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC41
	add	x0, x0, :lo12:.LC41
	bl	__assert_fail
.L18:
	mov	w1, 0
	mov	x0, 0
	bl	func0
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, .LC42
	add	x0, x0, :lo12:.LC42
	bl	__assert_fail
.L19:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 264]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L21
	bl	__stack_chk_fail
.L21:
	mov	w0, w1
	ldp	x29, x30, [sp], 272
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"p"
	.align	3
.LC1:
	.string	"pineapple"
	.align	3
.LC2:
	.string	"b"
	.align	3
.LC3:
	.string	"banana"
	.data
	.align	3
.LC29:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.section	.rodata
	.align	3
.LC5:
	.string	"A"
	.align	3
.LC6:
	.string	"B"
	.data
	.align	3
.LC32:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC5
	.xword	.LC3
	.xword	.LC6
	.xword	.LC3
	.section	.rodata
	.align	3
.LC8:
	.string	"5"
	.align	3
.LC9:
	.string	"a"
	.align	3
.LC10:
	.string	"apple"
	.data
	.align	3
.LC34:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC8
	.xword	.LC3
	.xword	.LC9
	.xword	.LC10
	.section	.rodata
	.align	3
.LC12:
	.string	"Name"
	.align	3
.LC13:
	.string	"John"
	.align	3
.LC14:
	.string	"Age"
	.align	3
.LC15:
	.string	"36"
	.align	3
.LC16:
	.string	"City"
	.align	3
.LC17:
	.string	"Houston"
	.data
	.align	3
.LC36:
	.xword	.LC12
	.xword	.LC13
	.xword	.LC14
	.xword	.LC15
	.xword	.LC16
	.xword	.LC17
	.section	.rodata
	.align	3
.LC19:
	.string	"STATE"
	.align	3
.LC20:
	.string	"NC"
	.align	3
.LC21:
	.string	"ZIP"
	.align	3
.LC22:
	.string	"12345"
	.data
	.align	3
.LC38:
	.xword	.LC19
	.xword	.LC20
	.xword	.LC21
	.xword	.LC22
	.section	.rodata
	.align	3
.LC24:
	.string	"fruit"
	.align	3
.LC25:
	.string	"Orange"
	.align	3
.LC26:
	.string	"taste"
	.align	3
.LC27:
	.string	"Sweet"
	.data
	.align	3
.LC40:
	.xword	.LC24
	.xword	.LC25
	.xword	.LC26
	.xword	.LC27
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
