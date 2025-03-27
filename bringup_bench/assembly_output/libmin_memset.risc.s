	.file	"libmin_memset.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_memset
	.type	libmin_memset, @function
libmin_memset:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	bne	a5,zero,.L2
	ld	a5,-40(s0)
	j	.L3
.L2:
	ld	a5,-56(s0)
	addi	a5,a5,-1
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,-44(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lbu	a4,0(a5)
	ld	a5,-32(s0)
	sb	a4,0(a5)
	ld	a4,-56(s0)
	li	a5,2
	bgtu	a4,a5,.L4
	ld	a5,-40(s0)
	j	.L3
.L4:
	ld	a5,-56(s0)
	addi	a5,a5,-2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,-44(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a4,-32(s0)
	addi	a4,a4,1
	lbu	a5,0(a5)
	sb	a5,0(a4)
	ld	a5,-56(s0)
	addi	a5,a5,-3
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,-44(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a4,-32(s0)
	addi	a4,a4,2
	lbu	a5,0(a5)
	sb	a5,0(a4)
	ld	a4,-56(s0)
	li	a5,6
	bgtu	a4,a5,.L5
	ld	a5,-40(s0)
	j	.L3
.L5:
	ld	a5,-56(s0)
	addi	a5,a5,-4
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a4,-44(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a4,-32(s0)
	addi	a4,a4,3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	ld	a4,-56(s0)
	li	a5,8
	bgtu	a4,a5,.L6
	ld	a5,-40(s0)
	j	.L3
.L6:
	ld	a5,-32(s0)
	neg	a5,a5
	andi	a5,a5,3
	sd	a5,-24(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	ld	a4,-56(s0)
	ld	a5,-24(s0)
	sub	a5,a4,a5
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	andi	a5,a5,-4
	sd	a5,-56(s0)
	j	.L7
.L8:
	lw	a5,-44(s0)
	andi	a4,a5,0xff
	ld	a5,-32(s0)
	sb	a4,0(a5)
	ld	a5,-56(s0)
	addi	a5,a5,-1
	sd	a5,-56(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L7:
	ld	a5,-56(s0)
	bne	a5,zero,.L8
	ld	a5,-40(s0)
.L3:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_memset, .-libmin_memset
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
