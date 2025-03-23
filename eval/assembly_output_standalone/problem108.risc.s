	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	mv	a5,a0
	sw	a5,-52(s0)
	li	a0,8
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	sw	zero,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,4
	sw	zero,0(a5)
	li	a5,1
	sw	a5,-40(s0)
	j	.L2
.L7:
	sw	zero,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	j	.L3
.L4:
	lw	a5,-36(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-32(s0)
	mv	a3,a5
	li	a5,10
	remw	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-32(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-32(s0)
.L3:
	lw	a5,-32(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L5
	lw	a5,-28(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L6
	ld	a5,-24(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-24(s0)
	sw	a4,0(a5)
	j	.L5
.L6:
	ld	a5,-24(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	addiw	a4,a4,1
	sext.w	a4,a4
	sw	a4,0(a5)
.L5:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L7
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
