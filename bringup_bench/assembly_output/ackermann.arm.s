	.arch armv8-a
	.file	"ackermann.c"
	.text
	.local	a
	.comm	a,4194240,8
	.local	depth
	.comm	depth,4,4
	.local	max_depth
	.comm	max_depth,4,4
	.section	.rodata
	.align	3
.LC0:
	.string	"Maximum stack depth %d exceeded. Abort.\n"
	.align	3
.LC1:
	.string	"Maximum x value %d exceeded. Abort. \n"
	.align	3
.LC2:
	.string	"Maximum y value %d exceeded. Abort. \n"
	.text
	.align	2
	.global	ack
	.type	ack, %function
ack:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, depth
	add	x0, x0, :lo12:depth
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, depth
	add	x0, x0, :lo12:depth
	str	w1, [x0]
	adrp	x0, depth
	add	x0, x0, :lo12:depth
	ldr	w1, [x0]
	mov	w0, 16777215
	cmp	w1, w0
	bls	.L2
	mov	w1, 16777215
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L2:
	ldr	w1, [sp, 28]
	mov	w0, 65534
	cmp	w1, w0
	bls	.L3
	mov	w1, 65535
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L3:
	ldr	w0, [sp, 24]
	cmp	w0, 15
	bls	.L4
	mov	w1, 16
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L4:
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 28]
	lsl	x2, x2, 4
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L5
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 28]
	lsl	x2, x2, 4
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	b	.L6
.L5:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, a
	add	x2, x0, :lo12:a
	ldr	w0, [sp, 28]
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	w1, [x0]
	adrp	x0, a
	add	x1, x0, :lo12:a
	ldr	w0, [sp, 28]
	lsl	x0, x0, 6
	add	x0, x1, x0
	ldr	w0, [x0]
	b	.L6
.L7:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, 1
	bl	ack
	mov	w2, w0
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	b	.L6
.L8:
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	ack
	mov	w2, w0
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	ack
	mov	w3, w0
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 28]
	lsl	x2, x2, 4
	add	x1, x2, x1
	str	w3, [x0, x1, lsl 2]
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 28]
	lsl	x2, x2, 4
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
.L6:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	ack, .-ack
	.section	.rodata
	.align	3
.LC3:
	.string	"\nx+y=%d:\n\n"
	.align	3
.LC4:
	.string	"A(%d,%d) = %d\n"
	.align	3
.LC5:
	.string	"Max recursive depth = %u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	adrp	x0, max_depth
	add	x0, x0, :lo12:max_depth
	str	wzr, [x0]
	str	wzr, [sp, 44]
	b	.L10
.L14:
	ldr	w1, [sp, 44]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	str	wzr, [sp, 40]
	b	.L11
.L13:
	adrp	x0, depth
	add	x0, x0, :lo12:depth
	str	wzr, [x0]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w19, w1, w0
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	ldr	w1, [sp, 40]
	bl	ack
	mov	w3, w0
	ldr	w2, [sp, 40]
	mov	w1, w19
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	adrp	x0, depth
	add	x0, x0, :lo12:depth
	ldr	w1, [x0]
	adrp	x0, max_depth
	add	x0, x0, :lo12:max_depth
	ldr	w0, [x0]
	cmp	w1, w0
	bls	.L12
	adrp	x0, depth
	add	x0, x0, :lo12:depth
	ldr	w1, [x0]
	adrp	x0, max_depth
	add	x0, x0, :lo12:max_depth
	str	w1, [x0]
.L12:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L11:
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bls	.L13
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w0, [sp, 44]
	cmp	w0, 5
	bls	.L14
	adrp	x0, max_depth
	add	x0, x0, :lo12:max_depth
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
