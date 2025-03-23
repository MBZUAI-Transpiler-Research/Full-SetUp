	.file	"problem49.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L2
.L5:
	lw	a5,-24(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a3,-24(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-40(s0)
	add	a5,a5,a3
	lbu	a5,0(a5)
	beq	a4,a5,.L3
	li	a5,0
	j	.L4
.L3:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-20(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,a4,.L5
	li	a5,1
.L4:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem49.c"
	.align	3
.LC2:
	.string	"func0(\"\") == true"
	.align	3
.LC3:
	.string	"aba"
	.align	3
.LC4:
	.string	"func0(\"aba\") == true"
	.align	3
.LC5:
	.string	"aaaaa"
	.align	3
.LC6:
	.string	"func0(\"aaaaa\") == true"
	.align	3
.LC7:
	.string	"zbcd"
	.align	3
.LC8:
	.string	"func0(\"zbcd\") == false"
	.align	3
.LC9:
	.string	"xywyx"
	.align	3
.LC10:
	.string	"func0(\"xywyx\") == true"
	.align	3
.LC11:
	.string	"xywyz"
	.align	3
.LC12:
	.string	"func0(\"xywyz\") == false"
	.align	3
.LC13:
	.string	"xywzx"
	.align	3
.LC14:
	.string	"func0(\"xywzx\") == false"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a0,.LC0
	call	func0
	mv	a5,a0
	bne	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L7:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L8:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L9:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L10:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L11:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L12:
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC1
	lla	a0,.LC14
	call	__assert_fail@plt
.L13:
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
