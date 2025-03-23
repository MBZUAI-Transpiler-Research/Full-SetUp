	.arch armv8-a
	.file	"problem13.c"
	.text
	.section	.rodata
	.align	3
.LC10:
	.string	""
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
	str	w1, [sp, 20]
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	str	x0, [sp, 56]
	str	wzr, [sp, 44]
	str	wzr, [sp, 48]
	b	.L2
.L4:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L3
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	w0, [sp, 52]
	str	w0, [sp, 44]
.L3:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L4
	ldr	x0, [sp, 56]
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
.LC13:
	.string	"problem13.c"
	.align	3
.LC14:
	.string	"strcmp(func0(empty_array, 0), \"\") == 0"
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC15:
	.string	"strcmp(func0(array1, 3), \"x\") == 0"
	.align	3
.LC5:
	.string	"zzzz"
	.align	3
.LC16:
	.string	"strcmp(func0(array2, 6), \"zzzz\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	str	x0, [sp, 24]
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	add	x2, sp, 32
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 56
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 24
	mov	w1, 0
	bl	func0
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L7:
	add	x0, sp, 32
	mov	w1, 3
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L8:
	add	x0, sp, 56
	mov	w1, 6
	bl	func0
	mov	x2, x0
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L9:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L11
	bl	__stack_chk_fail
.L11:
	mov	w0, w1
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.string	"y"
	.align	3
.LC2:
	.string	"z"
	.data
	.align	3
.LC11:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"yyy"
	.align	3
.LC6:
	.string	"www"
	.align	3
.LC7:
	.string	"kkkk"
	.align	3
.LC8:
	.string	"abc"
	.data
	.align	3
.LC12:
	.xword	.LC0
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
