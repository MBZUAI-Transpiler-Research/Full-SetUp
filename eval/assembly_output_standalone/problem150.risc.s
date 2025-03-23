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
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	mv	a5,a1
	sd	a2,-88(s0)
	sw	a5,-76(s0)
	ld	a5,-88(s0)
	sw	zero,0(a5)
	sw	zero,-56(s0)
	j	.L2
.L4:
	lw	a5,-56(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	andi	a5,a5,1
	bne	a5,zero,.L3
	lw	a5,-56(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a4,a4,a5
	ld	a5,-88(s0)
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a3,-72(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	ld	a5,-88(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-88(s0)
	sw	a4,0(a5)
.L3:
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L2:
	lw	a5,-56(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	sw	zero,-56(s0)
	j	.L5
.L10:
	sw	zero,-52(s0)
	j	.L6
.L9:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	sd	a0,-40(s0)
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	sd	a0,-32(s0)
	ld	a4,-40(s0)
	ld	a5,-32(s0)
	bgtu	a4,a5,.L7
	ld	a4,-40(s0)
	ld	a5,-32(s0)
	bne	a4,a5,.L8
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	ble	a5,zero,.L8
.L7:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-24(s0)
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a3,-72(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,-24(s0)
	sd	a4,0(a5)
.L8:
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L6:
	ld	a5,-88(s0)
	lw	a5,0(a5)
	lw	a4,-56(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-52(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L5:
	ld	a5,-88(s0)
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-56(s0)
	sext.w	a5,a5
	blt	a5,a4,.L10
	ld	a5,-88(s0)
	lw	a5,0(a5)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-48(s0)
	sw	zero,-56(s0)
	j	.L11
.L12:
	lw	a5,-56(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-56(s0)
	slli	a5,a5,3
	ld	a3,-48(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L11:
	ld	a5,-88(s0)
	lw	a4,0(a5)
	lw	a5,-56(s0)
	sext.w	a5,a5
	blt	a5,a4,.L12
	ld	a5,-48(s0)
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
