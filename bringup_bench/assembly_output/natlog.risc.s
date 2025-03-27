	.file	"natlog.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"natlog: e=%f\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	li	a5,98304
	addi	a5,a5,1696
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	fcvt.d.w	fa5,a5
	lla	a5,.LC0
	fld	fa4,0(a5)
	fdiv.d	fa4,fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-32(s0)
	j	.L2
.L3:
	fld	fa4,-32(s0)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L3
	ld	a1,-32(s0)
	lla	a0,.LC1
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
