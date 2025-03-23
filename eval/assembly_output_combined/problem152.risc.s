	.file	"problem152.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	fsd	fs0,40(sp)
	addi	s0,sp,80
	sd	a0,-72(s0)
	mv	a5,a1
	sw	a5,-76(s0)
	sd	zero,-56(s0)
	sw	zero,-60(s0)
	j	.L2
.L6:
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fs0,fa5
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	round@plt
	fmv.d	fa5,fa0
	fsub.d	fa5,fs0,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	beq	a5,zero,.L3
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fmv.w.x	fa4,zero
	fgt.s	a5,fa5,fa4
	beq	a5,zero,.L3
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	round@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L3
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	round@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	s1,a5
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	round@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
	mulw	a5,s1,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-56(s0)
	add	a5,a5,a4
	sd	a5,-56(s0)
.L3:
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L2:
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-56(s0)
	mv	a0,a5
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	fld	fs0,40(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem152.c"
	.align	3
.LC2:
	.string	"func0((float[]){}, 0) == 0"
	.align	3
.LC5:
	.string	"func0((float[]){5, 4}, 2) == 25"
	.align	3
.LC9:
	.string	"func0((float[]){0.1, 0.2, 0.3}, 3) == 0"
	.align	3
.LC13:
	.string	"func0((float[]){-10, -20, -30}, 3) == 0"
	.align	3
.LC17:
	.string	"func0((float[]){-1, -2, 8}, 3) == 0"
	.align	3
.LC19:
	.string	"func0((float[]){0.2, 3, 5}, 3) == 34"
	.align	3
.LC20:
	.string	"func0(lst, lst_size) == odd_sum"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-848
	sd	ra,840(sp)
	sd	s0,832(sp)
	addi	s0,sp,848
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-824
	li	a1,0
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L11:
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-824(s0)
	lla	a5,.LC4
	flw	fa5,0(a5)
	fsw	fa5,-820(s0)
	addi	a5,s0,-824
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,25
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC1
	lla	a0,.LC5
	call	__assert_fail@plt
.L12:
	lla	a5,.LC6
	flw	fa5,0(a5)
	fsw	fa5,-824(s0)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-820(s0)
	lla	a5,.LC8
	flw	fa5,0(a5)
	fsw	fa5,-816(s0)
	addi	a5,s0,-824
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC1
	lla	a0,.LC9
	call	__assert_fail@plt
.L13:
	lla	a5,.LC10
	flw	fa5,0(a5)
	fsw	fa5,-824(s0)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fsw	fa5,-820(s0)
	lla	a5,.LC12
	flw	fa5,0(a5)
	fsw	fa5,-816(s0)
	addi	a5,s0,-824
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC1
	lla	a0,.LC13
	call	__assert_fail@plt
.L14:
	lla	a5,.LC14
	flw	fa5,0(a5)
	fsw	fa5,-824(s0)
	lla	a5,.LC15
	flw	fa5,0(a5)
	fsw	fa5,-820(s0)
	lla	a5,.LC16
	flw	fa5,0(a5)
	fsw	fa5,-816(s0)
	addi	a5,s0,-824
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC1
	lla	a0,.LC17
	call	__assert_fail@plt
.L15:
	lla	a5,.LC7
	flw	fa5,0(a5)
	fsw	fa5,-824(s0)
	lla	a5,.LC18
	flw	fa5,0(a5)
	fsw	fa5,-820(s0)
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-816(s0)
	addi	a5,s0,-824
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,34
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC1
	lla	a0,.LC19
	call	__assert_fail@plt
.L16:
	sd	zero,-832(s0)
	sw	zero,-840(s0)
	li	a5,-99
	sw	a5,-836(s0)
	j	.L17
.L19:
	lw	a5,-836(s0)
	fcvt.s.w	fa5,a5
	lw	a5,-840(s0)
	addiw	a4,a5,1
	sw	a4,-840(s0)
	fmv.w.x	fa4,zero
	fadd.s	fa5,fa5,fa4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	fsw	fa5,-808(a5)
	lw	a5,-836(s0)
	sext.w	a5,a5
	ble	a5,zero,.L18
	lw	a5,-836(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L18
	lw	a5,-836(s0)
	mulw	a5,a5,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-832(s0)
	add	a5,a5,a4
	sd	a5,-832(s0)
.L18:
	lw	a5,-836(s0)
	addiw	a5,a5,2
	sw	a5,-836(s0)
.L17:
	lw	a5,-836(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L19
	lw	a4,-840(s0)
	addi	a5,s0,-824
	mv	a1,a4
	mv	a0,a5
	call	func0
	mv	a4,a0
	ld	a5,-832(s0)
	beq	a5,a4,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC1
	lla	a0,.LC20
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
	ld	ra,840(sp)
	ld	s0,832(sp)
	addi	sp,sp,848
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.align	2
.LC3:
	.word	1084227584
	.align	2
.LC4:
	.word	1082130432
	.align	2
.LC6:
	.word	1036831949
	.align	2
.LC7:
	.word	1045220557
	.align	2
.LC8:
	.word	1050253722
	.align	2
.LC10:
	.word	-1054867456
	.align	2
.LC11:
	.word	-1046478848
	.align	2
.LC12:
	.word	-1041235968
	.align	2
.LC14:
	.word	-1082130432
	.align	2
.LC15:
	.word	-1073741824
	.align	2
.LC16:
	.word	1090519040
	.align	2
.LC18:
	.word	1077936128
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
