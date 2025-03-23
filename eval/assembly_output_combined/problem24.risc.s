	.file	"problem24.c"
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
	sw	zero,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	lw	a5,-20(s0)
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem24.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"func0(\"x\") == 1"
	.align	3
.LC5:
	.string	"asdasnakj"
	.align	3
.LC6:
	.string	"func0(\"asdasnakj\") == 9"
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
	beq	a5,zero,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L6:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L7:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,9
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC1
	lla	a0,.LC6
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
