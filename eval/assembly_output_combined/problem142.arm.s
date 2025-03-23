	.arch armv8-a
	.file	"problem142.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"No"
	.align	3
.LC1:
	.string	".txt"
	.align	3
.LC2:
	.string	".exe"
	.align	3
.LC3:
	.string	".dll"
	.align	3
.LC4:
	.string	"Yes"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 4
	bgt	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L2:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 39]
	cmp	w0, 64
	bls	.L4
	ldrb	w0, [sp, 39]
	cmp	w0, 90
	bls	.L5
	ldrb	w0, [sp, 39]
	cmp	w0, 96
	bls	.L4
.L5:
	ldrb	w0, [sp, 39]
	cmp	w0, 122
	bls	.L6
.L4:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L6:
	ldrsw	x0, [sp, 52]
	sub	x0, x0, #4
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	str	x0, [sp, 56]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	ldr	x0, [sp, 56]
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	x0, [sp, 56]
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	ldr	x0, [sp, 56]
	bl	strcmp
	cmp	w0, 0
	beq	.L7
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L7:
	str	wzr, [sp, 48]
	b	.L8
.L11:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L9
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 57
	bhi	.L9
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L9:
	ldrsw	x0, [sp, 48]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 46
	bne	.L10
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L10:
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L8:
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 40]
	cmp	w0, 3
	bgt	.L12
	ldr	w0, [sp, 44]
	cmp	w0, 1
	beq	.L13
.L12:
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L3
.L13:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
.L3:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"example.txt"
	.align	3
.LC6:
	.string	"problem142.c"
	.align	3
.LC7:
	.string	"strcmp(func0(\"example.txt\"), \"Yes\") == 0"
	.align	3
.LC8:
	.string	"1example.dll"
	.align	3
.LC9:
	.string	"strcmp(func0(\"1example.dll\"), \"No\") == 0"
	.align	3
.LC10:
	.string	"s1sdf3.asd"
	.align	3
.LC11:
	.string	"strcmp(func0(\"s1sdf3.asd\"), \"No\") == 0"
	.align	3
.LC12:
	.string	"K.dll"
	.align	3
.LC13:
	.string	"strcmp(func0(\"K.dll\"), \"Yes\") == 0"
	.align	3
.LC14:
	.string	"MY16FILE3.exe"
	.align	3
.LC15:
	.string	"strcmp(func0(\"MY16FILE3.exe\"), \"Yes\") == 0"
	.align	3
.LC16:
	.string	"His12FILE94.exe"
	.align	3
.LC17:
	.string	"strcmp(func0(\"His12FILE94.exe\"), \"No\") == 0"
	.align	3
.LC18:
	.string	"_Y.txt"
	.align	3
.LC19:
	.string	"strcmp(func0(\"_Y.txt\"), \"No\") == 0"
	.align	3
.LC20:
	.string	"?aREYA.exe"
	.align	3
.LC21:
	.string	"strcmp(func0(\"?aREYA.exe\"), \"No\") == 0"
	.align	3
.LC22:
	.string	"/this_is_valid.dll"
	.align	3
.LC23:
	.string	"strcmp(func0(\"/this_is_valid.dll\"), \"No\") == 0"
	.align	3
.LC24:
	.string	"this_is_valid.wow"
	.align	3
.LC25:
	.string	"strcmp(func0(\"this_is_valid.wow\"), \"No\") == 0"
	.align	3
.LC26:
	.string	"this_is_valid.txt"
	.align	3
.LC27:
	.string	"strcmp(func0(\"this_is_valid.txt\"), \"Yes\") == 0"
	.align	3
.LC28:
	.string	"this_is_valid.txtexe"
	.align	3
.LC29:
	.string	"strcmp(func0(\"this_is_valid.txtexe\"), \"No\") == 0"
	.align	3
.LC30:
	.string	"#this2_i4s_5valid.ten"
	.align	3
.LC31:
	.string	"strcmp(func0(\"#this2_i4s_5valid.ten\"), \"No\") == 0"
	.align	3
.LC32:
	.string	"@this1_is6_valid.exe"
	.align	3
.LC33:
	.string	"strcmp(func0(\"@this1_is6_valid.exe\"), \"No\") == 0"
	.align	3
.LC34:
	.string	"this_is_12valid.6exe4.txt"
	.align	3
.LC35:
	.string	"strcmp(func0(\"this_is_12valid.6exe4.txt\"), \"No\") == 0"
	.align	3
.LC36:
	.string	"all.exe.txt"
	.align	3
.LC37:
	.string	"strcmp(func0(\"all.exe.txt\"), \"No\") == 0"
	.align	3
.LC38:
	.string	"I563_No.exe"
	.align	3
.LC39:
	.string	"strcmp(func0(\"I563_No.exe\"), \"Yes\") == 0"
	.align	3
.LC40:
	.string	"Is3youfault.txt"
	.align	3
.LC41:
	.string	"strcmp(func0(\"Is3youfault.txt\"), \"Yes\") == 0"
	.align	3
.LC42:
	.string	"no_one#knows.dll"
	.align	3
.LC43:
	.string	"strcmp(func0(\"no_one#knows.dll\"), \"Yes\") == 0"
	.align	3
.LC44:
	.string	"1I563_Yes3.exe"
	.align	3
.LC45:
	.string	"strcmp(func0(\"1I563_Yes3.exe\"), \"No\") == 0"
	.align	3
.LC46:
	.string	"I563_Yes3.txtt"
	.align	3
.LC47:
	.string	"strcmp(func0(\"I563_Yes3.txtt\"), \"No\") == 0"
	.align	3
.LC48:
	.string	"final..txt"
	.align	3
.LC49:
	.string	"strcmp(func0(\"final..txt\"), \"No\") == 0"
	.align	3
.LC50:
	.string	"final132"
	.align	3
.LC51:
	.string	"strcmp(func0(\"final132\"), \"No\") == 0"
	.align	3
.LC52:
	.string	"_f4indsartal132."
	.align	3
.LC53:
	.string	"strcmp(func0(\"_f4indsartal132.\"), \"No\") == 0"
	.align	3
.LC54:
	.string	"strcmp(func0(\".txt\"), \"No\") == 0"
	.align	3
.LC55:
	.string	"s."
	.align	3
.LC56:
	.string	"strcmp(func0(\"s.\"), \"No\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L15
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 26
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L15:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L16
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 27
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	__assert_fail
.L16:
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L17
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 28
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	__assert_fail
.L17:
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L18
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 29
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	__assert_fail
.L18:
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L19
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 30
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	__assert_fail
.L19:
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L20
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 31
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	__assert_fail
.L20:
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L21
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 32
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	__assert_fail
.L21:
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L22
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 33
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	__assert_fail
.L22:
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L23
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 34
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	__assert_fail
.L23:
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L24
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 35
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	__assert_fail
.L24:
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L25
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 36
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	__assert_fail
.L25:
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L26
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 37
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	bl	__assert_fail
.L26:
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L27
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 38
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	__assert_fail
.L27:
	adrp	x0, .LC32
	add	x0, x0, :lo12:.LC32
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L28
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 39
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
	bl	__assert_fail
.L28:
	adrp	x0, .LC34
	add	x0, x0, :lo12:.LC34
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L29
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 40
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC35
	add	x0, x0, :lo12:.LC35
	bl	__assert_fail
.L29:
	adrp	x0, .LC36
	add	x0, x0, :lo12:.LC36
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L30
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 41
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC37
	add	x0, x0, :lo12:.LC37
	bl	__assert_fail
.L30:
	adrp	x0, .LC38
	add	x0, x0, :lo12:.LC38
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L31
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 42
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC39
	add	x0, x0, :lo12:.LC39
	bl	__assert_fail
.L31:
	adrp	x0, .LC40
	add	x0, x0, :lo12:.LC40
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L32
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 43
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC41
	add	x0, x0, :lo12:.LC41
	bl	__assert_fail
.L32:
	adrp	x0, .LC42
	add	x0, x0, :lo12:.LC42
	bl	func0
	mov	x2, x0
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L33
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 44
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC43
	add	x0, x0, :lo12:.LC43
	bl	__assert_fail
.L33:
	adrp	x0, .LC44
	add	x0, x0, :lo12:.LC44
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L34
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 45
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC45
	add	x0, x0, :lo12:.LC45
	bl	__assert_fail
.L34:
	adrp	x0, .LC46
	add	x0, x0, :lo12:.LC46
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L35
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 46
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC47
	add	x0, x0, :lo12:.LC47
	bl	__assert_fail
.L35:
	adrp	x0, .LC48
	add	x0, x0, :lo12:.LC48
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L36
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 47
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC49
	add	x0, x0, :lo12:.LC49
	bl	__assert_fail
.L36:
	adrp	x0, .LC50
	add	x0, x0, :lo12:.LC50
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L37
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 48
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC51
	add	x0, x0, :lo12:.LC51
	bl	__assert_fail
.L37:
	adrp	x0, .LC52
	add	x0, x0, :lo12:.LC52
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L38
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 49
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC53
	add	x0, x0, :lo12:.LC53
	bl	__assert_fail
.L38:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L39
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 50
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC54
	add	x0, x0, :lo12:.LC54
	bl	__assert_fail
.L39:
	adrp	x0, .LC55
	add	x0, x0, :lo12:.LC55
	bl	func0
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L40
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 51
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC56
	add	x0, x0, :lo12:.LC56
	bl	__assert_fail
.L40:
	mov	w0, 0
	ldp	x29, x30, [sp], 16
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
