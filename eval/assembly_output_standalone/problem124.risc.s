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
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sw	a5,-36(s0)
	li	a5,10
	sw	a5,-32(s0)
	ld	a5,-56(s0)
	li	a4,1
	sw	a4,0(a5)
	ld	a5,-48(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L2
.L5:
	lw	a5,-36(s0)
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
	ld	a5,-56(s0)
	lw	a4,0(a5)
	lw	a5,-32(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L4
	lw	a5,-32(s0)
	slliw	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	mv	a1,a5
	ld	a0,-48(s0)
	call	realloc@plt
	sd	a0,-48(s0)
.L4:
	ld	a5,-56(s0)
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	ld	a4,-56(s0)
	sw	a3,0(a4)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a5,a5
	addiw	a5,a5,1
	sw	a5,-36(s0)
	j	.L2
.L3:
	lw	a5,-36(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L5
	li	a5,1
	sw	a5,-28(s0)
	j	.L6
.L10:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sw	a5,-24(s0)
	j	.L7
.L9:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,-1
	sw	a5,-24(s0)
.L7:
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,zero,.L8
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
.L8:
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L6:
	ld	a5,-56(s0)
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L10
	nop
	nop
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
