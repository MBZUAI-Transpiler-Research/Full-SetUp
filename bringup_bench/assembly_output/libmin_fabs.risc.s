	.file	"libmin_fabs.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_fabs
	.type	libmin_fabs, @function
libmin_fabs:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	fld	fa5,-40(s0)
	fsd	fa5,-24(s0)
	ld	a4,-24(s0)
	li	a5,-1
	srli	a5,a5,1
	and	a5,a4,a5
	sd	a5,-24(s0)
	fld	fa5,-24(s0)
	fmv.d	fa0,fa5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_fabs, .-libmin_fabs
	.align	1
	.globl	libmin_fabsf
	.type	libmin_fabsf, @function
libmin_fabsf:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsw	fa0,-36(s0)
	flw	fa5,-36(s0)
	fsw	fa5,-24(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-24(s0)
	flw	fa5,-24(s0)
	fmv.s	fa0,fa5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	libmin_fabsf, .-libmin_fabsf
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
