	.file	"problem63.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	fcvt.s.w	fa4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-56(s0)
	add	a5,a4,a5
	fmul.s	fa5,fa4,fa5
	fsw	fa5,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	nop
	nop
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
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
	beq	a4,a5,.L5
	li	a5,0
	j	.L6
.L5:
	sw	zero,-20(s0)
	j	.L7
.L10:
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
	lla	a5,.LC4
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L12
	li	a5,0
	j	.L6
.L12:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L7:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
	li	a5,1
.L6:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem63.c"
	.align	3
.LC6:
	.string	"issame(result, 4, expected1, 4)"
	.align	3
.LC11:
	.string	"issame(result, 2, expected2, 2)"
	.align	3
.LC12:
	.string	"issame(result, 2, expected3, 2)"
	.align	3
.LC13:
	.string	"issame(result, 4, expected4, 4)"
	.align	3
.LC14:
	.string	"issame(result, 0, NULL, 0)"
	.align	3
.LC0:
	.word	1077936128
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	1065353216
	.word	1082130432
	.word	1094713344
	.word	1101004800
	.align	3
.LC2:
	.word	1077936128
	.word	1073741824
	.word	1065353216
	.word	0
	.word	1082130432
	.align	3
.LC3:
	.word	1073741824
	.word	1073741824
	.word	0
	.word	1098907648
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-176
	sd	ra,168(sp)
	sd	s0,160(sp)
	addi	s0,sp,176
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	lw	a5,16(a5)
	sw	a5,-56(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-104(s0)
	ld	a5,8(a5)
	sd	a5,-96(s0)
	addi	a4,s0,-120
	addi	a5,s0,-72
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-104
	addi	a5,s0,-120
	li	a3,4
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L14:
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-152(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-148(s0)
	lla	a5,.LC9
	flw	fa5,0(a5)
	fsw	fa5,-144(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-168(s0)
	lla	a5,.LC10
	flw	fa5,0(a5)
	fsw	fa5,-164(s0)
	addi	a4,s0,-120
	addi	a5,s0,-152
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	addi	a4,s0,-168
	addi	a5,s0,-120
	li	a3,2
	mv	a2,a4
	li	a1,2
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC5
	lla	a0,.LC11
	call	__assert_fail@plt
.L15:
	lla	a5,.LC9
	flw	fa5,0(a5)
	fsw	fa5,-136(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-132(s0)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-128(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-160(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-156(s0)
	addi	a4,s0,-120
	addi	a5,s0,-136
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	addi	a4,s0,-160
	addi	a5,s0,-120
	li	a3,2
	mv	a2,a4
	li	a1,2
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC5
	lla	a0,.LC12
	call	__assert_fail@plt
.L16:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-88(s0)
	ld	a5,8(a5)
	sd	a5,-80(s0)
	addi	a4,s0,-120
	addi	a5,s0,-48
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-88
	addi	a5,s0,-120
	li	a3,4
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC5
	lla	a0,.LC13
	call	__assert_fail@plt
.L17:
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-176(s0)
	addi	a4,s0,-120
	addi	a5,s0,-176
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	func0
	addi	a5,s0,-120
	li	a3,0
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC5
	lla	a0,.LC14
	call	__assert_fail@plt
.L18:
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
	ld	ra,168(sp)
	ld	s0,160(sp)
	addi	sp,sp,176
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.align	2
.LC7:
	.word	1065353216
	.align	2
.LC8:
	.word	1073741824
	.align	2
.LC9:
	.word	1077936128
	.align	2
.LC10:
	.word	1086324736
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
