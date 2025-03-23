	.arch armv8-a
	.file	"problem114.c"
	.text
	.section	.rodata
	.align	3
.LC7:
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 60]
	b	.L2
.L6:
	str	wzr, [sp, 64]
	str	wzr, [sp, 68]
	b	.L3
.L5:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L4
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 57
	bhi	.L4
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w0, w0, #48
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L4
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L4:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L3:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x19, x1, x0
	mov	x0, 100
	bl	malloc
	str	x0, [x19]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	ldr	x5, [x0]
	ldr	w4, [sp, 64]
	ldr	w3, [sp, 64]
	ldr	w2, [sp, 64]
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	mov	x0, x5
	bl	sprintf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L6
	ldr	x0, [sp, 72]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	wzr, [sp, 60]
	b	.L9
.L12:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	mov	w0, 0
	b	.L11
.L10:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L9:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L12
	mov	w0, 1
.L11:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"1234567"
	.align	3
.LC9:
	.string	"the number of odd elements 4 in the string 4 of the 4 input."
	.align	3
.LC10:
	.string	"problem114.c"
	.align	3
.LC11:
	.string	"issame(result1, expected1, 1)"
	.align	3
.LC12:
	.string	"3"
	.align	3
.LC13:
	.string	"11111111"
	.align	3
.LC14:
	.string	"the number of odd elements 1 in the string 1 of the 1 input."
	.align	3
.LC15:
	.string	"the number of odd elements 8 in the string 8 of the 8 input."
	.align	3
.LC16:
	.string	"issame(result2, expected2, 2)"
	.align	3
.LC19:
	.string	"issame(result3, expected3, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 152]
	mov	x1, 0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	str	x0, [sp, 56]
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	str	x0, [sp, 64]
	add	x0, sp, 56
	mov	w1, 1
	bl	func0
	str	x0, [sp, 32]
	add	x0, sp, 64
	mov	w2, 1
	mov	x1, x0
	ldr	x0, [sp, 32]
	bl	issame
	cmp	w0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L14:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	str	x0, [sp, 72]
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	str	x0, [sp, 80]
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	str	x0, [sp, 88]
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	str	x0, [sp, 96]
	add	x0, sp, 72
	mov	w1, 2
	bl	func0
	str	x0, [sp, 40]
	add	x0, sp, 88
	mov	w2, 2
	mov	x1, x0
	ldr	x0, [sp, 40]
	bl	issame
	cmp	w0, 0
	bne	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	__assert_fail
.L15:
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	add	x2, sp, 104
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	add	x2, sp, 128
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x0, sp, 104
	mov	w1, 3
	bl	func0
	str	x0, [sp, 48]
	add	x0, sp, 128
	mov	w2, 3
	mov	x1, x0
	ldr	x0, [sp, 48]
	bl	issame
	cmp	w0, 0
	bne	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 55
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L16:
	str	wzr, [sp, 20]
	b	.L17
.L18:
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L17:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	ble	.L18
	ldr	x0, [sp, 32]
	bl	free
	str	wzr, [sp, 24]
	b	.L19
.L20:
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L19:
	ldr	w0, [sp, 24]
	cmp	w0, 1
	ble	.L20
	ldr	x0, [sp, 40]
	bl	free
	str	wzr, [sp, 28]
	b	.L21
.L22:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L21:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	ble	.L22
	ldr	x0, [sp, 48]
	bl	free
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 152]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L24
	bl	__stack_chk_fail
.L24:
	mov	w0, w1
	ldp	x29, x30, [sp], 160
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"271"
	.align	3
.LC1:
	.string	"137"
	.align	3
.LC2:
	.string	"314"
	.data
	.align	3
.LC17:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"the number of odd elements 2 in the string 2 of the 2 input."
	.align	3
.LC5:
	.string	"the number of odd elements 3 in the string 3 of the 3 input."
	.data
	.align	3
.LC18:
	.xword	.LC4
	.xword	.LC5
	.xword	.LC4
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
