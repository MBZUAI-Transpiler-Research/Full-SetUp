	.file	"problem98.c"
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
	lw	a5,-20(s0)
	sraiw	a5,a5,31
	lw	a4,-20(s0)
	xor	a4,a5,a4
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	sraiw	a5,a5,31
	lw	a3,-24(s0)
	xor	a3,a5,a3
	subw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	li	a5,10
	remw	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem98.c"
	.align	3
.LC1:
	.string	"func0(148, 412) == 16"
	.align	3
.LC2:
	.string	"func0(19, 28) == 72"
	.align	3
.LC3:
	.string	"func0(2020, 1851) == 0"
	.align	3
.LC4:
	.string	"func0(14, -15) == 20"
	.align	3
.LC5:
	.string	"func0(76, 67) == 42"
	.align	3
.LC6:
	.string	"func0(17, 27) == 49"
	.align	3
.LC7:
	.string	"func0(0, 1) == 0"
	.align	3
.LC8:
	.string	"func0(0, 0) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a1,412
	li	a0,148
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,16
	beq	a4,a5,.L4
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,13
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L4:
	li	a1,28
	li	a0,19
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,72
	beq	a4,a5,.L5
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,14
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L5:
	li	a1,1851
	li	a0,2020
	call	func0
	mv	a5,a0
	beq	a5,zero,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,15
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L6:
	li	a1,-15
	li	a0,14
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,20
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L7:
	li	a1,67
	li	a0,76
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,42
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L8:
	li	a1,27
	li	a0,17
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,49
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L9:
	li	a1,1
	li	a0,0
	call	func0
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC7
	call	__assert_fail@plt
.L10:
	li	a1,0
	li	a0,0
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC8
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
