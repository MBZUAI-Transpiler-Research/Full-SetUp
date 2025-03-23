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
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a2
	sd	a3,-56(s0)
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	ble	a5,zero,.L2
	lw	a5,-44(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	j	.L3
.L2:
	li	a5,0
.L3:
	ld	a4,-56(s0)
	sw	a5,0(a4)
	ld	a5,-56(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	ble	a5,zero,.L4
	ld	a5,-40(s0)
	lw	a4,0(a5)
	ld	a5,-24(s0)
	sw	a4,0(a5)
.L4:
	li	a5,1
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-28(s0)
	j	.L5
.L6:
	lw	a5,-28(s0)
	addiw	a4,a5,1
	sw	a4,-28(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	addiw	a3,a5,1
	sw	a3,-28(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L5:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
