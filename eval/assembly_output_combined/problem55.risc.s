	.file	"problem55.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-24(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	sw	zero,-40(s0)
	j	.L2
.L9:
	sb	zero,-42(s0)
	sw	zero,-36(s0)
	j	.L3
.L6:
	lw	a5,-40(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-36(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L4
	li	a5,1
	sb	a5,-42(s0)
	j	.L5
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
.L5:
	lbu	a5,-42(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L7
	li	a5,0
	j	.L8
.L7:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	sw	zero,-32(s0)
	j	.L10
.L16:
	sb	zero,-41(s0)
	sw	zero,-28(s0)
	j	.L11
.L14:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L12
	li	a5,1
	sb	a5,-41(s0)
	j	.L13
.L12:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L11:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
.L13:
	lbu	a5,-41(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L15
	li	a5,0
	j	.L8
.L15:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L10:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L16
	li	a5,1
.L8:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"dddzzzzzzzddeddabc"
	.align	3
.LC1:
	.string	"eabcdzzzz"
	.align	3
.LC2:
	.string	"problem55.c"
	.align	3
.LC3:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddeddabc\") == true"
	.align	3
.LC4:
	.string	"dddddddabc"
	.align	3
.LC5:
	.string	"abcd"
	.align	3
.LC6:
	.string	"func0(\"abcd\", \"dddddddabc\") == true"
	.align	3
.LC7:
	.string	"func0(\"dddddddabc\", \"abcd\") == true"
	.align	3
.LC8:
	.string	"eabcd"
	.align	3
.LC9:
	.string	"func0(\"eabcd\", \"dddddddabc\") == false"
	.align	3
.LC10:
	.string	"dddddddabce"
	.align	3
.LC11:
	.string	"func0(\"abcd\", \"dddddddabce\") == false"
	.align	3
.LC12:
	.string	"dddzzzzzzzddddabc"
	.align	3
.LC13:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddddabc\") == false"
	.align	3
.LC14:
	.string	"aaccc"
	.align	3
.LC15:
	.string	"aabb"
	.align	3
.LC16:
	.string	"func0(\"aabb\", \"aaccc\") == false"
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
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L18:
	lla	a1,.LC4
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC2
	lla	a0,.LC6
	call	__assert_fail@plt
.L19:
	lla	a1,.LC5
	lla	a0,.LC4
	call	func0
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L20:
	lla	a1,.LC4
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L21:
	lla	a1,.LC10
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L22:
	lla	a1,.LC12
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC2
	lla	a0,.LC13
	call	__assert_fail@plt
.L23:
	lla	a1,.LC14
	lla	a0,.LC15
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC2
	lla	a0,.LC16
	call	__assert_fail@plt
.L24:
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
