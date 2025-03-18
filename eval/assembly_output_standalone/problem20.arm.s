	.arch armv8-a
	.file	"code.c"
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
	adrp	x0, out.0
	add	x1, x0, :lo12:out.0
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
	adrp	x1, out.0
	add	x1, x1, :lo12:out.0
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
	adrp	x0, out.0
	add	x1, x0, :lo12:out.0
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	b	.L18
.L17:
	adrp	x0, out.0
	add	x0, x0, :lo12:out.0
	strb	wzr, [x0]
.L18:
	adrp	x0, out.0
	add	x0, x0, :lo12:out.0
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
	.local	out.0
	.comm	out.0,1000,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
