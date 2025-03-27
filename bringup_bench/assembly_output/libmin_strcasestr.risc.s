	.file	"libmin_strcasestr.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strcasestr
	.type	libmin_strcasestr, @function
libmin_strcasestr:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a0,-48(s0)
	call	libmin_strlen@plt
	sd	a0,-24(s0)
	j	.L2
.L5:
	ld	a2,-24(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	libmin_strncasecmp@plt
	mv	a5,a0
	bne	a5,zero,.L3
	ld	a5,-40(s0)
	j	.L4
.L3:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L2:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	li	a5,0
.L4:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_strcasestr, .-libmin_strcasestr
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
