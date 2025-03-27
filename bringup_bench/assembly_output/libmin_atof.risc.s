	.file	"libmin_atof.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_atof
	.type	libmin_atof, @function
libmin_atof:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-24(s0)
	sw	zero,-40(s0)
	j	.L2
.L4:
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lw	a5,-36(s0)
	addiw	a5,a5,-48
	sext.w	a5,a5
	fcvt.d.w	fa5,a5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
.L2:
	ld	a5,-56(s0)
	addi	a4,a5,1
	sd	a4,-56(s0)
	lbu	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	beq	a5,zero,.L3
	la	a5,_pctype
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,4
	sext.w	a5,a5
	bne	a5,zero,.L4
.L3:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,46
	bne	a4,a5,.L5
	j	.L6
.L7:
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lw	a5,-36(s0)
	addiw	a5,a5,-48
	sext.w	a5,a5
	fcvt.d.w	fa5,a5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sw	a5,-40(s0)
.L6:
	ld	a5,-56(s0)
	addi	a4,a5,1
	sd	a4,-56(s0)
	lbu	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	beq	a5,zero,.L5
	la	a5,_pctype
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,4
	sext.w	a5,a5
	bne	a5,zero,.L7
.L5:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,101
	beq	a4,a5,.L8
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,69
	bne	a4,a5,.L14
.L8:
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	ld	a5,-56(s0)
	addi	a4,a5,1
	sd	a4,-56(s0)
	lbu	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,43
	bne	a4,a5,.L10
	ld	a5,-56(s0)
	addi	a4,a5,1
	sd	a4,-56(s0)
	lbu	a5,0(a5)
	sw	a5,-36(s0)
	j	.L12
.L10:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,45
	bne	a4,a5,.L12
	ld	a5,-56(s0)
	addi	a4,a5,1
	sd	a4,-56(s0)
	lbu	a5,0(a5)
	sw	a5,-36(s0)
	li	a5,-1
	sw	a5,-32(s0)
	j	.L12
.L13:
	lw	a5,-28(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-36(s0)
	addiw	a5,a5,-48
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-28(s0)
	ld	a5,-56(s0)
	addi	a4,a5,1
	sd	a4,-56(s0)
	lbu	a5,0(a5)
	sw	a5,-36(s0)
.L12:
	la	a5,_pctype
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,4
	sext.w	a5,a5
	bne	a5,zero,.L13
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	j	.L14
.L15:
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sw	a5,-40(s0)
.L14:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L15
	j	.L16
.L17:
	fld	fa4,-24(s0)
	lla	a5,.LC1
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L16:
	lw	a5,-40(s0)
	sext.w	a5,a5
	blt	a5,zero,.L17
	fld	fa5,-24(s0)
	fmv.d	fa0,fa5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_atof, .-libmin_atof
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1076101120
	.align	3
.LC1:
	.word	-1717986918
	.word	1069128089
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
