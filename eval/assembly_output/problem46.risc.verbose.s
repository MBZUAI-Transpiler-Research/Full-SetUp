	.file	"problem46.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# h, h
# problem46.c:5:     return (a * h) * 0.5;
	flw	fa4,-20(s0)	# tmp137, a
	flw	fa5,-24(s0)	# tmp138, h
	fmul.s	fa4,fa4,fa5	# _1, tmp137, tmp138
# problem46.c:5:     return (a * h) * 0.5;
	lla	a5,.LC0	# tmp140,
	flw	fa5,0(a5)	# tmp139,
	fmul.s	fa5,fa4,fa5	# _4, _1, tmp139
# problem46.c:6: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem46.c"
	.align	3
.LC6:
	.string	"fabs(func0(5, 3) - 7.5) < 1e-4"
	.align	3
.LC9:
	.string	"fabs(func0(2, 2) - 2.0) < 1e-4"
	.align	3
.LC13:
	.string	"fabs(func0(10, 8) - 40.0) < 1e-4"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem46.c:15:     assert(fabs(func0(5, 3) - 7.5) < 1e-4);
	lla	a5,.LC1	# tmp149,
	flw	fa4,0(a5)	# tmp148,
	lla	a5,.LC2	# tmp151,
	flw	fa5,0(a5)	# tmp150,
	fmv.s	fa1,fa4	#, tmp148
	fmv.s	fa0,fa5	#, tmp150
	call	func0		#
	fmv.s	fa5,fa0	# _1,
# problem46.c:15:     assert(fabs(func0(5, 3) - 7.5) < 1e-4);
	fcvt.d.s	fa4,fa5	# _2, _1
	lla	a5,.LC3	# tmp153,
	fld	fa5,0(a5)	# tmp152,
	fsub.d	fa5,fa4,fa5	# _3, _2, tmp152
	fabs.d	fa4,fa5	# _4, _3
	lla	a5,.LC4	# tmp155,
	fld	fa5,0(a5)	# tmp154,
	flt.d	a5,fa4,fa5	#, tmp156, _4, tmp154
	bne	a5,zero,.L4	#, tmp156,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L4:
# problem46.c:16:     assert(fabs(func0(2, 2) - 2.0) < 1e-4);
	lla	a5,.LC7	# tmp158,
	flw	fa4,0(a5)	# tmp157,
	lla	a5,.LC7	# tmp160,
	flw	fa5,0(a5)	# tmp159,
	fmv.s	fa1,fa4	#, tmp157
	fmv.s	fa0,fa5	#, tmp159
	call	func0		#
	fmv.s	fa5,fa0	# _5,
# problem46.c:16:     assert(fabs(func0(2, 2) - 2.0) < 1e-4);
	fcvt.d.s	fa4,fa5	# _6, _5
	lla	a5,.LC8	# tmp162,
	fld	fa5,0(a5)	# tmp161,
	fsub.d	fa5,fa4,fa5	# _7, _6, tmp161
	fabs.d	fa4,fa5	# _8, _7
	lla	a5,.LC4	# tmp164,
	fld	fa5,0(a5)	# tmp163,
	flt.d	a5,fa4,fa5	#, tmp165, _8, tmp163
	bne	a5,zero,.L5	#, tmp165,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L5:
# problem46.c:17:     assert(fabs(func0(10, 8) - 40.0) < 1e-4);
	lla	a5,.LC10	# tmp167,
	flw	fa4,0(a5)	# tmp166,
	lla	a5,.LC11	# tmp169,
	flw	fa5,0(a5)	# tmp168,
	fmv.s	fa1,fa4	#, tmp166
	fmv.s	fa0,fa5	#, tmp168
	call	func0		#
	fmv.s	fa5,fa0	# _9,
# problem46.c:17:     assert(fabs(func0(10, 8) - 40.0) < 1e-4);
	fcvt.d.s	fa4,fa5	# _10, _9
	lla	a5,.LC12	# tmp171,
	fld	fa5,0(a5)	# tmp170,
	fsub.d	fa5,fa4,fa5	# _11, _10, tmp170
	fabs.d	fa4,fa5	# _12, _11
	lla	a5,.LC4	# tmp173,
	fld	fa5,0(a5)	# tmp172,
	flt.d	a5,fa4,fa5	#, tmp174, _12, tmp172
	bne	a5,zero,.L6	#, tmp174,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC5	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L6:
# problem46.c:19:     return 0;
	li	a5,0		# _20,
# problem46.c:20: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	2
.LC0:
	.word	1056964608
	.align	2
.LC1:
	.word	1077936128
	.align	2
.LC2:
	.word	1084227584
	.align	3
.LC3:
	.word	0
	.word	1075707904
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.align	2
.LC7:
	.word	1073741824
	.align	3
.LC8:
	.word	0
	.word	1073741824
	.align	2
.LC10:
	.word	1090519040
	.align	2
.LC11:
	.word	1092616192
	.align	3
.LC12:
	.word	0
	.word	1078198272
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
