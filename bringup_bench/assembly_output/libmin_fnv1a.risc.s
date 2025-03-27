	.file	"libmin_fnv1a.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_fnv32a
	.type	libmin_fnv32a, @function
libmin_fnv32a:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	j	.L2
.L3:
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a4,a5
	lw	a5,-52(s0)
	xor	a5,a4,a5
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	slliw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-52(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	slliw	a5,a5,7
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	slliw	a5,a5,8
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	slliw	a5,a5,24
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-52(s0)
	addw	a5,a4,a5
	sw	a5,-52(s0)
.L2:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	bltu	a4,a5,.L3
	lw	a5,-52(s0)
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_fnv32a, .-libmin_fnv32a
	.align	1
	.globl	libmin_fnv64a
	.type	libmin_fnv64a, @function
libmin_fnv64a:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	j	.L6
.L7:
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	ld	a5,-56(s0)
	xor	a5,a5,a4
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	slli	a4,a5,1
	ld	a5,-56(s0)
	slli	a5,a5,4
	add	a4,a4,a5
	ld	a5,-56(s0)
	slli	a5,a5,5
	add	a4,a4,a5
	ld	a5,-56(s0)
	slli	a5,a5,7
	add	a4,a4,a5
	ld	a5,-56(s0)
	slli	a5,a5,8
	add	a4,a4,a5
	ld	a5,-56(s0)
	slli	a5,a5,40
	add	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	sd	a5,-56(s0)
.L6:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	bltu	a4,a5,.L7
	ld	a5,-56(s0)
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	libmin_fnv64a, .-libmin_fnv64a
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
