	.file	"code.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"A+"
	.align	3
.LC3:
	.string	"A"
	.align	3
.LC5:
	.string	"A-"
	.align	3
.LC7:
	.string	"B+"
	.align	3
.LC9:
	.string	"B"
	.align	3
.LC11:
	.string	"B-"
	.align	3
.LC13:
	.string	"C+"
	.align	3
.LC15:
	.string	"C"
	.align	3
.LC17:
	.string	"C-"
	.align	3
.LC19:
	.string	"D+"
	.align	3
.LC21:
	.string	"D"
	.align	3
.LC23:
	.string	"D-"
	.align	3
.LC24:
	.string	"E"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
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
	lla	a5,.LC0
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
	lla	a5,.LC2
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L43
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC3
	sd	a4,0(a5)
	j	.L5
.L43:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC4
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
	lla	a5,.LC6
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L45
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC7
	sd	a4,0(a5)
	j	.L5
.L45:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC8
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L46
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC9
	sd	a4,0(a5)
	j	.L5
.L46:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC10
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L47
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC11
	sd	a4,0(a5)
	j	.L5
.L47:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L48
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC13
	sd	a4,0(a5)
	j	.L5
.L48:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC14
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L49
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC15
	sd	a4,0(a5)
	j	.L5
.L49:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC16
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L50
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC17
	sd	a4,0(a5)
	j	.L5
.L50:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC18
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L51
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC19
	sd	a4,0(a5)
	j	.L5
.L51:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC20
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L52
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC21
	sd	a4,0(a5)
	j	.L5
.L52:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa4,fa5
	lla	a5,.LC22
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L53
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC23
	sd	a4,0(a5)
	j	.L5
.L53:
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	lla	a4,.LC24
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
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	-1841681977
	.word	1074790347
	.align	3
.LC2:
	.word	123695058
	.word	1074633166
	.align	3
.LC4:
	.word	-735298401
	.word	1074423450
	.align	3
.LC6:
	.word	1841681977
	.word	1074266164
	.align	3
.LC8:
	.word	123695058
	.word	1074108878
	.align	3
.LC10:
	.word	-735298401
	.word	1073899162
	.align	3
.LC12:
	.word	1841681977
	.word	1073741876
	.align	3
.LC14:
	.word	247390116
	.word	1073427356
	.align	3
.LC16:
	.word	-1470596802
	.word	1073007925
	.align	3
.LC18:
	.word	-611603343
	.word	1072693352
	.align	3
.LC20:
	.word	494780232
	.word	1072064312
	.align	3
.LC22:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
