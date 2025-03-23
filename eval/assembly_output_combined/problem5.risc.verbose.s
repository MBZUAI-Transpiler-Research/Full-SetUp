	.file	"problem5.c"
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
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp148, size
	sw	a5,-44(s0)	# tmp149, size
# problem5.c:5:     float sum = 0;
	fmv.s.x	fa5,zero	# tmp150,
	fsw	fa5,-32(s0)	# tmp150, sum
# problem5.c:7:     int i = 0;
	sw	zero,-24(s0)	#, i
# problem5.c:9:     for (i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# problem5.c:9:     for (i = 0; i < size; i++)
	j	.L2		#
.L3:
# problem5.c:10:         sum += numbers[i];
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp151, numbers
	add	a5,a4,a5	# _2, _3, tmp151
	flw	fa5,0(a5)	# _4, *_3
# problem5.c:10:         sum += numbers[i];
	flw	fa4,-32(s0)	# tmp153, sum
	fadd.s	fa5,fa4,fa5	# tmp152, tmp153, _4
	fsw	fa5,-32(s0)	# tmp152, sum
# problem5.c:9:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-24(s0)	# tmp154, i
.L2:
# problem5.c:9:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-44(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L3	#, tmp161, tmp162,
# problem5.c:12:     avg = sum / size;
	lw	a5,-44(s0)		# tmp164, size
	fcvt.s.w	fa5,a5	# _5, tmp163
# problem5.c:12:     avg = sum / size;
	flw	fa4,-32(s0)	# tmp166, sum
	fdiv.s	fa5,fa4,fa5	# tmp165, tmp166, _5
	fsw	fa5,-20(s0)	# tmp165, avg
# problem5.c:13:     msum = 0;
	fmv.s.x	fa5,zero	# tmp167,
	fsw	fa5,-28(s0)	# tmp167, msum
# problem5.c:15:     for (i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# problem5.c:15:     for (i = 0; i < size; i++)
	j	.L4		#
.L5:
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	lw	a5,-24(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp168, numbers
	add	a5,a4,a5	# _7, _8, tmp168
	flw	fa4,0(a5)	# _9, *_8
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	flw	fa5,-20(s0)	# tmp169, avg
	fsub.s	fa5,fa4,fa5	# _10, _9, tmp169
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	fabs.s	fa5,fa5	# _11, _10
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	flw	fa4,-28(s0)	# tmp171, msum
	fadd.s	fa5,fa4,fa5	# tmp170, tmp171, _11
	fsw	fa5,-28(s0)	# tmp170, msum
# problem5.c:15:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp174, i
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-24(s0)	# tmp172, i
.L4:
# problem5.c:15:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp176, i
	mv	a4,a5	# tmp175, tmp176
	lw	a5,-44(s0)		# tmp178, size
	sext.w	a4,a4	# tmp179, tmp175
	sext.w	a5,a5	# tmp180, tmp177
	blt	a4,a5,.L5	#, tmp179, tmp180,
# problem5.c:18:     return msum / size;
	lw	a5,-44(s0)		# tmp182, size
	fcvt.s.w	fa5,a5	# _12, tmp181
	flw	fa4,-28(s0)	# tmp183, msum
	fdiv.s	fa5,fa4,fa5	# _24, tmp183, _12
# problem5.c:19: }
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
.LC7:
	.string	"problem5.c"
	.align	3
.LC8:
	.string	"fabs(func0(case1, 3) - 2.0/3.0) < 1e-4"
	.align	3
.LC10:
	.string	"fabs(func0(case2, 4) - 1.0) < 1e-4"
	.align	3
.LC12:
	.string	"fabs(func0(case3, 5) - 6.0/5.0) < 1e-4"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem5.c:26: int main() {
	la	a5,__stack_chk_guard		# tmp148,
	ld	a4, 0(a5)	# tmp183, __stack_chk_guard
	sd	a4, -24(s0)	# tmp183, D.3804
	li	a4, 0	# tmp183
# problem5.c:27:     float case1[] = {1.0, 2.0, 3.0};
	lla	a5,.LC2	# tmp149,
	flw	fa5,0(a5)	# tmp150,
	fsw	fa5,-80(s0)	# tmp150, case1[0]
	lla	a5,.LC3	# tmp151,
	flw	fa5,0(a5)	# tmp152,
	fsw	fa5,-76(s0)	# tmp152, case1[1]
	lla	a5,.LC4	# tmp153,
	flw	fa5,0(a5)	# tmp154,
	fsw	fa5,-72(s0)	# tmp154, case1[2]
# problem5.c:28:     assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);
	addi	a5,s0,-80	#, tmp155,
	li	a1,3		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	fmv.s	fa5,fa0	# _1,
# problem5.c:28:     assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);
	fcvt.d.s	fa4,fa5	# _2, _1
	lla	a5,.LC5	# tmp157,
	fld	fa5,0(a5)	# tmp156,
	fsub.d	fa5,fa4,fa5	# _3, _2, tmp156
	fabs.d	fa4,fa5	# _4, _3
	lla	a5,.LC6	# tmp159,
	fld	fa5,0(a5)	# tmp158,
	flt.d	a5,fa4,fa5	#, tmp160, _4, tmp158
	bne	a5,zero,.L8	#, tmp160,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L8:
# problem5.c:30:     float case2[] = {1.0, 2.0, 3.0, 4.0};
	lla	a5,.LC0	# tmp161,
	ld	a4,0(a5)		# tmp162,
	sd	a4,-64(s0)	# tmp162, case2
	ld	a5,8(a5)		# tmp163,
	sd	a5,-56(s0)	# tmp163, case2
# problem5.c:31:     assert(fabs(func0(case2, 4) - 1.0) < 1e-4);
	addi	a5,s0,-64	#, tmp164,
	li	a1,4		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	fmv.s	fa5,fa0	# _5,
# problem5.c:31:     assert(fabs(func0(case2, 4) - 1.0) < 1e-4);
	fcvt.d.s	fa4,fa5	# _6, _5
	lla	a5,.LC9	# tmp166,
	fld	fa5,0(a5)	# tmp165,
	fsub.d	fa5,fa4,fa5	# _7, _6, tmp165
	fabs.d	fa4,fa5	# _8, _7
	lla	a5,.LC6	# tmp168,
	fld	fa5,0(a5)	# tmp167,
	flt.d	a5,fa4,fa5	#, tmp169, _8, tmp167
	bne	a5,zero,.L9	#, tmp169,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L9:
# problem5.c:33:     float case3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	lla	a5,.LC1	# tmp170,
	ld	a4,0(a5)		# tmp171,
	sd	a4,-48(s0)	# tmp171, case3
	ld	a4,8(a5)		# tmp172,
	sd	a4,-40(s0)	# tmp172, case3
	lw	a5,16(a5)		# tmp173,
	sw	a5,-32(s0)	# tmp173, case3
# problem5.c:34:     assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);
	addi	a5,s0,-48	#, tmp174,
	li	a1,5		#,
	mv	a0,a5	#, tmp174
	call	func0		#
	fmv.s	fa5,fa0	# _9,
# problem5.c:34:     assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);
	fcvt.d.s	fa4,fa5	# _10, _9
	lla	a5,.LC11	# tmp176,
	fld	fa5,0(a5)	# tmp175,
	fsub.d	fa5,fa4,fa5	# _11, _10, tmp175
	fabs.d	fa4,fa5	# _12, _11
	lla	a5,.LC6	# tmp178,
	fld	fa5,0(a5)	# tmp177,
	flt.d	a5,fa4,fa5	#, tmp179, _12, tmp177
	bne	a5,zero,.L10	#, tmp179,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L10:
# problem5.c:36:     return 0;
	li	a5,0		# _25,
# problem5.c:37: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp181,
	ld	a3, -24(s0)	# tmp184, D.3804
	ld	a5, 0(a5)	# tmp182, __stack_chk_guard
	xor	a5, a3, a5	# tmp182, tmp184
	li	a3, 0	# tmp184
	beq	a5,zero,.L12	#, tmp182,,
	call	__stack_chk_fail@plt	#
.L12:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
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
	.word	1431655765
	.word	1071994197
	.align	3
.LC6:
	.word	-350469331
	.word	1058682594
	.align	3
.LC9:
	.word	0
	.word	1072693248
	.align	3
.LC11:
	.word	858993459
	.word	1072902963
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
