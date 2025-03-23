	.arch armv8-a
	.file	"programdir.c"
	.text
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	ldr	w0, [sp, 44]
	cmp	w0, 2
	bne	.L2
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x1, [x0]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	cmp	x1, x0
	bne	.L3
.L2:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L3:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	str	x0, [sp, 56]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	str	x0, [sp, 72]
	str	xzr, [sp, 80]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	bl	execvp
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	mov	w0, w1
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nusage: rm FileTodelete"
	.align	3
.LC2:
	.string	"mkdir"
	.text
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
