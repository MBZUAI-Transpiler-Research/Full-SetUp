	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 184]
	mov	x1, 0
	stp	xzr, xzr, [sp, 56]
	stp	xzr, xzr, [sp, 72]
	str	xzr, [sp, 88]
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	add	x0, sp, 96
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldr	q0, [x1, 64]
	str	q0, [x0, 64]
	str	wzr, [sp, 40]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L2
.L10:
	str	wzr, [sp, 44]
	b	.L3
.L5:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 176
	strb	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L4
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
.L4:
	ldrsw	x0, [sp, 44]
	add	x1, sp, 176
	strb	wzr, [x1, x0]
	str	wzr, [sp, 48]
	b	.L6
.L9:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	add	x1, sp, 96
	ldr	x1, [x1, x0]
	add	x0, sp, 176
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	add	x1, sp, 56
	str	w2, [x1, x0]
	b	.L8
.L7:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L6:
	ldr	w0, [sp, 48]
	cmp	w0, 9
	ble	.L9
.L8:
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
.L2:
	str	wzr, [sp, 44]
	b	.L11
.L16:
	str	wzr, [sp, 48]
	b	.L12
.L15:
	str	wzr, [sp, 52]
	b	.L13
.L14:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 96
	ldr	x1, [x1, x0]
	ldrsw	x0, [sp, 52]
	add	x0, x1, x0
	ldrb	w2, [x0]
	adrp	x0, out.0
	add	x1, x0, :lo12:out.0
	ldrsw	x0, [sp, 40]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L13:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	add	x1, sp, 96
	ldr	x1, [x1, x0]
	ldrsw	x0, [sp, 52]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L14
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	str	w1, [sp, 40]
	adrp	x1, out.0
	add	x1, x1, :lo12:out.0
	sxtw	x0, w0
	mov	w2, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L12:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L11:
	ldr	w0, [sp, 44]
	cmp	w0, 9
	ble	.L16
	ldr	w0, [sp, 40]
	cmp	w0, 0
	ble	.L17
	ldr	w0, [sp, 40]
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
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 184]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L20
	bl	__stack_chk_fail
.L20:
	mov	x0, x1
	ldp	x29, x30, [sp], 192
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
