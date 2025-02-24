	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
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
	sd	a0,-88(s0)
	mv	a5,a1
	sw	a5,-92(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a5,-92(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-48(s0)
	sw	zero,-76(s0)
	j	.L2
.L7:
	lw	a5,-76(s0)
	slli	a5,a5,2
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	sraiw	a5,a4,31
	xor	a4,a4,a5
	subw	a5,a4,a5
	sext.w	a4,a5
	addi	a5,s0,-40
	mv	a2,a4
	lla	a1,.LC0
	mv	a0,a5
	call	sprintf@plt
	sw	zero,-72(s0)
	addi	a5,s0,-40
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	sw	a5,-52(s0)
	li	a5,1
	sw	a5,-68(s0)
	j	.L3
.L4:
	lw	a5,-68(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-24(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	lw	a4,-72(s0)
	addw	a5,a4,a5
	sw	a5,-72(s0)
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-68(s0)
.L3:
	lw	a5,-68(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-76(s0)
	slli	a5,a5,2
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L5
	lbu	a5,-40(s0)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	lw	a4,-72(s0)
	addw	a5,a4,a5
	sw	a5,-72(s0)
	j	.L6
.L5:
	lbu	a5,-40(s0)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	lw	a4,-72(s0)
	subw	a5,a4,a5
	sw	a5,-72(s0)
.L6:
	lw	a5,-76(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-72(s0)
	sw	a4,0(a5)
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
.L2:
	lw	a5,-76(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	sw	zero,-64(s0)
	j	.L8
.L12:
	li	a5,1
	sw	a5,-60(s0)
	j	.L9
.L11:
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L10
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-56(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-48(s0)
	add	a4,a4,a5
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-56(s0)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-56(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-88(s0)
	add	a4,a4,a5
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a3,-88(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-60(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-88(s0)
	add	a5,a4,a5
	lw	a4,-56(s0)
	sw	a4,0(a5)
.L10:
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L9:
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L8:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	ld	a0,-48(s0)
	call	free@plt
	ld	a5,-88(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
	mv	a0,a4
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
