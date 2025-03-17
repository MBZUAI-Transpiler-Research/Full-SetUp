	.file	"problem100.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# value, value
# problem100.c:7:     w = atof(value);
	ld	a0,-40(s0)		#, value
	call	atof@plt	#
	fsd	fa0,-24(s0)	#, w
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa5,-24(s0)	# tmp140, w
	fmv.d.x	fa4,zero	# tmp141,
	flt.d	a5,fa5,fa4	#, tmp142, tmp140, tmp141
	beq	a5,zero,.L7	#, tmp142,,
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa4,-24(s0)	# tmp143, w
	lla	a5,.LC0	# tmp145,
	fld	fa5,0(a5)	# tmp144,
	fsub.d	fa5,fa4,fa5	# _1, tmp143, tmp144
	fmv.d	fa0,fa5	#, _1
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _2,
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvt.w.d a5,fa5,rtz	# tmp146, _2
	sext.w	a5,a5	# iftmp.0_5, tmp146
	j	.L4		#
.L7:
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa4,-24(s0)	# tmp147, w
	lla	a5,.LC0	# tmp149,
	fld	fa5,0(a5)	# tmp148,
	fadd.d	fa5,fa4,fa5	# _3, tmp147, tmp148
	fmv.d	fa0,fa5	#, _3
	call	floor@plt	#
	fmv.d	fa5,fa0	# _4,
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvt.w.d a5,fa5,rtz	# tmp150, _4
	sext.w	a5,a5	# iftmp.0_5, tmp150
.L4:
# problem100.c:9: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"10"
	.align	3
.LC2:
	.string	"problem100.c"
	.align	3
.LC3:
	.string	"func0(\"10\") == 10"
	.align	3
.LC4:
	.string	"14.5"
	.align	3
.LC5:
	.string	"func0(\"14.5\") == 15"
	.align	3
.LC6:
	.string	"-15.5"
	.align	3
.LC7:
	.string	"func0(\"-15.5\") == -16"
	.align	3
.LC8:
	.string	"15.3"
	.align	3
.LC9:
	.string	"func0(\"15.3\") == 15"
	.align	3
.LC10:
	.string	"0"
	.align	3
.LC11:
	.string	"func0(\"0\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem100.c:16:     assert(func0("10") == 10);
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp141,
# problem100.c:16:     assert(func0("10") == 10);
	mv	a4,a5	# tmp142, _1
	li	a5,10		# tmp143,
	beq	a4,a5,.L9	#, tmp142, tmp143,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem100.c:17:     assert(func0("14.5") == 15);
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem100.c:17:     assert(func0("14.5") == 15);
	mv	a4,a5	# tmp145, _2
	li	a5,15		# tmp146,
	beq	a4,a5,.L10	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem100.c:18:     assert(func0("-15.5") == -16);
	lla	a0,.LC6	#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem100.c:18:     assert(func0("-15.5") == -16);
	mv	a4,a5	# tmp148, _3
	li	a5,-16		# tmp149,
	beq	a4,a5,.L11	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L11:
# problem100.c:19:     assert(func0("15.3") == 15);
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem100.c:19:     assert(func0("15.3") == 15);
	mv	a4,a5	# tmp151, _4
	li	a5,15		# tmp152,
	beq	a4,a5,.L12	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem100.c:20:     assert(func0("0") == 0);
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem100.c:20:     assert(func0("0") == 0);
	beq	a5,zero,.L13	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem100.c:22:     return 0;
	li	a5,0		# _17,
# problem100.c:23: }
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
.LFE7:
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
	.word	1071644672
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
