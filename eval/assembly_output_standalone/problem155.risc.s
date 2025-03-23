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
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-32(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-36(s0)
	j	.L2
.L5:
	lw	a5,-36(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	mv	a3,a4
	lw	a4,-36(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	mv	a2,a4
	mv	a1,a5
	ld	a0,-24(s0)
	call	strncpy@plt
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	mv	a2,a4
	ld	a1,-64(s0)
	mv	a0,a5
	call	strncpy@plt
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a1,-24(s0)
	ld	a0,-56(s0)
	call	strstr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	ld	a0,-24(s0)
	call	free@plt
	li	a5,1
	j	.L4
.L3:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	ld	a0,-24(s0)
	call	free@plt
	li	a5,0
.L4:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
