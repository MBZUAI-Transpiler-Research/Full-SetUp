	.arch armv8-a
	.file	"problem137.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	b	.L2
.L7:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	bge	.L3
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L4
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L3
.L4:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 36]
.L3:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L5
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L6
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L5
.L6:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 40]
.L5:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w1, [sp, 40]
	str	w1, [x0]
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L9
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L9
	mov	w0, 1
	b	.L11
.L9:
	mov	w0, 0
.L11:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"problem137.c"
	.align	3
.LC9:
	.string	"issame(result, (int[]){0, 1})"
	.align	3
.LC10:
	.string	"issame(result, (int[]){-2, 1})"
	.align	3
.LC11:
	.string	"issame(result, (int[]){-7, 2})"
	.align	3
.LC12:
	.string	"issame(result, (int[]){-9, 2})"
	.align	3
.LC13:
	.string	"issame(result, (int[]){0, 0})"
	.align	3
.LC14:
	.string	"issame(result, (int[]){-1, 0})"
	.align	3
.LC15:
	.string	"issame(result, (int[]){-3, 1})"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #304
	.cfi_def_cfa_offset 304
	stp	x29, x30, [sp, 288]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 288
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 280]
	mov	x1, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x2, sp, 104
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 24
	add	x0, sp, 104
	mov	x2, x1
	mov	w1, 6
	bl	func0
	str	wzr, [sp, 248]
	mov	w0, 1
	str	w0, [sp, 252]
	add	x1, sp, 248
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L13:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, sp, 152
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 24
	add	x0, sp, 152
	mov	x2, x1
	mov	w1, 7
	bl	func0
	str	wzr, [sp, 248]
	mov	w0, 1
	str	w0, [sp, 252]
	add	x1, sp, 248
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L14:
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, sp, 184
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 24
	add	x0, sp, 184
	mov	x2, x1
	mov	w1, 7
	bl	func0
	mov	w0, -2
	str	w0, [sp, 248]
	mov	w0, 1
	str	w0, [sp, 252]
	add	x1, sp, 248
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	__assert_fail
.L15:
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	add	x0, sp, 216
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 12]
	str	q0, [x0, 12]
	add	x1, sp, 24
	add	x0, sp, 216
	mov	x2, x1
	mov	w1, 7
	bl	func0
	mov	w0, -7
	str	w0, [sp, 248]
	mov	w0, 2
	str	w0, [sp, 252]
	add	x1, sp, 248
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L16:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	add	x0, sp, 248
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	add	x1, sp, 24
	add	x0, sp, 248
	mov	x2, x1
	mov	w1, 8
	bl	func0
	mov	w0, -9
	str	w0, [sp, 128]
	mov	w0, 2
	str	w0, [sp, 132]
	add	x1, sp, 128
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L17:
	add	x1, sp, 24
	add	x0, sp, 8
	mov	x2, x1
	mov	w1, 0
	bl	func0
	str	wzr, [sp, 128]
	str	wzr, [sp, 132]
	add	x1, sp, 128
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L18:
	str	wzr, [sp, 16]
	add	x1, sp, 24
	add	x0, sp, 16
	mov	x2, x1
	mov	w1, 1
	bl	func0
	str	wzr, [sp, 128]
	str	wzr, [sp, 132]
	add	x1, sp, 128
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L19:
	mov	w0, -1
	str	w0, [sp, 40]
	mov	w0, -3
	str	w0, [sp, 44]
	mov	w0, -5
	str	w0, [sp, 48]
	mov	w0, -6
	str	w0, [sp, 52]
	add	x1, sp, 24
	add	x0, sp, 40
	mov	x2, x1
	mov	w1, 4
	bl	func0
	mov	w0, -1
	str	w0, [sp, 128]
	str	wzr, [sp, 132]
	add	x1, sp, 128
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L20:
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	add	x2, sp, 56
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x1, sp, 24
	add	x0, sp, 56
	mov	x2, x1
	mov	w1, 5
	bl	func0
	mov	w0, -1
	str	w0, [sp, 128]
	str	wzr, [sp, 132]
	add	x1, sp, 128
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	__assert_fail
.L21:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	add	x2, sp, 80
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	add	x1, sp, 24
	add	x0, sp, 80
	mov	x2, x1
	mov	w1, 5
	bl	func0
	mov	w0, -3
	str	w0, [sp, 128]
	mov	w0, 1
	str	w0, [sp, 132]
	add	x1, sp, 128
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L22:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	add	x2, sp, 128
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 24
	add	x0, sp, 128
	mov	x2, x1
	mov	w1, 6
	bl	func0
	mov	w0, -3
	str	w0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 36]
	add	x1, sp, 32
	add	x0, sp, 24
	bl	issame
	cmp	w0, 0
	bne	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L23:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 280]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L25
	bl	__stack_chk_fail
.L25:
	mov	w0, w1
	ldp	x29, x30, [sp, 288]
	add	sp, sp, 304
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	2
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.align	3
.LC1:
	.word	2
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.word	0
	.align	3
.LC2:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.word	6
	.word	-2
	.align	3
.LC3:
	.word	4
	.word	5
	.word	3
	.word	6
	.word	2
	.word	7
	.word	-7
	.align	3
.LC4:
	.word	7
	.word	3
	.word	8
	.word	4
	.word	9
	.word	2
	.word	5
	.word	-9
	.align	3
.LC5:
	.word	-1
	.word	-3
	.word	-5
	.word	-6
	.word	0
	.align	3
.LC6:
	.word	-6
	.word	-4
	.word	-4
	.word	-3
	.word	1
	.align	3
.LC7:
	.word	-6
	.word	-4
	.word	-4
	.word	-3
	.word	-100
	.word	1
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
