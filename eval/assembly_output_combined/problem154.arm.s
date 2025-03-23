	.arch armv8-a
	.file	"problem154.c"
	.text
	.section	.rodata
	.align	3
.LC36:
	.string	"%s.%s"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	x3, [sp, 16]
	mov	w0, -1000
	str	w0, [sp, 64]
	str	xzr, [sp, 80]
	str	wzr, [sp, 68]
	b	.L2
.L8:
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 88]
	str	wzr, [sp, 72]
	str	wzr, [sp, 76]
	b	.L3
.L6:
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 63]
	ldrb	w0, [sp, 63]
	cmp	w0, 64
	bls	.L4
	ldrb	w0, [sp, 63]
	cmp	w0, 90
	bhi	.L4
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
.L4:
	ldrb	w0, [sp, 63]
	cmp	w0, 96
	bls	.L5
	ldrb	w0, [sp, 63]
	cmp	w0, 122
	bhi	.L5
	ldr	w0, [sp, 72]
	sub	w0, w0, #1
	str	w0, [sp, 72]
.L5:
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L3:
	ldrsw	x0, [sp, 76]
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 72]
	str	w0, [sp, 64]
	ldr	x0, [sp, 88]
	str	x0, [sp, 80]
.L7:
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
.L2:
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L8
	ldr	x3, [sp, 80]
	ldr	x2, [sp, 40]
	adrp	x0, .LC36
	add	x1, x0, :lo12:.LC36
	ldr	x0, [sp, 16]
	bl	sprintf
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC38:
	.string	"Watashi"
	.align	3
.LC39:
	.string	"Watashi.eIGHt8OKe"
	.align	3
.LC40:
	.string	"problem154.c"
	.align	3
.LC41:
	.string	"strcmp(result, \"Watashi.eIGHt8OKe\") == 0"
	.align	3
.LC43:
	.string	"Boku123"
	.align	3
.LC44:
	.string	"Boku123.YEs.WeCaNe"
	.align	3
.LC45:
	.string	"strcmp(result, \"Boku123.YEs.WeCaNe\") == 0"
	.align	3
.LC47:
	.string	"__YESIMHERE"
	.align	3
.LC48:
	.string	"__YESIMHERE.NuLl__"
	.align	3
.LC49:
	.string	"strcmp(result, \"__YESIMHERE.NuLl__\") == 0"
	.align	3
.LC51:
	.string	"K"
	.align	3
.LC52:
	.string	"K.TAR"
	.align	3
.LC53:
	.string	"strcmp(result, \"K.TAR\") == 0"
	.align	3
.LC55:
	.string	"__HAHA"
	.align	3
.LC56:
	.string	"__HAHA.123"
	.align	3
.LC57:
	.string	"strcmp(result, \"__HAHA.123\") == 0"
	.align	3
.LC59:
	.string	"YameRore"
	.align	3
.LC60:
	.string	"YameRore.okIWILL123"
	.align	3
.LC61:
	.string	"strcmp(result, \"YameRore.okIWILL123\") == 0"
	.align	3
.LC63:
	.string	"finNNalLLly"
	.align	3
.LC64:
	.string	"finNNalLLly.WoW"
	.align	3
.LC65:
	.string	"strcmp(result, \"finNNalLLly.WoW\") == 0"
	.align	3
.LC66:
	.string	"Bb"
	.align	3
.LC67:
	.string	"91245"
	.align	3
.LC68:
	.string	"_"
	.align	3
.LC69:
	.string	"_.Bb"
	.align	3
.LC70:
	.string	"strcmp(result, \"_.Bb\") == 0"
	.align	3
.LC71:
	.string	"671235"
	.align	3
.LC72:
	.string	"Sp"
	.align	3
.LC73:
	.string	"Sp.671235"
	.align	3
.LC74:
	.string	"strcmp(result, \"Sp.671235\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -352]!
	.cfi_def_cfa_offset 352
	.cfi_offset 29, -352
	.cfi_offset 30, -344
	mov	x29, sp
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 344]
	mov	x1, 0
	adrp	x0, .LC37
	add	x0, x0, :lo12:.LC37
	add	x2, sp, 48
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, sp, 288
	add	x0, sp, 48
	mov	x3, x1
	mov	w2, 3
	mov	x1, x0
	adrp	x0, .LC38
	add	x0, x0, :lo12:.LC38
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC41
	add	x0, x0, :lo12:.LC41
	bl	__assert_fail
.L10:
	add	x0, sp, 360
	sub	x0, x0, #288
	adrp	x1, .LC42
	add	x1, x1, :lo12:.LC42
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x1, sp, 288
	add	x0, sp, 72
	mov	x3, x1
	mov	w2, 4
	mov	x1, x0
	adrp	x0, .LC43
	add	x0, x0, :lo12:.LC43
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC44
	add	x1, x0, :lo12:.LC44
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L11
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC45
	add	x0, x0, :lo12:.LC45
	bl	__assert_fail
.L11:
	adrp	x0, .LC46
	add	x1, x0, :lo12:.LC46
	add	x0, sp, 240
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	add	x1, sp, 288
	add	x0, sp, 240
	mov	x3, x1
	mov	w2, 6
	mov	x1, x0
	adrp	x0, .LC47
	add	x0, x0, :lo12:.LC47
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC48
	add	x1, x0, :lo12:.LC48
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L12
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC49
	add	x0, x0, :lo12:.LC49
	bl	__assert_fail
.L12:
	add	x0, sp, 360
	sub	x0, x0, #256
	adrp	x1, .LC50
	add	x1, x1, :lo12:.LC50
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x1, sp, 288
	add	x0, sp, 104
	mov	x3, x1
	mov	w2, 4
	mov	x1, x0
	adrp	x0, .LC51
	add	x0, x0, :lo12:.LC51
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L13
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC53
	add	x0, x0, :lo12:.LC53
	bl	__assert_fail
.L13:
	add	x0, sp, 360
	sub	x0, x0, #224
	adrp	x1, .LC54
	add	x1, x1, :lo12:.LC54
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x1, sp, 288
	add	x0, sp, 136
	mov	x3, x1
	mov	w2, 4
	mov	x1, x0
	adrp	x0, .LC55
	add	x0, x0, :lo12:.LC55
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC56
	add	x1, x0, :lo12:.LC56
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC57
	add	x0, x0, :lo12:.LC57
	bl	__assert_fail
.L14:
	adrp	x0, .LC58
	add	x1, x0, :lo12:.LC58
	add	x0, sp, 200
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x1, sp, 288
	add	x0, sp, 200
	mov	x3, x1
	mov	w2, 5
	mov	x1, x0
	adrp	x0, .LC59
	add	x0, x0, :lo12:.LC59
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC60
	add	x1, x0, :lo12:.LC60
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC61
	add	x0, x0, :lo12:.LC61
	bl	__assert_fail
.L15:
	add	x0, sp, 360
	sub	x0, x0, #192
	adrp	x1, .LC62
	add	x1, x1, :lo12:.LC62
	ld1	{v0.16b - v1.16b}, [x1]
	st1	{v0.16b - v1.16b}, [x0]
	add	x1, sp, 288
	add	x0, sp, 168
	mov	x3, x1
	mov	w2, 4
	mov	x1, x0
	adrp	x0, .LC63
	add	x0, x0, :lo12:.LC63
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC64
	add	x1, x0, :lo12:.LC64
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC65
	add	x0, x0, :lo12:.LC65
	bl	__assert_fail
.L16:
	adrp	x0, .LC66
	add	x0, x0, :lo12:.LC66
	str	x0, [sp, 16]
	adrp	x0, .LC67
	add	x0, x0, :lo12:.LC67
	str	x0, [sp, 24]
	add	x1, sp, 288
	add	x0, sp, 16
	mov	x3, x1
	mov	w2, 2
	mov	x1, x0
	adrp	x0, .LC68
	add	x0, x0, :lo12:.LC68
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC69
	add	x1, x0, :lo12:.LC69
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 53
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC70
	add	x0, x0, :lo12:.LC70
	bl	__assert_fail
.L17:
	adrp	x0, .LC71
	add	x0, x0, :lo12:.LC71
	str	x0, [sp, 32]
	adrp	x0, .LC66
	add	x0, x0, :lo12:.LC66
	str	x0, [sp, 40]
	add	x1, sp, 288
	add	x0, sp, 32
	mov	x3, x1
	mov	w2, 2
	mov	x1, x0
	adrp	x0, .LC72
	add	x0, x0, :lo12:.LC72
	bl	func0
	add	x2, sp, 288
	adrp	x0, .LC73
	add	x1, x0, :lo12:.LC73
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 56
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, .LC74
	add	x0, x0, :lo12:.LC74
	bl	__assert_fail
.L18:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 344]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L20
	bl	__stack_chk_fail
.L20:
	mov	w0, w1
	ldp	x29, x30, [sp], 352
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"tEN"
	.align	3
.LC1:
	.string	"niNE"
	.align	3
.LC2:
	.string	"eIGHt8OKe"
	.data
	.align	3
.LC37:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"nani"
	.align	3
.LC5:
	.string	"NazeDa"
	.align	3
.LC6:
	.string	"YEs.WeCaNe"
	.align	3
.LC7:
	.string	"32145tggg"
	.data
	.align	3
.LC42:
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.section	.rodata
	.align	3
.LC9:
	.string	"t"
	.align	3
.LC10:
	.string	"eMptY"
	.align	3
.LC11:
	.string	"(nothing"
	.align	3
.LC12:
	.string	"zeR00"
	.align	3
.LC13:
	.string	"NuLl__"
	.align	3
.LC14:
	.string	"123NoooneB321"
	.data
	.align	3
.LC46:
	.xword	.LC9
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
	.xword	.LC13
	.xword	.LC14
	.section	.rodata
	.align	3
.LC16:
	.string	"Ta"
	.align	3
.LC17:
	.string	"TAR"
	.align	3
.LC18:
	.string	"t234An"
	.align	3
.LC19:
	.string	"cosSo"
	.data
	.align	3
.LC50:
	.xword	.LC16
	.xword	.LC17
	.xword	.LC18
	.xword	.LC19
	.section	.rodata
	.align	3
.LC21:
	.string	"Tab"
	.align	3
.LC22:
	.string	"123"
	.align	3
.LC23:
	.string	"781345"
	.align	3
.LC24:
	.string	"-_-"
	.data
	.align	3
.LC54:
	.xword	.LC21
	.xword	.LC22
	.xword	.LC23
	.xword	.LC24
	.section	.rodata
	.align	3
.LC26:
	.string	"HhAas"
	.align	3
.LC27:
	.string	"okIWILL123"
	.align	3
.LC28:
	.string	"WorkOut"
	.align	3
.LC29:
	.string	"Fails"
	.data
	.align	3
.LC58:
	.xword	.LC26
	.xword	.LC27
	.xword	.LC28
	.xword	.LC29
	.xword	.LC24
	.section	.rodata
	.align	3
.LC31:
	.string	"Die"
	.align	3
.LC32:
	.string	"NowW"
	.align	3
.LC33:
	.string	"Wow"
	.align	3
.LC34:
	.string	"WoW"
	.data
	.align	3
.LC62:
	.xword	.LC31
	.xword	.LC32
	.xword	.LC33
	.xword	.LC34
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
