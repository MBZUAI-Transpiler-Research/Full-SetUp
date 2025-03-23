	.file	"problem25.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	mv	a5,a0
	sw	a5,-36(s0)
	li	a5,2
	sw	a5,-20(s0)
	j	.L2
.L5:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	divw	a5,a4,a5
	sext.w	a5,a5
	j	.L4
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L5
	li	a5,1
.L4:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem25.c"
	.align	3
.LC1:
	.string	"func0(3) == 1"
	.align	3
.LC2:
	.string	"func0(7) == 1"
	.align	3
.LC3:
	.string	"func0(10) == 5"
	.align	3
.LC4:
	.string	"func0(100) == 50"
	.align	3
.LC5:
	.string	"func0(49) == 7"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a0,3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,14
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L7:
	li	a0,7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,15
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	li	a0,100
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,50
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L10:
	li	a0,49
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,7
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L11:
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
