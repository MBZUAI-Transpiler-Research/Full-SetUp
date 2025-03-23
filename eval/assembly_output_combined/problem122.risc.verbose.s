	.file	"problem122.c"
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
	mv	a5,a1	# tmp86, size
	sw	a5,-44(s0)	# tmp87, size
# problem122.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	sw	zero,-20(s0)	#, i
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	j	.L2		#
.L4:
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a5,-20(s0)		# tmp90, i
	slliw	a5,a5,1	#, tmp88, tmp89
	sext.w	a5,a5	# _1, tmp88
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp91, lst
	add	a5,a4,a5	# _3, _4, tmp91
	lw	a5,0(a5)		# _5, *_4
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	mv	a4,a5	# tmp93, _5
	sraiw	a5,a4,31	#, tmp94, tmp93
	srliw	a5,a5,31	#, tmp95, tmp94
	addw	a4,a4,a5	# tmp95, tmp96, tmp93
	andi	a4,a4,1	#, tmp97, tmp96
	subw	a5,a4,a5	# tmp98, tmp97, tmp95
	sext.w	a5,a5	# _6, tmp98
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	mv	a4,a5	# tmp99, _6
	li	a5,1		# tmp100,
	bne	a4,a5,.L3	#, tmp99, tmp100,
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a5,-20(s0)		# tmp103, i
	slliw	a5,a5,1	#, tmp101, tmp102
	sext.w	a5,a5	# _7, tmp101
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp104, lst
	add	a5,a4,a5	# _9, _10, tmp104
	lw	a5,0(a5)		# _11, *_10
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a4,-24(s0)		# tmp107, sum
	addw	a5,a4,a5	# _11, tmp105, tmp106
	sw	a5,-24(s0)	# tmp105, sum
.L3:
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-20(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-20(s0)	# tmp108, i
.L2:
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-20(s0)		# tmp113, i
	slliw	a5,a5,1	#, tmp111, tmp112
	sext.w	a4,a5	# _12, tmp111
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-44(s0)		# tmp115, size
	sext.w	a5,a5	# tmp116, tmp114
	bgt	a5,a4,.L4	#, tmp116, tmp117,
# problem122.c:7:     return sum;
	lw	a5,-24(s0)		# _19, sum
# problem122.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem122.c"
	.align	3
.LC6:
	.string	"func0(test1, 4) == 12"
	.align	3
.LC7:
	.string	"func0(test2, 5) == 9"
	.align	3
.LC8:
	.string	"func0(test3, 4) == 0"
	.align	3
.LC9:
	.string	"func0(test4, 2) == 5"
	.align	3
.LC10:
	.string	"func0(test5, 3) == 0"
	.align	3
.LC11:
	.string	"func0(test6, 4) == 23"
	.align	3
.LC12:
	.string	"func0(test7, 4) == 3"
	.align	3
.LC0:
	.word	5
	.word	8
	.word	7
	.word	1
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.align	3
.LC2:
	.word	30
	.word	13
	.word	24
	.word	321
	.align	3
.LC3:
	.word	30
	.word	13
	.word	23
	.word	32
	.align	3
.LC4:
	.word	3
	.word	13
	.word	2
	.word	9
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-144	#,,
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	addi	s0,sp,144	#,,
# problem122.c:14: int main() {
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp130, __stack_chk_guard
	sd	a4, -24(s0)	# tmp130, D.1962
	li	a4, 0	# tmp130
# problem122.c:15:     int test1[] = {5, 8, 7, 1};
	lla	a5,.LC0	# tmp82,
	ld	a4,0(a5)		# tmp83,
	sd	a4,-112(s0)	# tmp83, test1
	ld	a5,8(a5)		# tmp84,
	sd	a5,-104(s0)	# tmp84, test1
# problem122.c:16:     assert(func0(test1, 4) == 12);
	addi	a5,s0,-112	#, tmp85,
	li	a1,4		#,
	mv	a0,a5	#, tmp85
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _1
	li	a5,12		# tmp88,
	beq	a4,a5,.L7	#, tmp87, tmp88,
# problem122.c:16:     assert(func0(test1, 4) == 12);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L7:
# problem122.c:18:     int test2[] = {3, 3, 3, 3, 3};
	lla	a5,.LC1	# tmp89,
	ld	a4,0(a5)		# tmp90,
	sd	a4,-48(s0)	# tmp90, test2
	ld	a4,8(a5)		# tmp91,
	sd	a4,-40(s0)	# tmp91, test2
	lw	a5,16(a5)		# tmp92,
	sw	a5,-32(s0)	# tmp92, test2
# problem122.c:19:     assert(func0(test2, 5) == 9);
	addi	a5,s0,-48	#, tmp93,
	li	a1,5		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	mv	a5,a0	# tmp94,
	mv	a4,a5	# tmp95, _2
	li	a5,9		# tmp96,
	beq	a4,a5,.L8	#, tmp95, tmp96,
# problem122.c:19:     assert(func0(test2, 5) == 9);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L8:
# problem122.c:21:     int test3[] = {30, 13, 24, 321};
	lla	a5,.LC2	# tmp97,
	ld	a4,0(a5)		# tmp98,
	sd	a4,-96(s0)	# tmp98, test3
	ld	a5,8(a5)		# tmp99,
	sd	a5,-88(s0)	# tmp99, test3
# problem122.c:22:     assert(func0(test3, 4) == 0);
	addi	a5,s0,-96	#, tmp100,
	li	a1,4		#,
	mv	a0,a5	#, tmp100
	call	func0		#
	mv	a5,a0	# tmp101,
	beq	a5,zero,.L9	#, _3,,
# problem122.c:22:     assert(func0(test3, 4) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem122.c:24:     int test4[] = {5, 9};
	li	a5,5		# tmp102,
	sw	a5,-136(s0)	# tmp102, test4[0]
	li	a5,9		# tmp103,
	sw	a5,-132(s0)	# tmp103, test4[1]
# problem122.c:25:     assert(func0(test4, 2) == 5);
	addi	a5,s0,-136	#, tmp104,
	li	a1,2		#,
	mv	a0,a5	#, tmp104
	call	func0		#
	mv	a5,a0	# tmp105,
	mv	a4,a5	# tmp106, _4
	li	a5,5		# tmp107,
	beq	a4,a5,.L10	#, tmp106, tmp107,
# problem122.c:25:     assert(func0(test4, 2) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem122.c:27:     int test5[] = {2, 4, 8};
	li	a5,2		# tmp108,
	sw	a5,-128(s0)	# tmp108, test5[0]
	li	a5,4		# tmp109,
	sw	a5,-124(s0)	# tmp109, test5[1]
	li	a5,8		# tmp110,
	sw	a5,-120(s0)	# tmp110, test5[2]
# problem122.c:28:     assert(func0(test5, 3) == 0);
	addi	a5,s0,-128	#, tmp111,
	li	a1,3		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	mv	a5,a0	# tmp112,
	beq	a5,zero,.L11	#, _5,,
# problem122.c:28:     assert(func0(test5, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem122.c:30:     int test6[] = {30, 13, 23, 32};
	lla	a5,.LC3	# tmp113,
	ld	a4,0(a5)		# tmp114,
	sd	a4,-80(s0)	# tmp114, test6
	ld	a5,8(a5)		# tmp115,
	sd	a5,-72(s0)	# tmp115, test6
# problem122.c:31:     assert(func0(test6, 4) == 23);
	addi	a5,s0,-80	#, tmp116,
	li	a1,4		#,
	mv	a0,a5	#, tmp116
	call	func0		#
	mv	a5,a0	# tmp117,
	mv	a4,a5	# tmp118, _6
	li	a5,23		# tmp119,
	beq	a4,a5,.L12	#, tmp118, tmp119,
# problem122.c:31:     assert(func0(test6, 4) == 23);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem122.c:33:     int test7[] = {3, 13, 2, 9};
	lla	a5,.LC4	# tmp120,
	ld	a4,0(a5)		# tmp121,
	sd	a4,-64(s0)	# tmp121, test7
	ld	a5,8(a5)		# tmp122,
	sd	a5,-56(s0)	# tmp122, test7
# problem122.c:34:     assert(func0(test7, 4) == 3);
	addi	a5,s0,-64	#, tmp123,
	li	a1,4		#,
	mv	a0,a5	#, tmp123
	call	func0		#
	mv	a5,a0	# tmp124,
	mv	a4,a5	# tmp125, _7
	li	a5,3		# tmp126,
	beq	a4,a5,.L13	#, tmp125, tmp126,
# problem122.c:34:     assert(func0(test7, 4) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem122.c:36:     return 0;
	li	a5,0		# _33,
# problem122.c:37: }
	mv	a4,a5	# <retval>, _33
	la	a5,__stack_chk_guard		# tmp128,
	ld	a3, -24(s0)	# tmp131, D.1962
	ld	a5, 0(a5)	# tmp129, __stack_chk_guard
	xor	a5, a3, a5	# tmp129, tmp131
	li	a3, 0	# tmp131
	beq	a5,zero,.L15	#, tmp129,,
	call	__stack_chk_fail@plt	#
.L15:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	ld	s0,128(sp)		#,
	addi	sp,sp,144	#,,
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
