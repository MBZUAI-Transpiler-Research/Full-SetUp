	.file	"problem12.c"
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-36(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	mv	a2,a5
	lw	a5,-32(s0)
	sext.w	a3,a5
	sext.w	a4,a2
	ble	a3,a4,.L2
	mv	a5,a2
.L2:
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L3
	li	a5,0
	j	.L4
.L3:
	sw	zero,-40(s0)
	j	.L5
.L8:
	lw	a5,-40(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-40(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L6
	li	a5,48
	j	.L7
.L6:
	li	a5,49
.L7:
	lw	a4,-40(s0)
	ld	a3,-24(s0)
	add	a4,a3,a4
	sb	a5,0(a4)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L5:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a5,-24(s0)
.L4:
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
	.section	.rodata
	.align	3
.LC0:
	.string	"101010"
	.align	3
.LC1:
	.string	"111000"
	.align	3
.LC2:
	.string	"010010"
	.align	3
.LC3:
	.string	"problem12.c"
	.align	3
.LC4:
	.string	"strcmp(result, \"010010\") == 0"
	.align	3
.LC5:
	.string	"1"
	.align	3
.LC6:
	.string	"0"
	.align	3
.LC7:
	.string	"strcmp(result, \"0\") == 0"
	.align	3
.LC8:
	.string	"0000"
	.align	3
.LC9:
	.string	"0101"
	.align	3
.LC10:
	.string	"strcmp(result, \"0101\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lla	a1,.LC0
	lla	a0,.LC1
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC2
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L10:
	ld	a0,-24(s0)
	call	free@plt
	lla	a1,.LC5
	lla	a0,.LC5
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC6
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC3
	lla	a0,.LC7
	call	__assert_fail@plt
.L11:
	ld	a0,-24(s0)
	call	free@plt
	lla	a1,.LC8
	lla	a0,.LC9
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC9
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC3
	lla	a0,.LC10
	call	__assert_fail@plt
.L12:
	ld	a0,-24(s0)
	call	free@plt
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
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
