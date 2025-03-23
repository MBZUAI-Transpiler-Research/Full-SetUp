	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 200]
	mov	x1, 0
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	add	x0, sp, 96
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	x1, [x1, 96]
	str	x1, [x0, 96]
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	add	x0, sp, 40
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	w1, [x1, 48]
	str	w1, [x0, 48]
	str	wzr, [sp, 36]
	ldr	x0, [sp, 16]
	strb	wzr, [x0]
	b	.L2
.L4:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	add	x1, sp, 96
	ldr	x0, [x1, x0]
	mov	x1, x0
	ldr	x0, [sp, 16]
	bl	strcat
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 28]
.L3:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L2
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L3
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 200]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"m"
	.align	3
.LC1:
	.string	"cm"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"cd"
	.align	3
.LC4:
	.string	"c"
	.align	3
.LC5:
	.string	"xc"
	.align	3
.LC6:
	.string	"l"
	.align	3
.LC7:
	.string	"xl"
	.align	3
.LC8:
	.string	"x"
	.align	3
.LC9:
	.string	"ix"
	.align	3
.LC10:
	.string	"v"
	.align	3
.LC11:
	.string	"iv"
	.align	3
.LC12:
	.string	"i"
	.data
	.align	3
.LC15:
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
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
	.section	.rodata
	.align	3
.LC14:
	.word	1000
	.word	900
	.word	500
	.word	400
	.word	100
	.word	90
	.word	50
	.word	40
	.word	10
	.word	9
	.word	5
	.word	4
	.word	1
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
