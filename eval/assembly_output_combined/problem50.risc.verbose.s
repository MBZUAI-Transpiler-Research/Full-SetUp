	.file	"problem50.c"
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
	mv	a5,a0	# tmp75, n
	mv	a4,a1	# tmp77, p
	sw	a5,-36(s0)	# tmp76, n
	mv	a5,a4	# tmp78, tmp77
	sw	a5,-40(s0)	# tmp78, p
# problem50.c:4:     int out = 1;
	li	a5,1		# tmp79,
	sw	a5,-24(s0)	# tmp79, out
# problem50.c:5:     for (int i = 0; i < n; i++)
	sw	zero,-20(s0)	#, i
# problem50.c:5:     for (int i = 0; i < n; i++)
	j	.L2		#
.L3:
# problem50.c:6:         out = (out * 2) % p;
	lw	a5,-24(s0)		# tmp82, out
	slliw	a5,a5,1	#, tmp80, tmp81
	sext.w	a5,a5	# _1, tmp80
# problem50.c:6:         out = (out * 2) % p;
	mv	a4,a5	# tmp84, _1
	lw	a5,-40(s0)		# tmp87, p
	remw	a5,a4,a5	# tmp86, tmp85, tmp84
	sw	a5,-24(s0)	# tmp85, out
# problem50.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L2:
# problem50.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-36(s0)		# tmp94, n
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L3	#, tmp95, tmp96,
# problem50.c:7:     return out;
	lw	a5,-24(s0)		# _7, out
# problem50.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem50.c"
	.align	3
.LC1:
	.string	"func0(3, 5) == 3"
	.align	3
.LC2:
	.string	"func0(1101, 101) == 2"
	.align	3
.LC3:
	.string	"func0(0, 101) == 1"
	.align	3
.LC4:
	.string	"func0(3, 11) == 8"
	.align	3
.LC5:
	.string	"func0(100, 101) == 1"
	.align	3
.LC6:
	.string	"func0(30, 5) == 4"
	.align	3
.LC7:
	.string	"func0(31, 5) == 3"
	.align	3
.LC8:
	.string	"All tests passed."
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem50.c:16:     assert(func0(3, 5) == 3);
	li	a1,5		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _1
	li	a5,3		# tmp83,
	beq	a4,a5,.L6	#, tmp82, tmp83,
# problem50.c:16:     assert(func0(3, 5) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L6:
# problem50.c:17:     assert(func0(1101, 101) == 2);
	li	a1,101		#,
	li	a0,1101		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _2
	li	a5,2		# tmp86,
	beq	a4,a5,.L7	#, tmp85, tmp86,
# problem50.c:17:     assert(func0(1101, 101) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem50.c:18:     assert(func0(0, 101) == 1);
	li	a1,101		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _3
	li	a5,1		# tmp89,
	beq	a4,a5,.L8	#, tmp88, tmp89,
# problem50.c:18:     assert(func0(0, 101) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L8:
# problem50.c:19:     assert(func0(3, 11) == 8);
	li	a1,11		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp90,
	mv	a4,a5	# tmp91, _4
	li	a5,8		# tmp92,
	beq	a4,a5,.L9	#, tmp91, tmp92,
# problem50.c:19:     assert(func0(3, 11) == 8);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem50.c:20:     assert(func0(100, 101) == 1);
	li	a1,101		#,
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# tmp93,
	mv	a4,a5	# tmp94, _5
	li	a5,1		# tmp95,
	beq	a4,a5,.L10	#, tmp94, tmp95,
# problem50.c:20:     assert(func0(100, 101) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem50.c:21:     assert(func0(30, 5) == 4);
	li	a1,5		#,
	li	a0,30		#,
	call	func0		#
	mv	a5,a0	# tmp96,
	mv	a4,a5	# tmp97, _6
	li	a5,4		# tmp98,
	beq	a4,a5,.L11	#, tmp97, tmp98,
# problem50.c:21:     assert(func0(30, 5) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem50.c:22:     assert(func0(31, 5) == 3);
	li	a1,5		#,
	li	a0,31		#,
	call	func0		#
	mv	a5,a0	# tmp99,
	mv	a4,a5	# tmp100, _7
	li	a5,3		# tmp101,
	beq	a4,a5,.L12	#, tmp100, tmp101,
# problem50.c:22:     assert(func0(31, 5) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem50.c:24:     printf("All tests passed.\n");
	lla	a0,.LC8	#,
	call	puts@plt	#
# problem50.c:25:     return 0;
	li	a5,0		# _24,
# problem50.c:26: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
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
