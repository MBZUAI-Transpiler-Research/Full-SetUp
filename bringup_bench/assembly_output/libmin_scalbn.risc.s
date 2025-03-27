	.file	"libmin_scalbn.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_scalbn
	.type	libmin_scalbn, @function
libmin_scalbn:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	mv	a5,a0
	sw	a5,-44(s0)
	fld	fa5,-40(s0)
	fsd	fa5,-24(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,1023
	ble	a4,a5,.L2
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,-1023
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,1023
	ble	a4,a5,.L3
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,-1023
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,1023
	ble	a4,a5,.L3
	li	a5,1023
	sw	a5,-44(s0)
	j	.L3
.L2:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,-1022
	bge	a4,a5,.L3
	fld	fa4,-24(s0)
	lla	a5,.LC1
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,969
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,-1022
	bge	a4,a5,.L3
	fld	fa4,-24(s0)
	lla	a5,.LC1
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,969
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,-1022
	bge	a4,a5,.L3
	li	a5,-1022
	sw	a5,-44(s0)
.L3:
	lw	a5,-44(s0)
	addiw	a5,a5,1023
	sext.w	a5,a5
	slli	a5,a5,52
	sd	a5,-32(s0)
	fld	fa5,-32(s0)
	fld	fa4,-24(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa5,-40(s0)
	fmv.d	fa0,fa5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_scalbn, .-libmin_scalbn
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	2145386496
	.align	3
.LC1:
	.word	0
	.word	56623104
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
