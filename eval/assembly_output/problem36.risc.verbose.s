	.file	"problem36.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp143, size
	sw	a5,-44(s0)	# tmp144, size
# problem36.c:4:     float max = -10000;
	lla	a5,.LC1	# tmp145,
	flw	fa5,0(a5)	# tmp146,
	fsw	fa5,-24(s0)	# tmp146, max
# problem36.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# problem36.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L5:
# problem36.c:6:         if (max < l[i]) max = l[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp147, l
	add	a5,a4,a5	# _2, _3, tmp147
	flw	fa5,0(a5)	# _4, *_3
# problem36.c:6:         if (max < l[i]) max = l[i];
	flw	fa4,-24(s0)	# tmp148, max
	flt.s	a5,fa4,fa5	#, tmp149, tmp148, _4
	beq	a5,zero,.L3	#, tmp149,,
# problem36.c:6:         if (max < l[i]) max = l[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp150, l
	add	a5,a4,a5	# _6, _7, tmp150
# problem36.c:6:         if (max < l[i]) max = l[i];
	flw	fa5,0(a5)	# tmp151, *_7
	fsw	fa5,-24(s0)	# tmp151, max
.L3:
# problem36.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp154, i
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-20(s0)	# tmp152, i
.L2:
# problem36.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp156, i
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-44(s0)		# tmp158, size
	sext.w	a4,a4	# tmp159, tmp155
	sext.w	a5,a5	# tmp160, tmp157
	blt	a4,a5,.L5	#, tmp159, tmp160,
# problem36.c:7:     return max;
	flw	fa5,-24(s0)	# _14, max
# problem36.c:8: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem36.c"
	.align	3
.LC7:
	.string	"fabs(func0(list1, 3) - 3) < 1e-4"
	.align	3
.LC9:
	.string	"fabs(func0(list2, 11) - 124) < 1e-4"
	.align	3
.LC0:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123549184
	.word	1065353216
	.word	-1054867456
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem36.c:16: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp173, __stack_chk_guard
	sd	a4, -24(s0)	# tmp173, D.3793
	li	a4, 0	# tmp173
# problem36.c:17:     float list1[] = {1, 2, 3};
	lla	a5,.LC2	# tmp145,
	flw	fa5,0(a5)	# tmp146,
	fsw	fa5,-88(s0)	# tmp146, list1[0]
	lla	a5,.LC3	# tmp147,
	flw	fa5,0(a5)	# tmp148,
	fsw	fa5,-84(s0)	# tmp148, list1[1]
	lla	a5,.LC4	# tmp149,
	flw	fa5,0(a5)	# tmp150,
	fsw	fa5,-80(s0)	# tmp150, list1[2]
# problem36.c:18:     assert(fabs(func0(list1, 3) - 3) < 1e-4);
	addi	a5,s0,-88	#, tmp151,
	li	a1,3		#,
	mv	a0,a5	#, tmp151
	call	func0		#
	fmv.s	fa4,fa0	# _1,
# problem36.c:18:     assert(fabs(func0(list1, 3) - 3) < 1e-4);
	lla	a5,.LC4	# tmp153,
	flw	fa5,0(a5)	# tmp152,
	fsub.s	fa5,fa4,fa5	# _2, _1, tmp152
	fabs.s	fa5,fa5	# _3, _2
	fcvt.d.s	fa4,fa5	# _4, _3
	lla	a5,.LC5	# tmp155,
	fld	fa5,0(a5)	# tmp154,
	flt.d	a5,fa4,fa5	#, tmp156, _4, tmp154
	bne	a5,zero,.L9	#, tmp156,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem36.c:20:     float list2[] = {5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10};
	lla	a5,.LC0	# tmp157,
	ld	a0,0(a5)		# tmp158,
	ld	a1,8(a5)		# tmp159,
	ld	a2,16(a5)		# tmp160,
	ld	a3,24(a5)		# tmp161,
	ld	a4,32(a5)		# tmp162,
	sd	a0,-72(s0)	# tmp158, list2
	sd	a1,-64(s0)	# tmp159, list2
	sd	a2,-56(s0)	# tmp160, list2
	sd	a3,-48(s0)	# tmp161, list2
	sd	a4,-40(s0)	# tmp162, list2
	lw	a5,40(a5)		# tmp163,
	sw	a5,-32(s0)	# tmp163, list2
# problem36.c:21:     assert(fabs(func0(list2, 11) - 124) < 1e-4);
	addi	a5,s0,-72	#, tmp164,
	li	a1,11		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	fmv.s	fa4,fa0	# _5,
# problem36.c:21:     assert(fabs(func0(list2, 11) - 124) < 1e-4);
	lla	a5,.LC8	# tmp166,
	flw	fa5,0(a5)	# tmp165,
	fsub.s	fa5,fa4,fa5	# _6, _5, tmp165
	fabs.s	fa5,fa5	# _7, _6
	fcvt.d.s	fa4,fa5	# _8, _7
	lla	a5,.LC5	# tmp168,
	fld	fa5,0(a5)	# tmp167,
	flt.d	a5,fa4,fa5	#, tmp169, _8, tmp167
	bne	a5,zero,.L10	#, tmp169,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
	li	a5,0		# _20,
	mv	a4,a5	# <retval>, _20
# problem36.c:22: }
	la	a5,__stack_chk_guard		# tmp171,
	ld	a3, -24(s0)	# tmp174, D.3793
	ld	a5, 0(a5)	# tmp172, __stack_chk_guard
	xor	a5, a3, a5	# tmp172, tmp174
	li	a3, 0	# tmp174
	beq	a5,zero,.L12	#, tmp172,,
	call	__stack_chk_fail@plt	#
.L12:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
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
	.word	-971227136
	.align	2
.LC2:
	.word	1065353216
	.align	2
.LC3:
	.word	1073741824
	.align	2
.LC4:
	.word	1077936128
	.align	3
.LC5:
	.word	-350469331
	.word	1058682594
	.align	2
.LC8:
	.word	1123549184
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
