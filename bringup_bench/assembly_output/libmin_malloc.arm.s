	.arch armv8-a
	.file	"libmin_malloc.c"
	.text
	.local	head
	.comm	head,8,8
	.local	tail
	.comm	tail,8,8
	.align	2
	.type	__get_free_block, %function
__get_free_block:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	adrp	x0, head
	add	x0, x0, :lo12:head
	ldr	x0, [x0]
	str	x0, [sp, 24]
	b	.L2
.L5:
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	beq	.L3
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	cmp	x1, x0
	bhi	.L3
	ldr	x0, [sp, 24]
	b	.L4
.L3:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	str	x0, [sp, 24]
.L2:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L5
	mov	x0, 0
.L4:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	__get_free_block, .-__get_free_block
	.align	2
	.global	libmin_malloc
	.type	libmin_malloc, %function
libmin_malloc:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L7
	mov	x0, 0
	b	.L8
.L7:
	ldr	x0, [sp, 24]
	bl	__get_free_block
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L9
	ldr	x0, [sp, 40]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 40]
	add	x0, x0, 24
	b	.L8
.L9:
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	bl	libtarg_sbrk
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmn	x0, #1
	bne	.L10
	mov	x0, 0
	b	.L8
.L10:
	ldr	x0, [sp, 56]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 40]
	str	xzr, [x0, 16]
	adrp	x0, head
	add	x0, x0, :lo12:head
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L11
	adrp	x0, head
	add	x0, x0, :lo12:head
	ldr	x1, [sp, 40]
	str	x1, [x0]
.L11:
	adrp	x0, tail
	add	x0, x0, :lo12:tail
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L12
	adrp	x0, tail
	add	x0, x0, :lo12:tail
	ldr	x0, [x0]
	ldr	x1, [sp, 40]
	str	x1, [x0, 16]
.L12:
	adrp	x0, tail
	add	x0, x0, :lo12:tail
	ldr	x1, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 24
.L8:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_malloc, .-libmin_malloc
	.align	2
	.global	libmin_free
	.type	libmin_free, %function
libmin_free:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L22
	ldr	x0, [sp, 24]
	sub	x0, x0, #24
	str	x0, [sp, 48]
	mov	x0, 0
	bl	libtarg_sbrk
	str	x0, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [sp, 56]
	cmp	x1, x0
	bne	.L16
	adrp	x0, head
	add	x0, x0, :lo12:head
	ldr	x1, [x0]
	adrp	x0, tail
	add	x0, x0, :lo12:tail
	ldr	x0, [x0]
	cmp	x1, x0
	bne	.L17
	adrp	x0, tail
	add	x0, x0, :lo12:tail
	str	xzr, [x0]
	adrp	x0, tail
	add	x0, x0, :lo12:tail
	ldr	x1, [x0]
	adrp	x0, head
	add	x0, x0, :lo12:head
	str	x1, [x0]
	b	.L18
.L17:
	adrp	x0, head
	add	x0, x0, :lo12:head
	ldr	x0, [x0]
	str	x0, [sp, 40]
	b	.L19
.L21:
	ldr	x0, [sp, 40]
	ldr	x1, [x0, 16]
	adrp	x0, tail
	add	x0, x0, :lo12:tail
	ldr	x0, [x0]
	cmp	x1, x0
	bne	.L20
	ldr	x0, [sp, 40]
	str	xzr, [x0, 16]
	adrp	x0, tail
	add	x0, x0, :lo12:tail
	ldr	x1, [sp, 40]
	str	x1, [x0]
.L20:
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 16]
	str	x0, [sp, 40]
.L19:
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L21
.L18:
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	mov	x1, -24
	sub	x0, x1, x0
	bl	libtarg_sbrk
	b	.L13
.L16:
	ldr	x0, [sp, 48]
	mov	w1, 1
	str	w1, [x0, 8]
	b	.L13
.L22:
	nop
.L13:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	libmin_free, .-libmin_free
	.align	2
	.global	libmin_calloc
	.type	libmin_calloc, %function
libmin_calloc:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L24
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L25
.L24:
	mov	x0, 0
	b	.L26
.L25:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	mul	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	udiv	x0, x1, x0
	ldr	x1, [sp, 16]
	cmp	x1, x0
	beq	.L27
	mov	x0, 0
	b	.L26
.L27:
	ldr	x0, [sp, 32]
	bl	libmin_malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L28
	mov	x0, 0
	b	.L26
.L28:
	ldr	x2, [sp, 32]
	mov	w1, 0
	ldr	x0, [sp, 40]
	bl	libmin_memset
	ldr	x0, [sp, 40]
.L26:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	libmin_calloc, .-libmin_calloc
	.align	2
	.global	libmin_realloc
	.type	libmin_realloc, %function
libmin_realloc:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L30
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L31
.L30:
	ldr	x0, [sp, 16]
	bl	libmin_malloc
	b	.L32
.L31:
	ldr	x0, [sp, 24]
	sub	x0, x0, #24
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bhi	.L33
	ldr	x0, [sp, 24]
	b	.L32
.L33:
	ldr	x0, [sp, 16]
	bl	libmin_malloc
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	beq	.L34
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 40]
	bl	libmin_memcpy
	ldr	x0, [sp, 24]
	bl	libmin_free
.L34:
	ldr	x0, [sp, 40]
.L32:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	libmin_realloc, .-libmin_realloc
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
