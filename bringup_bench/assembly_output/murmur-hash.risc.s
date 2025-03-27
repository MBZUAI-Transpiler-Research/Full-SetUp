	.file	"murmur-hash.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	murmurhash
	.type	murmurhash, @function
murmurhash:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s0,88(sp)
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-88(s0)
	mv	a5,a1
	mv	a4,a2
	sw	a5,-92(s0)
	mv	a5,a4
	sw	a5,-96(s0)
	li	a5,-862048256
	addi	a5,a5,-687
	sw	a5,-68(s0)
	li	a5,461844480
	addi	a5,a5,1427
	sw	a5,-64(s0)
	li	a5,15
	sw	a5,-60(s0)
	li	a5,13
	sw	a5,-56(s0)
	li	a5,5
	sw	a5,-52(s0)
	li	a5,-430673920
	addi	a5,a5,-1180
	sw	a5,-48(s0)
	sw	zero,-80(s0)
	sw	zero,-76(s0)
	ld	a5,-88(s0)
	sd	a5,-40(s0)
	sd	zero,-32(s0)
	sd	zero,-24(s0)
	sw	zero,-72(s0)
	lw	a5,-92(s0)
	srliw	a5,a5,2
	sext.w	a5,a5
	sw	a5,-44(s0)
	lw	a5,-96(s0)
	sw	a5,-80(s0)
	lw	a5,-44(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	sd	a5,-32(s0)
	lw	a5,-44(s0)
	slliw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	sd	a5,-24(s0)
	lw	a5,-44(s0)
	negw	a5,a5
	sw	a5,-72(s0)
	j	.L2
.L3:
	lw	a5,-72(s0)
	slli	a5,a5,2
	ld	a4,-32(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	mv	a4,a5
	lw	a5,-68(s0)
	mulw	a5,a4,a5
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	lw	a4,-60(s0)
	sllw	a4,a5,a4
	lw	a3,-60(s0)
	negw	a3,a3
	andi	a3,a3,31
	srlw	a5,a5,a3
	or	a5,a4,a5
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	mulw	a5,a4,a5
	sw	a5,-76(s0)
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	xor	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	lw	a4,-56(s0)
	sllw	a4,a5,a4
	lw	a3,-56(s0)
	negw	a3,a3
	andi	a3,a3,31
	srlw	a5,a5,a3
	or	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-48(s0)
	addw	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-72(s0)
	addiw	a5,a5,1
	sw	a5,-72(s0)
.L2:
	lw	a5,-72(s0)
	sext.w	a5,a5
	bne	a5,zero,.L3
	sw	zero,-76(s0)
	lw	a5,-92(s0)
	andi	a5,a5,3
	sext.w	a5,a5
	mv	a3,a5
	li	a4,3
	beq	a3,a4,.L4
	mv	a3,a5
	li	a4,3
	bgtu	a3,a4,.L5
	mv	a3,a5
	li	a4,1
	beq	a3,a4,.L6
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L7
	j	.L5
.L4:
	ld	a5,-24(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-76(s0)
	xor	a5,a4,a5
	sw	a5,-76(s0)
.L7:
	ld	a5,-24(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	sext.w	a5,a5
	slliw	a5,a5,8
	sext.w	a5,a5
	lw	a4,-76(s0)
	xor	a5,a4,a5
	sw	a5,-76(s0)
.L6:
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-76(s0)
	xor	a5,a4,a5
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	mv	a4,a5
	lw	a5,-68(s0)
	mulw	a5,a4,a5
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	lw	a4,-60(s0)
	sllw	a4,a5,a4
	lw	a3,-60(s0)
	negw	a3,a3
	andi	a3,a3,31
	srlw	a5,a5,a3
	or	a5,a4,a5
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	mulw	a5,a4,a5
	sw	a5,-76(s0)
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	xor	a5,a4,a5
	sw	a5,-80(s0)
.L5:
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	xor	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-80(s0)
	xor	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	mv	a4,a5
	li	a5,-2048143360
	addiw	a5,a5,-1429
	mulw	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	srliw	a5,a5,13
	sext.w	a5,a5
	lw	a4,-80(s0)
	xor	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	mv	a4,a5
	li	a5,-1028476928
	addiw	a5,a5,-459
	mulw	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	lw	a4,-80(s0)
	xor	a5,a4,a5
	sw	a5,-80(s0)
	lw	a5,-80(s0)
	mv	a0,a5
	ld	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	murmurhash, .-murmurhash
	.section	.rodata
	.align	3
.LC0:
	.string	"kinkajou"
	.align	3
.LC1:
	.string	"murmurhash(\"%s\") = 0x%x\n"
	.align	3
.LC2:
	.string	"The bringup-bench benchmark MURMUR made this."
	.align	3
.LC3:
	.string	"It has to start somewhere, it has to start sometime, what better place than here? What better time than now?"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	zero,-56(s0)
	lla	a5,.LC0
	sd	a5,-40(s0)
	ld	a0,-40(s0)
	call	libmin_strlen@plt
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-56(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-40(s0)
	call	murmurhash
	mv	a5,a0
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	mv	a2,a5
	ld	a1,-40(s0)
	lla	a0,.LC1
	call	libmin_printf@plt
	lla	a5,.LC2
	sd	a5,-32(s0)
	ld	a0,-32(s0)
	call	libmin_strlen@plt
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-56(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-32(s0)
	call	murmurhash
	mv	a5,a0
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	mv	a2,a5
	ld	a1,-32(s0)
	lla	a0,.LC1
	call	libmin_printf@plt
	lla	a5,.LC3
	sd	a5,-24(s0)
	ld	a0,-24(s0)
	call	libmin_strlen@plt
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-56(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-24(s0)
	call	murmurhash
	mv	a5,a0
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	mv	a2,a5
	ld	a1,-24(s0)
	lla	a0,.LC1
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
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
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
