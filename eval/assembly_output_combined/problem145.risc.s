	.file	"problem145.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-272
	sd	ra,264(sp)
	sd	s0,256(sp)
	addi	s0,sp,272
	sd	a0,-264(s0)
	sd	a1,-272(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-256(s0)
	j	.L2
.L3:
	lw	a5,-256(s0)
	ld	a4,-264(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-256(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-216(a5)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
.L2:
	lw	a5,-256(s0)
	ld	a4,-264(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bne	a4,a5,.L3
	lw	a5,-256(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-216(a5)
	addi	a5,s0,-232
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-248(s0)
	sw	zero,-252(s0)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
	j	.L4
.L5:
	lw	a5,-256(s0)
	ld	a4,-264(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-252(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-112(a5)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
	lw	a5,-252(s0)
	addiw	a5,a5,1
	sw	a5,-252(s0)
.L4:
	lw	a5,-256(s0)
	ld	a4,-264(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	lw	a5,-252(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-112(a5)
	addi	a5,s0,-128
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-244(s0)
	sw	zero,-256(s0)
	j	.L6
.L7:
	lw	a5,-256(s0)
	ld	a4,-272(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-256(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-216(a5)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
.L6:
	lw	a5,-256(s0)
	ld	a4,-272(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bne	a4,a5,.L7
	lw	a5,-256(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-216(a5)
	addi	a5,s0,-232
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-240(s0)
	sw	zero,-252(s0)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
	j	.L8
.L9:
	lw	a5,-256(s0)
	ld	a4,-272(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-252(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-112(a5)
	lw	a5,-256(s0)
	addiw	a5,a5,1
	sw	a5,-256(s0)
	lw	a5,-252(s0)
	addiw	a5,a5,1
	sw	a5,-252(s0)
.L8:
	lw	a5,-256(s0)
	ld	a4,-272(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L9
	lw	a5,-252(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-112(a5)
	addi	a5,s0,-128
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-236(s0)
	lw	a5,-248(s0)
	mv	a4,a5
	lw	a5,-240(s0)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-244(s0)
	mv	a3,a5
	lw	a5,-236(s0)
	mulw	a5,a3,a5
	sext.w	a5,a5
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L10
	li	a5,1
	j	.L12
.L10:
	li	a5,0
.L12:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L13
	call	__stack_chk_fail@plt
.L13:
	mv	a0,a4
	ld	ra,264(sp)
	ld	s0,256(sp)
	addi	sp,sp,272
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"5/1"
	.align	3
.LC1:
	.string	"1/5"
	.align	3
.LC2:
	.string	"problem145.c"
	.align	3
.LC3:
	.string	"func0(\"1/5\", \"5/1\") == 1"
	.align	3
.LC4:
	.string	"2/1"
	.align	3
.LC5:
	.string	"1/6"
	.align	3
.LC6:
	.string	"func0(\"1/6\", \"2/1\") == 0"
	.align	3
.LC7:
	.string	"3/1"
	.align	3
.LC8:
	.string	"func0(\"5/1\", \"3/1\") == 1"
	.align	3
.LC9:
	.string	"10/2"
	.align	3
.LC10:
	.string	"7/10"
	.align	3
.LC11:
	.string	"func0(\"7/10\", \"10/2\") == 0"
	.align	3
.LC12:
	.string	"50/10"
	.align	3
.LC13:
	.string	"2/10"
	.align	3
.LC14:
	.string	"func0(\"2/10\", \"50/10\") == 1"
	.align	3
.LC15:
	.string	"4/2"
	.align	3
.LC16:
	.string	"7/2"
	.align	3
.LC17:
	.string	"func0(\"7/2\", \"4/2\") == 1"
	.align	3
.LC18:
	.string	"6/1"
	.align	3
.LC19:
	.string	"11/6"
	.align	3
.LC20:
	.string	"func0(\"11/6\", \"6/1\") == 1"
	.align	3
.LC21:
	.string	"5/2"
	.align	3
.LC22:
	.string	"2/3"
	.align	3
.LC23:
	.string	"func0(\"2/3\", \"5/2\") == 0"
	.align	3
.LC24:
	.string	"3/5"
	.align	3
.LC25:
	.string	"func0(\"5/2\", \"3/5\") == 0"
	.align	3
.LC26:
	.string	"8/4"
	.align	3
.LC27:
	.string	"2/4"
	.align	3
.LC28:
	.string	"func0(\"2/4\", \"8/4\") == 1"
	.align	3
.LC29:
	.string	"func0(\"2/4\", \"4/2\") == 1"
	.align	3
.LC30:
	.string	"func0(\"1/5\", \"1/5\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a1,.LC0
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L15:
	lla	a1,.LC4
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC2
	lla	a0,.LC6
	call	__assert_fail@plt
.L16:
	lla	a1,.LC7
	lla	a0,.LC0
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,43
	lla	a1,.LC2
	lla	a0,.LC8
	call	__assert_fail@plt
.L17:
	lla	a1,.LC9
	lla	a0,.LC10
	call	func0
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L18:
	lla	a1,.LC12
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC2
	lla	a0,.LC14
	call	__assert_fail@plt
.L19:
	lla	a1,.LC15
	lla	a0,.LC16
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC2
	lla	a0,.LC17
	call	__assert_fail@plt
.L20:
	lla	a1,.LC18
	lla	a0,.LC19
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC2
	lla	a0,.LC20
	call	__assert_fail@plt
.L21:
	lla	a1,.LC21
	lla	a0,.LC22
	call	func0
	mv	a5,a0
	beq	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC2
	lla	a0,.LC23
	call	__assert_fail@plt
.L22:
	lla	a1,.LC24
	lla	a0,.LC21
	call	func0
	mv	a5,a0
	beq	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC2
	lla	a0,.LC25
	call	__assert_fail@plt
.L23:
	lla	a1,.LC26
	lla	a0,.LC27
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC2
	lla	a0,.LC28
	call	__assert_fail@plt
.L24:
	lla	a1,.LC15
	lla	a0,.LC27
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC2
	lla	a0,.LC29
	call	__assert_fail@plt
.L25:
	lla	a1,.LC0
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,52
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L26:
	lla	a1,.LC1
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	beq	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC2
	lla	a0,.LC30
	call	__assert_fail@plt
.L27:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
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
