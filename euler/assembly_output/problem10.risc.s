	.file	"problem10.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%llu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	li	a5,1998848
	addi	a5,a5,1152
	sd	a5,-32(s0)
	sd	zero,-40(s0)
	li	a1,1
	ld	a0,-32(s0)
	call	calloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	li	a5,2
	sw	a5,-48(s0)
	j	.L2
.L6:
	lwu	a5,-48(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	lwu	a5,-48(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	sd	a5,-40(s0)
	lw	a5,-48(s0)
	slliw	a5,a5,1
	sw	a5,-44(s0)
	j	.L4
.L5:
	lwu	a5,-44(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	li	a4,1
	sb	a4,0(a5)
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
.L4:
	lwu	a5,-44(s0)
	ld	a4,-32(s0)
	bgtu	a4,a5,.L5
.L3:
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lwu	a5,-48(s0)
	ld	a4,-32(s0)
	bgtu	a4,a5,.L6
	ld	a0,-24(s0)
	call	free@plt
	ld	a1,-40(s0)
	lla	a0,.LC0
	call	printf@plt
	li	a5,0
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
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
