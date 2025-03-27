	.file	"libmin_strncmp.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strncmp
	.type	libmin_strncmp, @function
libmin_strncmp:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a3,a2
	j	.L2
.L5:
	ld	a5,-40(s0)
	addi	a4,a5,1
	sd	a4,-40(s0)
	lbu	a5,0(a5)
	sb	a5,-18(s0)
	ld	a5,-48(s0)
	addi	a4,a5,1
	sd	a4,-48(s0)
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-18(s0)
	mv	a4,a5
	lbu	a5,-17(s0)
	andi	a4,a4,0xff
	andi	a5,a5,0xff
	beq	a4,a5,.L3
	lbu	a5,-18(s0)
	sext.w	a4,a5
	lbu	a5,-17(s0)
	sext.w	a5,a5
	subw	a5,a4,a5
	sext.w	a5,a5
	j	.L4
.L3:
	lbu	a5,-18(s0)
	andi	a5,a5,0xff
	bne	a5,zero,.L2
	li	a5,0
	j	.L4
.L2:
	mv	a5,a3
	addi	a3,a5,-1
	bne	a5,zero,.L5
	li	a5,0
.L4:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_strncmp, .-libmin_strncmp
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
