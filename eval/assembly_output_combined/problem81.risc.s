	.file	"problem81.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a4,a0
	li	a5,2
	bgtu	a4,a5,.L2
	li	a5,0
	j	.L3
.L2:
	li	a5,2
	sw	a5,-36(s0)
	j	.L4
.L7:
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-36(s0)
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L5
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-36(s0)
	addi	a5,a5,-2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L6
.L5:
	li	a5,0
	j	.L3
.L6:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L4:
	lw	s1,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	bltu	s1,a5,.L7
	li	a5,1
.L3:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"a"
	.align	3
.LC1:
	.string	"problem81.c"
	.align	3
.LC2:
	.string	"func0(\"a\") == false"
	.align	3
.LC3:
	.string	"aa"
	.align	3
.LC4:
	.string	"func0(\"aa\") == false"
	.align	3
.LC5:
	.string	"abcd"
	.align	3
.LC6:
	.string	"func0(\"abcd\") == true"
	.align	3
.LC7:
	.string	"aabb"
	.align	3
.LC8:
	.string	"func0(\"aabb\") == false"
	.align	3
.LC9:
	.string	"adb"
	.align	3
.LC10:
	.string	"func0(\"adb\") == true"
	.align	3
.LC11:
	.string	"xyy"
	.align	3
.LC12:
	.string	"func0(\"xyy\") == false"
	.align	3
.LC13:
	.string	"iopaxpoi"
	.align	3
.LC14:
	.string	"func0(\"iopaxpoi\") == true"
	.align	3
.LC15:
	.string	"iopaxioi"
	.align	3
.LC16:
	.string	"func0(\"iopaxioi\") == false"
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
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L9:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L10:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L11:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L12:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L13:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L14:
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC1
	lla	a0,.LC14
	call	__assert_fail@plt
.L15:
	lla	a0,.LC15
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC1
	lla	a0,.LC16
	call	__assert_fail@plt
.L16:
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
