	.file	"weekday.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	3
	.word	2
	.word	5
	.word	0
	.word	3
	.word	5
	.word	1
	.word	4
	.word	6
	.word	2
	.word	4
	.text
	.align	1
	.globl	dayOfWeek
	.type	dayOfWeek, @function
dayOfWeek:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a5,-84(s0)
	mv	a5,a3
	sw	a5,-88(s0)
	mv	a5,a4
	sw	a5,-92(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	lw	a5,-88(s0)
	sext.w	a4,a5
	li	a5,2
	sgt	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	lw	a4,-84(s0)
	subw	a5,a4,a5
	sw	a5,-84(s0)
	lw	a5,-84(s0)
	sraiw	a4,a5,31
	srliw	a4,a4,30
	addw	a5,a4,a5
	sraiw	a5,a5,2
	sext.w	a5,a5
	lw	a4,-84(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-84(s0)
	mv	a3,a5
	li	a5,-100
	divw	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-84(s0)
	mv	a3,a5
	li	a5,400
	divw	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-88(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-56(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-92(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,7
	remw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L3
	call	__stack_chk_fail@plt
.L3:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	dayOfWeek, .-dayOfWeek
	.section	.rodata
	.align	3
.LC10:
	.string	"%02d/%02d/%04d was a `%s'\n"
	.align	3
.LC1:
	.string	"Sunday"
	.align	3
.LC2:
	.string	"Monday"
	.align	3
.LC3:
	.string	"Tuesday"
	.align	3
.LC4:
	.string	"Wednesday"
	.align	3
.LC5:
	.string	"Thursday"
	.align	3
.LC6:
	.string	"Friday"
	.align	3
.LC7:
	.string	"Saturday"
	.data
	.align	3
.LC9:
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-96(s0)
	sw	a5,-84(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC9
	ld	a6,0(a5)
	ld	a0,8(a5)
	ld	a1,16(a5)
	ld	a2,24(a5)
	ld	a3,32(a5)
	ld	a4,40(a5)
	ld	a5,48(a5)
	sd	a6,-80(s0)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	li	a2,20
	li	a1,2
	li	a0,2024
	call	dayOfWeek
	mv	a5,a0
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-64(a5)
	mv	a4,a5
	li	a3,2024
	li	a2,20
	li	a1,2
	lla	a0,.LC10
	call	libmin_printf@plt
	li	a2,5
	li	a1,4
	li	a0,1994
	call	dayOfWeek
	mv	a5,a0
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-64(a5)
	mv	a4,a5
	li	a3,1994
	li	a2,5
	li	a1,4
	lla	a0,.LC10
	call	libmin_printf@plt
	li	a2,1
	li	a1,1
	li	a0,1975
	call	dayOfWeek
	mv	a5,a0
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-64(a5)
	mv	a4,a5
	li	a3,1975
	li	a2,1
	li	a1,1
	lla	a0,.LC10
	call	libmin_printf@plt
	li	a2,7
	li	a1,2
	li	a0,1964
	call	dayOfWeek
	mv	a5,a0
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-64(a5)
	mv	a4,a5
	li	a3,1964
	li	a2,7
	li	a1,2
	lla	a0,.LC10
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
