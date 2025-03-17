	.file	"problem58.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
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
	sw	zero,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L2
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fgt.s	a5,fa4,fa5
	beq	a5,zero,.L3
	li	a5,1
	sw	a5,-28(s0)
.L3:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	flt.s	a5,fa4,fa5
	beq	a5,zero,.L5
	li	a5,1
	sw	a5,-24(s0)
.L5:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L8
	li	a5,0
	j	.L9
.L8:
	li	a5,1
.L9:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC8:
	.string	"problem58.c"
	.align	3
.LC9:
	.string	"func0(list1, 4) == true"
	.align	3
.LC10:
	.string	"func0(list2, 4) == true"
	.align	3
.LC11:
	.string	"func0(list3, 4) == false"
	.align	3
.LC12:
	.string	"func0(list4, 4) == true"
	.align	3
.LC13:
	.string	"func0(list5, 4) == true"
	.align	3
.LC14:
	.string	"func0(list6, 6) == false"
	.align	3
.LC15:
	.string	"func0(list7, 6) == true"
	.align	3
.LC16:
	.string	"func0(list8, 4) == true"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1092616192
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1101004800
	.align	3
.LC2:
	.word	1065353216
	.word	1101004800
	.word	1082130432
	.word	1092616192
	.align	3
.LC3:
	.word	1082130432
	.word	1065353216
	.word	0
	.word	-1054867456
	.align	3
.LC4:
	.word	1082130432
	.word	1065353216
	.word	1065353216
	.word	0
	.align	3
.LC5:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1073741824
	.word	1084227584
	.word	1114636288
	.align	3
.LC6:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1114636288
	.align	3
.LC7:
	.word	1091567616
	.word	1091567616
	.word	1091567616
	.word	1091567616
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
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
	sd	a4,-168(s0)
	ld	a5,8(a5)
	sd	a5,-160(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-152(s0)
	ld	a5,8(a5)
	sd	a5,-144(s0)
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-136(s0)
	ld	a5,8(a5)
	sd	a5,-128(s0)
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a5,8(a5)
	sd	a5,-112(s0)
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a5,8(a5)
	sd	a5,-96(s0)
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	ld	a5,16(a5)
	sd	a5,-56(s0)
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-88(s0)
	ld	a5,8(a5)
	sd	a5,-80(s0)
	addi	a5,s0,-168
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L13:
	addi	a5,s0,-152
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC8
	lla	a0,.LC10
	call	__assert_fail@plt
.L14:
	addi	a5,s0,-136
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC8
	lla	a0,.LC11
	call	__assert_fail@plt
.L15:
	addi	a5,s0,-120
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC8
	lla	a0,.LC12
	call	__assert_fail@plt
.L16:
	addi	a5,s0,-104
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC8
	lla	a0,.LC13
	call	__assert_fail@plt
.L17:
	addi	a5,s0,-72
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC8
	lla	a0,.LC14
	call	__assert_fail@plt
.L18:
	addi	a5,s0,-48
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC8
	lla	a0,.LC15
	call	__assert_fail@plt
.L19:
	addi	a5,s0,-88
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC8
	lla	a0,.LC16
	call	__assert_fail@plt
.L20:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L22
	call	__stack_chk_fail@plt
.L22:
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
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
