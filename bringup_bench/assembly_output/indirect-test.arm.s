	.arch armv8-a
	.file	"indirect-test.c"
	.text
	.global	aglobal
	.data
	.align	2
	.type	aglobal, %object
	.size	aglobal, 4
aglobal:
	.word	56
	.text
	.align	2
	.global	foo
	.type	foo, %function
foo:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	mul	w0, w0, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	foo, .-foo
	.align	2
	.global	bar
	.type	bar, %function
bar:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	ldr	x1, [sp, 24]
	blr	x1
	mov	w1, w0
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	str	w1, [x0]
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	and	w0, w0, 7
	cmp	w0, 4
	beq	.L4
	cmp	w0, 4
	bgt	.L5
	cmp	w0, 3
	beq	.L6
	cmp	w0, 3
	bgt	.L5
	cmp	w0, 2
	beq	.L7
	cmp	w0, 2
	bgt	.L5
	cmp	w0, 0
	beq	.L8
	cmp	w0, 1
	beq	.L9
	b	.L5
.L8:
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	str	w1, [x0]
	b	.L10
.L9:
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	str	w1, [x0]
	b	.L10
.L7:
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	lsl	w1, w0, 1
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	str	w1, [x0]
	b	.L10
.L6:
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	str	w1, [x0]
	b	.L10
.L4:
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w1, w0, w0, ge
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	str	w1, [x0]
	b	.L10
.L5:
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	neg	w1, w0
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	str	w1, [x0]
	nop
.L10:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	bar, .-bar
	.global	pbar
	.section	.data.rel.local,"aw"
	.align	3
	.type	pbar, %object
	.size	pbar, 8
pbar:
	.xword	bar
	.section	.rodata
	.align	3
.LC0:
	.string	"aglobal = %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, foo
	add	x0, x0, :lo12:foo
	str	x0, [sp, 24]
	adrp	x0, pbar
	add	x0, x0, :lo12:pbar
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	blr	x1
	adrp	x0, pbar
	add	x0, x0, :lo12:pbar
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	blr	x1
	adrp	x0, pbar
	add	x0, x0, :lo12:pbar
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	blr	x1
	adrp	x0, aglobal
	add	x0, x0, :lo12:aglobal
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
