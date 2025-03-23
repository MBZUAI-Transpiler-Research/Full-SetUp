	.file	"problem99.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOU"
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
	lla	a5,.LC0
	sd	a5,-40(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L2
.L5:
	lw	a5,-44(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-56(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-40(s0)
	call	strchr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L3:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	a5,-44(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L4
	lw	a5,-44(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	mv	s1,a5
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	bltu	s1,a5,.L5
.L4:
	lw	a5,-48(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"aBCdEf"
	.align	3
.LC2:
	.string	"problem99.c"
	.align	3
.LC3:
	.string	"func0(\"aBCdEf\") == 1"
	.align	3
.LC4:
	.string	"abcdefg"
	.align	3
.LC5:
	.string	"func0(\"abcdefg\") == 0"
	.align	3
.LC6:
	.string	"dBBE"
	.align	3
.LC7:
	.string	"func0(\"dBBE\") == 0"
	.align	3
.LC8:
	.string	"B"
	.align	3
.LC9:
	.string	"func0(\"B\") == 0"
	.align	3
.LC10:
	.string	"U"
	.align	3
.LC11:
	.string	"func0(\"U\") == 1"
	.align	3
.LC12:
	.string	""
	.align	3
.LC13:
	.string	"func0(\"\") == 0"
	.align	3
.LC14:
	.string	"EEEE"
	.align	3
.LC15:
	.string	"func0(\"EEEE\") == 2"
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
	li	a5,1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L8:
	lla	a0,.LC4
	call	func0
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L9:
	lla	a0,.LC6
	call	func0
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L10:
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L11:
	lla	a0,.LC10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L12:
	lla	a0,.LC12
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC2
	lla	a0,.LC13
	call	__assert_fail@plt
.L13:
	lla	a0,.LC14
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC2
	lla	a0,.LC15
	call	__assert_fail@plt
.L14:
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
