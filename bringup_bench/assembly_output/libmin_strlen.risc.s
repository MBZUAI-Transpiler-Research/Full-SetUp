	.file	"libmin_strlen.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strlen
	.type	libmin_strlen, @function
libmin_strlen:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	j	.L4
.L5:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L4:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	sub	a5,a4,a5
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_strlen, .-libmin_strlen
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
