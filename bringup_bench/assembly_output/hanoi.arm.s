	.arch armv8-a
	.file	"hanoi.c"
	.text
	.local	num
	.comm	num,16,8
	.local	count
	.comm	count,8,8
	.align	2
	.type	mov, %function
mov:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L2
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 20]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	x0, [x0]
	add	x1, x0, 1
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	x1, [x0]
	mov	w0, 0
	b	.L3
.L2:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	mov	w1, 6
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 24]
	bl	mov
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w0, 1
	bl	mov
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w2, [sp, 20]
	ldr	w1, [sp, 44]
	bl	mov
	mov	w0, 0
.L3:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	mov, .-mov
	.section	.rodata
	.align	3
.LC0:
	.string	"Towers of Hanoi Puzzle Test Program\n"
	.align	3
.LC1:
	.string	"Disks     Moves\n"
	.align	3
.LC2:
	.string	"%3d  %10ld\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	str	wzr, [sp, 24]
.L7:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	wzr, [x0]
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w1, [sp, 24]
	str	w1, [x0, 4]
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	wzr, [x0, 8]
	adrp	x0, num
	add	x0, x0, :lo12:num
	str	wzr, [x0, 12]
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	xzr, [x0]
	mov	w2, 3
	mov	w1, 1
	ldr	w0, [sp, 24]
	bl	mov
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	x0, [x0]
	mov	x2, x0
	ldr	w1, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	ldr	w0, [sp, 24]
	cmp	w0, 10
	beq	.L10
	b	.L7
.L10:
	nop
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
