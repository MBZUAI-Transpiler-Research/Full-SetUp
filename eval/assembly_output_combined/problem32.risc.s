	.file	"problem32.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	ld	a4,-40(s0)
	li	a5,1
	bgt	a4,a5,.L2
	li	a5,0
	j	.L3
.L2:
	li	a5,2
	sd	a5,-24(s0)
	j	.L4
.L6:
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	rem	a5,a4,a5
	bne	a5,zero,.L5
	li	a5,0
	j	.L3
.L5:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L4:
	ld	a5,-24(s0)
	mul	a5,a5,a5
	ld	a4,-40(s0)
	bge	a4,a5,.L6
	li	a5,1
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem32.c"
	.align	3
.LC1:
	.string	"func0(6) == false"
	.align	3
.LC2:
	.string	"func0(101) == true"
	.align	3
.LC3:
	.string	"func0(11) == true"
	.align	3
.LC4:
	.string	"func0(13441) == true"
	.align	3
.LC5:
	.string	"func0(61) == true"
	.align	3
.LC6:
	.string	"func0(4) == false"
	.align	3
.LC7:
	.string	"func0(1) == false"
	.align	3
.LC8:
	.string	"func0(5) == true"
	.align	3
.LC9:
	.string	"func0(17) == true"
	.align	3
.LC10:
	.string	"func0(5 * 17) == false"
	.align	3
.LC11:
	.string	"func0(11 * 7) == false"
	.align	3
.LC12:
	.string	"func0(13441 * 19) == false"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a0,6
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L8:
	li	a0,101
	call	func0
	mv	a5,a0
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L9:
	li	a0,11
	call	func0
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L10:
	li	a5,12288
	addi	a0,a5,1153
	call	func0
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L11:
	li	a0,61
	call	func0
	mv	a5,a0
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC5
	call	__assert_fail@plt
.L12:
	li	a0,4
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC6
	call	__assert_fail@plt
.L13:
	li	a0,1
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC0
	lla	a0,.LC7
	call	__assert_fail@plt
.L14:
	li	a0,5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC0
	lla	a0,.LC8
	call	__assert_fail@plt
.L15:
	li	a0,11
	call	func0
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L16:
	li	a0,17
	call	func0
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC0
	lla	a0,.LC9
	call	__assert_fail@plt
.L17:
	li	a0,85
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC0
	lla	a0,.LC10
	call	__assert_fail@plt
.L18:
	li	a0,77
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC0
	lla	a0,.LC11
	call	__assert_fail@plt
.L19:
	li	a5,253952
	addi	a0,a5,1427
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC0
	lla	a0,.LC12
	call	__assert_fail@plt
.L20:
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
