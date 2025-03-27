	.file	"hanoi.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	num
	.comm	num,16,8
	.local	count
	.comm	count,8,8
	.align	1
	.type	mov, @function
mov:
.LFB3:
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
	mv	a3,a1
	mv	a4,a2
	sw	a5,-36(s0)
	mv	a5,a3
	sw	a5,-40(s0)
	mv	a5,a4
	sw	a5,-44(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L2
	lla	a4,num
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lla	a3,num
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a4,num
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a3,num
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a5,count
	ld	a5,0(a5)
	addi	a4,a5,1
	lla	a5,count
	sd	a4,0(a5)
	li	a5,0
	j	.L3
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	li	a4,6
	subw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a3,-20(s0)
	lw	a4,-40(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mov
	lw	a4,-44(s0)
	lw	a5,-40(s0)
	mv	a2,a4
	mv	a1,a5
	li	a0,1
	call	mov
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a3,-44(s0)
	lw	a4,-20(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mov
	li	a5,0
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
.LFE3:
	.size	mov, .-mov
	.section	.rodata
	.align	3
.LC0:
	.string	"Towers of Hanoi Puzzle Test Program\n"
	.align	3
.LC1:
	.string	"Disks     Moves\n"
	.align	3
.LC2:
	.string	"%3d  %10ld\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-20(s0)
	lla	a0,.LC0
	call	libmin_printf@plt
	lla	a0,.LC1
	call	libmin_printf@plt
	sw	zero,-24(s0)
.L7:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	lla	a5,num
	sw	zero,0(a5)
	lla	a5,num
	lw	a4,-24(s0)
	sw	a4,4(a5)
	lla	a5,num
	sw	zero,8(a5)
	lla	a5,num
	sw	zero,12(a5)
	lla	a5,count
	sd	zero,0(a5)
	lw	a5,-24(s0)
	li	a2,3
	li	a1,1
	mv	a0,a5
	call	mov
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
	lla	a5,count
	ld	a4,0(a5)
	lw	a5,-24(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC2
	call	libmin_printf@plt
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,10
	beq	a4,a5,.L10
	j	.L7
.L10:
	nop
	call	libmin_success@plt
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
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
