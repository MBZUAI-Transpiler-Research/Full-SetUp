	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"-1"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
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
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L2
	lla	a5,.LC0
	j	.L3
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-32(s0)
	li	a0,33
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	sb	zero,0(a5)
	li	a5,32
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	addiw	a4,a5,-1
	sw	a4,-28(s0)
	mv	a4,a5
	ld	a5,-24(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
.L4:
	lw	a5,-32(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	addiw	a3,a5,-1
	sw	a3,-28(s0)
	mv	a3,a5
	ld	a5,-24(s0)
	add	a5,a5,a3
	addiw	a4,a4,48
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-32(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L4
	lw	a5,-28(s0)
	addi	a5,a5,1
	ld	a4,-24(s0)
	add	a5,a4,a5
.L3:
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
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
