	.file	"code.c"
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
# eval/problem100//code.c:7:     w = atof(value);
	ld	a0,-40(s0)		#, value
	call	atof@plt	#
	fsd	fa0,-24(s0)	#, w
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa5,-24(s0)	# tmp140, w
	fmv.d.x	fa4,zero	# tmp141,
	flt.d	a5,fa5,fa4	#, tmp142, tmp140, tmp141
	beq	a5,zero,.L7	#, tmp142,,
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa4,-24(s0)	# tmp143, w
	lla	a5,.LC0	# tmp145,
	fld	fa5,0(a5)	# tmp144,
	fsub.d	fa5,fa4,fa5	# _1, tmp143, tmp144
	fmv.d	fa0,fa5	#, _1
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _2,
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvt.w.d a5,fa5,rtz	# tmp146, _2
	sext.w	a5,a5	# iftmp.0_5, tmp146
	j	.L4		#
.L7:
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa4,-24(s0)	# tmp147, w
	lla	a5,.LC0	# tmp149,
	fld	fa5,0(a5)	# tmp148,
	fadd.d	fa5,fa4,fa5	# _3, tmp147, tmp148
	fmv.d	fa0,fa5	#, _3
	call	floor@plt	#
	fmv.d	fa5,fa0	# _4,
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvt.w.d a5,fa5,rtz	# tmp150, _4
	sext.w	a5,a5	# iftmp.0_5, tmp150
.L4:
# eval/problem100//code.c:9: }
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
.LC0:
	.word	0
	.word	1071644672
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
