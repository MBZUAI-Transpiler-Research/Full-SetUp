	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L2
.L7:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L3
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
	j	.L4
.L3:
	sw	zero,-24(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	sraiw	a5,a4,31
	xor	a4,a4,a5
	subw	a5,a4,a5
	sw	a5,-20(s0)
	j	.L5
.L6:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,9
	bgt	a4,a5,.L6
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	subw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sext.w	a5,a5
	ble	a5,zero,.L4
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-32(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
