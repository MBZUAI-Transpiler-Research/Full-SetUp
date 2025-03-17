	.arch armv8-a
	.file	"problem23.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1, 0
	str	wzr, [sp, 16]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	b	.L2
.L5:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L3:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L4
	bl	__ctype_b_loc
	ldr	x1, [x0]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 2048
	cmp	w0, 0
	bne	.L4
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 45
	bne	.L5
.L4:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L16
	add	x0, sp, 24
	mov	w2, 10
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	strtol
	str	w0, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 32]
	cmp	x1, x0
	beq	.L11
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 44
	beq	.L9
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L11
.L9:
	ldr	w0, [sp, 16]
	add	w1, w0, 1
	str	w1, [sp, 16]
	adrp	x1, out.1
	add	x1, x1, :lo12:out.1
	sxtw	x0, w0
	ldr	w2, [sp, 20]
	str	w2, [x1, x0, lsl 2]
	b	.L10
.L12:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L11:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L10
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 44
	bne	.L12
.L10:
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
.L2:
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	b	.L7
.L16:
	nop
.L7:
	ldr	x0, [sp]
	ldr	w1, [sp, 16]
	str	w1, [x0]
	adrp	x0, out.1
	add	x0, x0, :lo12:out.1
	mov	x1, x0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 40]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L15
	bl	__stack_chk_fail
.L15:
	mov	x0, x1
	ldp	x29, x30, [sp, 48]
	add	sp, sp, 64
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L18
	mov	w0, 0
	b	.L19
.L18:
	str	wzr, [sp, 44]
	b	.L20
.L22:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L21
	mov	w0, 0
	b	.L19
.L21:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L20:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L22
	mov	w0, 1
.L19:
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC1:
	.string	""
	.align	3
.LC2:
	.string	"problem23.c"
	.align	3
.LC3:
	.string	"issame(result1, size, (int[]){}, 0)"
	.align	3
.LC4:
	.string	"4,,23.2,9,adasd"
	.align	3
.LC5:
	.string	"issame(result2, size, (int[]){4, 9}, 2)"
	.align	3
.LC6:
	.string	"3,c,3,3,a,b"
	.align	3
.LC7:
	.string	"issame(result3, size, (int[]){3, 3, 3}, 3)"
	.align	3
.LC8:
	.string	"All tests passed."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	add	x0, sp, 12
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	str	x0, [sp, 16]
	ldr	w0, [sp, 12]
	add	x1, sp, 40
	mov	w3, 0
	mov	x2, x1
	mov	w1, w0
	ldr	x0, [sp, 16]
	bl	issame
	cmp	w0, 0
	bne	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L24:
	add	x0, sp, 12
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	str	x0, [sp, 24]
	ldr	w1, [sp, 12]
	mov	w0, 4
	str	w0, [sp, 40]
	mov	w0, 9
	str	w0, [sp, 44]
	add	x0, sp, 40
	mov	w3, 2
	mov	x2, x0
	ldr	x0, [sp, 24]
	bl	issame
	cmp	w0, 0
	bne	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L25:
	add	x0, sp, 12
	mov	x1, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	func0
	str	x0, [sp, 32]
	ldr	w4, [sp, 12]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 40
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	add	x0, sp, 40
	mov	w3, 3
	mov	x2, x0
	mov	w1, w4
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 61
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L26:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	puts
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L28
	bl	__stack_chk_fail
.L28:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	3
	.word	3
	.word	3
	.text
	.local	out.1
	.comm	out.1,1024,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
