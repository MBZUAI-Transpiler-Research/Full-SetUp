	.file	"problem84.c"
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
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L4
	li	a5,1
	j	.L3
.L4:
	li	a5,18
	sw	a5,-24(s0)
	li	a5,2
	sw	a5,-20(s0)
	j	.L5
.L6:
	lw	a5,-24(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-24(s0)
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem84.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(2) == 18"
	.align	3
.LC3:
	.string	"func0(3) == 180"
	.align	3
.LC4:
	.string	"func0(4) == 1800"
	.align	3
.LC5:
	.string	"func0(5) == 18000"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a0,1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L8:
	li	a0,2
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,18
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L9:
	li	a0,3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,180
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L10:
	li	a0,4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1800
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L11:
	li	a0,5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,16384
	addi	a5,a5,1616
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L12:
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
