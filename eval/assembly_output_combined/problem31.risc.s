	.file	"problem31.c"
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
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-56(s0)
	sw	zero,0(a5)
	sw	zero,-28(s0)
	j	.L2
.L5:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fmv.s.x	fa4,zero
	fgt.s	a5,fa5,fa4
	beq	a5,zero,.L3
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	ld	a5,-56(s0)
	lw	a5,0(a5)
	addiw	a3,a5,1
	sext.w	a2,a3
	ld	a3,-56(s0)
	sw	a2,0(a3)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	flw	fa5,0(a4)
	fsw	fa5,0(a5)
.L3:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	ld	a5,-24(s0)
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
	beq	a4,a5,.L9
	li	a5,0
	j	.L10
.L9:
	sw	zero,-20(s0)
	j	.L11
.L14:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L16
	li	a5,0
	j	.L10
.L16:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L11:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
	li	a5,1
.L10:
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
.LC7:
	.string	"problem31.c"
	.align	3
.LC8:
	.string	"issame(result, count, (float[]){4, 5, 6}, 3)"
	.align	3
.LC9:
	.string	"issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8)"
	.align	3
.LC12:
	.string	"issame(result, count, (float[]){}, 0)"
	.align	3
.LC0:
	.word	-1082130432
	.word	-1073741824
	.word	1082130432
	.word	1084227584
	.word	1086324736
	.align	3
.LC1:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	1077936128
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123418112
	.word	1065353216
	.word	-1054867456
	.align	3
.LC2:
	.word	1084227584
	.word	1077936128
	.word	1073741824
	.word	1077936128
	.word	1077936128
	.word	1091567616
	.word	1123418112
	.word	1065353216
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-128(s0)
	ld	a4,8(a5)
	sd	a4,-120(s0)
	lw	a5,16(a5)
	sw	a5,-112(s0)
	addi	a4,s0,-156
	addi	a5,s0,-128
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	sd	a0,-152(s0)
	lw	a4,-156(s0)
	lla	a5,.LC4
	flw	fa5,0(a5)
	fsw	fa5,-72(s0)
	lla	a5,.LC5
	flw	fa5,0(a5)
	fsw	fa5,-68(s0)
	lla	a5,.LC6
	flw	fa5,0(a5)
	fsw	fa5,-64(s0)
	addi	a5,s0,-72
	li	a3,3
	mv	a2,a5
	mv	a1,a4
	ld	a0,-152(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC7
	lla	a0,.LC8
	call	__assert_fail@plt
.L18:
	ld	a0,-152(s0)
	call	free@plt
	lla	a5,.LC1
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,40(a5)
	sw	a5,-32(s0)
	addi	a4,s0,-156
	addi	a5,s0,-72
	mv	a2,a4
	li	a1,11
	mv	a0,a5
	call	func0
	sd	a0,-152(s0)
	lw	a1,-156(s0)
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-104(s0)
	sd	a3,-96(s0)
	sd	a4,-88(s0)
	sd	a5,-80(s0)
	addi	a5,s0,-104
	li	a3,8
	mv	a2,a5
	ld	a0,-152(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC7
	lla	a0,.LC9
	call	__assert_fail@plt
.L19:
	ld	a0,-152(s0)
	call	free@plt
	lla	a5,.LC10
	flw	fa5,0(a5)
	fsw	fa5,-104(s0)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fsw	fa5,-100(s0)
	addi	a4,s0,-156
	addi	a5,s0,-104
	mv	a2,a4
	li	a1,2
	mv	a0,a5
	call	func0
	sd	a0,-152(s0)
	lw	a5,-156(s0)
	addi	a4,s0,-136
	li	a3,0
	mv	a2,a4
	mv	a1,a5
	ld	a0,-152(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC7
	lla	a0,.LC12
	call	__assert_fail@plt
.L20:
	ld	a0,-152(s0)
	call	free@plt
	addi	a4,s0,-156
	addi	a5,s0,-144
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	func0
	sd	a0,-152(s0)
	lw	a5,-156(s0)
	addi	a4,s0,-136
	li	a3,0
	mv	a2,a4
	mv	a1,a5
	ld	a0,-152(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC7
	lla	a0,.LC12
	call	__assert_fail@plt
.L21:
	ld	a0,-152(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L23
	call	__stack_chk_fail@plt
.L23:
	mv	a0,a4
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
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
	.align	3
.LC3:
	.word	-350469331
	.word	1058682594
	.align	2
.LC4:
	.word	1082130432
	.align	2
.LC5:
	.word	1084227584
	.align	2
.LC6:
	.word	1086324736
	.align	2
.LC10:
	.word	-1082130432
	.align	2
.LC11:
	.word	-1073741824
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
