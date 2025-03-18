	.file	"problem105.c"
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sd	a3,-80(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-72(s0)
	sd	a4,0(a5)
	ld	a5,-80(s0)
	sw	zero,0(a5)
	sw	zero,-36(s0)
	j	.L2
.L9:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	sb	zero,-37(s0)
	lw	a5,-32(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	li	a5,1
	sb	a5,-37(s0)
	j	.L4
.L7:
	lw	a5,-32(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L5
	li	a5,1
	sb	a5,-37(s0)
.L5:
	lw	a5,-32(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-32(s0)
.L4:
	lw	a5,-32(s0)
	sext.w	a5,a5
	ble	a5,zero,.L6
	lbu	a5,-37(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L7
.L6:
	lbu	a5,-37(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L8
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	ld	a5,-72(s0)
	ld	a3,0(a5)
	ld	a5,-80(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-80(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-80(s0)
	sw	a4,0(a5)
.L8:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	sw	zero,-28(s0)
	j	.L10
.L14:
	sw	zero,-24(s0)
	j	.L11
.L13:
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L12
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a4,a4,a5
	ld	a5,-72(s0)
	ld	a3,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L12:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L11:
	ld	a5,-80(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,a4,.L13
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L10:
	ld	a5,-80(s0)
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L14
	nop
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	mv	a4,a3
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L16
	li	a5,0
	j	.L17
.L16:
	sw	zero,-20(s0)
	j	.L18
.L20:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L19
	li	a5,0
	j	.L17
.L19:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L18:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L20
	li	a5,1
.L17:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem105.c"
	.align	3
.LC4:
	.string	"issame(out1, out1_size, expected1, 3)"
	.align	3
.LC5:
	.string	"issame(out2, out2_size, NULL, 0)"
	.align	3
.LC6:
	.string	"issame(out3, out3_size, expected3, 2)"
	.align	3
.LC7:
	.string	"issame(out4, out4_size, expected4, 2)"
	.align	3
.LC0:
	.word	15
	.word	33
	.word	1422
	.word	1
	.align	3
.LC1:
	.word	152
	.word	323
	.word	1422
	.word	10
	.align	3
.LC2:
	.word	12345
	.word	2033
	.word	111
	.word	151
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	sd	s0,160(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a5,8(a5)
	sd	a5,-64(s0)
	li	a5,1
	sw	a5,-104(s0)
	li	a5,15
	sw	a5,-100(s0)
	li	a5,33
	sw	a5,-96(s0)
	addi	a3,s0,-168
	addi	a4,s0,-152
	addi	a5,s0,-72
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	ld	a5,-152(s0)
	lw	a4,-168(s0)
	addi	a2,s0,-104
	li	a3,3
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L22:
	ld	a5,-152(s0)
	mv	a0,a5
	call	free@plt
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a5,8(a5)
	sd	a5,-48(s0)
	addi	a3,s0,-164
	addi	a4,s0,-144
	addi	a5,s0,-56
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	ld	a5,-144(s0)
	lw	a4,-164(s0)
	li	a3,0
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,65
	lla	a1,.LC3
	lla	a0,.LC5
	call	__assert_fail@plt
.L23:
	ld	a5,-144(s0)
	mv	a0,a5
	call	free@plt
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-40(s0)
	ld	a5,8(a5)
	sd	a5,-32(s0)
	li	a5,111
	sw	a5,-120(s0)
	li	a5,151
	sw	a5,-116(s0)
	addi	a3,s0,-160
	addi	a4,s0,-136
	addi	a5,s0,-40
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	ld	a5,-136(s0)
	lw	a4,-160(s0)
	addi	a2,s0,-120
	li	a3,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,73
	lla	a1,.LC3
	lla	a0,.LC6
	call	__assert_fail@plt
.L24:
	ld	a5,-136(s0)
	mv	a0,a5
	call	free@plt
	li	a5,135
	sw	a5,-88(s0)
	li	a5,103
	sw	a5,-84(s0)
	li	a5,31
	sw	a5,-80(s0)
	li	a5,31
	sw	a5,-112(s0)
	li	a5,135
	sw	a5,-108(s0)
	addi	a3,s0,-156
	addi	a4,s0,-128
	addi	a5,s0,-88
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	ld	a5,-128(s0)
	lw	a4,-156(s0)
	addi	a2,s0,-112
	li	a3,2
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,81
	lla	a1,.LC3
	lla	a0,.LC7
	call	__assert_fail@plt
.L25:
	ld	a5,-128(s0)
	mv	a0,a5
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L27
	call	__stack_chk_fail@plt
.L27:
	mv	a0,a4
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s0,160(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
