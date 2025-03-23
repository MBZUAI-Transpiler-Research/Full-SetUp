	.file	"problem82.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"A+"
	.align	3
.LC14:
	.string	"A"
	.align	3
.LC5:
	.string	"A-"
	.align	3
.LC10:
	.string	"B+"
	.align	3
.LC2:
	.string	"B"
	.align	3
.LC19:
	.string	"B-"
	.align	3
.LC21:
	.string	"C+"
	.align	3
.LC4:
	.string	"C"
	.align	3
.LC3:
	.string	"C-"
	.align	3
.LC25:
	.string	"D+"
	.align	3
.LC8:
	.string	"D"
	.align	3
.LC9:
	.string	"D-"
	.align	3
.LC28:
	.string	"E"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-28(s0)
	j	.L2
.L28:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fge.d	a5,fa4,fa5
	beq	a5,zero,.L42
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC1
	sd	a4,0(a5)
	j	.L5
.L42:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC13
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L43
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC14
	sd	a4,0(a5)
	j	.L5
.L43:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC15
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L44
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC5
	sd	a4,0(a5)
	j	.L5
.L44:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC16
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L45
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC10
	sd	a4,0(a5)
	j	.L5
.L45:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC17
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L46
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC2
	sd	a4,0(a5)
	j	.L5
.L46:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC18
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L47
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC19
	sd	a4,0(a5)
	j	.L5
.L47:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC20
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L48
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC21
	sd	a4,0(a5)
	j	.L5
.L48:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC22
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L49
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC4
	sd	a4,0(a5)
	j	.L5
.L49:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC23
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L50
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC3
	sd	a4,0(a5)
	j	.L5
.L50:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC24
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L51
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC25
	sd	a4,0(a5)
	j	.L5
.L51:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC26
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L52
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC8
	sd	a4,0(a5)
	j	.L5
.L52:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC27
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L53
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC9
	sd	a4,0(a5)
	j	.L5
.L53:
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC28
	sd	a4,0(a5)
.L5:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L28
	ld	a5,-24(s0)
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
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	sw	zero,-20(s0)
	j	.L55
.L58:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L56
	li	a5,0
	j	.L57
.L56:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L55:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L58
	li	a5,1
.L57:
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
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC30:
	.string	"problem82.c"
	.align	3
.LC31:
	.string	"issame(result1, expected1, 5)"
	.align	3
.LC33:
	.string	"issame(result2, expected2, 1)"
	.align	3
.LC35:
	.string	"issame(result3, expected3, 1)"
	.align	3
.LC36:
	.string	"issame(result4, expected4, 1)"
	.align	3
.LC38:
	.string	"issame(result5, expected5, 5)"
	.align	3
.LC40:
	.string	"issame(result6, expected6, 2)"
	.align	3
.LC0:
	.word	1082130432
	.word	1077936128
	.word	1071225242
	.word	1073741824
	.word	1080033280
	.data
	.align	3
.LC29:
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.section	.rodata
	.align	3
.LC7:
	.word	1065353216
	.word	1050253722
	.word	1069547520
	.word	1077097267
	.word	1079194419
	.data
	.align	3
.LC37:
	.dword	.LC8
	.dword	.LC9
	.dword	.LC3
	.dword	.LC2
	.dword	.LC10
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)
	sd	s0,256(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,272
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-152(s0)
	ld	a4,8(a5)
	sd	a4,-144(s0)
	lw	a5,16(a5)
	sw	a5,-136(s0)
	lla	a5,.LC29
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-104(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-80(s0)
	sd	a5,-72(s0)
	addi	a5,s0,-152
	li	a1,5
	mv	a0,a5
	call	func0
	sd	a0,-272(s0)
	addi	a5,s0,-104
	li	a2,5
	mv	a1,a5
	ld	a0,-272(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L60
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC30
	lla	a0,.LC31
	call	__assert_fail@plt
.L60:
	ld	a0,-272(s0)
	call	free@plt
	lla	a5,.LC32
	flw	fa5,0(a5)
	fsw	fa5,-224(s0)
	lla	a5,.LC25
	sd	a5,-200(s0)
	addi	a5,s0,-224
	li	a1,1
	mv	a0,a5
	call	func0
	sd	a0,-264(s0)
	addi	a5,s0,-200
	li	a2,1
	mv	a1,a5
	ld	a0,-264(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L61
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC30
	lla	a0,.LC33
	call	__assert_fail@plt
.L61:
	ld	a0,-264(s0)
	call	free@plt
	lla	a5,.LC34
	flw	fa5,0(a5)
	fsw	fa5,-216(s0)
	lla	a5,.LC9
	sd	a5,-192(s0)
	addi	a5,s0,-216
	li	a1,1
	mv	a0,a5
	call	func0
	sd	a0,-256(s0)
	addi	a5,s0,-192
	li	a2,1
	mv	a1,a5
	ld	a0,-256(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L62
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC30
	lla	a0,.LC35
	call	__assert_fail@plt
.L62:
	ld	a0,-256(s0)
	call	free@plt
	fmv.s.x	fa5,zero
	fsw	fa5,-208(s0)
	lla	a5,.LC28
	sd	a5,-184(s0)
	addi	a5,s0,-208
	li	a1,1
	mv	a0,a5
	call	func0
	sd	a0,-248(s0)
	addi	a5,s0,-184
	li	a2,1
	mv	a1,a5
	ld	a0,-248(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L63
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC30
	lla	a0,.LC36
	call	__assert_fail@plt
.L63:
	ld	a0,-248(s0)
	call	free@plt
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-128(s0)
	ld	a4,8(a5)
	sd	a4,-120(s0)
	lw	a5,16(a5)
	sw	a5,-112(s0)
	lla	a5,.LC37
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-128
	li	a1,5
	mv	a0,a5
	call	func0
	sd	a0,-240(s0)
	addi	a5,s0,-64
	li	a2,5
	mv	a1,a5
	ld	a0,-240(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L64
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,66
	lla	a1,.LC30
	lla	a0,.LC38
	call	__assert_fail@plt
.L64:
	ld	a0,-240(s0)
	call	free@plt
	fmv.s.x	fa5,zero
	fsw	fa5,-176(s0)
	lla	a5,.LC39
	flw	fa5,0(a5)
	fsw	fa5,-172(s0)
	lla	a5,.LC28
	sd	a5,-168(s0)
	lla	a5,.LC9
	sd	a5,-160(s0)
	addi	a5,s0,-176
	li	a1,2
	mv	a0,a5
	call	func0
	sd	a0,-232(s0)
	addi	a5,s0,-168
	li	a2,2
	mv	a1,a5
	ld	a0,-232(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L65
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,72
	lla	a1,.LC30
	lla	a0,.LC40
	call	__assert_fail@plt
.L65:
	ld	a0,-232(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L67
	call	__stack_chk_fail@plt
.L67:
	mv	a0,a4
	ld	ra,264(sp)
	.cfi_restore 1
	ld	s0,256(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272
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
.LC12:
	.word	-1841681977
	.word	1074790347
	.align	3
.LC13:
	.word	123695058
	.word	1074633166
	.align	3
.LC15:
	.word	-735298401
	.word	1074423450
	.align	3
.LC16:
	.word	1841681977
	.word	1074266164
	.align	3
.LC17:
	.word	123695058
	.word	1074108878
	.align	3
.LC18:
	.word	-735298401
	.word	1073899162
	.align	3
.LC20:
	.word	1841681977
	.word	1073741876
	.align	3
.LC22:
	.word	247390116
	.word	1073427356
	.align	3
.LC23:
	.word	-1470596802
	.word	1073007925
	.align	3
.LC24:
	.word	-611603343
	.word	1072693352
	.align	3
.LC26:
	.word	494780232
	.word	1072064312
	.align	3
.LC27:
	.word	-350469331
	.word	1058682594
	.align	2
.LC32:
	.word	1067030938
	.align	2
.LC34:
	.word	1056964608
	.align	2
.LC39:
	.word	1060320051
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
