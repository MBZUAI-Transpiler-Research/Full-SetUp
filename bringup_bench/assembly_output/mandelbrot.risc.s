	.file	"mandelbrot.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"<%d,%d,%d>\n"
	.text
	.align	1
	.globl	color
	.type	color, @function
color:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a5,-20(s0)
	mv	a5,a3
	sw	a5,-24(s0)
	mv	a5,a4
	sw	a5,-28(s0)
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	color, .-color
	.section	.rodata
	.align	3
.LC2:
	.string	"** Mandelbrot ASCII image\n"
	.align	3
.LC3:
	.string	"** xres: %d, yres: %d\n"
	.align	3
.LC8:
	.string	" "
	.align	3
.LC9:
	.string	"0"
	.align	3
.LC10:
	.string	"\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	li	a5,100
	sw	a5,-76(s0)
	lla	a5,.LC1
	fld	fa5,0(a5)
	fsd	fa5,-48(s0)
	li	a5,78
	sw	a5,-72(s0)
	li	a5,48
	sw	a5,-68(s0)
	lla	a0,.LC2
	call	libmin_printf@plt
	lw	a4,-68(s0)
	lw	a5,-72(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	li	a5,1
	sw	a5,-80(s0)
	j	.L3
.L12:
	li	a5,1
	sw	a5,-84(s0)
	j	.L4
.L11:
	lw	a5,-84(s0)
	fcvt.s.w	fa4,a5
	lw	a5,-72(s0)
	fcvt.s.w	fa5,a5
	fdiv.s	fa5,fa4,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fdiv.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lw	a5,-80(s0)
	fcvt.s.w	fa4,a5
	lw	a5,-68(s0)
	fcvt.s.w	fa5,a5
	fdiv.s	fa5,fa4,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fdiv.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-64(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-56(s0)
	li	a5,1
	sw	a5,-88(s0)
	j	.L5
.L8:
	fld	fa5,-64(s0)
	fmul.d	fa4,fa5,fa5
	fld	fa5,-56(s0)
	fmul.d	fa5,fa5,fa5
	fsub.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa5,-64(s0)
	fadd.d	fa4,fa5,fa5
	fld	fa5,-56(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-32(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	fld	fa5,-24(s0)
	fsd	fa5,-64(s0)
	fld	fa5,-64(s0)
	fmul.d	fa4,fa5,fa5
	fld	fa5,-56(s0)
	fmul.d	fa5,fa5,fa5
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L6
	li	a5,999424
	addi	a5,a5,575
	sw	a5,-88(s0)
.L6:
	lw	a5,-88(s0)
	addiw	a5,a5,1
	sw	a5,-88(s0)
.L5:
	lw	a5,-88(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-88(s0)
	sext.w	a4,a5
	li	a5,98304
	addi	a5,a5,1694
	bgt	a4,a5,.L9
	lla	a0,.LC8
	call	libmin_printf@plt
	j	.L10
.L9:
	lla	a0,.LC9
	call	libmin_printf@plt
.L10:
	lw	a5,-84(s0)
	addiw	a5,a5,1
	sw	a5,-84(s0)
.L4:
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-72(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L11
	lla	a0,.LC10
	call	libmin_printf@plt
	lw	a5,-80(s0)
	addiw	a5,a5,1
	sw	a5,-80(s0)
.L3:
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-68(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L12
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.word	0
	.word	1072693248
	.align	3
.LC4:
	.word	0
	.word	1071644672
	.align	3
.LC5:
	.word	0
	.word	1074266112
	.align	3
.LC6:
	.word	1717986918
	.word	1072064102
	.align	3
.LC7:
	.word	0
	.word	1079574528
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
