	.file	"problem103.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L2
	li	a5,-1
	j	.L3
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L4
	lw	a5,-24(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L4
	li	a5,-1
	j	.L3
.L4:
	lw	a5,-24(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L5
	lw	a5,-24(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	j	.L3
.L5:
	lw	a5,-24(s0)
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem103.c"
	.align	3
.LC1:
	.string	"func0(12, 15) == 14"
	.align	3
.LC2:
	.string	"func0(13, 12) == -1"
	.align	3
.LC3:
	.string	"func0(33, 12354) == 12354"
	.align	3
.LC4:
	.string	"func0(5234, 5233) == -1"
	.align	3
.LC5:
	.string	"func0(6, 29) == 28"
	.align	3
.LC6:
	.string	"func0(27, 10) == -1"
	.align	3
.LC7:
	.string	"func0(7, 7) == -1"
	.align	3
.LC8:
	.string	"func0(546, 546) == 546"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a1,15
	li	a0,12
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,14
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,15
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L7:
	li	a1,12
	li	a0,13
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	li	a5,12288
	addi	a1,a5,66
	li	a0,33
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,12288
	addi	a5,a5,66
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	li	a5,4096
	addi	a1,a5,1137
	li	a5,4096
	addi	a0,a5,1138
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L10:
	li	a1,29
	li	a0,6
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,28
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L11:
	li	a1,10
	li	a0,27
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L12:
	li	a1,7
	li	a0,7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC7
	call	__assert_fail@plt
.L13:
	li	a1,546
	li	a0,546
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,546
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC0
	lla	a0,.LC8
	call	__assert_fail@plt
.L14:
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
