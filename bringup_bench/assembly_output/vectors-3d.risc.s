	.file	"vectors-3d.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	vector_sub
	.type	vector_sub, @function
vector_sub:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	ld	a5,-64(s0)
	fld	fa4,8(a5)
	ld	a5,-72(s0)
	fld	fa5,8(a5)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	ld	a5,-64(s0)
	fld	fa4,16(a5)
	ld	a5,-72(s0)
	fld	fa5,16(a5)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	ld	a5,-56(s0)
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a4,-32(s0)
	sd	a4,8(a5)
	ld	a4,-24(s0)
	sd	a4,16(a5)
	ld	a0,-56(s0)
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	vector_sub, .-vector_sub
	.align	1
	.globl	vector_add
	.type	vector_add, @function
vector_add:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	ld	a5,-64(s0)
	fld	fa4,8(a5)
	ld	a5,-72(s0)
	fld	fa5,8(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	ld	a5,-64(s0)
	fld	fa4,16(a5)
	ld	a5,-72(s0)
	fld	fa5,16(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	ld	a5,-56(s0)
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a4,-32(s0)
	sd	a4,8(a5)
	ld	a4,-24(s0)
	sd	a4,16(a5)
	ld	a0,-56(s0)
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	vector_add, .-vector_add
	.align	1
	.globl	dot_prod
	.type	dot_prod, @function
dot_prod:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	fld	fa4,0(a5)
	ld	a5,-48(s0)
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	ld	a5,-40(s0)
	fld	fa4,8(a5)
	ld	a5,-48(s0)
	fld	fa5,8(a5)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-24(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	ld	a5,-40(s0)
	fld	fa4,16(a5)
	ld	a5,-48(s0)
	fld	fa5,16(a5)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-24(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa5,-24(s0)
	fmv.d	fa0,fa5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	dot_prod, .-dot_prod
	.align	1
	.globl	vector_prod
	.type	vector_prod, @function
vector_prod:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	ld	a5,-64(s0)
	fld	fa4,8(a5)
	ld	a5,-72(s0)
	fld	fa5,16(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,16(a5)
	ld	a5,-72(s0)
	fld	fa5,8(a5)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	ld	a5,-64(s0)
	fld	fa5,0(a5)
	fneg.d	fa4,fa5
	ld	a5,-72(s0)
	fld	fa5,16(a5)
	fmul.d	fa4,fa4,fa5
	ld	a5,-64(s0)
	fld	fa3,16(a5)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
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
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	ld	a5,-56(s0)
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a4,-32(s0)
	sd	a4,8(a5)
	ld	a4,-24(s0)
	sd	a4,16(a5)
	ld	a0,-56(s0)
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	vector_prod, .-vector_prod
	.section	.rodata
	.align	3
.LC0:
	.string	"vec(%s) = (%.0lf)i + (%.0lf)j + (%.0lf)k\n"
	.text
	.align	1
	.globl	print_vector
	.type	print_vector, @function
print_vector:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-24(s0)
	fld	fa5,0(a5)
	ld	a5,-24(s0)
	fld	fa4,8(a5)
	ld	a5,-24(s0)
	fld	fa3,16(a5)
	fmv.x.d	a6,fa3
	fmv.x.d	a5,fa4
	fmv.x.d	a4,fa5
	ld	a3,-32(s0)
	lla	a2,.LC0
	li	a1,99
	lla	a0,vec_str.0
	call	libmin_snprintf@plt
	lla	a5,vec_str.0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	print_vector, .-print_vector
	.align	1
	.globl	vector_norm
	.type	vector_norm, @function
vector_norm:
.LFB8:
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
	ld	a1,-40(s0)
	ld	a0,-40(s0)
	call	dot_prod
	fsd	fa0,-24(s0)
	fld	fa0,-24(s0)
	call	libmin_sqrt@plt
	fsd	fa0,-24(s0)
	fld	fa5,-24(s0)
	fmv.d	fa0,fa5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	vector_norm, .-vector_norm
	.align	1
	.globl	unit_vec
	.type	unit_vec, @function
unit_vec:
.LFB9:
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
	sd	zero,-40(s0)
	sd	zero,-32(s0)
	sd	zero,-24(s0)
	ld	a0,-64(s0)
	call	vector_norm
	fsd	fa0,-48(s0)
	fld	fa0,-48(s0)
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC1
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	beq	a5,zero,.L20
	ld	a5,-56(s0)
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a4,-32(s0)
	sd	a4,8(a5)
	ld	a4,-24(s0)
	sd	a4,16(a5)
	j	.L18
.L20:
	fld	fa4,-48(s0)
	lla	a5,.LC2
	fld	fa5,0(a5)
	feq.d	a5,fa4,fa5
	bne	a5,zero,.L17
	ld	a5,-64(s0)
	fld	fa4,0(a5)
	fld	fa5,-48(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	ld	a5,-64(s0)
	fld	fa4,8(a5)
	fld	fa5,-48(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	ld	a5,-64(s0)
	fld	fa4,16(a5)
	fld	fa5,-48(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
.L17:
	ld	a5,-56(s0)
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a4,-32(s0)
	sd	a4,8(a5)
	ld	a4,-24(s0)
	sd	a4,16(a5)
.L18:
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
.LFE9:
	.size	unit_vec, .-unit_vec
	.align	1
	.globl	get_cross_matrix
	.type	get_cross_matrix, @function
get_cross_matrix:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)
	sd	s0,96(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	fmv.d.x	fa5,zero
	fsd	fa5,-96(s0)
	ld	a5,-112(s0)
	fld	fa5,16(a5)
	fneg.d	fa5,fa5
	fsd	fa5,-88(s0)
	ld	a5,-112(s0)
	fld	fa5,8(a5)
	fsd	fa5,-80(s0)
	ld	a5,-112(s0)
	fld	fa5,16(a5)
	fsd	fa5,-72(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-64(s0)
	ld	a5,-112(s0)
	fld	fa5,0(a5)
	fneg.d	fa5,fa5
	fsd	fa5,-56(s0)
	ld	a5,-112(s0)
	fld	fa5,8(a5)
	fneg.d	fa5,fa5
	fsd	fa5,-48(s0)
	ld	a5,-112(s0)
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-32(s0)
	ld	a5,-104(s0)
	ld	t3,-96(s0)
	ld	t1,-88(s0)
	ld	a7,-80(s0)
	ld	a6,-72(s0)
	ld	a0,-64(s0)
	ld	a1,-56(s0)
	ld	a2,-48(s0)
	ld	a3,-40(s0)
	ld	a4,-32(s0)
	sd	t3,0(a5)
	sd	t1,8(a5)
	sd	a7,16(a5)
	sd	a6,24(a5)
	sd	a0,32(a5)
	sd	a1,40(a5)
	sd	a2,48(a5)
	sd	a3,56(a5)
	sd	a4,64(a5)
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L23
	call	__stack_chk_fail@plt
.L23:
	ld	a0,-104(s0)
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	get_cross_matrix, .-get_cross_matrix
	.align	1
	.globl	get_angle
	.type	get_angle, @function
get_angle:
.LFB11:
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
	ld	a0,-56(s0)
	call	vector_norm
	fsd	fa0,-48(s0)
	ld	a0,-64(s0)
	call	vector_norm
	fsd	fa0,-40(s0)
	fld	fa0,-48(s0)
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC1
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L25
	fld	fa0,-40(s0)
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC1
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	beq	a5,zero,.L29
.L25:
	lla	a5,.LC3
	fld	fa5,0(a5)
	j	.L28
.L29:
	ld	a1,-64(s0)
	ld	a0,-56(s0)
	call	dot_prod
	fmv.d	fa3,fa0
	fld	fa4,-48(s0)
	fld	fa5,-40(s0)
	fmul.d	fa5,fa4,fa5
	fdiv.d	fa5,fa3,fa5
	fsd	fa5,-32(s0)
	fld	fa0,-32(s0)
	call	libmin_acos@plt
	fsd	fa0,-24(s0)
	fld	fa5,-24(s0)
.L28:
	fmv.d	fa0,fa5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	get_angle, .-get_angle
	.section	.rodata
	.align	3
.LC6:
	.string	"a"
	.align	3
.LC7:
	.string	"%s"
	.align	3
.LC8:
	.string	"b"
	.align	3
.LC9:
	.string	"|a| = %.4lf\n"
	.align	3
.LC12:
	.string	"|b| = %.4lf\n"
	.align	3
.LC14:
	.string	"Dot product: %lf\n"
	.align	3
.LC16:
	.string	"Vector product "
	.align	3
.LC17:
	.string	"c"
	.align	3
.LC18:
	.string	"The angle is %lf\n"
	.align	3
.LC20:
	.string	"All tests passed!\n"
	.text
	.align	1
	.type	test, @function
test:
.LFB12:
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
	lla	a5,.LC2
	fld	fa5,0(a5)
	fsd	fa5,-96(s0)
	lla	a5,.LC4
	fld	fa5,0(a5)
	fsd	fa5,-88(s0)
	lla	a5,.LC5
	fld	fa5,0(a5)
	fsd	fa5,-80(s0)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fsd	fa5,-72(s0)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fsd	fa5,-64(s0)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fsd	fa5,-56(s0)
	addi	a5,s0,-96
	lla	a1,.LC6
	mv	a0,a5
	call	print_vector
	mv	a5,a0
	mv	a1,a5
	lla	a0,.LC7
	call	libmin_printf@plt
	addi	a5,s0,-72
	lla	a1,.LC8
	mv	a0,a5
	call	print_vector
	mv	a5,a0
	mv	a1,a5
	lla	a0,.LC7
	call	libmin_printf@plt
	addi	a5,s0,-96
	mv	a0,a5
	call	vector_norm
	fsd	fa0,-112(s0)
	ld	a1,-112(s0)
	lla	a0,.LC9
	call	libmin_printf@plt
	fld	fa4,-112(s0)
	lla	a5,.LC10
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC11
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L31
	li	a0,1
	call	libmin_fail@plt
.L31:
	addi	a5,s0,-72
	mv	a0,a5
	call	vector_norm
	fsd	fa0,-112(s0)
	ld	a1,-112(s0)
	lla	a0,.LC12
	call	libmin_printf@plt
	fld	fa4,-112(s0)
	lla	a5,.LC13
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC11
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L32
	li	a0,1
	call	libmin_fail@plt
.L32:
	addi	a4,s0,-72
	addi	a5,s0,-96
	mv	a1,a4
	mv	a0,a5
	call	dot_prod
	fsd	fa0,-112(s0)
	ld	a1,-112(s0)
	lla	a0,.LC14
	call	libmin_printf@plt
	fld	fa4,-112(s0)
	lla	a5,.LC15
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC11
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L33
	li	a0,1
	call	libmin_fail@plt
.L33:
	addi	a5,s0,-48
	addi	a3,s0,-72
	addi	a4,s0,-96
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	vector_prod
	lla	a0,.LC16
	call	libmin_printf@plt
	addi	a5,s0,-48
	lla	a1,.LC17
	mv	a0,a5
	call	print_vector
	mv	a5,a0
	mv	a1,a5
	lla	a0,.LC7
	call	libmin_printf@plt
	fld	fa4,-48(s0)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC11
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L34
	li	a0,1
	call	libmin_fail@plt
.L34:
	fld	fa4,-40(s0)
	lla	a5,.LC4
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC11
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L35
	li	a0,1
	call	libmin_fail@plt
.L35:
	fld	fa4,-32(s0)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC11
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L36
	li	a0,1
	call	libmin_fail@plt
.L36:
	addi	a4,s0,-72
	addi	a5,s0,-96
	mv	a1,a4
	mv	a0,a5
	call	get_angle
	fsd	fa0,-104(s0)
	ld	a1,-104(s0)
	lla	a0,.LC18
	call	libmin_printf@plt
	fld	fa4,-104(s0)
	lla	a5,.LC19
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC11
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L37
	li	a0,1
	call	libmin_fail@plt
.L37:
	lla	a0,.LC20
	call	libmin_printf@plt
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L38
	call	__stack_chk_fail@plt
.L38:
	ld	ra,104(sp)
	.cfi_restore 1
	ld	s0,96(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	test, .-test
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB13:
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
.LFE13:
	.size	main, .-main
	.local	vec_str.0
	.comm	vec_str.0,100,8
	.section	.rodata
	.align	3
.LC1:
	.word	-400107883
	.word	1041313291
	.align	3
.LC2:
	.word	0
	.word	1072693248
	.align	3
.LC3:
	.word	0
	.word	2146959360
	.align	3
.LC4:
	.word	0
	.word	1073741824
	.align	3
.LC5:
	.word	0
	.word	1074266112
	.align	3
.LC10:
	.word	-1305670058
	.word	1074655133
	.align	3
.LC11:
	.word	1202590843
	.word	1065646817
	.align	3
.LC13:
	.word	-1580547965
	.word	1073460805
	.align	3
.LC15:
	.word	0
	.word	1075314688
	.align	3
.LC19:
	.word	-1514027511
	.word	1071173219
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
