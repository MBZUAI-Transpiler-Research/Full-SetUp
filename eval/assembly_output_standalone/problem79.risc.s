	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"2357BD"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	lla	a5,.LC0
	sd	a5,-40(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L2
.L4:
	lw	a5,-44(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-40(s0)
	call	strchr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L3:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	s1,-44(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	bltu	s1,a5,.L4
	lw	a5,-48(s0)
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
