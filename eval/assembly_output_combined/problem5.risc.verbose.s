	.file	"problem5.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp86, size
	sw	a5,-44(s0)	# tmp87, size
# problem5.c:5:     float sum = 0;
	sw	zero,-32(s0)	#, sum
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
	ld	a4,-40(s0)		# tmp88, numbers
	add	a5,a4,a5	# _2, _3, tmp88
	flw	fa5,0(a5)	# _4, *_3
# problem5.c:10:         sum += numbers[i];
	flw	fa4,-32(s0)	# tmp90, sum
	fadd.s	fa5,fa4,fa5	# tmp89, tmp90, _4
	fsw	fa5,-32(s0)	# tmp89, sum
# problem5.c:9:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp93, i
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-24(s0)	# tmp91, i
.L2:
# problem5.c:9:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp95, i
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-44(s0)		# tmp97, size
	sext.w	a4,a4	# tmp98, tmp94
	sext.w	a5,a5	# tmp99, tmp96
	blt	a4,a5,.L3	#, tmp98, tmp99,
# problem5.c:12:     avg = sum / size;
	lw	a5,-44(s0)		# tmp101, size
	fcvt.s.w	fa5,a5	# _5, tmp100
# problem5.c:12:     avg = sum / size;
	flw	fa4,-32(s0)	# tmp103, sum
	fdiv.s	fa5,fa4,fa5	# tmp102, tmp103, _5
	fsw	fa5,-20(s0)	# tmp102, avg
# problem5.c:13:     msum = 0;
	sw	zero,-28(s0)	#, msum
# problem5.c:15:     for (i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# problem5.c:15:     for (i = 0; i < size; i++)
	j	.L4		#
.L5:
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	lw	a5,-24(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp104, numbers
	add	a5,a4,a5	# _7, _8, tmp104
	flw	fa4,0(a5)	# _9, *_8
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	flw	fa5,-20(s0)	# tmp105, avg
	fsub.s	fa5,fa4,fa5	# _10, _9, tmp105
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	fabs.s	fa5,fa5	# _11, _10
# problem5.c:16:         msum += fabs(numbers[i] - avg);
	flw	fa4,-28(s0)	# tmp107, msum
	fadd.s	fa5,fa4,fa5	# tmp106, tmp107, _11
	fsw	fa5,-28(s0)	# tmp106, msum
# problem5.c:15:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-24(s0)	# tmp108, i
.L4:
# problem5.c:15:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp112, i
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-44(s0)		# tmp114, size
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	blt	a4,a5,.L5	#, tmp115, tmp116,
# problem5.c:18:     return msum / size;
	lw	a5,-44(s0)		# tmp118, size
	fcvt.s.w	fa5,a5	# _12, tmp117
	flw	fa4,-28(s0)	# tmp119, msum
	fdiv.s	fa5,fa4,fa5	# _24, tmp119, _12
# problem5.c:19: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
# problem5.c:26: int main() {
	la	a5,__stack_chk_guard		# tmp86,
	ld	a4, 0(a5)	# tmp121, __stack_chk_guard
	sd	a4, -24(s0)	# tmp121, D.2986
	li	a4, 0	# tmp121
# problem5.c:27:     float case1[] = {1.0, 2.0, 3.0};
	lla	a5,.LC2	# tmp87,
	flw	fa5,0(a5)	# tmp88,
	fsw	fa5,-80(s0)	# tmp88, case1[0]
	lla	a5,.LC3	# tmp89,
	flw	fa5,0(a5)	# tmp90,
	fsw	fa5,-76(s0)	# tmp90, case1[1]
	lla	a5,.LC4	# tmp91,
	flw	fa5,0(a5)	# tmp92,
	fsw	fa5,-72(s0)	# tmp92, case1[2]
# problem5.c:28:     assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);
	addi	a5,s0,-80	#, tmp93,
	li	a1,3		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	fmv.s	fa5,fa0	# _1,
	fcvt.d.s	fa4,fa5	# _2, _1
	lla	a5,.LC5	# tmp95,
	fld	fa5,0(a5)	# tmp94,
	fsub.d	fa5,fa4,fa5	# _3, _2, tmp94
	fabs.d	fa4,fa5	# _4, _3
	lla	a5,.LC6	# tmp97,
	fld	fa5,0(a5)	# tmp96,
	flt.d	a5,fa4,fa5	#, tmp98, _4, tmp96
	bne	a5,zero,.L8	#, tmp98,,
# problem5.c:28:     assert(fabs(func0(case1, 3) - 2.0/3.0) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L8:
# problem5.c:30:     float case2[] = {1.0, 2.0, 3.0, 4.0};
	lla	a5,.LC0	# tmp99,
	ld	a4,0(a5)		# tmp100,
	sd	a4,-64(s0)	# tmp100, case2
	ld	a5,8(a5)		# tmp101,
	sd	a5,-56(s0)	# tmp101, case2
# problem5.c:31:     assert(fabs(func0(case2, 4) - 1.0) < 1e-4);
	addi	a5,s0,-64	#, tmp102,
	li	a1,4		#,
	mv	a0,a5	#, tmp102
	call	func0		#
	fmv.s	fa5,fa0	# _5,
	fcvt.d.s	fa4,fa5	# _6, _5
	lla	a5,.LC9	# tmp104,
	fld	fa5,0(a5)	# tmp103,
	fsub.d	fa5,fa4,fa5	# _7, _6, tmp103
	fabs.d	fa4,fa5	# _8, _7
	lla	a5,.LC6	# tmp106,
	fld	fa5,0(a5)	# tmp105,
	flt.d	a5,fa4,fa5	#, tmp107, _8, tmp105
	bne	a5,zero,.L9	#, tmp107,,
# problem5.c:31:     assert(fabs(func0(case2, 4) - 1.0) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L9:
# problem5.c:33:     float case3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	lla	a5,.LC1	# tmp108,
	ld	a4,0(a5)		# tmp109,
	sd	a4,-48(s0)	# tmp109, case3
	ld	a4,8(a5)		# tmp110,
	sd	a4,-40(s0)	# tmp110, case3
	lw	a5,16(a5)		# tmp111,
	sw	a5,-32(s0)	# tmp111, case3
# problem5.c:34:     assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);
	addi	a5,s0,-48	#, tmp112,
	li	a1,5		#,
	mv	a0,a5	#, tmp112
	call	func0		#
	fmv.s	fa5,fa0	# _9,
	fcvt.d.s	fa4,fa5	# _10, _9
	lla	a5,.LC11	# tmp114,
	fld	fa5,0(a5)	# tmp113,
	fsub.d	fa5,fa4,fa5	# _11, _10, tmp113
	fabs.d	fa4,fa5	# _12, _11
	lla	a5,.LC6	# tmp116,
	fld	fa5,0(a5)	# tmp115,
	flt.d	a5,fa4,fa5	#, tmp117, _12, tmp115
	bne	a5,zero,.L10	#, tmp117,,
# problem5.c:34:     assert(fabs(func0(case3, 5) - 6.0/5.0) < 1e-4);
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
	la	a5,__stack_chk_guard		# tmp119,
	ld	a3, -24(s0)	# tmp122, D.2986
	ld	a5, 0(a5)	# tmp120, __stack_chk_guard
	xor	a5, a3, a5	# tmp120, tmp122
	li	a3, 0	# tmp122
	beq	a5,zero,.L12	#, tmp120,,
	call	__stack_chk_fail@plt	#
.L12:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
