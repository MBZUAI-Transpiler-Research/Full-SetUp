	.file	"problem65.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	lla	a5,.LC0
	sd	a5,-24(s0)
	sw	zero,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	j	.L2
.L4:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-24(s0)
	call	strchr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,zero,.L5
	lw	a5,-28(s0)
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,121
	beq	a4,a5,.L6
	lw	a5,-28(s0)
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,89
	bne	a4,a5,.L5
.L6:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L5:
	lw	a5,-36(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"abcde"
	.align	3
.LC2:
	.string	"problem65.c"
	.align	3
.LC3:
	.string	"func0(\"abcde\") == 2"
	.align	3
.LC4:
	.string	"Alone"
	.align	3
.LC5:
	.string	"func0(\"Alone\") == 3"
	.align	3
.LC6:
	.string	"key"
	.align	3
.LC7:
	.string	"func0(\"key\") == 2"
	.align	3
.LC8:
	.string	"bye"
	.align	3
.LC9:
	.string	"func0(\"bye\") == 1"
	.align	3
.LC10:
	.string	"keY"
	.align	3
.LC11:
	.string	"func0(\"keY\") == 2"
	.align	3
.LC12:
	.string	"bYe"
	.align	3
.LC13:
	.string	"func0(\"bYe\") == 1"
	.align	3
.LC14:
	.string	"ACEDY"
	.align	3
.LC15:
	.string	"func0(\"ACEDY\") == 3"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	lla	a0,.LC4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L10:
	lla	a0,.LC6
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L11:
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L12:
	lla	a0,.LC10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L13:
	lla	a0,.LC12
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC2
	lla	a0,.LC13
	call	__assert_fail@plt
.L14:
	lla	a0,.LC14
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC2
	lla	a0,.LC15
	call	__assert_fail@plt
.L15:
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
