	.file	"problem33.c"
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	mv	a5,a1
	sw	a5,-76(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-48(s0)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	li	a5,1
	sw	a5,-64(s0)
	j	.L2
.L5:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-24(s0)
	sw	zero,-60(s0)
	j	.L3
.L4:
	fld	fa4,-24(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L3:
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	fld	fa4,0(a5)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L2:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	j	.L6
.L15:
	fmv.d.x	fa5,zero
	fsd	fa5,-32(s0)
	li	a5,1
	sw	a5,-64(s0)
	j	.L7
.L10:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-24(s0)
	li	a5,1
	sw	a5,-56(s0)
	j	.L8
.L9:
	fld	fa4,-24(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L8:
	lw	a5,-56(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	lw	a5,-64(s0)
	fcvt.d.w	fa4,a5
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-32(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L7:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
	fld	fa4,-40(s0)
	fld	fa5,-32(s0)
	fdiv.d	fa5,fa4,fa5
	fld	fa4,-48(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	li	a5,1
	sw	a5,-64(s0)
	j	.L11
.L14:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-24(s0)
	sw	zero,-52(s0)
	j	.L12
.L13:
	fld	fa4,-24(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L12:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	fld	fa4,0(a5)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L11:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
.L6:
	fld	fa5,-40(s0)
	fabs.d	fa4,fa5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L15
	fld	fa5,-48(s0)
	fmv.d	fa0,fa5
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	evaluate_polynomial
	.type	evaluate_polynomial, @function
evaluate_polynomial:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	fsd	fa0,-72(s0)
	sw	a5,-60(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-32(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-24(s0)
	sw	zero,-36(s0)
	j	.L18
.L20:
	lw	a5,-36(s0)
	sext.w	a5,a5
	ble	a5,zero,.L19
	fld	fa4,-24(s0)
	fld	fa5,-72(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
.L19:
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	fld	fa4,0(a5)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-32(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L18:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L20
	fld	fa5,-32(s0)
	fmv.d	fa0,fa5
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	evaluate_polynomial, .-evaluate_polynomial
	.section	.rodata
	.align	3
.LC3:
	.string	"problem33.c"
	.align	3
.LC4:
	.string	"fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3"
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
	sd	s1,136(sp)
	sd	s2,128(sp)
	sd	s3,120(sp)
	sd	s4,112(sp)
	sd	s5,104(sp)
	sd	s6,96(sp)
	sd	s7,88(sp)
	sd	s8,80(sp)
	sd	s9,72(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -104(s0)
	li	a4, 0
	sw	zero,-148(s0)
	j	.L23
.L28:
	mv	a5,sp
	mv	s1,a5
	call	rand@plt
	mv	a5,a0
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,30
	addw	a4,a4,a5
	andi	a4,a4,3
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	slliw	a5,a5,1
	sw	a5,-140(s0)
	lw	a5,-140(s0)
	mv	a4,a5
	addi	a4,a4,-1
	sd	a4,-128(s0)
	mv	a4,a5
	mv	s6,a4
	li	s7,0
	srli	a4,s6,58
	slli	s3,s7,6
	or	s3,a4,s3
	slli	s2,s6,6
	mv	a4,a5
	mv	s8,a4
	li	s9,0
	srli	a4,s8,58
	slli	s5,s9,6
	or	s5,a4,s5
	slli	s4,s8,6
	slli	a5,a5,3
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,7
	srli	a5,a5,3
	slli	a5,a5,3
	sd	a5,-120(s0)
	sw	zero,-144(s0)
	j	.L24
.L26:
	call	rand@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,21
	remw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-10
	sext.w	a5,a5
	fcvt.d.w	fa5,a5
	fsd	fa5,-136(s0)
	fld	fa5,-136(s0)
	fmv.d.x	fa4,zero
	feq.d	a5,fa5,fa4
	beq	a5,zero,.L25
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-136(s0)
.L25:
	ld	a4,-120(s0)
	lw	a5,-144(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,-136(s0)
	fsd	fa5,0(a5)
	lw	a5,-144(s0)
	addiw	a5,a5,1
	sw	a5,-144(s0)
.L24:
	lw	a5,-144(s0)
	mv	a4,a5
	lw	a5,-140(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L26
	lw	a5,-140(s0)
	mv	a1,a5
	ld	a0,-120(s0)
	call	func0
	fsd	fa0,-112(s0)
	lw	a5,-140(s0)
	fld	fa0,-112(s0)
	mv	a1,a5
	ld	a0,-120(s0)
	call	evaluate_polynomial
	fmv.d	fa5,fa0
	fabs.d	fa4,fa5
	lla	a5,.LC2
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,76
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L27:
	mv	sp,s1
	lw	a5,-148(s0)
	addiw	a5,a5,1
	sw	a5,-148(s0)
.L23:
	lw	a5,-148(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L28
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -104(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L30
	call	__stack_chk_fail@plt
.L30:
	mv	a0,a4
	addi	sp,s0,-160
	.cfi_def_cfa 2, 160
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	ld	s1,136(sp)
	.cfi_restore 9
	ld	s2,128(sp)
	.cfi_restore 18
	ld	s3,120(sp)
	.cfi_restore 19
	ld	s4,112(sp)
	.cfi_restore 20
	ld	s5,104(sp)
	.cfi_restore 21
	ld	s6,96(sp)
	.cfi_restore 22
	ld	s7,88(sp)
	.cfi_restore 23
	ld	s8,80(sp)
	.cfi_restore 24
	ld	s9,72(sp)
	.cfi_restore 25
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
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	-1598689907
	.word	1051772663
	.align	3
.LC2:
	.word	-755914244
	.word	1062232653
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
