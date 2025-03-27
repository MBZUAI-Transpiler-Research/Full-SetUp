	.file	"libmin_mread.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_mread
	.type	libmin_mread, @function
libmin_mread:
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
	ld	a0,-56(s0)
	call	libmin_meof@plt
	mv	a5,a0
	beq	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	sd	zero,-24(s0)
	j	.L4
.L6:
	ld	a5,-56(s0)
	ld	a4,16(a5)
	ld	a5,-56(s0)
	lw	a5,24(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	ld	a3,-56(s0)
	sw	a2,24(a3)
	add	a4,a4,a5
	ld	a5,-32(s0)
	addi	a3,a5,1
	sd	a3,-32(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L4:
	ld	a5,-56(s0)
	lw	a5,24(a5)
	mv	a4,a5
	ld	a5,-56(s0)
	ld	a5,8(a5)
	bgeu	a4,a5,.L5
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bgeu	a4,a5,.L5
	ld	a0,-56(s0)
	call	libmin_meof@plt
	mv	a5,a0
	beq	a5,zero,.L6
.L5:
	ld	a5,-24(s0)
.L3:
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
	.size	libmin_mread, .-libmin_mread
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
