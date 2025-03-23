	.file	"problem47.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-448
	sd	ra,440(sp)
	sd	s0,432(sp)
	addi	s0,sp,448
	mv	a5,a0
	sw	a5,-436(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-424(s0)
	sw	zero,-420(s0)
	li	a5,2
	sw	a5,-416(s0)
	sw	zero,-412(s0)
	li	a5,4
	sw	a5,-428(s0)
	j	.L2
.L3:
	lw	a5,-428(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-408(a5)
	lw	a5,-428(s0)
	addiw	a5,a5,-2
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-408(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-428(s0)
	addiw	a5,a5,-3
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-408(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-428(s0)
	addiw	a5,a5,-4
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-408(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-428(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-408(a5)
	lw	a5,-428(s0)
	addiw	a5,a5,1
	sw	a5,-428(s0)
.L2:
	lw	a5,-428(s0)
	mv	a4,a5
	lw	a5,-436(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	lw	a5,-436(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-408(a5)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	mv	a0,a4
	ld	ra,440(sp)
	ld	s0,432(sp)
	addi	sp,sp,448
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem47.c"
	.align	3
.LC1:
	.string	"func0(5) == 4"
	.align	3
.LC2:
	.string	"func0(8) == 28"
	.align	3
.LC3:
	.string	"func0(10) == 104"
	.align	3
.LC4:
	.string	"func0(12) == 386"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a0,5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L7:
	li	a0,8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,28
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L8:
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,104
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	li	a0,12
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,386
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L10:
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
