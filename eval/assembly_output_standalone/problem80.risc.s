	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-52(s0)
	li	a0,64
	call	malloc@plt
	mv	a5,a0
	sd	a5,-32(s0)
	ld	a5,-32(s0)
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	li	a5,62
	sw	a5,-44(s0)
	ld	a5,-32(s0)
	addi	a5,a5,63
	sb	zero,0(a5)
	lw	a5,-52(s0)
	sext.w	a5,a5
	bne	a5,zero,.L6
	lw	a5,-44(s0)
	addiw	a4,a5,-1
	sw	a4,-44(s0)
	mv	a4,a5
	ld	a5,-32(s0)
	add	a5,a5,a4
	li	a4,48
	sb	a4,0(a5)
	j	.L5
.L7:
	lw	a5,-52(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	lw	a5,-44(s0)
	addiw	a3,a5,-1
	sw	a3,-44(s0)
	mv	a3,a5
	ld	a5,-32(s0)
	add	a5,a5,a3
	addiw	a4,a4,48
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-52(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-52(s0)
.L6:
	lw	a5,-52(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L7
.L5:
	lw	a5,-44(s0)
	addiw	a4,a5,-1
	sw	a4,-44(s0)
	mv	a4,a5
	ld	a5,-32(s0)
	add	a5,a5,a4
	li	a4,98
	sb	a4,0(a5)
	lw	a5,-44(s0)
	addiw	a4,a5,-1
	sw	a4,-44(s0)
	mv	a4,a5
	ld	a5,-32(s0)
	add	a5,a5,a4
	li	a4,100
	sb	a4,0(a5)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
	li	a5,62
	lw	a4,-40(s0)
	subw	a5,a5,a4
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,3
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L8
	ld	a0,-32(s0)
	call	free@plt
	li	a5,0
	j	.L3
.L8:
	lw	a5,-40(s0)
	ld	a4,-32(s0)
	add	a5,a4,a5
	mv	a1,a5
	ld	a0,-24(s0)
	call	strcpy@plt
	ld	a0,-24(s0)
	call	strlen@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-24(s0)
	add	a5,a5,a4
	li	a4,100
	sb	a4,0(a5)
	li	a4,98
	sb	a4,1(a5)
	sb	zero,2(a5)
	ld	a0,-32(s0)
	call	free@plt
	ld	a5,-24(s0)
.L3:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
