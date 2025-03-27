	.file	"libmin_strrchr.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strrchr
	.type	libmin_strrchr, @function
libmin_strrchr:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sd	zero,-24(s0)
.L3:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	bne	a5,a4,.L2
	ld	a5,-40(s0)
	sd	a5,-24(s0)
.L2:
	ld	a5,-40(s0)
	addi	a4,a5,1
	sd	a4,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_strrchr, .-libmin_strrchr
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
