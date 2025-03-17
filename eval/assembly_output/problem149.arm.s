	.arch armv8-a
	.file	"problem149.c"
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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 56
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	mov	w0, -1
	str	w0, [sp, 32]
	mov	w0, -1
	str	w0, [sp, 36]
	str	wzr, [sp, 40]
	b	.L2
.L5:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x0, [x1, x0]
	ldr	x1, [sp, 24]
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 40]
	str	w0, [sp, 32]
.L3:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 3
	add	x1, sp, 56
	ldr	x0, [x1, x0]
	ldr	x1, [sp, 16]
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 40]
	str	w0, [sp, 36]
.L4:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 40]
	cmp	w0, 7
	ble	.L5
	ldr	w0, [sp, 32]
	cmn	w0, #1
	beq	.L6
	ldr	w0, [sp, 36]
	cmn	w0, #1
	beq	.L6
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L7
.L6:
	ldr	x0, [sp, 8]
	str	wzr, [x0]
	mov	x0, 0
	b	.L13
.L7:
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 32]
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	str	w0, [sp, 32]
	ldr	w0, [sp, 44]
	str	w0, [sp, 36]
.L9:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	sub	w1, w0, #1
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w0, 0
	bgt	.L10
	ldr	x0, [sp, 8]
	str	wzr, [x0]
	mov	x0, 0
	b	.L13
.L10:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 48]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L11
.L12:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldrsw	x1, [sp, 40]
	lsl	x1, x1, 3
	add	x2, sp, 56
	ldr	x1, [x2, x1]
	str	x1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L11:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L12
	ldr	x0, [sp, 48]
.L13:
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
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
	.string	"Mercury"
	.align	3
.LC1:
	.string	"Venus"
	.align	3
.LC2:
	.string	"Earth"
	.align	3
.LC3:
	.string	"Mars"
	.align	3
.LC4:
	.string	"Jupiter"
	.align	3
.LC5:
	.string	"Saturn"
	.align	3
.LC6:
	.string	"Uranus"
	.align	3
.LC7:
	.string	"Neptune"
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
	.text
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
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	w3, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	beq	.L16
	mov	w0, 0
	b	.L17
.L16:
	str	wzr, [sp, 60]
	b	.L18
.L20:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	mov	w0, 0
	b	.L17
.L19:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L18:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L20
	mov	w0, 1
.L17:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC12:
	.string	"problem149.c"
	.align	3
.LC13:
	.string	"issame(result, test1, size, 2)"
	.align	3
.LC14:
	.string	"issame(result, test2, size, 1)"
	.align	3
.LC16:
	.string	"issame(result, test3, size, 5)"
	.align	3
.LC18:
	.string	"issame(result, test4, size, 5)"
	.align	3
.LC19:
	.string	"size == 0 && result == NULL"
	.align	3
.LC20:
	.string	"Makemake"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	str	x0, [sp, 24]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	str	x0, [sp, 32]
	add	x0, sp, 4
	mov	x2, x0
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 24
	mov	w3, 2
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L22:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	str	x0, [sp, 16]
	add	x0, sp, 4
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 16
	mov	w3, 1
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 55
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L23:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	add	x0, sp, 40
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 4
	mov	x2, x0
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 40
	mov	w3, 5
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 60
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L24:
	ldr	x0, [sp, 8]
	bl	free
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	add	x0, sp, 80
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 4
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	str	x0, [sp, 8]
	ldr	w1, [sp, 4]
	add	x0, sp, 80
	mov	w3, 5
	mov	w2, w1
	mov	x1, x0
	ldr	x0, [sp, 8]
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 65
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L25:
	ldr	x0, [sp, 8]
	bl	free
	add	x0, sp, 4
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L26
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L34
.L26:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 69
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L34:
	add	x0, sp, 4
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L28
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L35
.L28:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 72
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L35:
	add	x0, sp, 4
	mov	x2, x0
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	str	x0, [sp, 8]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L30
	ldr	x0, [sp, 8]
	cmp	x0, 0
	beq	.L36
.L30:
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L36:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L33
	bl	__stack_chk_fail
.L33:
	mov	w0, w1
	ldp	x29, x30, [sp, 128]
	add	sp, sp, 144
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.data
	.align	3
.LC15:
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.align	3
.LC17:
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
