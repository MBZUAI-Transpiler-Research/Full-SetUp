	.file	"code.c"
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
