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
	sd	a1,-48(s0)
	sw	a5,-36(s0)
	li	a0,256
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-48(s0)
	sw	zero,0(a5)
	li	a5,2
	sw	a5,-28(s0)
	j	.L2
.L4:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	divw	a5,a4,a5
	sw	a5,-36(s0)
	ld	a5,-48(s0)
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	ld	a4,-48(s0)
	sw	a3,0(a4)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L4
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L3
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L6
	ld	a5,-48(s0)
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	ld	a4,-48(s0)
	sw	a3,0(a4)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
.L6:
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
