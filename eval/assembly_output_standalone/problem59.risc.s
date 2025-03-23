	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sd	a4,-80(s0)
	sw	a5,-60(s0)
	mv	a5,a3
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L2
.L11:
	sw	zero,-32(s0)
	sw	zero,-36(s0)
	j	.L3
.L6:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L4
	li	a5,1
	sw	a5,-32(s0)
	j	.L5
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
.L5:
	lw	a5,-32(s0)
	sext.w	a5,a5
	bne	a5,zero,.L7
	sw	zero,-40(s0)
	j	.L8
.L10:
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L9
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	addiw	a3,a5,1
	sw	a3,-48(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	j	.L7
.L9:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L8:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
.L7:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	sw	zero,-44(s0)
	j	.L12
.L16:
	sw	zero,-40(s0)
	j	.L13
.L15:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L14
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L14:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L13:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-40(s0)
	sext.w	a5,a5
	blt	a5,a4,.L15
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L12:
	lw	a5,-48(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,a4,.L16
	ld	a5,-80(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
