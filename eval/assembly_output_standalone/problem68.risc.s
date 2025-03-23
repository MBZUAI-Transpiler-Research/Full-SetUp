	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	addi	s0,sp,112
	sd	a0,-104(s0)
	mv	a5,a1
	sw	a5,-108(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	sd	zero,-72(s0)
	sh	zero,-64(s0)
	sd	zero,-56(s0)
	sh	zero,-48(s0)
	sw	zero,-84(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	j	.L2
.L6:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-76(s0)
	ld	a3,-104(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L3
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a5,-76(s0)
	ld	a4,-104(s0)
	add	a4,a4,a5
	lw	a5,-80(s0)
	addiw	a3,a5,1
	sw	a3,-80(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-32
	add	a5,a5,s0
	sb	a4,-40(a5)
	j	.L5
.L4:
	lw	a5,-76(s0)
	ld	a4,-104(s0)
	add	a4,a4,a5
	lw	a5,-80(s0)
	addiw	a3,a5,1
	sw	a3,-80(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-32
	add	a5,a5,s0
	sb	a4,-24(a5)
	j	.L5
.L3:
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,zero,.L5
	lw	a5,-80(s0)
	sext.w	a5,a5
	ble	a5,zero,.L5
	li	a5,1
	sw	a5,-84(s0)
	sw	zero,-80(s0)
.L5:
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
.L2:
	lw	a5,-76(s0)
	ld	a4,-104(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L6
	addi	a5,s0,-72
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	lw	a4,-108(s0)
	subw	a5,a4,a5
	sext.w	s1,a5
	addi	a5,s0,-56
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	subw	a5,s1,a5
	sext.w	a5,a5
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L8:
	mv	a0,a4
	ld	ra,104(sp)
	ld	s0,96(sp)
	ld	s1,88(sp)
	addi	sp,sp,112
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
