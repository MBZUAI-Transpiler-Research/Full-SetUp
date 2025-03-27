	.file	"libmin_atoi.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_atoi
	.type	libmin_atoi, @function
libmin_atoi:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L3:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L2:
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,8
	sext.w	a5,a5
	bne	a5,zero,.L3
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
	mv	a3,a4
	li	a5,43
	beq	a3,a5,.L4
	li	a5,45
	bne	a4,a5,.L6
	li	a5,1
	sw	a5,-20(s0)
.L4:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
	j	.L6
.L7:
	lw	a5,-24(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-40(s0)
	addi	a3,a5,1
	sd	a3,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	subw	a5,a4,a5
	sw	a5,-24(s0)
.L6:
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,4
	sext.w	a5,a5
	bne	a5,zero,.L7
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L8
	lw	a5,-24(s0)
	negw	a5,a5
	sext.w	a5,a5
	j	.L9
.L8:
	lw	a5,-24(s0)
.L9:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_atoi, .-libmin_atoi
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
