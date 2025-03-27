	.file	"ackermann.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	a
	.comm	a,4194240,8
	.local	depth
	.comm	depth,4,4
	.local	max_depth
	.comm	max_depth,4,4
	.section	.rodata
	.align	3
.LC0:
	.string	"Maximum stack depth %d exceeded. Abort.\n"
	.align	3
.LC1:
	.string	"Maximum x value %d exceeded. Abort. \n"
	.align	3
.LC2:
	.string	"Maximum y value %d exceeded. Abort. \n"
	.text
	.align	1
	.globl	ack
	.type	ack, @function
ack:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lla	a5,depth
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,depth
	sw	a4,0(a5)
	lla	a5,depth
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,16777216
	bltu	a4,a5,.L2
	li	a5,16777216
	addi	a1,a5,-1
	lla	a0,.LC0
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L2:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,65536
	addi	a5,a5,-2
	bleu	a4,a5,.L3
	li	a5,65536
	addi	a1,a5,-1
	lla	a0,.LC1
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L3:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,15
	bleu	a4,a5,.L4
	li	a1,16
	lla	a0,.LC2
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L4:
	lla	a4,a
	lwu	a5,-24(s0)
	lwu	a3,-20(s0)
	slli	a3,a3,4
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L5
	lla	a4,a
	lwu	a5,-24(s0)
	lwu	a3,-20(s0)
	slli	a3,a3,4
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	j	.L6
.L5:
	lw	a5,-24(s0)
	sext.w	a5,a5
	bne	a5,zero,.L7
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a3,a
	lwu	a5,-20(s0)
	slli	a5,a5,6
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a4,a
	lwu	a5,-20(s0)
	slli	a5,a5,6
	add	a5,a4,a5
	lw	a5,0(a5)
	j	.L6
.L7:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L8
	lw	a5,-24(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a1,a5
	li	a0,1
	call	ack
	mv	a5,a0
	sext.w	a4,a5
	lla	a3,a
	lwu	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a4,a
	lwu	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	j	.L6
.L8:
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	ack
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-24(s0)
	addiw	a4,a4,-1
	sext.w	a4,a4
	mv	a1,a4
	mv	a0,a5
	call	ack
	mv	a5,a0
	sext.w	a4,a5
	lla	a3,a
	lwu	a5,-24(s0)
	lwu	a2,-20(s0)
	slli	a2,a2,4
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a4,a
	lwu	a5,-24(s0)
	lwu	a3,-20(s0)
	slli	a3,a3,4
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
.L6:
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
.LFE3:
	.size	ack, .-ack
	.section	.rodata
	.align	3
.LC3:
	.string	"\nx+y=%d:\n\n"
	.align	3
.LC4:
	.string	"A(%d,%d) = %d\n"
	.align	3
.LC5:
	.string	"Max recursive depth = %u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	lla	a5,max_depth
	sw	zero,0(a5)
	sw	zero,-36(s0)
	j	.L10
.L14:
	lw	a5,-36(s0)
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	sw	zero,-40(s0)
	j	.L11
.L13:
	lla	a5,depth
	sw	zero,0(a5)
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	subw	a5,a4,a5
	sext.w	s1,a5
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	mv	a1,a4
	mv	a0,a5
	call	ack
	mv	a5,a0
	sext.w	a4,a5
	lw	a5,-40(s0)
	mv	a3,a4
	mv	a2,a5
	mv	a1,s1
	lla	a0,.LC4
	call	libmin_printf@plt
	lla	a5,depth
	lw	a4,0(a5)
	lla	a5,max_depth
	lw	a5,0(a5)
	bleu	a4,a5,.L12
	lla	a5,depth
	lw	a4,0(a5)
	lla	a5,max_depth
	sw	a4,0(a5)
.L12:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L11:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bleu	a4,a5,.L13
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L10:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,5
	bleu	a4,a5,.L14
	lla	a5,max_depth
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC5
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
