	.file	"problem109.c"
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
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L2
.L7:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L3
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
	j	.L4
.L3:
	sw	zero,-24(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	sraiw	a5,a4,31
	xor	a4,a4,a5
	subw	a5,a4,a5
	sw	a5,-20(s0)
	j	.L5
.L6:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,9
	bgt	a4,a5,.L6
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	subw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sext.w	a5,a5
	ble	a5,zero,.L4
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-32(s0)
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem109.c"
	.align	3
.LC5:
	.string	"func0((int[]){}, 0) == 0"
	.align	3
.LC6:
	.string	"func0((int[]){-1, -2, 0}, 3) == 0"
	.align	3
.LC7:
	.string	"func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6"
	.align	3
.LC8:
	.string	"func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5"
	.align	3
.LC9:
	.string	"func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4"
	.align	3
.LC10:
	.string	"func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5"
	.align	3
.LC11:
	.string	"func0((int[]){-0, 1}, 2) == 1"
	.align	3
.LC12:
	.string	"func0((int[]){1}, 1) == 1"
	.align	3
.LC0:
	.word	1
	.word	1
	.word	2
	.word	-2
	.word	3
	.word	4
	.word	5
	.align	3
.LC1:
	.word	1
	.word	6
	.word	9
	.word	-6
	.word	0
	.word	1
	.word	5
	.align	3
.LC2:
	.word	1
	.word	100
	.word	98
	.word	-7
	.word	1
	.word	-1
	.align	3
.LC3:
	.word	12
	.word	23
	.word	34
	.word	-45
	.word	-56
	.word	0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-56
	li	a1,0
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC4
	lla	a0,.LC5
	call	__assert_fail@plt
.L10:
	li	a5,-1
	sw	a5,-56(s0)
	li	a5,-2
	sw	a5,-52(s0)
	sw	zero,-48(s0)
	addi	a5,s0,-56
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC4
	lla	a0,.LC6
	call	__assert_fail@plt
.L11:
	lla	a5,.LC0
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
	li	a5,6
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC4
	lla	a0,.LC7
	call	__assert_fail@plt
.L12:
	lla	a5,.LC1
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
	li	a5,5
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC4
	lla	a0,.LC8
	call	__assert_fail@plt
.L13:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a4,8(a5)
	sd	a4,-48(s0)
	ld	a5,16(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-56
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC4
	lla	a0,.LC9
	call	__assert_fail@plt
.L14:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a4,8(a5)
	sd	a4,-48(s0)
	ld	a5,16(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-56
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC4
	lla	a0,.LC10
	call	__assert_fail@plt
.L15:
	sw	zero,-56(s0)
	li	a5,1
	sw	a5,-52(s0)
	addi	a5,s0,-56
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC4
	lla	a0,.LC11
	call	__assert_fail@plt
.L16:
	li	a5,1
	sw	a5,-56(s0)
	addi	a5,s0,-56
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC4
	lla	a0,.LC12
	call	__assert_fail@plt
.L17:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
	mv	a0,a4
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
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
