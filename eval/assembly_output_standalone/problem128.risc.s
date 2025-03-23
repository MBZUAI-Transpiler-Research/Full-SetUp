	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"NO"
	.align	3
.LC1:
	.string	"YES"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a3
	sw	a5,-36(s0)
	mv	a5,a1
	sw	a5,-40(s0)
	mv	a5,a2
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-36(s0)
	mv	a2,a5
	lw	a5,-44(s0)
	sext.w	a3,a5
	sext.w	a4,a2
	bge	a3,a4,.L2
	mv	a5,a2
.L2:
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	mv	a2,a5
	lw	a5,-48(s0)
	sext.w	a3,a5
	sext.w	a4,a2
	ble	a3,a4,.L3
	mv	a5,a2
.L3:
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	subw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L4
	lla	a5,.LC0
	j	.L5
.L4:
	li	a5,2
	sw	a5,-32(s0)
	j	.L6
.L8:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L7
	lla	a5,.LC0
	j	.L5
.L7:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L6:
	lw	a5,-32(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,a4,.L8
	lla	a5,.LC1
.L5:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
