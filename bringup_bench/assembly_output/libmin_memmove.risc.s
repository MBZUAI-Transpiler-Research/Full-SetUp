	.file	"libmin_memmove.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_memmove
	.type	libmin_memmove, @function
libmin_memmove:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	ld	a5,-64(s0)
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	sd	a5,-24(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	bgeu	a4,a5,.L2
	sd	zero,-40(s0)
	j	.L3
.L4:
	ld	a4,-32(s0)
	ld	a5,-40(s0)
	add	a4,a4,a5
	ld	a3,-24(s0)
	ld	a5,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L3:
	ld	a4,-40(s0)
	ld	a5,-72(s0)
	bltu	a4,a5,.L4
	j	.L5
.L2:
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	bleu	a4,a5,.L5
	ld	a5,-72(s0)
	sd	a5,-40(s0)
	j	.L6
.L7:
	ld	a5,-40(s0)
	addi	a5,a5,-1
	ld	a4,-32(s0)
	add	a4,a4,a5
	ld	a5,-40(s0)
	addi	a5,a5,-1
	ld	a3,-24(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,-1
	sd	a5,-40(s0)
.L6:
	ld	a5,-40(s0)
	bne	a5,zero,.L7
.L5:
	ld	a5,-56(s0)
	mv	a0,a5
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_memmove, .-libmin_memmove
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
