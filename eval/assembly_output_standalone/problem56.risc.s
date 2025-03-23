	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-2032
	sd	ra,2024(sp)
	sd	s0,2016(sp)
	addi	s0,sp,2032
	addi	sp,sp,-2016
	mv	a4,a0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,76(a5)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	addi	a4,a5,88
	li	a5,4096
	addi	a5,a5,-96
	mv	a2,a5
	li	a1,0
	mv	a0,a4
	call	memset@plt
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,88(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,1
	sw	a4,92(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,2
	sw	a4,84(a5)
	j	.L2
.L3:
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,84(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,88(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,84(a5)
	addiw	a5,a5,-2
	sext.w	a5,a5
	li	a3,-4096
	addi	a3,a3,-16
	add	a3,a3,s0
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,88(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,84(a5)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,88(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,84(a4)
	addiw	a4,a4,1
	sw	a4,84(a5)
.L2:
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,84(a4)
	lw	a5,76(a5)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,76(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,88(a5)
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
	addi	sp,sp,2016
	ld	ra,2024(sp)
	ld	s0,2016(sp)
	addi	sp,sp,2032
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
