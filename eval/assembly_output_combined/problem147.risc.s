	.file	"problem147.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	j	.L2
.L6:
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,10
	ble	a4,a5,.L3
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	j	.L4
.L5:
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-28(s0)
.L4:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,9
	bgt	a4,a5,.L5
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L3
	lw	a5,-24(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L3
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
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-36(s0)
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem147.c"
	.align	3
.LC6:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 0"
	.align	3
.LC7:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 1"
	.align	3
.LC8:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 2"
	.align	3
.LC9:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 4"
	.align	3
.LC10:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 3"
	.align	3
.LC0:
	.word	5
	.word	-2
	.word	1
	.word	-5
	.align	3
.LC1:
	.word	15
	.word	-73
	.word	14
	.word	-15
	.align	3
.LC2:
	.word	33
	.word	-2
	.word	-3
	.word	45
	.word	21
	.word	109
	.align	3
.LC3:
	.word	43
	.word	-12
	.word	93
	.word	125
	.word	121
	.word	109
	.align	3
.LC4:
	.word	71
	.word	-2
	.word	-33
	.word	75
	.word	21
	.word	19
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
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-48
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L9:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a5,s0,-48
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC5
	lla	a0,.LC7
	call	__assert_fail@plt
.L10:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC5
	lla	a0,.LC8
	call	__assert_fail@plt
.L11:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC5
	lla	a0,.LC9
	call	__assert_fail@plt
.L12:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,3
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC5
	lla	a0,.LC10
	call	__assert_fail@plt
.L13:
	li	a5,1
	sw	a5,-48(s0)
	addi	a5,s0,-48
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L14:
	addi	a5,s0,-48
	li	a1,0
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L15:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L17
	call	__stack_chk_fail@plt
.L17:
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
