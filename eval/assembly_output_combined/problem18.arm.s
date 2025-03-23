	.arch armv8-a
	.file	"problem18.c"
	.text
	.section	.rodata
	.align	3
.LC3:
	.string	"o"
	.align	3
.LC4:
	.string	"o|"
	.align	3
.LC5:
	.string	".|"
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
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 88]
	mov	x1, 0
	str	xzr, [sp, 56]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldrb	w0, [x0]
	strb	w0, [sp, 80]
	strh	wzr, [sp, 81]
	ldr	x0, [sp, 24]
	bl	strlen
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	sxtw	x0, w0
	bl	malloc
	str	x0, [sp, 64]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 64]
	bl	strcpy
	ldr	x0, [sp, 64]
	bl	strlen
	mov	x1, x0
	ldr	x0, [sp, 64]
	add	x0, x0, x1
	mov	w1, 32
	strh	w1, [x0]
	str	wzr, [sp, 48]
	b	.L2
.L17:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	bne	.L3
	add	x2, sp, 80
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L6
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	b	.L7
.L6:
	mov	w0, 4
.L7:
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
.L5:
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 4
	str	w1, [x0]
.L4:
	add	x2, sp, 80
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L10
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	b	.L11
.L10:
	mov	w0, 4
.L11:
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
.L9:
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 2
	str	w1, [x0]
.L8:
	add	x2, sp, 80
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L12
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L13
	ldr	w0, [sp, 44]
	cmp	w0, 0
	ble	.L14
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	b	.L15
.L14:
	mov	w0, 4
.L15:
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 56]
	bl	realloc
	str	x0, [sp, 56]
.L13:
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
.L12:
	strb	wzr, [sp, 80]
	b	.L16
.L3:
	add	x0, sp, 80
	bl	strlen
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	cmp	x0, 1
	bhi	.L16
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldr	x0, [sp, 72]
	add	x1, sp, 80
	strb	w2, [x1, x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	add	x1, sp, 80
	strb	wzr, [x1, x0]
.L16:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L2:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L17
	ldr	x0, [sp, 64]
	bl	free
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 88]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	x0, x1
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
	.string	""
	.zero	2
	.text
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L21
	mov	w0, 0
	b	.L22
.L21:
	str	wzr, [sp, 44]
	b	.L23
.L25:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L24
	mov	w0, 0
	b	.L22
.L24:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L23:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L25
	mov	w0, 1
.L22:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC6:
	.string	""
	.align	3
.LC7:
	.string	"problem18.c"
	.align	3
.LC8:
	.string	"issame(result, count, (int[]){}, 0)"
	.align	3
.LC9:
	.string	"o o o o"
	.align	3
.LC10:
	.string	"issame(result, count, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC11:
	.string	".| .| .| .|"
	.align	3
.LC12:
	.string	"issame(result, count, (int[]){1, 1, 1, 1}, 4)"
	.align	3
.LC13:
	.string	"o| o| .| .| o o o o"
	.align	3
.LC14:
	.string	"issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8)"
	.align	3
.LC15:
	.string	"o| .| o| .| o o| o o|"
	.align	3
.LC16:
	.string	"issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	func0
	str	x0, [sp, 32]
	ldr	w0, [sp, 28]
	add	x1, sp, 40
	mov	w3, 0
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 71
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	__assert_fail
.L27:
	ldr	x0, [sp, 32]
	bl	free
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	func0
	str	x0, [sp, 32]
	ldr	w1, [sp, 28]
	mov	w0, 4
	str	w0, [sp, 40]
	mov	w0, 4
	str	w0, [sp, 44]
	mov	w0, 4
	str	w0, [sp, 48]
	mov	w0, 4
	str	w0, [sp, 52]
	add	x0, sp, 40
	mov	w3, 4
	mov	x2, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L28
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 75
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L28:
	ldr	x0, [sp, 32]
	bl	free
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	func0
	str	x0, [sp, 32]
	ldr	w1, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 48]
	mov	w0, 1
	str	w0, [sp, 52]
	add	x0, sp, 40
	mov	w3, 4
	mov	x2, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L29
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 79
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L29:
	ldr	x0, [sp, 32]
	bl	free
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	str	x0, [sp, 32]
	ldr	w4, [sp, 28]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 40
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 40
	mov	w3, 8
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L30
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 83
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L30:
	ldr	x0, [sp, 32]
	bl	free
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	func0
	str	x0, [sp, 32]
	ldr	w4, [sp, 28]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 40
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x0, sp, 40
	mov	w3, 8
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L31
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 87
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L31:
	ldr	x0, [sp, 32]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L33
	bl	__stack_chk_fail
.L33:
	mov	w0, w1
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	2
	.word	2
	.word	1
	.word	1
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC1:
	.word	2
	.word	1
	.word	2
	.word	1
	.word	4
	.word	2
	.word	4
	.word	2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
