	.file	"libmin_strncat.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strncat
	.type	libmin_strncat, @function
libmin_strncat:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a0,-40(s0)
	call	libmin_strlen@plt
	mv	a4,a0
	ld	a5,-40(s0)
	add	a5,a5,a4
	sd	a5,-40(s0)
	j	.L2
.L4:
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
	ld	a4,-48(s0)
	addi	a5,a4,1
	sd	a5,-48(s0)
	ld	a5,-40(s0)
	addi	a3,a5,1
	sd	a3,-40(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L2:
	ld	a5,-56(s0)
	beq	a5,zero,.L3
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L4
.L3:
	ld	a5,-40(s0)
	addi	a4,a5,1
	sd	a4,-40(s0)
	sb	zero,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_strncat, .-libmin_strncat
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
