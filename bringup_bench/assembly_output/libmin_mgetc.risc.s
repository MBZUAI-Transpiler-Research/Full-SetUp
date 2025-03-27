	.file	"libmin_mgetc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_mgetc
	.type	libmin_mgetc, @function
libmin_mgetc:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	lw	a5,24(a5)
	mv	a4,a5
	ld	a5,-24(s0)
	ld	a5,8(a5)
	bltu	a4,a5,.L2
	li	a5,-1
	j	.L3
.L2:
	ld	a5,-24(s0)
	ld	a4,16(a5)
	ld	a5,-24(s0)
	lw	a5,24(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	ld	a3,-24(s0)
	sw	a2,24(a3)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_mgetc, .-libmin_mgetc
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
