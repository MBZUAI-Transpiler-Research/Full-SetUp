	.file	"problem134.c"
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
	mv	a5,a1
	sw	a5,-60(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	j	.L2
.L3:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	ceil@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	s1,a5
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	ceil@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
	mulw	a5,s1,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	lw	a5,-40(s0)
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
	.section	.rodata
	.align	3
.LC6:
	.string	"problem134.c"
	.align	3
.LC7:
	.string	"func0(lst1, 3) == 14"
	.align	3
.LC8:
	.string	"func0(lst2, 3) == 14"
	.align	3
.LC9:
	.string	"func0(lst3, 4) == 84"
	.align	3
.LC12:
	.string	"func0(lst4, 3) == 29"
	.align	3
.LC14:
	.string	"func0(lst5, 3) == 6"
	.align	3
.LC15:
	.string	"func0(lst6, 4) == 10230"
	.align	3
.LC17:
	.string	"func0(lst7, 2) == 200000000"
	.align	3
.LC21:
	.string	"func0(lst8, 3) == 75"
	.align	3
.LC22:
	.string	"func0(lst9, 4) == 1086"
	.align	3
.LC23:
	.string	"func0(lst10, 1) == 0"
	.align	3
.LC25:
	.string	"func0(lst11, 1) == 1"
	.align	3
.LC26:
	.string	"func0(lst12, 3) == 2"
	.align	3
.LC0:
	.word	1065353216
	.word	1077936128
	.word	1084227584
	.word	1088421888
	.align	3
.LC1:
	.word	1120403456
	.word	1065353216
	.word	1097859072
	.word	1073741824
	.align	3
.LC2:
	.word	-1078774989
	.word	1099903795
	.word	1100428083
	.word	1100952371
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-168(s0)
	lla	a5,.LC4
	flw	fa5,0(a5)
	fsw	fa5,-164(s0)
	lla	a5,.LC5
	flw	fa5,0(a5)
	fsw	fa5,-160(s0)
	addi	a5,s0,-168
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,14
	beq	a4,a5,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC6
	lla	a0,.LC7
	call	__assert_fail@plt
.L6:
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-152(s0)
	lla	a5,.LC4
	flw	fa5,0(a5)
	fsw	fa5,-148(s0)
	lla	a5,.LC5
	flw	fa5,0(a5)
	fsw	fa5,-144(s0)
	addi	a5,s0,-152
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,14
	beq	a4,a5,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC6
	lla	a0,.LC8
	call	__assert_fail@plt
.L7:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a5,8(a5)
	sd	a5,-64(s0)
	addi	a5,s0,-72
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,84
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC6
	lla	a0,.LC9
	call	__assert_fail@plt
.L8:
	lla	a5,.LC10
	flw	fa5,0(a5)
	fsw	fa5,-136(s0)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fsw	fa5,-132(s0)
	fmv.s.x	fa5,zero
	fsw	fa5,-128(s0)
	addi	a5,s0,-136
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,29
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC6
	lla	a0,.LC12
	call	__assert_fail@plt
.L9:
	lla	a5,.LC13
	flw	fa5,0(a5)
	fsw	fa5,-120(s0)
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-116(s0)
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-112(s0)
	addi	a5,s0,-120
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,6
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC6
	lla	a0,.LC14
	call	__assert_fail@plt
.L10:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-56(s0)
	ld	a5,8(a5)
	sd	a5,-48(s0)
	addi	a5,s0,-56
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,8192
	addi	a5,a5,2038
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC6
	lla	a0,.LC15
	call	__assert_fail@plt
.L11:
	lla	a5,.LC16
	flw	fa5,0(a5)
	fsw	fa5,-176(s0)
	lla	a5,.LC16
	flw	fa5,0(a5)
	fsw	fa5,-172(s0)
	addi	a5,s0,-176
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,199999488
	addi	a5,a5,512
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC6
	lla	a0,.LC17
	call	__assert_fail@plt
.L12:
	lla	a5,.LC18
	flw	fa5,0(a5)
	fsw	fa5,-104(s0)
	lla	a5,.LC19
	flw	fa5,0(a5)
	fsw	fa5,-100(s0)
	lla	a5,.LC20
	flw	fa5,0(a5)
	fsw	fa5,-96(s0)
	addi	a5,s0,-104
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,75
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC6
	lla	a0,.LC21
	call	__assert_fail@plt
.L13:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-40(s0)
	ld	a5,8(a5)
	sd	a5,-32(s0)
	addi	a5,s0,-40
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1086
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC6
	lla	a0,.LC22
	call	__assert_fail@plt
.L14:
	fmv.s.x	fa5,zero
	fsw	fa5,-192(s0)
	addi	a5,s0,-192
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC6
	lla	a0,.LC23
	call	__assert_fail@plt
.L15:
	lla	a5,.LC24
	flw	fa5,0(a5)
	fsw	fa5,-184(s0)
	addi	a5,s0,-184
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC6
	lla	a0,.LC25
	call	__assert_fail@plt
.L16:
	lla	a5,.LC24
	flw	fa5,0(a5)
	fsw	fa5,-88(s0)
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-84(s0)
	fmv.s.x	fa5,zero
	fsw	fa5,-80(s0)
	addi	a5,s0,-88
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC6
	lla	a0,.LC26
	call	__assert_fail@plt
.L17:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
	mv	a0,a4
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
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
	.align	2
.LC3:
	.word	1065353216
	.align	2
.LC4:
	.word	1073741824
	.align	2
.LC5:
	.word	1077936128
	.align	2
.LC10:
	.word	1068708659
	.align	2
.LC11:
	.word	1082549862
	.align	2
.LC13:
	.word	-1072064102
	.align	2
.LC16:
	.word	1176256512
	.align	2
.LC18:
	.word	-1078774989
	.align	2
.LC19:
	.word	1083388723
	.align	2
.LC20:
	.word	1086953882
	.align	2
.LC24:
	.word	-1082130432
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
