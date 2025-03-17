	.arch armv8-a
	.file	"problem148.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -112
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 104]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 112]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [sp, 120]
	str	wzr, [sp, 60]
	b	.L2
.L3:
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 112]
	add	x19, x1, x0
	mov	x1, 4
	mov	x0, 3
	bl	calloc
	str	x0, [x19]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 3
	ldr	x1, [sp, 120]
	add	x19, x1, x0
	mov	x1, 4
	mov	x0, 3
	bl	calloc
	str	x0, [x19]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L3
	ldr	x0, [sp, 112]
	ldr	x0, [x0]
	add	x1, x0, 8
	str	wzr, [x1]
	ldr	x0, [sp, 112]
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x1, [sp, 112]
	ldr	x1, [x1]
	ldr	w0, [x0]
	str	w0, [x1]
	ldr	x0, [sp, 120]
	ldr	x0, [x0]
	add	x1, x0, 8
	str	wzr, [x1]
	ldr	x0, [sp, 120]
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x1, [sp, 120]
	ldr	x1, [x1]
	ldr	w0, [x0]
	str	w0, [x1]
	mov	w0, 1
	str	w0, [sp, 64]
	b	.L4
.L7:
	ldr	w0, [sp, 64]
	mul	w1, w0, w0
	ldr	w0, [sp, 64]
	sub	w0, w1, w0
	add	w2, w0, 1
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 104]
	add	x3, x1, x0
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w2, w0
	lsr	x1, x0, 32
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	str	w1, [x3]
	str	wzr, [sp, 68]
	b	.L5
.L6:
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x2, [sp, 112]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L5:
	ldr	w0, [sp, 68]
	cmp	w0, 2
	ble	.L6
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 104]
	add	x0, x2, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x2, [sp, 112]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x3, [sp, 104]
	add	x0, x3, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x2, x0
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
.L4:
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L7
	mov	w0, 1
	str	w0, [sp, 72]
	b	.L8
.L20:
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L9
.L15:
	str	wzr, [sp, 80]
	b	.L10
.L11:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x2, [sp, 120]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
.L10:
	ldr	w0, [sp, 80]
	cmp	w0, 2
	ble	.L11
	ldr	w0, [sp, 76]
	cmp	w0, 0
	ble	.L12
	str	wzr, [sp, 84]
	b	.L13
.L14:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	x3, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 104]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 84]
	add	w1, w1, w0
	mov	w0, 21846
	movk	w0, 0x5555, lsl 16
	smull	x0, w1, w0
	lsr	x2, x0, 32
	asr	w0, w1, 31
	sub	w2, w2, w0
	mov	w0, w2
	lsl	w0, w0, 1
	add	w0, w0, w2
	sub	w2, w1, w0
	sxtw	x0, w2
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w3, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x4, [sp, 120]
	add	x0, x4, x0
	ldr	x4, [x0]
	sxtw	x0, w2
	lsl	x0, x0, 2
	add	x0, x4, x0
	add	w1, w3, w1
	str	w1, [x0]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
.L13:
	ldr	w0, [sp, 84]
	cmp	w0, 2
	ble	.L14
.L12:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L9:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L15
	str	wzr, [sp, 88]
	b	.L16
.L19:
	str	wzr, [sp, 92]
	b	.L17
.L18:
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x2, [sp, 112]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x0, x1, x0
	str	wzr, [x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
.L17:
	ldr	w0, [sp, 92]
	cmp	w0, 2
	ble	.L18
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
.L16:
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L19
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L8:
	ldr	w0, [sp, 72]
	cmp	w0, 2
	ble	.L20
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	w0, [x0]
	str	w0, [sp, 100]
	str	wzr, [sp, 96]
	b	.L21
.L22:
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 112]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 120]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	free
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
.L21:
	ldr	w1, [sp, 96]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L22
	ldr	x0, [sp, 112]
	bl	free
	ldr	x0, [sp, 120]
	bl	free
	ldr	x0, [sp, 104]
	bl	free
	ldr	w0, [sp, 100]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem148.c"
	.align	3
.LC1:
	.string	"func0(5) == 1"
	.align	3
.LC2:
	.string	"func0(6) == 4"
	.align	3
.LC3:
	.string	"func0(10) == 36"
	.align	3
.LC4:
	.string	"func0(100) == 53361"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	mov	w0, 5
	bl	func0
	cmp	w0, 1
	beq	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L25:
	mov	w0, 6
	bl	func0
	cmp	w0, 4
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 57
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L26:
	mov	w0, 10
	bl	func0
	cmp	w0, 36
	beq	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 58
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L27:
	mov	w0, 100
	bl	func0
	mov	w1, w0
	mov	w0, 53361
	cmp	w1, w0
	beq	.L28
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 59
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L28:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
