	.file	"problem123.c"
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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp86, k
	sw	a5,-44(s0)	# tmp87, k
# problem123.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem123.c:5:     for (int i = 0; i < k; i++)
	sw	zero,-20(s0)	#, i
# problem123.c:5:     for (int i = 0; i < k; i++)
	j	.L2		#
.L4:
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp88, arr
	add	a5,a4,a5	# _2, _3, tmp88
	lw	a5,0(a5)		# _4, *_3
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	mv	a4,a5	# tmp89, _4
	li	a5,-99		# tmp90,
	blt	a4,a5,.L3	#, tmp89, tmp90,
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp91, arr
	add	a5,a4,a5	# _6, _7, tmp91
	lw	a5,0(a5)		# _8, *_7
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	mv	a4,a5	# tmp92, _8
	li	a5,99		# tmp93,
	bgt	a4,a5,.L3	#, tmp92, tmp93,
# problem123.c:7:             sum += arr[i];
	lw	a5,-20(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp94, arr
	add	a5,a4,a5	# _10, _11, tmp94
	lw	a5,0(a5)		# _12, *_11
# problem123.c:7:             sum += arr[i];
	lw	a4,-24(s0)		# tmp97, sum
	addw	a5,a4,a5	# _12, tmp95, tmp96
	sw	a5,-24(s0)	# tmp95, sum
.L3:
# problem123.c:5:     for (int i = 0; i < k; i++)
	lw	a5,-20(s0)		# tmp100, i
	addiw	a5,a5,1	#, tmp98, tmp99
	sw	a5,-20(s0)	# tmp98, i
.L2:
# problem123.c:5:     for (int i = 0; i < k; i++)
	lw	a5,-20(s0)		# tmp102, i
	mv	a4,a5	# tmp101, tmp102
	lw	a5,-44(s0)		# tmp104, k
	sext.w	a4,a4	# tmp105, tmp101
	sext.w	a5,a5	# tmp106, tmp103
	blt	a4,a5,.L4	#, tmp105, tmp106,
# problem123.c:8:     return sum;
	lw	a5,-24(s0)		# _19, sum
# problem123.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem123.c"
	.align	3
.LC5:
	.string	"func0(test1, 3) == -4"
	.align	3
.LC6:
	.string	"func0(test2, 2) == 0"
	.align	3
.LC7:
	.string	"func0(test3, 4) == 125"
	.align	3
.LC8:
	.string	"func0(test4, 4) == 24"
	.align	3
.LC9:
	.string	"func0(test5, 1) == 1"
	.align	3
.LC0:
	.word	1
	.word	-2
	.word	-3
	.word	41
	.word	57
	.word	76
	.word	87
	.word	88
	.word	99
	.align	3
.LC1:
	.word	111
	.word	121
	.word	3
	.word	4000
	.word	5
	.word	6
	.align	3
.LC2:
	.word	11
	.word	21
	.word	3
	.word	90
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC3:
	.word	111
	.word	21
	.word	3
	.word	4000
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-176	#,,
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	addi	s0,sp,176	#,,
# problem123.c:15: int main() {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp124, __stack_chk_guard
	sd	a4, -24(s0)	# tmp124, D.1955
	li	a4, 0	# tmp124
# problem123.c:16:     int test1[] = {1, -2, -3, 41, 57, 76, 87, 88, 99};
	lla	a5,.LC0	# tmp80,
	ld	a1,0(a5)		# tmp81,
	ld	a2,8(a5)		# tmp82,
	ld	a3,16(a5)		# tmp83,
	ld	a4,24(a5)		# tmp84,
	sd	a1,-144(s0)	# tmp81, test1
	sd	a2,-136(s0)	# tmp82, test1
	sd	a3,-128(s0)	# tmp83, test1
	sd	a4,-120(s0)	# tmp84, test1
	lw	a5,32(a5)		# tmp85,
	sw	a5,-112(s0)	# tmp85, test1
# problem123.c:17:     assert(func0(test1, 3) == -4);
	addi	a5,s0,-144	#, tmp86,
	li	a1,3		#,
	mv	a0,a5	#, tmp86
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _1
	li	a5,-4		# tmp89,
	beq	a4,a5,.L7	#, tmp88, tmp89,
# problem123.c:17:     assert(func0(test1, 3) == -4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L7:
# problem123.c:19:     int test2[] = {111, 121, 3, 4000, 5, 6};
	lla	a5,.LC1	# tmp90,
	ld	a4,0(a5)		# tmp91,
	sd	a4,-168(s0)	# tmp91, test2
	ld	a4,8(a5)		# tmp92,
	sd	a4,-160(s0)	# tmp92, test2
	ld	a5,16(a5)		# tmp93,
	sd	a5,-152(s0)	# tmp93, test2
# problem123.c:20:     assert(func0(test2, 2) == 0);
	addi	a5,s0,-168	#, tmp94,
	li	a1,2		#,
	mv	a0,a5	#, tmp94
	call	func0		#
	mv	a5,a0	# tmp95,
	beq	a5,zero,.L8	#, _2,,
# problem123.c:20:     assert(func0(test2, 2) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L8:
# problem123.c:22:     int test3[] = {11, 21, 3, 90, 5, 6, 7, 8, 9};
	lla	a5,.LC2	# tmp96,
	ld	a1,0(a5)		# tmp97,
	ld	a2,8(a5)		# tmp98,
	ld	a3,16(a5)		# tmp99,
	ld	a4,24(a5)		# tmp100,
	sd	a1,-104(s0)	# tmp97, test3
	sd	a2,-96(s0)	# tmp98, test3
	sd	a3,-88(s0)	# tmp99, test3
	sd	a4,-80(s0)	# tmp100, test3
	lw	a5,32(a5)		# tmp101,
	sw	a5,-72(s0)	# tmp101, test3
# problem123.c:23:     assert(func0(test3, 4) == 125);
	addi	a5,s0,-104	#, tmp102,
	li	a1,4		#,
	mv	a0,a5	#, tmp102
	call	func0		#
	mv	a5,a0	# tmp103,
	mv	a4,a5	# tmp104, _3
	li	a5,125		# tmp105,
	beq	a4,a5,.L9	#, tmp104, tmp105,
# problem123.c:23:     assert(func0(test3, 4) == 125);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem123.c:25:     int test4[] = {111, 21, 3, 4000, 5, 6, 7, 8, 9};
	lla	a5,.LC3	# tmp106,
	ld	a1,0(a5)		# tmp107,
	ld	a2,8(a5)		# tmp108,
	ld	a3,16(a5)		# tmp109,
	ld	a4,24(a5)		# tmp110,
	sd	a1,-64(s0)	# tmp107, test4
	sd	a2,-56(s0)	# tmp108, test4
	sd	a3,-48(s0)	# tmp109, test4
	sd	a4,-40(s0)	# tmp110, test4
	lw	a5,32(a5)		# tmp111,
	sw	a5,-32(s0)	# tmp111, test4
# problem123.c:26:     assert(func0(test4, 4) == 24);
	addi	a5,s0,-64	#, tmp112,
	li	a1,4		#,
	mv	a0,a5	#, tmp112
	call	func0		#
	mv	a5,a0	# tmp113,
	mv	a4,a5	# tmp114, _4
	li	a5,24		# tmp115,
	beq	a4,a5,.L10	#, tmp114, tmp115,
# problem123.c:26:     assert(func0(test4, 4) == 24);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem123.c:28:     int test5[] = {1};
	li	a5,1		# tmp116,
	sw	a5,-176(s0)	# tmp116, test5[0]
# problem123.c:29:     assert(func0(test5, 1) == 1);
	addi	a5,s0,-176	#, tmp117,
	li	a1,1		#,
	mv	a0,a5	#, tmp117
	call	func0		#
	mv	a5,a0	# tmp118,
	mv	a4,a5	# tmp119, _5
	li	a5,1		# tmp120,
	beq	a4,a5,.L11	#, tmp119, tmp120,
# problem123.c:29:     assert(func0(test5, 1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem123.c:31:     return 0;
	li	a5,0		# _22,
# problem123.c:32: }
	mv	a4,a5	# <retval>, _22
	la	a5,__stack_chk_guard		# tmp122,
	ld	a3, -24(s0)	# tmp125, D.1955
	ld	a5, 0(a5)	# tmp123, __stack_chk_guard
	xor	a5, a3, a5	# tmp123, tmp125
	li	a3, 0	# tmp125
	beq	a5,zero,.L13	#, tmp123,,
	call	__stack_chk_fail@plt	#
.L13:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	ld	s0,160(sp)		#,
	addi	sp,sp,176	#,,
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
