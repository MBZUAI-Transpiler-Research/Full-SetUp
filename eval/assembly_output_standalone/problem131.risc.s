	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	li	a4,1
	sw	a4,0(a5)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	ld	a5,-24(s0)
	j	.L3
.L2:
	ld	a5,-24(s0)
	addi	a5,a5,4
	li	a4,3
	sw	a4,0(a5)
	li	a5,2
	sw	a5,-28(s0)
	j	.L4
.L7:
	lw	a5,-28(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L5
	lw	a5,-28(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	addiw	a4,a4,1
	sext.w	a4,a4
	sw	a4,0(a5)
	j	.L6
.L5:
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	addi	a5,a5,-8
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a3,a5
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a2,-24(s0)
	add	a5,a2,a5
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
.L6:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L7
	ld	a5,-24(s0)
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
