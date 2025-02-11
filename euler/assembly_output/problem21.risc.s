	.file	"problem21.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-24(s0)
	li	a5,2
	sw	a5,-28(s0)
	j	.L2
.L4:
	lw	a5,-28(s0)
	mv	a0,a5
	call	divisors_sum
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L3
	lw	a5,-20(s0)
	mv	a0,a5
	call	divisors_sum
	mv	a5,a0
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a5,a5
	bne	a5,a4,.L3
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
.L3:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,8192
	addi	a5,a5,1807
	ble	a4,a5,.L4
	lw	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC0
	call	printf@plt
	li	a5,0
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
.LFE0:
	.size	main, .-main
	.align	1
	.type	divisors_sum, @function
divisors_sum:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	li	a5,1
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	li	a5,2
	sw	a5,-28(s0)
	j	.L7
.L10:
	li	a5,1
	sw	a5,-20(s0)
	j	.L8
.L9:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	mulw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	divw	a5,a4,a5
	sw	a5,-24(s0)
.L8:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L9
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	divw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-32(s0)
	mulw	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L7:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L10
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	divisors_sum, .-divisors_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
