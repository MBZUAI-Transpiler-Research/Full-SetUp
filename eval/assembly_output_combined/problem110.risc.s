	.file	"problem110.c"
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
	sw	zero,-24(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	li	a5,1
	j	.L3
.L2:
	li	a5,1
	sw	a5,-20(s0)
	j	.L4
.L6:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bge	a4,a5,.L5
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L5:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-44(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	ld	a5,-40(s0)
	lw	a5,0(a5)
	ble	a4,a5,.L7
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L7:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L8
	li	a5,1
	j	.L3
.L8:
	li	a5,0
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem110.c"
	.align	3
.LC5:
	.string	"func0((int[]){3, 4, 5, 1, 2}, 5) == true"
	.align	3
.LC6:
	.string	"func0((int[]){3, 5, 10, 1, 2}, 5) == true"
	.align	3
.LC7:
	.string	"func0((int[]){4, 3, 1, 2}, 4) == false"
	.align	3
.LC8:
	.string	"func0((int[]){3, 5, 4, 1, 2}, 5) == false"
	.align	3
.LC9:
	.string	"func0((int[]){}, 0) == true"
	.align	3
.LC0:
	.word	3
	.word	4
	.word	5
	.word	1
	.word	2
	.align	3
.LC1:
	.word	3
	.word	5
	.word	10
	.word	1
	.word	2
	.align	3
.LC2:
	.word	4
	.word	3
	.word	1
	.word	2
	.align	3
.LC3:
	.word	3
	.word	5
	.word	4
	.word	1
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC4
	lla	a0,.LC5
	call	__assert_fail@plt
.L10:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC4
	lla	a0,.LC6
	call	__assert_fail@plt
.L11:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-48
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC4
	lla	a0,.LC7
	call	__assert_fail@plt
.L12:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC4
	lla	a0,.LC8
	call	__assert_fail@plt
.L13:
	addi	a5,s0,-48
	li	a1,0
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC4
	lla	a0,.LC9
	call	__assert_fail@plt
.L14:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L16
	call	__stack_chk_fail@plt
.L16:
	mv	a0,a4
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
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
