	.file	"problem86.c"
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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp152, size
	sw	a5,-44(s0)	# tmp153, size
# problem86.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	sw	zero,-20(s0)	#, i
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	j	.L2		#
.L4:
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a5,-20(s0)		# tmp156, i
	slliw	a5,a5,1	#, tmp154, tmp155
	sext.w	a5,a5	# _1, tmp154
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addi	a5,a5,1	#, _3, _2
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp157, lst
	add	a5,a4,a5	# _4, _5, tmp157
	lw	a5,0(a5)		# _6, *_5
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	sext.w	a5,a5	# _7, _6
	andi	a5,a5,1	#, tmp159, tmp158
	sext.w	a5,a5	# _8, tmp159
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	bne	a5,zero,.L3	#, _8,,
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a5,-20(s0)		# tmp162, i
	slliw	a5,a5,1	#, tmp160, tmp161
	sext.w	a5,a5	# _9, tmp160
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addi	a5,a5,1	#, _11, _10
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp163, lst
	add	a5,a4,a5	# _12, _13, tmp163
	lw	a5,0(a5)		# _14, *_13
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a4,-24(s0)		# tmp166, sum
	addw	a5,a4,a5	# _14, tmp164, tmp165
	sw	a5,-24(s0)	# tmp164, sum
.L3:
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-20(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-20(s0)	# tmp167, i
.L2:
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-20(s0)		# tmp172, i
	slliw	a5,a5,1	#, tmp170, tmp171
	sext.w	a5,a5	# _15, tmp170
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	addiw	a5,a5,1	#, tmp173, _15
	sext.w	a4,a5	# _16, tmp173
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-44(s0)		# tmp175, size
	sext.w	a5,a5	# tmp176, tmp174
	bgt	a5,a4,.L4	#, tmp176, tmp177,
# problem86.c:7:     return sum;
	lw	a5,-24(s0)		# _23, sum
# problem86.c:8: }
	mv	a0,a5	#, <retval>
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
.LC3:
	.string	"problem86.c"
	.align	3
.LC4:
	.string	"func0(array1, sizeof(array1) / sizeof(array1[0])) == 88"
	.align	3
.LC5:
	.string	"func0(array2, sizeof(array2) / sizeof(array2[0])) == 122"
	.align	3
.LC6:
	.string	"func0(array3, sizeof(array3) / sizeof(array3[0])) == 0"
	.align	3
.LC7:
	.string	"func0(array4, sizeof(array4) / sizeof(array4[0])) == 12"
	.align	3
.LC0:
	.word	4
	.word	5
	.word	6
	.word	7
	.word	2
	.word	122
	.align	3
.LC1:
	.word	4
	.word	0
	.word	6
	.word	7
	.align	3
.LC2:
	.word	4
	.word	4
	.word	6
	.word	8
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
# problem86.c:14: int main() {
	la	a5,__stack_chk_guard		# tmp140,
	ld	a4, 0(a5)	# tmp170, __stack_chk_guard
	sd	a4, -24(s0)	# tmp170, D.2766
	li	a4, 0	# tmp170
# problem86.c:15:     int array1[] = {4, 88};
	li	a5,4		# tmp141,
	sw	a5,-88(s0)	# tmp141, array1[0]
	li	a5,88		# tmp142,
	sw	a5,-84(s0)	# tmp142, array1[1]
# problem86.c:16:     assert(func0(array1, sizeof(array1) / sizeof(array1[0])) == 88);
	addi	a5,s0,-88	#, tmp143,
	li	a1,2		#,
	mv	a0,a5	#, tmp143
	call	func0		#
	mv	a5,a0	# tmp144,
# problem86.c:16:     assert(func0(array1, sizeof(array1) / sizeof(array1[0])) == 88);
	mv	a4,a5	# tmp145, _1
	li	a5,88		# tmp146,
	beq	a4,a5,.L7	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem86.c:18:     int array2[] = {4, 5, 6, 7, 2, 122};
	lla	a5,.LC0	# tmp147,
	ld	a4,0(a5)		# tmp148,
	sd	a4,-48(s0)	# tmp148, array2
	ld	a4,8(a5)		# tmp149,
	sd	a4,-40(s0)	# tmp149, array2
	ld	a5,16(a5)		# tmp150,
	sd	a5,-32(s0)	# tmp150, array2
# problem86.c:19:     assert(func0(array2, sizeof(array2) / sizeof(array2[0])) == 122);
	addi	a5,s0,-48	#, tmp151,
	li	a1,6		#,
	mv	a0,a5	#, tmp151
	call	func0		#
	mv	a5,a0	# tmp152,
# problem86.c:19:     assert(func0(array2, sizeof(array2) / sizeof(array2[0])) == 122);
	mv	a4,a5	# tmp153, _2
	li	a5,122		# tmp154,
	beq	a4,a5,.L8	#, tmp153, tmp154,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC3	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem86.c:21:     int array3[] = {4, 0, 6, 7};
	lla	a5,.LC1	# tmp155,
	ld	a4,0(a5)		# tmp156,
	sd	a4,-80(s0)	# tmp156, array3
	ld	a5,8(a5)		# tmp157,
	sd	a5,-72(s0)	# tmp157, array3
# problem86.c:22:     assert(func0(array3, sizeof(array3) / sizeof(array3[0])) == 0);
	addi	a5,s0,-80	#, tmp158,
	li	a1,4		#,
	mv	a0,a5	#, tmp158
	call	func0		#
	mv	a5,a0	# tmp159,
# problem86.c:22:     assert(func0(array3, sizeof(array3) / sizeof(array3[0])) == 0);
	beq	a5,zero,.L9	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem86.c:24:     int array4[] = {4, 4, 6, 8};
	lla	a5,.LC2	# tmp160,
	ld	a4,0(a5)		# tmp161,
	sd	a4,-64(s0)	# tmp161, array4
	ld	a5,8(a5)		# tmp162,
	sd	a5,-56(s0)	# tmp162, array4
# problem86.c:25:     assert(func0(array4, sizeof(array4) / sizeof(array4[0])) == 12);
	addi	a5,s0,-64	#, tmp163,
	li	a1,4		#,
	mv	a0,a5	#, tmp163
	call	func0		#
	mv	a5,a0	# tmp164,
# problem86.c:25:     assert(func0(array4, sizeof(array4) / sizeof(array4[0])) == 12);
	mv	a4,a5	# tmp165, _4
	li	a5,12		# tmp166,
	beq	a4,a5,.L10	#, tmp165, tmp166,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC3	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L10:
# problem86.c:27:     return 0;
	li	a5,0		# _19,
# problem86.c:28: }
	mv	a4,a5	# <retval>, _19
	la	a5,__stack_chk_guard		# tmp168,
	ld	a3, -24(s0)	# tmp171, D.2766
	ld	a5, 0(a5)	# tmp169, __stack_chk_guard
	xor	a5, a3, a5	# tmp169, tmp171
	li	a3, 0	# tmp171
	beq	a5,zero,.L12	#, tmp169,,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
