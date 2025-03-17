	.arch armv8-a
	.file	"problem15.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	strlen
	str	w0, [sp, 52]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 64]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	strb	wzr, [x0]
	str	wzr, [sp, 48]
	b	.L2
.L3:
	ldr	x0, [sp, 56]
	bl	strlen
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	x2, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	bl	strlen
	add	x2, x0, 1
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x19, x1, x0
	mov	x0, x2
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 56]
	bl	strcpy
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L3
	ldr	x0, [sp, 56]
	bl	free
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldr	x0, [sp, 64]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	w3, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	beq	.L6
	mov	w0, 0
	b	.L7
.L6:
	str	wzr, [sp, 60]
	b	.L8
.L10:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	mov	w0, 0
	b	.L7
.L9:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L8:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L10
	mov	w0, 1
.L7:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.align	2
	.global	free_prefixes
	.type	free_prefixes, %function
free_prefixes:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	b	.L12
.L13:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L12:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L13
	ldr	x0, [sp, 24]
	bl	free
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	free_prefixes, .-free_prefixes
	.section	.rodata
	.align	3
.LC11:
	.string	""
	.align	3
.LC12:
	.string	"problem15.c"
	.align	3
.LC13:
	.string	"issame(result, 0, NULL, 0)"
	.align	3
.LC5:
	.string	"asdfgh"
	.align	3
.LC15:
	.string	"issame(result, count, expected1, 6)"
	.align	3
.LC9:
	.string	"WWW"
	.align	3
.LC17:
	.string	"issame(result, count, expected2, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	add	x0, sp, 4
	mov	x1, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	str	x0, [sp, 8]
	mov	w3, 0
	mov	x2, 0
	mov	w1, 0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L15:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_prefixes
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 40
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x0, sp, 4
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	add	x1, sp, 40
	mov	w3, 6
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L16:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_prefixes
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	add	x2, sp, 16
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 4
	mov	x1, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	add	x1, sp, 16
	mov	w3, 3
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 63
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L17:
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 8]
	bl	free_prefixes
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp, 96]
	add	sp, sp, 112
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"a"
	.align	3
.LC1:
	.string	"as"
	.align	3
.LC2:
	.string	"asd"
	.align	3
.LC3:
	.string	"asdf"
	.align	3
.LC4:
	.string	"asdfg"
	.data
	.align	3
.LC14:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.section	.rodata
	.align	3
.LC7:
	.string	"W"
	.align	3
.LC8:
	.string	"WW"
	.data
	.align	3
.LC16:
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
