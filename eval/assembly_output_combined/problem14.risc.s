	.file	"problem14.c"
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
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	j	.L2
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	remw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-36(s0)
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem14.c"
	.align	3
.LC1:
	.string	"func0(3, 7) == 1"
	.align	3
.LC2:
	.string	"func0(10, 15) == 5"
	.align	3
.LC3:
	.string	"func0(49, 14) == 7"
	.align	3
.LC4:
	.string	"func0(144, 60) == 12"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a1,7
	li	a0,3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L6:
	li	a1,15
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L7:
	li	a1,14
	li	a0,49
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,7
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L8:
	li	a1,60
	li	a0,144
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,12
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L9:
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
