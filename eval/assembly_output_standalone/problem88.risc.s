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
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	mv	a5,a1
	sd	a2,-88(s0)
	sd	a4,-96(s0)
	sw	a5,-76(s0)
	mv	a5,a3
	sw	a5,-80(s0)
	li	a0,800
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	sw	zero,-52(s0)
	sw	zero,-48(s0)
	j	.L2
.L6:
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sw	a5,-44(s0)
	j	.L3
.L5:
	lw	a5,-48(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-80(s0)
	sext.w	a5,a5
	bne	a5,a4,.L4
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	s1,a4,a5
	li	a0,8
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,4
	lw	a4,-44(s0)
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L4:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sw	a5,-44(s0)
.L3:
	lw	a5,-44(s0)
	sext.w	a5,a5
	bge	a5,zero,.L5
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-96(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
