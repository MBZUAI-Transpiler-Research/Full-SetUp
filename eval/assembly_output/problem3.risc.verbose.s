	.file	"problem3.c"
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
	fsw	fa0,-20(s0)	# number, number
# problem3.c:5:     return number - (int)number;
	flw	fa5,-20(s0)	# tmp139, number
	fcvt.w.s a5,fa5,rtz	# tmp138, tmp139
	sext.w	a5,a5	# _1, tmp138
# problem3.c:5:     return number - (int)number;
	fcvt.s.w	fa5,a5	# _2, _1
	flw	fa4,-20(s0)	# tmp140, number
	fsub.s	fa5,fa4,fa5	# _4, tmp140, _2
# problem3.c:6: }
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
.LC0:
	.string	"Testing problem 3"
	.align	3
.LC3:
	.string	"problem3.c"
	.align	3
.LC4:
	.string	"func0(3.5f) == 0.5f"
	.align	3
.LC8:
	.string	"fabs(func0(1.33f) - 0.33f) < 1e-4"
	.align	3
.LC11:
	.string	"fabs(func0(123.456f) - 0.456f) < 1e-4"
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
# problem3.c:15:     printf("Testing problem 3\n");
	lla	a0,.LC0	#,
	call	puts@plt	#
# problem3.c:16:     assert(func0(3.5f) == 0.5f);
	lla	a5,.LC1	# tmp146,
	flw	fa5,0(a5)	# tmp145,
	fmv.s	fa0,fa5	#, tmp145
	call	func0		#
	fmv.s	fa4,fa0	# _1,
# problem3.c:16:     assert(func0(3.5f) == 0.5f);
	lla	a5,.LC2	# tmp148,
	flw	fa5,0(a5)	# tmp147,
	feq.s	a5,fa4,fa5	#, tmp149, _1, tmp147
	bne	a5,zero,.L4	#, tmp149,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L4:
# problem3.c:17:     assert(fabs(func0(1.33f) - 0.33f) < 1e-4);
	lla	a5,.LC5	# tmp151,
	flw	fa5,0(a5)	# tmp150,
	fmv.s	fa0,fa5	#, tmp150
	call	func0		#
	fmv.s	fa4,fa0	# _2,
# problem3.c:17:     assert(fabs(func0(1.33f) - 0.33f) < 1e-4);
	lla	a5,.LC6	# tmp153,
	flw	fa5,0(a5)	# tmp152,
	fsub.s	fa5,fa4,fa5	# _3, _2, tmp152
	fabs.s	fa5,fa5	# _4, _3
	fcvt.d.s	fa4,fa5	# _5, _4
	lla	a5,.LC7	# tmp155,
	fld	fa5,0(a5)	# tmp154,
	flt.d	a5,fa4,fa5	#, tmp156, _5, tmp154
	bne	a5,zero,.L5	#, tmp156,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC3	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L5:
# problem3.c:18:     assert(fabs(func0(123.456f) - 0.456f) < 1e-4);
	lla	a5,.LC9	# tmp158,
	flw	fa5,0(a5)	# tmp157,
	fmv.s	fa0,fa5	#, tmp157
	call	func0		#
	fmv.s	fa4,fa0	# _6,
# problem3.c:18:     assert(fabs(func0(123.456f) - 0.456f) < 1e-4);
	lla	a5,.LC10	# tmp160,
	flw	fa5,0(a5)	# tmp159,
	fsub.s	fa5,fa4,fa5	# _7, _6, tmp159
	fabs.s	fa5,fa5	# _8, _7
	fcvt.d.s	fa4,fa5	# _9, _8
	lla	a5,.LC7	# tmp162,
	fld	fa5,0(a5)	# tmp161,
	flt.d	a5,fa4,fa5	#, tmp163, _9, tmp161
	bne	a5,zero,.L6	#, tmp163,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC3	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L6:
# problem3.c:20:     return 0;
	li	a5,0		# _18,
# problem3.c:21: }
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
.LC1:
	.word	1080033280
	.align	2
.LC2:
	.word	1056964608
	.align	2
.LC5:
	.word	1068121457
	.align	2
.LC6:
	.word	1051260355
	.align	3
.LC7:
	.word	-350469331
	.word	1058682594
	.align	2
.LC9:
	.word	1123477881
	.align	2
.LC10:
	.word	1055488213
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
