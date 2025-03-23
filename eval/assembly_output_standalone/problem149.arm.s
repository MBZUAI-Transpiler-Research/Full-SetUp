	.arch armv8-a
	.file	"code.c"
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
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
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
.LC9:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
