	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	" %d"
	.align	3
.LC1:
	.string	"0"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-52(s0)
	li	a5,2
	sw	a5,-44(s0)
	li	a5,1
	sw	a5,-40(s0)
	j	.L2
.L3:
	lw	a5,-40(s0)
	mv	a3,a5
	lla	a2,.LC0
	li	a1,0
	li	a0,0
	call	snprintf@plt
	mv	a5,a0
	lw	a4,-44(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	lw	a5,-44(s0)
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L4
	li	a5,0
	j	.L5
.L4:
	ld	a5,-24(s0)
	sd	a5,-32(s0)
	lla	a1,.LC1
	ld	a0,-32(s0)
	call	sprintf@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-32(s0)
	add	a5,a5,a4
	sd	a5,-32(s0)
	li	a5,1
	sw	a5,-36(s0)
	j	.L6
.L7:
	lw	a5,-36(s0)
	mv	a2,a5
	lla	a1,.LC0
	ld	a0,-32(s0)
	call	sprintf@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-32(s0)
	add	a5,a5,a4
	sd	a5,-32(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L6:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L7
	ld	a5,-24(s0)
.L5:
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
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
