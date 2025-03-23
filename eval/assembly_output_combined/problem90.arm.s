	.arch armv8-a
	.file	"problem90.c"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	wzr, [sp, 24]
	b	.L2
.L3:
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w1, w0, #93
	mov	w0, 60495
	movk	w0, 0x4ec4, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 3
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 26
	mul	w0, w0, w2
	sub	w0, w1, w0
	add	w0, w0, 97
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	and	w1, w1, 255
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L3
	ldrsw	x0, [sp, 24]
	ldr	x1, [sp]
	add	x0, x1, x0
	strb	wzr, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"hi"
	.align	3
.LC1:
	.string	"lm"
	.align	3
.LC2:
	.string	"problem90.c"
	.align	3
.LC3:
	.string	"strcmp(encrypted, \"lm\") == 0"
	.align	3
.LC4:
	.string	"asdfghjkl"
	.align	3
.LC5:
	.string	"ewhjklnop"
	.align	3
.LC6:
	.string	"strcmp(encrypted, \"ewhjklnop\") == 0"
	.align	3
.LC7:
	.string	"gf"
	.align	3
.LC8:
	.string	"kj"
	.align	3
.LC9:
	.string	"strcmp(encrypted, \"kj\") == 0"
	.align	3
.LC10:
	.string	"et"
	.align	3
.LC11:
	.string	"ix"
	.align	3
.LC12:
	.string	"strcmp(encrypted, \"ix\") == 0"
	.align	3
.LC13:
	.string	"faewfawefaewg"
	.align	3
.LC14:
	.string	"jeiajeaijeiak"
	.align	3
.LC15:
	.string	"strcmp(encrypted, \"jeiajeaijeiak\") == 0"
	.align	3
.LC16:
	.string	"hellomyfriend"
	.align	3
.LC17:
	.string	"lippsqcjvmirh"
	.align	3
.LC18:
	.string	"strcmp(encrypted, \"lippsqcjvmirh\") == 0"
	.align	3
.LC19:
	.string	"dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"
	.align	3
.LC20:
	.string	"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"
	.align	3
.LC21:
	.string	"strcmp(encrypted, \"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl\") == 0"
	.align	3
.LC22:
	.string	"a"
	.align	3
.LC23:
	.string	"e"
	.align	3
.LC24:
	.string	"strcmp(encrypted, \"e\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 120]
	mov	x1, 0
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L5
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 23
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L5:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L6
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L6:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L7:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L8
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	__assert_fail
.L8:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L9
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L9:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	__assert_fail
.L10:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	__assert_fail
.L11:
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	func0
	add	x2, sp, 16
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	__assert_fail
.L12:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 120]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	mov	w0, w1
	ldp	x29, x30, [sp], 128
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
