	.file	"libmin_strtok.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strtok
	.type	libmin_strtok, @function
libmin_strtok:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L2
	lla	a5,p.0
	ld	a5,0(a5)
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	libmin_strspn@plt
	mv	a4,a0
	ld	a5,-24(s0)
	add	a5,a5,a4
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	lla	a5,p.0
	sd	zero,0(a5)
	lla	a5,p.0
	ld	a5,0(a5)
	j	.L3
.L4:
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	libmin_strcspn@plt
	mv	a4,a0
	ld	a5,-24(s0)
	add	a4,a5,a4
	lla	a5,p.0
	sd	a4,0(a5)
	lla	a5,p.0
	ld	a5,0(a5)
	lbu	a5,0(a5)
	beq	a5,zero,.L5
	lla	a5,p.0
	ld	a5,0(a5)
	addi	a3,a5,1
	lla	a4,p.0
	sd	a3,0(a4)
	sb	zero,0(a5)
	j	.L6
.L5:
	lla	a5,p.0
	sd	zero,0(a5)
.L6:
	ld	a5,-24(s0)
.L3:
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_strtok, .-libmin_strtok
	.local	p.0
	.comm	p.0,8,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
