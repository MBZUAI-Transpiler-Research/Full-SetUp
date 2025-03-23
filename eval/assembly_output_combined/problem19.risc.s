	.file	"problem19.c"
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
	sd	a1,-48(s0)
	sw	zero,-32(s0)
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-24(s0)
	ld	a0,-48(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	sw	zero,-28(s0)
	j	.L4
.L6:
	lw	a5,-28(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	mv	a2,a4
	ld	a1,-48(s0)
	mv	a0,a5
	call	strncmp@plt
	mv	a5,a0
	bne	a5,zero,.L5
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L5:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	subw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,a4,.L6
	lw	a5,-32(s0)
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC1:
	.string	""
	.align	3
.LC2:
	.string	"problem19.c"
	.align	3
.LC3:
	.string	"func0(\"\", \"x\") == 0"
	.align	3
.LC4:
	.string	"xyxyxyx"
	.align	3
.LC5:
	.string	"func0(\"xyxyxyx\", \"x\") == 4"
	.align	3
.LC6:
	.string	"cac"
	.align	3
.LC7:
	.string	"cacacacac"
	.align	3
.LC8:
	.string	"func0(\"cacacacac\", \"cac\") == 4"
	.align	3
.LC9:
	.string	"john"
	.align	3
.LC10:
	.string	"john doe"
	.align	3
.LC11:
	.string	"func0(\"john doe\", \"john\") == 1"
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
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L8:
	lla	a1,.LC0
	lla	a0,.LC4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L9:
	lla	a1,.LC6
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC2
	lla	a0,.LC8
	call	__assert_fail@plt
.L10:
	lla	a1,.LC9
	lla	a0,.LC10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC2
	lla	a0,.LC11
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
