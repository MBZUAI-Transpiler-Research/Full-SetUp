	.file	"problem86.c"
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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp90, size
	sw	a5,-44(s0)	# tmp91, size
# problem86.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	sw	zero,-20(s0)	#, i
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	j	.L2		#
.L4:
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a5,-20(s0)		# tmp94, i
	slliw	a5,a5,1	#, tmp92, tmp93
	sext.w	a5,a5	# _1, tmp92
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addi	a5,a5,1	#, _3, _2
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp95, lst
	add	a5,a4,a5	# _4, _5, tmp95
	lw	a5,0(a5)		# _6, *_5
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	sext.w	a5,a5	# _7, _6
	andi	a5,a5,1	#, tmp97, tmp96
	sext.w	a5,a5	# _8, tmp97
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	bne	a5,zero,.L3	#, _8,,
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a5,-20(s0)		# tmp100, i
	slliw	a5,a5,1	#, tmp98, tmp99
	sext.w	a5,a5	# _9, tmp98
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addi	a5,a5,1	#, _11, _10
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp101, lst
	add	a5,a4,a5	# _12, _13, tmp101
	lw	a5,0(a5)		# _14, *_13
# problem86.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a4,-24(s0)		# tmp104, sum
	addw	a5,a4,a5	# _14, tmp102, tmp103
	sw	a5,-24(s0)	# tmp102, sum
.L3:
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-20(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-20(s0)	# tmp105, i
.L2:
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-20(s0)		# tmp110, i
	slliw	a5,a5,1	#, tmp108, tmp109
	sext.w	a5,a5	# _15, tmp108
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	addiw	a5,a5,1	#, tmp111, _15
	sext.w	a4,a5	# _16, tmp111
# problem86.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-44(s0)		# tmp113, size
	sext.w	a5,a5	# tmp114, tmp112
	bgt	a5,a4,.L4	#, tmp114, tmp115,
# problem86.c:7:     return sum;
	lw	a5,-24(s0)		# _23, sum
# problem86.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
# problem86.c:14: int main() {
	la	a5,__stack_chk_guard		# tmp78,
	ld	a4, 0(a5)	# tmp108, __stack_chk_guard
	sd	a4, -24(s0)	# tmp108, D.1948
	li	a4, 0	# tmp108
# problem86.c:15:     int array1[] = {4, 88};
	li	a5,4		# tmp79,
	sw	a5,-88(s0)	# tmp79, array1[0]
	li	a5,88		# tmp80,
	sw	a5,-84(s0)	# tmp80, array1[1]
# problem86.c:16:     assert(func0(array1, sizeof(array1) / sizeof(array1[0])) == 88);
	addi	a5,s0,-88	#, tmp81,
	li	a1,2		#,
	mv	a0,a5	#, tmp81
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _1
	li	a5,88		# tmp84,
	beq	a4,a5,.L7	#, tmp83, tmp84,
# problem86.c:16:     assert(func0(array1, sizeof(array1) / sizeof(array1[0])) == 88);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem86.c:18:     int array2[] = {4, 5, 6, 7, 2, 122};
	lla	a5,.LC0	# tmp85,
	ld	a4,0(a5)		# tmp86,
	sd	a4,-48(s0)	# tmp86, array2
	ld	a4,8(a5)		# tmp87,
	sd	a4,-40(s0)	# tmp87, array2
	ld	a5,16(a5)		# tmp88,
	sd	a5,-32(s0)	# tmp88, array2
# problem86.c:19:     assert(func0(array2, sizeof(array2) / sizeof(array2[0])) == 122);
	addi	a5,s0,-48	#, tmp89,
	li	a1,6		#,
	mv	a0,a5	#, tmp89
	call	func0		#
	mv	a5,a0	# tmp90,
	mv	a4,a5	# tmp91, _2
	li	a5,122		# tmp92,
	beq	a4,a5,.L8	#, tmp91, tmp92,
# problem86.c:19:     assert(func0(array2, sizeof(array2) / sizeof(array2[0])) == 122);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC3	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem86.c:21:     int array3[] = {4, 0, 6, 7};
	lla	a5,.LC1	# tmp93,
	ld	a4,0(a5)		# tmp94,
	sd	a4,-80(s0)	# tmp94, array3
	ld	a5,8(a5)		# tmp95,
	sd	a5,-72(s0)	# tmp95, array3
# problem86.c:22:     assert(func0(array3, sizeof(array3) / sizeof(array3[0])) == 0);
	addi	a5,s0,-80	#, tmp96,
	li	a1,4		#,
	mv	a0,a5	#, tmp96
	call	func0		#
	mv	a5,a0	# tmp97,
	beq	a5,zero,.L9	#, _3,,
# problem86.c:22:     assert(func0(array3, sizeof(array3) / sizeof(array3[0])) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem86.c:24:     int array4[] = {4, 4, 6, 8};
	lla	a5,.LC2	# tmp98,
	ld	a4,0(a5)		# tmp99,
	sd	a4,-64(s0)	# tmp99, array4
	ld	a5,8(a5)		# tmp100,
	sd	a5,-56(s0)	# tmp100, array4
# problem86.c:25:     assert(func0(array4, sizeof(array4) / sizeof(array4[0])) == 12);
	addi	a5,s0,-64	#, tmp101,
	li	a1,4		#,
	mv	a0,a5	#, tmp101
	call	func0		#
	mv	a5,a0	# tmp102,
	mv	a4,a5	# tmp103, _4
	li	a5,12		# tmp104,
	beq	a4,a5,.L10	#, tmp103, tmp104,
# problem86.c:25:     assert(func0(array4, sizeof(array4) / sizeof(array4[0])) == 12);
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
	la	a5,__stack_chk_guard		# tmp106,
	ld	a3, -24(s0)	# tmp109, D.1948
	ld	a5, 0(a5)	# tmp107, __stack_chk_guard
	xor	a5, a3, a5	# tmp107, tmp109
	li	a3, 0	# tmp109
	beq	a5,zero,.L12	#, tmp107,,
	call	__stack_chk_fail@plt	#
.L12:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
