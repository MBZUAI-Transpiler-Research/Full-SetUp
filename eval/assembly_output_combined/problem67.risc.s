	.file	"problem67.c"
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
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L4:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,64
	bleu	a4,a5,.L3
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,90
	bgtu	a4,a5,.L3
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	lw	a5,-24(s0)
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
	.string	"problem67.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"abAB"
	.align	3
.LC4:
	.string	"func0(\"abAB\") == 131"
	.align	3
.LC5:
	.string	"abcCd"
	.align	3
.LC6:
	.string	"func0(\"abcCd\") == 67"
	.align	3
.LC7:
	.string	"helloE"
	.align	3
.LC8:
	.string	"func0(\"helloE\") == 69"
	.align	3
.LC9:
	.string	"woArBld"
	.align	3
.LC10:
	.string	"func0(\"woArBld\") == 131"
	.align	3
.LC11:
	.string	"aAaaaXa"
	.align	3
.LC12:
	.string	"func0(\"aAaaaXa\") == 153"
	.align	3
.LC13:
	.string	" How are yOu?"
	.align	3
.LC14:
	.string	"func0(\" How are yOu?\") == 151"
	.align	3
.LC15:
	.string	"You arE Very Smart"
	.align	3
.LC16:
	.string	"func0(\"You arE Very Smart\") == 327"
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
	beq	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L7:
	lla	a0,.LC3
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,131
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L8:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,67
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L9:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,69
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L10:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,131
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L11:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,153
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC1
	lla	a0,.LC12
	call	__assert_fail@plt
.L12:
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,151
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC1
	lla	a0,.LC14
	call	__assert_fail@plt
.L13:
	lla	a0,.LC15
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,327
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC1
	lla	a0,.LC16
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
