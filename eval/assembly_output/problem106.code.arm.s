	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	x3, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 56
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	str	wzr, [sp, 44]
	b	.L2
.L6:
	str	wzr, [sp, 48]
	b	.L3
.L5:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 48]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 52]
	ldrsw	x0, [sp, 48]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 48]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 52]
	str	w1, [x0]
.L4:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L3:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	sub	w0, w0, #1
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp]
	str	wzr, [x0]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	b	.L7
.L9:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L8
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 9
	bgt	.L8
	ldr	x0, [sp]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp]
	str	w1, [x0]
.L8:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L7:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L9
	ldr	x0, [sp]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	str	wzr, [sp, 48]
	b	.L10
.L13:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L11
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 9
	bgt	.L11
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w3, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	w0, [sp, 48]
	add	w2, w0, 1
	str	w2, [sp, 48]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	sxtw	x1, w3
	lsl	x1, x1, 3
	add	x2, sp, 56
	ldr	x1, [x2, x1]
	str	x1, [x0]
.L11:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L10:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	blt	.L15
	ldr	x0, [sp]
	ldr	w0, [x0]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L13
.L15:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
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
	.string	""
	.align	3
.LC1:
	.string	"One"
	.align	3
.LC2:
	.string	"Two"
	.align	3
.LC3:
	.string	"Three"
	.align	3
.LC4:
	.string	"Four"
	.align	3
.LC5:
	.string	"Five"
	.align	3
.LC6:
	.string	"Six"
	.align	3
.LC7:
	.string	"Seven"
	.align	3
.LC8:
	.string	"Eight"
	.align	3
.LC9:
	.string	"Nine"
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
