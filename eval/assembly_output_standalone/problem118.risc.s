	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	sd	s1,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-88(s0)
	mv	a5,a1
	sd	a2,-104(s0)
	sw	a5,-92(s0)
	lla	a5,.LC0
	sd	a5,-56(s0)
	sd	zero,-64(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	ld	a0,-88(s0)
	call	strlen@plt
	sd	a0,-48(s0)
	ld	a5,-48(s0)
	addi	a5,a5,1
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	sw	zero,-68(s0)
	j	.L2
.L7:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-68(s0)
	ld	a3,-88(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,8192
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-68(s0)
	ld	a4,-88(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L4
.L3:
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L5
	lw	a5,-68(s0)
	mv	a4,a5
	lw	a5,-72(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,3
	mv	a1,a5
	ld	a0,-64(s0)
	call	realloc@plt
	sd	a0,-64(s0)
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	addi	a3,a5,1
	lw	a5,-76(s0)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-76(s0)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a1,-40(s0)
	mv	a0,a5
	call	strcpy@plt
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
.L5:
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-72(s0)
	sw	zero,-80(s0)
	j	.L6
.L4:
	lw	a5,-68(s0)
	ld	a4,-88(s0)
	add	a4,a4,a5
	lw	a5,-68(s0)
	mv	a3,a5
	lw	a5,-72(s0)
	subw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-40(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-68(s0)
	ld	a4,-88(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-56(s0)
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L6
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-68(s0)
	ld	a3,-88(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	beq	a5,zero,.L6
	lw	a5,-80(s0)
	addiw	a5,a5,1
	sw	a5,-80(s0)
.L6:
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-68(s0)
.L2:
	lw	a5,-68(s0)
	ld	a4,-48(s0)
	bgeu	a4,a5,.L7
	ld	a0,-40(s0)
	call	free@plt
	ld	a5,-104(s0)
	lw	a4,-76(s0)
	sw	a4,0(a5)
	ld	a5,-64(s0)
	mv	a0,a5
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	ld	s1,88(sp)
	.cfi_restore 9
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
