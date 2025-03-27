	.file	"quaternions.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%s: Invalid input."
	.text
	.align	1
	.globl	quat_from_euler
	.type	quat_from_euler, @function
quat_from_euler:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	sd	a1,-144(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-80(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-72(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-64(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-56(s0)
	ld	a5,-144(s0)
	bne	a5,zero,.L2
	lla	a1,__func__.2
	lla	a0,.LC1
	call	libmin_printf@plt
	ld	a5,-136(s0)
	ld	a1,-80(s0)
	ld	a2,-72(s0)
	ld	a3,-64(s0)
	ld	a4,-56(s0)
	sd	a1,0(a5)
	sd	a2,8(a5)
	sd	a3,16(a5)
	sd	a4,24(a5)
	j	.L4
.L2:
	ld	a5,-144(s0)
	fld	fa4,16(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_cos@plt
	fsd	fa0,-128(s0)
	ld	a5,-144(s0)
	fld	fa4,16(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_sin@plt
	fsd	fa0,-120(s0)
	ld	a5,-144(s0)
	fld	fa4,8(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_cos@plt
	fsd	fa0,-112(s0)
	ld	a5,-144(s0)
	fld	fa4,8(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_sin@plt
	fsd	fa0,-104(s0)
	ld	a5,-144(s0)
	fld	fa4,0(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_cos@plt
	fsd	fa0,-96(s0)
	ld	a5,-144(s0)
	fld	fa4,0(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_sin@plt
	fsd	fa0,-88(s0)
	fld	fa4,-96(s0)
	fld	fa5,-112(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-128(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-88(s0)
	fld	fa5,-104(s0)
	fmul.d	fa3,fa3,fa5
	fld	fa5,-120(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	fld	fa4,-88(s0)
	fld	fa5,-112(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-128(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-96(s0)
	fld	fa5,-104(s0)
	fmul.d	fa3,fa3,fa5
	fld	fa5,-120(s0)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa4,-96(s0)
	fld	fa5,-104(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-128(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-88(s0)
	fld	fa5,-112(s0)
	fmul.d	fa3,fa3,fa5
	fld	fa5,-120(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fld	fa4,-96(s0)
	fld	fa5,-112(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-120(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-88(s0)
	fld	fa5,-104(s0)
	fmul.d	fa3,fa3,fa5
	fld	fa5,-128(s0)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	ld	a5,-136(s0)
	ld	a1,-48(s0)
	ld	a2,-40(s0)
	ld	a3,-32(s0)
	ld	a4,-24(s0)
	sd	a1,0(a5)
	sd	a2,8(a5)
	sd	a3,16(a5)
	sd	a4,24(a5)
.L4:
	ld	a0,-136(s0)
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	quat_from_euler, .-quat_from_euler
	.align	1
	.globl	euler_from_quat
	.type	euler_from_quat, @function
euler_from_quat:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-40(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-32(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-24(s0)
	ld	a5,-64(s0)
	bne	a5,zero,.L6
	lla	a1,__func__.1
	lla	a0,.LC1
	call	libmin_printf@plt
	ld	a5,-56(s0)
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a4,-32(s0)
	sd	a4,8(a5)
	ld	a4,-24(s0)
	sd	a4,16(a5)
	j	.L8
.L6:
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-64(s0)
	fld	fa5,8(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,16(a5)
	ld	a5,-64(s0)
	fld	fa5,24(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fadd.d	fa2,fa5,fa5
	ld	a5,-64(s0)
	fld	fa4,8(a5)
	ld	a5,-64(s0)
	fld	fa5,8(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,16(a5)
	ld	a5,-64(s0)
	fld	fa5,16(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fadd.d	fa5,fa5,fa5
	lla	a5,.LC3
	fld	fa4,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa1,fa5
	fmv.d	fa0,fa2
	call	libmin_atan2@plt
	fmv.d	fa5,fa0
	fsd	fa5,-40(s0)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-64(s0)
	fld	fa5,16(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,8(a5)
	ld	a5,-64(s0)
	fld	fa5,24(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fadd.d	fa5,fa5,fa5
	fmv.d	fa0,fa5
	call	libmin_asin@plt
	fmv.d	fa5,fa0
	fsd	fa5,-32(s0)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-64(s0)
	fld	fa5,24(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,8(a5)
	ld	a5,-64(s0)
	fld	fa5,16(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fadd.d	fa2,fa5,fa5
	ld	a5,-64(s0)
	fld	fa4,16(a5)
	ld	a5,-64(s0)
	fld	fa5,16(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,24(a5)
	ld	a5,-64(s0)
	fld	fa5,24(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fadd.d	fa5,fa5,fa5
	lla	a5,.LC3
	fld	fa4,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa1,fa5
	fmv.d	fa0,fa2
	call	libmin_atan2@plt
	fmv.d	fa5,fa0
	fsd	fa5,-24(s0)
	ld	a5,-56(s0)
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a4,-32(s0)
	sd	a4,8(a5)
	ld	a4,-24(s0)
	sd	a4,16(a5)
.L8:
	ld	a0,-56(s0)
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	euler_from_quat, .-euler_from_quat
	.align	1
	.globl	quaternion_multiply
	.type	quaternion_multiply, @function
quaternion_multiply:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-48(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-40(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-32(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-24(s0)
	ld	a5,-64(s0)
	beq	a5,zero,.L10
	ld	a5,-72(s0)
	bne	a5,zero,.L11
.L10:
	lla	a1,__func__.0
	lla	a0,.LC1
	call	libmin_printf@plt
	ld	a5,-56(s0)
	ld	a1,-48(s0)
	ld	a2,-40(s0)
	ld	a3,-32(s0)
	ld	a4,-24(s0)
	sd	a1,0(a5)
	sd	a2,8(a5)
	sd	a3,16(a5)
	sd	a4,24(a5)
	j	.L13
.L11:
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,8(a5)
	ld	a5,-72(s0)
	fld	fa5,8(a5)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,16(a5)
	ld	a5,-72(s0)
	fld	fa5,16(a5)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,24(a5)
	ld	a5,-72(s0)
	fld	fa5,24(a5)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-72(s0)
	fld	fa5,8(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,8(a5)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,16(a5)
	ld	a5,-72(s0)
	fld	fa5,24(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,24(a5)
	ld	a5,-72(s0)
	fld	fa5,16(a5)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-72(s0)
	fld	fa5,16(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,8(a5)
	ld	a5,-72(s0)
	fld	fa5,24(a5)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,16(a5)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,24(a5)
	ld	a5,-72(s0)
	fld	fa5,8(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-72(s0)
	fld	fa5,24(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,8(a5)
	ld	a5,-72(s0)
	fld	fa5,16(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,16(a5)
	ld	a5,-72(s0)
	fld	fa5,8(a5)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,24(a5)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	ld	a5,-56(s0)
	ld	a1,-48(s0)
	ld	a2,-40(s0)
	ld	a3,-32(s0)
	ld	a4,-24(s0)
	sd	a1,0(a5)
	sd	a2,8(a5)
	sd	a3,16(a5)
	sd	a4,24(a5)
.L13:
	ld	a0,-56(s0)
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	quaternion_multiply, .-quaternion_multiply
	.section	.rodata
	.align	3
.LC4:
	.string	"Euler: %.4lf, %.4lf, %.4lf\n"
	.align	3
.LC5:
	.string	"Quaternion: %.4lf %+.4lf %+.4lf %+.4lf\n"
	.align	3
.LC7:
	.string	"All tests passed!\n"
	.align	3
.LC0:
	.word	769658139
	.word	1072078992
	.word	769658139
	.word	1072078992
	.word	0
	.word	0
	.word	0
	.word	0
	.text
	.align	1
	.type	test, @function
test:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	sd	a5,-64(s0)
	addi	a5,s0,-112
	addi	a4,s0,-88
	mv	a1,a4
	mv	a0,a5
	call	euler_from_quat
	fld	fa5,-104(s0)
	fld	fa4,-112(s0)
	fld	fa3,-96(s0)
	fmv.x.d	a3,fa3
	fmv.x.d	a2,fa4
	fmv.x.d	a1,fa5
	lla	a0,.LC4
	call	libmin_printf@plt
	addi	a5,s0,-56
	addi	a4,s0,-112
	mv	a1,a4
	mv	a0,a5
	call	quat_from_euler
	fld	fa5,-56(s0)
	fld	fa4,-48(s0)
	fld	fa3,-40(s0)
	fld	fa2,-32(s0)
	fmv.x.d	a4,fa2
	fmv.x.d	a3,fa3
	fmv.x.d	a2,fa4
	fmv.x.d	a1,fa5
	lla	a0,.LC5
	call	libmin_printf@plt
	fld	fa4,-56(s0)
	fld	fa5,-88(s0)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC6
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L15
	li	a0,1
	call	libmin_fail@plt
.L15:
	fld	fa4,-48(s0)
	fld	fa5,-80(s0)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC6
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L16
	li	a0,1
	call	libmin_fail@plt
.L16:
	fld	fa4,-40(s0)
	fld	fa5,-72(s0)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC6
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L17
	li	a0,1
	call	libmin_fail@plt
.L17:
	fld	fa4,-32(s0)
	fld	fa5,-64(s0)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC6
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L18
	li	a0,1
	call	libmin_fail@plt
.L18:
	lla	a0,.LC7
	call	libmin_printf@plt
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	test, .-test
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	call	test
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"quat_from_euler"
	.align	3
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"euler_from_quat"
	.align	3
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"quaternion_multiply"
	.align	3
.LC2:
	.word	0
	.word	1071644672
	.align	3
.LC3:
	.word	0
	.word	1072693248
	.align	3
.LC6:
	.word	1202590843
	.word	1065646817
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
