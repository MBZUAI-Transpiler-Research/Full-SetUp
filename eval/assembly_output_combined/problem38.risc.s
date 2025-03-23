	.file	"problem38.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-32(s0)
	sw	zero,-40(s0)
	j	.L2
.L3:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-32(s0)
	addiw	a3,a5,1
	sw	a3,-32(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	flw	fa5,0(a4)
	fsw	fa5,0(a5)
	lw	a5,-40(s0)
	addiw	a5,a5,2
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	sw	zero,-40(s0)
	j	.L4
.L9:
	sw	zero,-36(s0)
	j	.L5
.L8:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fgt.s	a5,fa4,fa5
	beq	a5,zero,.L6
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsw	fa5,-28(s0)
	lw	a5,-36(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	flw	fa5,0(a4)
	fsw	fa5,0(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	flw	fa5,-28(s0)
	fsw	fa5,0(a5)
.L6:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L5:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L8
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L4:
	lw	a5,-32(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-40(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
	sw	zero,-40(s0)
	j	.L10
.L13:
	lw	a5,-40(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L11
	lw	a5,-40(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a3,-72(s0)
	add	a5,a3,a5
	flw	fa5,0(a4)
	fsw	fa5,0(a5)
	j	.L12
.L11:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a3,-72(s0)
	add	a5,a3,a5
	flw	fa5,0(a4)
	fsw	fa5,0(a5)
.L12:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L10:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	ld	a0,-24(s0)
	call	free@plt
	nop
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
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
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	sw	zero,-20(s0)
	j	.L16
.L20:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L22
	li	a5,0
	j	.L19
.L22:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L16:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L20
	li	a5,1
.L19:
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"problem38.c"
	.align	3
.LC9:
	.string	"issame(result1, expected1, 3)"
	.align	3
.LC10:
	.string	"issame(result2, expected2, 11)"
	.align	3
.LC11:
	.string	"issame(result3, expected3, 10)"
	.align	3
.LC0:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123418112
	.word	1065353216
	.word	-1054867456
	.align	3
.LC1:
	.word	-1054867456
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1084227584
	.word	0
	.word	1091567616
	.word	1065353216
	.word	1123418112
	.align	3
.LC2:
	.word	1084227584
	.word	1090519040
	.word	-1052770304
	.word	1082130432
	.word	1102577664
	.word	1073741824
	.word	1077936128
	.word	1093664768
	.word	1094713344
	.word	-1054867456
	.align	3
.LC3:
	.word	-1052770304
	.word	1090519040
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1073741824
	.word	1094713344
	.word	1093664768
	.word	1102577664
	.word	-1054867456
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-336
	sd	ra,328(sp)
	sd	s0,320(sp)
	addi	s0,sp,336
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC5
	flw	fa5,0(a5)
	fsw	fa5,-336(s0)
	lla	a5,.LC6
	flw	fa5,0(a5)
	fsw	fa5,-332(s0)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-328(s0)
	addi	a4,s0,-320
	addi	a5,s0,-336
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	lla	a5,.LC5
	flw	fa5,0(a5)
	fsw	fa5,-304(s0)
	lla	a5,.LC6
	flw	fa5,0(a5)
	fsw	fa5,-300(s0)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-296(s0)
	addi	a4,s0,-304
	addi	a5,s0,-320
	li	a2,3
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L24:
	lla	a5,.LC0
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-168(s0)
	sd	a1,-160(s0)
	sd	a2,-152(s0)
	sd	a3,-144(s0)
	sd	a4,-136(s0)
	lw	a5,40(a5)
	sw	a5,-128(s0)
	addi	a4,s0,-120
	addi	a5,s0,-168
	mv	a2,a4
	li	a1,11
	mv	a0,a5
	call	func0
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
	addi	a4,s0,-72
	addi	a5,s0,-120
	li	a2,11
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,61
	lla	a1,.LC8
	lla	a0,.LC10
	call	__assert_fail@plt
.L25:
	lla	a5,.LC2
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-288(s0)
	sd	a2,-280(s0)
	sd	a3,-272(s0)
	sd	a4,-264(s0)
	sd	a5,-256(s0)
	addi	a4,s0,-248
	addi	a5,s0,-288
	mv	a2,a4
	li	a1,10
	mv	a0,a5
	call	func0
	lla	a5,.LC3
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-208(s0)
	sd	a2,-200(s0)
	sd	a3,-192(s0)
	sd	a4,-184(s0)
	sd	a5,-176(s0)
	addi	a4,s0,-208
	addi	a5,s0,-248
	li	a2,10
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,67
	lla	a1,.LC8
	lla	a0,.LC11
	call	__assert_fail@plt
.L26:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L28
	call	__stack_chk_fail@plt
.L28:
	mv	a0,a4
	ld	ra,328(sp)
	ld	s0,320(sp)
	addi	sp,sp,336
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
.LC5:
	.word	1065353216
	.align	2
.LC6:
	.word	1073741824
	.align	2
.LC7:
	.word	1077936128
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
