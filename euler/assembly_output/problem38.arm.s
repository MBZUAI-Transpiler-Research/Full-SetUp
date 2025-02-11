	.arch armv8-a
	.file	"problem38.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u"
	.align	3
.LC1:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	str	wzr, [sp, 8]
	mov	w0, 1
	str	w0, [sp, 12]
	b	.L2
.L7:
	str	xzr, [sp, 24]
	strh	wzr, [sp, 32]
	add	x4, sp, 24
	ldr	w3, [sp, 12]
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	mov	x1, 10
	mov	x0, x4
	bl	snprintf
	mov	w0, 2
	str	w0, [sp, 16]
.L6:
	str	xzr, [sp, 40]
	strh	wzr, [sp, 48]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 16]
	mul	w0, w1, w0
	add	x4, sp, 40
	mov	w3, w0
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	mov	x1, 10
	mov	x0, x4
	bl	snprintf
	add	x0, sp, 24
	bl	strlen
	mov	x19, x0
	add	x0, sp, 40
	bl	strlen
	add	x0, x19, x0
	cmp	x0, 9
	bls	.L3
	add	x0, sp, 24
	bl	is_pandigital
	cmp	w0, 0
	bne	.L4
	b	.L5
.L3:
	add	x0, sp, 24
	bl	strlen
	mov	x1, x0
	mov	x0, 10
	sub	x2, x0, x1
	add	x1, sp, 40
	add	x0, sp, 24
	bl	strncat
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	b	.L6
.L4:
	add	x0, sp, 24
	mov	w2, 10
	mov	x1, 0
	bl	strtoul
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bls	.L5
	ldr	w0, [sp, 20]
	str	w0, [sp, 8]
.L5:
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L2:
	ldr	w1, [sp, 12]
	mov	w0, 9999
	cmp	w1, w0
	bls	.L7
	ldr	w1, [sp, 8]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L9
	bl	__stack_chk_fail
.L9:
	mov	w0, w1
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.type	compare, %function
compare:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x0, [sp]
	ldrb	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.align	2
	.type	is_pandigital, %function
is_pandigital:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	str	x0, [sp, 8]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	strlen
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	cmp	x0, 9
	beq	.L13
	mov	w0, 0
	b	.L18
.L13:
	add	x0, sp, 40
	mov	x2, 10
	ldr	x1, [sp, 8]
	bl	strncpy
	add	x4, sp, 40
	adrp	x0, compare
	add	x3, x0, :lo12:compare
	mov	x2, 1
	ldr	x1, [sp, 32]
	mov	x0, x4
	bl	qsort
	str	xzr, [sp, 24]
	b	.L15
.L17:
	ldr	x0, [sp, 24]
	add	x1, sp, 40
	ldrb	w0, [x1, x0]
	and	x1, x0, 255
	ldr	x0, [sp, 24]
	add	x0, x0, 49
	cmp	x1, x0
	beq	.L16
	mov	w0, 0
	b	.L18
.L16:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L15:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L17
	mov	w0, 1
.L18:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L19
	bl	__stack_chk_fail
.L19:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	is_pandigital, .-is_pandigital
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
