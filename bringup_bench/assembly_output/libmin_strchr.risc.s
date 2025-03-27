	.file	"libmin_strchr.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strchr
	.type	libmin_strchr, @function
libmin_strchr:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sb	a5,-25(s0)
.L4:
	ld	a5,-24(s0)
	lbu	a4,0(a5)
	lbu	a5,-25(s0)
	andi	a5,a5,0xff
	bne	a5,a4,.L2
	ld	a5,-24(s0)
	j	.L3
.L2:
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	li	a5,0
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
	.size	libmin_strchr, .-libmin_strchr
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
