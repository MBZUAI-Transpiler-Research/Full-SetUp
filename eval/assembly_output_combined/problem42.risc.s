	.file	"problem42.c"
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
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mulw	a5,a5,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem42.c"
	.align	3
.LC1:
	.string	"func0(2) == 4"
	.align	3
.LC2:
	.string	"func0(3) == 9"
	.align	3
.LC3:
	.string	"func0(4) == 16"
	.align	3
.LC4:
	.string	"func0(8) == 64"
	.align	3
.LC5:
	.string	"func0(10) == 100"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a0,2
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L4
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,13
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L4:
	li	a0,3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,9
	beq	a4,a5,.L5
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,14
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L5:
	li	a0,4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,16
	beq	a4,a5,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,15
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L6:
	li	a0,8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,64
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L7:
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,100
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L8:
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
