	.file	"problem159.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC18:
	.string	""
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-336
	sd	ra,328(sp)
	sd	s0,320(sp)
	addi	s0,sp,336
	sd	a0,-328(s0)
	mv	a5,a1
	sw	a5,-332(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC18
	sd	a5,-288(s0)
	sw	zero,-308(s0)
	sw	zero,-304(s0)
	j	.L2
.L8:
	sd	zero,-280(s0)
	addi	a5,s0,-272
	li	a4,248
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset@plt
	sw	zero,-300(s0)
	sw	zero,-296(s0)
	j	.L3
.L5:
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-296(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a4,a5
	addi	a5,s0,-280
	mv	a1,a4
	mv	a0,a5
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L4
	addi	a5,s0,-280
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	sw	a5,-292(s0)
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-296(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-292(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-264(a5)
	lw	a5,-292(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-264(a5)
	lw	a5,-300(s0)
	addiw	a5,a5,1
	sw	a5,-300(s0)
.L4:
	lw	a5,-296(s0)
	addiw	a5,a5,1
	sw	a5,-296(s0)
.L3:
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-296(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	lw	a5,-300(s0)
	mv	a4,a5
	lw	a5,-308(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bgt	a4,a5,.L6
	lw	a5,-300(s0)
	mv	a4,a5
	lw	a5,-308(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L7
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a1,-288(s0)
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bge	a5,zero,.L7
.L6:
	lw	a5,-304(s0)
	slli	a5,a5,3
	ld	a4,-328(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-288(s0)
	lw	a5,-300(s0)
	sw	a5,-308(s0)
.L7:
	lw	a5,-304(s0)
	addiw	a5,a5,1
	sw	a5,-304(s0)
.L2:
	lw	a5,-304(s0)
	mv	a4,a5
	lw	a5,-332(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	ld	a5,-288(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L10
	call	__stack_chk_fail@plt
.L10:
	mv	a0,a4
	ld	ra,328(sp)
	ld	s0,320(sp)
	addi	sp,sp,336
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC19:
	.string	"name"
	.align	3
.LC3:
	.string	"of"
	.align	3
.LC20:
	.string	"string"
	.align	3
.LC21:
	.string	"problem159.c"
	.align	3
.LC22:
	.string	"strcmp(func0(words1, 3), \"string\") == 0"
	.align	3
.LC23:
	.string	"enam"
	.align	3
.LC2:
	.string	"game"
	.align	3
.LC24:
	.string	"strcmp(func0(words2, 3), \"enam\") == 0"
	.align	3
.LC25:
	.string	"aaaaaaa"
	.align	3
.LC26:
	.string	"bb"
	.align	3
.LC27:
	.string	"cc"
	.align	3
.LC28:
	.string	"strcmp(func0(words3, 3), \"aaaaaaa\") == 0"
	.align	3
.LC29:
	.string	"abc"
	.align	3
.LC30:
	.string	"cba"
	.align	3
.LC31:
	.string	"strcmp(func0(words4, 2), \"abc\") == 0"
	.align	3
.LC4:
	.string	"footbott"
	.align	3
.LC33:
	.string	"strcmp(func0(words5, 5), \"footbott\") == 0"
	.align	3
.LC8:
	.string	"gonna"
	.align	3
.LC35:
	.string	"strcmp(func0(words6, 4), \"gonna\") == 0"
	.align	3
.LC13:
	.string	"nation"
	.align	3
.LC37:
	.string	"strcmp(func0(words7, 5), \"nation\") == 0"
	.align	3
.LC1:
	.string	"this"
	.align	3
.LC39:
	.string	"strcmp(func0(words8, 4), \"this\") == 0"
	.align	3
.LC40:
	.string	"b"
	.align	3
.LC41:
	.string	"strcmp(func0(words9, 1), \"b\") == 0"
	.align	3
.LC0:
	.string	"play"
	.align	3
.LC42:
	.string	"strcmp(func0(words10, 3), \"play\") == 0"
	.data
	.align	3
.LC32:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.section	.rodata
	.align	3
.LC6:
	.string	"we"
	.align	3
.LC7:
	.string	"are"
	.align	3
.LC9:
	.string	"rock"
	.data
	.align	3
.LC34:
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.section	.rodata
	.align	3
.LC11:
	.string	"a"
	.align	3
.LC12:
	.string	"mad"
	.data
	.align	3
.LC36:
	.dword	.LC6
	.dword	.LC7
	.dword	.LC11
	.dword	.LC12
	.dword	.LC13
	.section	.rodata
	.align	3
.LC15:
	.string	"is"
	.align	3
.LC16:
	.string	"prrk"
	.data
	.align	3
.LC38:
	.dword	.LC1
	.dword	.LC15
	.dword	.LC11
	.dword	.LC16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-288
	sd	ra,280(sp)
	sd	s0,272(sp)
	addi	s0,sp,288
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC19
	sd	a5,-264(s0)
	lla	a5,.LC3
	sd	a5,-256(s0)
	lla	a5,.LC20
	sd	a5,-248(s0)
	addi	a5,s0,-264
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC20
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC21
	lla	a0,.LC22
	call	__assert_fail@plt
.L12:
	lla	a5,.LC19
	sd	a5,-240(s0)
	lla	a5,.LC23
	sd	a5,-232(s0)
	lla	a5,.LC2
	sd	a5,-224(s0)
	addi	a5,s0,-240
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC23
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC21
	lla	a0,.LC24
	call	__assert_fail@plt
.L13:
	lla	a5,.LC25
	sd	a5,-216(s0)
	lla	a5,.LC26
	sd	a5,-208(s0)
	lla	a5,.LC27
	sd	a5,-200(s0)
	addi	a5,s0,-216
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC25
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC21
	lla	a0,.LC28
	call	__assert_fail@plt
.L14:
	lla	a5,.LC29
	sd	a5,-280(s0)
	lla	a5,.LC30
	sd	a5,-272(s0)
	addi	a5,s0,-280
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC29
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC21
	lla	a0,.LC31
	call	__assert_fail@plt
.L15:
	lla	a5,.LC32
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-104(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-80(s0)
	sd	a5,-72(s0)
	addi	a5,s0,-104
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC21
	lla	a0,.LC33
	call	__assert_fail@plt
.L16:
	lla	a5,.LC34
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-168(s0)
	sd	a3,-160(s0)
	sd	a4,-152(s0)
	sd	a5,-144(s0)
	addi	a5,s0,-168
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC8
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC21
	lla	a0,.LC35
	call	__assert_fail@plt
.L17:
	lla	a5,.LC36
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-64
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC13
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC21
	lla	a0,.LC37
	call	__assert_fail@plt
.L18:
	lla	a5,.LC38
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-136(s0)
	sd	a3,-128(s0)
	sd	a4,-120(s0)
	sd	a5,-112(s0)
	addi	a5,s0,-136
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC21
	lla	a0,.LC39
	call	__assert_fail@plt
.L19:
	lla	a5,.LC40
	sd	a5,-288(s0)
	addi	a5,s0,-288
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC40
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC21
	lla	a0,.LC41
	call	__assert_fail@plt
.L20:
	lla	a5,.LC0
	sd	a5,-192(s0)
	lla	a5,.LC0
	sd	a5,-184(s0)
	lla	a5,.LC0
	sd	a5,-176(s0)
	addi	a5,s0,-192
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC21
	lla	a0,.LC42
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
	ld	ra,280(sp)
	ld	s0,272(sp)
	addi	sp,sp,288
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
