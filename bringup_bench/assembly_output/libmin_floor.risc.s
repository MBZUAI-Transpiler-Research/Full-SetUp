	.file	"libmin_floor.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	toint0, @object
	.size	toint0, 8
toint0:
	.word	0
	.word	1127219200
	.text
	.align	1
	.globl	libmin_floor
	.type	libmin_floor, @function
libmin_floor:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	fsd	fa0,-72(s0)
	fld	fa5,-72(s0)
	fsd	fa5,-48(s0)
	ld	a5,-48(s0)
	srli	a5,a5,52
	sext.w	a5,a5
	andi	a5,a5,2047
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	sext.w	a4,a5
	li	a5,1074
	bgt	a4,a5,.L2
	fld	fa5,-72(s0)
	fmv.d.x	fa4,zero
	feq.d	a5,fa5,fa4
	beq	a5,zero,.L3
.L2:
	fld	fa5,-72(s0)
	j	.L12
.L3:
	ld	a5,-48(s0)
	bge	a5,zero,.L5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fld	fa4,-72(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-72(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	j	.L6
.L5:
	lla	a5,.LC0
	fld	fa4,0(a5)
	fld	fa5,-72(s0)
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-72(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
.L6:
	lw	a5,-52(s0)
	sext.w	a4,a5
	li	a5,1022
	bgt	a4,a5,.L7
	fld	fa5,-40(s0)
	fsd	fa5,-32(s0)
	fld	fa5,-32(s0)
	ld	a5,-48(s0)
	bge	a5,zero,.L8
	lla	a5,.LC1
	fld	fa5,0(a5)
	j	.L12
.L8:
	fmv.d.x	fa5,zero
	j	.L12
.L7:
	fld	fa5,-40(s0)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	beq	a5,zero,.L14
	fld	fa4,-72(s0)
	fld	fa5,-40(s0)
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC2
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	j	.L12
.L14:
	fld	fa4,-72(s0)
	fld	fa5,-40(s0)
	fadd.d	fa5,fa4,fa5
.L12:
	fmv.d	fa0,fa5
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_floor, .-libmin_floor
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1127219200
	.align	3
.LC1:
	.word	0
	.word	-1074790400
	.align	3
.LC2:
	.word	0
	.word	1072693248
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
