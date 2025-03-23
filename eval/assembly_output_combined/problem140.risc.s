	.file	"problem140.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	mv	a5,a0
	sw	a5,-52(s0)
	li	a5,1
	sd	a5,-32(s0)
	li	a5,1
	sd	a5,-24(s0)
	li	a5,1
	sw	a5,-36(s0)
	j	.L2
.L3:
	lw	a5,-36(s0)
	ld	a4,-32(s0)
	mul	a5,a4,a5
	sd	a5,-32(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	mul	a5,a4,a5
	sd	a5,-24(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem140.c"
	.align	3
.LC1:
	.string	"func0(4) == 288"
	.align	3
.LC2:
	.string	"func0(5) == 34560"
	.align	3
.LC3:
	.string	"func0(7) == 125411328000"
	.align	3
.LC4:
	.string	"func0(1) == 1"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a0,4
	call	func0
	mv	a4,a0
	li	a5,288
	beq	a4,a5,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L6:
	li	a0,5
	call	func0
	mv	a4,a0
	li	a5,32768
	addi	a5,a5,1792
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L7:
	li	a0,7
	call	func0
	mv	a4,a0
	li	a5,1912832
	addi	a5,a5,793
	slli	a5,a5,16
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L8:
	li	a0,1
	call	func0
	mv	a4,a0
	li	a5,1
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L9:
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
