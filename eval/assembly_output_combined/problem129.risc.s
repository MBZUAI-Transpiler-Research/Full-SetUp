	.file	"problem129.c"
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
	mv	a5,a1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	li	a5,-32768
	j	.L3
.L2:
	sw	zero,-28(s0)
	li	a5,1
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L4
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	sraiw	a5,a4,31
	xor	a4,a4,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	bne	a5,zero,.L5
	sw	zero,-24(s0)
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	bge	a5,zero,.L6
	lw	a5,-24(s0)
	negw	a5,a5
	sw	a5,-24(s0)
.L6:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem129.c"
	.align	3
.LC7:
	.string	"func0(arr1, 4) == -9"
	.align	3
.LC8:
	.string	"func0(arr2, 2) == 0"
	.align	3
.LC9:
	.string	"func0(arr3, 7) == -10"
	.align	3
.LC10:
	.string	"func0(NULL, 0) == -32768"
	.align	3
.LC11:
	.string	"func0(arr5, 7) == 20"
	.align	3
.LC12:
	.string	"func0(arr6, 4) == 4"
	.align	3
.LC13:
	.string	"func0(arr7, 4) == -4"
	.align	3
.LC14:
	.string	"func0(arr8, 4) == 0"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	2
	.word	-4
	.align	3
.LC1:
	.word	1
	.word	1
	.word	1
	.word	2
	.word	3
	.word	-1
	.word	1
	.align	3
.LC2:
	.word	2
	.word	4
	.word	1
	.word	2
	.word	-1
	.word	-1
	.word	9
	.align	3
.LC3:
	.word	-1
	.word	1
	.word	-1
	.word	1
	.align	3
.LC4:
	.word	-1
	.word	1
	.word	1
	.word	1
	.align	3
.LC5:
	.word	-1
	.word	1
	.word	1
	.word	0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-160
	sd	ra,152(sp)
	sd	s0,144(sp)
	addi	s0,sp,160
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-152(s0)
	ld	a5,8(a5)
	sd	a5,-144(s0)
	addi	a5,s0,-152
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-9
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC6
	lla	a0,.LC7
	call	__assert_fail@plt
.L9:
	sw	zero,-160(s0)
	li	a5,1
	sw	a5,-156(s0)
	addi	a5,s0,-160
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC6
	lla	a0,.LC8
	call	__assert_fail@plt
.L10:
	lla	a5,.LC1
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	lw	a5,24(a5)
	sw	a5,-64(s0)
	addi	a5,s0,-88
	li	a1,7
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-10
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC6
	lla	a0,.LC9
	call	__assert_fail@plt
.L11:
	li	a1,0
	li	a0,0
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-32768
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC6
	lla	a0,.LC10
	call	__assert_fail@plt
.L12:
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,24(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-56
	li	a1,7
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,20
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC6
	lla	a0,.LC11
	call	__assert_fail@plt
.L13:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-136(s0)
	ld	a5,8(a5)
	sd	a5,-128(s0)
	addi	a5,s0,-136
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC6
	lla	a0,.LC12
	call	__assert_fail@plt
.L14:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a5,8(a5)
	sd	a5,-112(s0)
	addi	a5,s0,-120
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-4
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC6
	lla	a0,.LC13
	call	__assert_fail@plt
.L15:
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a5,8(a5)
	sd	a5,-96(s0)
	addi	a5,s0,-104
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC6
	lla	a0,.LC14
	call	__assert_fail@plt
.L16:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L18
	call	__stack_chk_fail@plt
.L18:
	mv	a0,a4
	ld	ra,152(sp)
	ld	s0,144(sp)
	addi	sp,sp,160
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
