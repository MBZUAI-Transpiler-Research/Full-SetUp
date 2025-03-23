	.file	"problem157.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"m"
	.align	3
.LC1:
	.string	"cm"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"cd"
	.align	3
.LC4:
	.string	"c"
	.align	3
.LC5:
	.string	"xc"
	.align	3
.LC6:
	.string	"l"
	.align	3
.LC7:
	.string	"xl"
	.align	3
.LC8:
	.string	"x"
	.align	3
.LC9:
	.string	"ix"
	.align	3
.LC10:
	.string	"v"
	.align	3
.LC11:
	.string	"iv"
	.align	3
.LC12:
	.string	"i"
	.data
	.align	3
.LC15:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.dword	.LC10
	.dword	.LC11
	.dword	.LC12
	.section	.rodata
	.align	3
.LC14:
	.word	1000
	.word	900
	.word	500
	.word	400
	.word	100
	.word	90
	.word	50
	.word	40
	.word	10
	.word	9
	.word	5
	.word	4
	.word	1
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-208
	sd	ra,200(sp)
	sd	s0,192(sp)
	addi	s0,sp,208
	mv	a5,a0
	sd	a1,-208(s0)
	sw	a5,-196(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a4,.LC15
	addi	a5,s0,-128
	mv	a3,a4
	li	a4,104
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy@plt
	lla	a5,.LC14
	ld	a6,0(a5)
	ld	a0,8(a5)
	ld	a1,16(a5)
	ld	a2,24(a5)
	ld	a3,32(a5)
	ld	a4,40(a5)
	sd	a6,-184(s0)
	sd	a0,-176(s0)
	sd	a1,-168(s0)
	sd	a2,-160(s0)
	sd	a3,-152(s0)
	sd	a4,-144(s0)
	lw	a5,48(a5)
	sw	a5,-136(s0)
	sw	zero,-188(s0)
	ld	a5,-208(s0)
	sb	zero,0(a5)
	j	.L2
.L4:
	lw	a5,-188(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-112(a5)
	mv	a1,a5
	ld	a0,-208(s0)
	call	strcat@plt
	lw	a5,-188(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-168(a5)
	lw	a4,-196(s0)
	subw	a5,a4,a5
	sw	a5,-196(s0)
.L3:
	lw	a5,-188(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-168(a5)
	lw	a5,-196(s0)
	sext.w	a5,a5
	bge	a5,a4,.L4
	lw	a5,-196(s0)
	sext.w	a5,a5
	ble	a5,zero,.L2
	lw	a5,-188(s0)
	addiw	a5,a5,1
	sw	a5,-188(s0)
.L2:
	lw	a5,-196(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L3
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,200(sp)
	ld	s0,192(sp)
	addi	sp,sp,208
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC16:
	.string	"xix"
	.align	3
.LC17:
	.string	"problem157.c"
	.align	3
.LC18:
	.string	"strcmp(result, \"xix\") == 0"
	.align	3
.LC19:
	.string	"clii"
	.align	3
.LC20:
	.string	"strcmp(result, \"clii\") == 0"
	.align	3
.LC21:
	.string	"ccli"
	.align	3
.LC22:
	.string	"strcmp(result, \"ccli\") == 0"
	.align	3
.LC23:
	.string	"cdxxvi"
	.align	3
.LC24:
	.string	"strcmp(result, \"cdxxvi\") == 0"
	.align	3
.LC25:
	.string	"strcmp(result, \"d\") == 0"
	.align	3
.LC26:
	.string	"strcmp(result, \"i\") == 0"
	.align	3
.LC27:
	.string	"strcmp(result, \"iv\") == 0"
	.align	3
.LC28:
	.string	"xliii"
	.align	3
.LC29:
	.string	"strcmp(result, \"xliii\") == 0"
	.align	3
.LC30:
	.string	"strcmp(result, \"xc\") == 0"
	.align	3
.LC31:
	.string	"xciv"
	.align	3
.LC32:
	.string	"strcmp(result, \"xciv\") == 0"
	.align	3
.LC33:
	.string	"dxxxii"
	.align	3
.LC34:
	.string	"strcmp(result, \"dxxxii\") == 0"
	.align	3
.LC35:
	.string	"strcmp(result, \"cm\") == 0"
	.align	3
.LC36:
	.string	"cmxciv"
	.align	3
.LC37:
	.string	"strcmp(result, \"cmxciv\") == 0"
	.align	3
.LC38:
	.string	"strcmp(result, \"m\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	addi	s0,sp,96
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,19
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC16
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC17
	lla	a0,.LC18
	call	__assert_fail@plt
.L8:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,152
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC19
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC17
	lla	a0,.LC20
	call	__assert_fail@plt
.L9:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,251
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC21
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC17
	lla	a0,.LC22
	call	__assert_fail@plt
.L10:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,426
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC23
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC17
	lla	a0,.LC24
	call	__assert_fail@plt
.L11:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,500
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC2
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC17
	lla	a0,.LC25
	call	__assert_fail@plt
.L12:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,1
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC12
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,43
	lla	a1,.LC17
	lla	a0,.LC26
	call	__assert_fail@plt
.L13:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,4
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC11
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC17
	lla	a0,.LC27
	call	__assert_fail@plt
.L14:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,43
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC28
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC17
	lla	a0,.LC29
	call	__assert_fail@plt
.L15:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,90
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,52
	lla	a1,.LC17
	lla	a0,.LC30
	call	__assert_fail@plt
.L16:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,94
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC31
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC17
	lla	a0,.LC32
	call	__assert_fail@plt
.L17:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,532
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC33
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC17
	lla	a0,.LC34
	call	__assert_fail@plt
.L18:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,900
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,61
	lla	a1,.LC17
	lla	a0,.LC35
	call	__assert_fail@plt
.L19:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,994
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC36
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,64
	lla	a1,.LC17
	lla	a0,.LC37
	call	__assert_fail@plt
.L20:
	addi	a5,s0,-88
	mv	a1,a5
	li	a0,1000
	call	func0
	addi	a5,s0,-88
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,67
	lla	a1,.LC17
	lla	a0,.LC38
	call	__assert_fail@plt
.L21:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L23
	call	__stack_chk_fail@plt
.L23:
	mv	a0,a4
	ld	ra,88(sp)
	ld	s0,80(sp)
	addi	sp,sp,96
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
