	.file	"problem1.c"
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	fsw	fa0,-48(s0)
	sw	a5,-44(s0)
	sw	zero,-24(s0)
	j	.L2
.L8:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
	j	.L3
.L7:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	flw	fa4,-48(s0)
	fgt.s	a5,fa4,fa5
	beq	a5,zero,.L10
	li	a5,1
	j	.L6
.L10:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L3:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	li	a5,0
.L6:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"Testing case 1"
	.align	3
.LC6:
	.string	"problem1.c"
	.align	3
.LC7:
	.string	"func0(a, 6, 0.3) == 1"
	.align	3
.LC9:
	.string	"func0(a, 6, 0.05) == 0"
	.align	3
.LC10:
	.string	"Testing case 2"
	.align	3
.LC12:
	.string	"func0(b, 5, 0.95) == 1"
	.align	3
.LC14:
	.string	"func0(b, 5, 0.8) == 0"
	.align	3
.LC15:
	.string	"Testing case 3"
	.align	3
.LC17:
	.string	"func0(c, 5, 2.0) == 1"
	.align	3
.LC18:
	.string	"Testing case 4"
	.align	3
.LC20:
	.string	"func0(d, 5, 1.0) == 1"
	.align	3
.LC22:
	.string	"func0(d, 5, 0.5) == 0"
	.align	3
.LC23:
	.string	"All tests passed"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1081711002
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1086115021
	.word	1082130432
	.word	1084227584
	.align	3
.LC2:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.align	3
.LC3:
	.word	1066192077
	.word	1074580685
	.word	1078355558
	.word	1082340147
	.word	1084437299
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	lla	a0,.LC4
	call	puts@plt
	lla	a5,.LC5
	flw	fa5,0(a5)
	addi	a5,s0,-48
	fmv.s	fa0,fa5
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC6
	lla	a0,.LC7
	call	__assert_fail@plt
.L12:
	lla	a5,.LC8
	flw	fa5,0(a5)
	addi	a5,s0,-48
	fmv.s	fa0,fa5
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC6
	lla	a0,.LC9
	call	__assert_fail@plt
.L13:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-120(s0)
	ld	a4,8(a5)
	sd	a4,-112(s0)
	lw	a5,16(a5)
	sw	a5,-104(s0)
	lla	a0,.LC10
	call	puts@plt
	lla	a5,.LC11
	flw	fa5,0(a5)
	addi	a5,s0,-120
	fmv.s	fa0,fa5
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC6
	lla	a0,.LC12
	call	__assert_fail@plt
.L14:
	lla	a5,.LC13
	flw	fa5,0(a5)
	addi	a5,s0,-120
	fmv.s	fa0,fa5
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC6
	lla	a0,.LC14
	call	__assert_fail@plt
.L15:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-96(s0)
	ld	a4,8(a5)
	sd	a4,-88(s0)
	lw	a5,16(a5)
	sw	a5,-80(s0)
	lla	a0,.LC15
	call	puts@plt
	lla	a5,.LC16
	flw	fa5,0(a5)
	addi	a5,s0,-96
	fmv.s	fa0,fa5
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC6
	lla	a0,.LC17
	call	__assert_fail@plt
.L16:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	lw	a5,16(a5)
	sw	a5,-56(s0)
	lla	a0,.LC18
	call	puts@plt
	lla	a5,.LC19
	flw	fa5,0(a5)
	addi	a5,s0,-72
	fmv.s	fa0,fa5
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC6
	lla	a0,.LC20
	call	__assert_fail@plt
.L17:
	lla	a5,.LC21
	flw	fa5,0(a5)
	addi	a5,s0,-72
	fmv.s	fa0,fa5
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC6
	lla	a0,.LC22
	call	__assert_fail@plt
.L18:
	lla	a0,.LC23
	call	puts@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L20
	call	__stack_chk_fail@plt
.L20:
	mv	a0,a4
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
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
	.align	2
.LC5:
	.word	1050253722
	.align	2
.LC8:
	.word	1028443341
	.align	2
.LC11:
	.word	1064514355
	.align	2
.LC13:
	.word	1061997773
	.align	2
.LC16:
	.word	1073741824
	.align	2
.LC19:
	.word	1065353216
	.align	2
.LC21:
	.word	1056964608
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
