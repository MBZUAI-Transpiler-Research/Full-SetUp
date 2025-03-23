	.file	"problem25.c"
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
	mv	a5,a0	# tmp76, n
	sw	a5,-36(s0)	# tmp77, n
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	li	a5,2		# tmp78,
	sw	a5,-20(s0)	# tmp78, i
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	j	.L2		#
.L5:
# problem25.c:5:         if (n % i == 0) return n / i;
	lw	a5,-36(s0)		# tmp81, n
	mv	a4,a5	# tmp80, tmp81
	lw	a5,-20(s0)		# tmp84, i
	remw	a5,a4,a5	# tmp83, tmp82, tmp80
	sext.w	a5,a5	# _1, tmp82
# problem25.c:5:         if (n % i == 0) return n / i;
	bne	a5,zero,.L3	#, _1,,
# problem25.c:5:         if (n % i == 0) return n / i;
	lw	a5,-36(s0)		# tmp88, n
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-20(s0)		# tmp90, i
	divw	a5,a4,a5	# tmp89, tmp86, tmp87
	sext.w	a5,a5	# _4, tmp86
	j	.L4		#
.L3:
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp93, i
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-20(s0)	# tmp91, i
.L2:
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp96, i
	mulw	a5,a5,a5	# tmp94, tmp95, tmp95
	sext.w	a4,a5	# _2, tmp94
# problem25.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-36(s0)		# tmp98, n
	sext.w	a5,a5	# tmp99, tmp97
	bge	a5,a4,.L5	#, tmp99, tmp100,
# problem25.c:6:     return 1;
	li	a5,1		# _4,
.L4:
# problem25.c:7: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem25.c"
	.align	3
.LC1:
	.string	"func0(3) == 1"
	.align	3
.LC2:
	.string	"func0(7) == 1"
	.align	3
.LC3:
	.string	"func0(10) == 5"
	.align	3
.LC4:
	.string	"func0(100) == 50"
	.align	3
.LC5:
	.string	"func0(49) == 7"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem25.c:14:     assert(func0(3) == 1);
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp79,
	mv	a4,a5	# tmp80, _1
	li	a5,1		# tmp81,
	beq	a4,a5,.L7	#, tmp80, tmp81,
# problem25.c:14:     assert(func0(3) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem25.c:15:     assert(func0(7) == 1);
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _2
	li	a5,1		# tmp84,
	beq	a4,a5,.L8	#, tmp83, tmp84,
# problem25.c:15:     assert(func0(7) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem25.c:16:     assert(func0(10) == 5);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _3
	li	a5,5		# tmp87,
	beq	a4,a5,.L9	#, tmp86, tmp87,
# problem25.c:16:     assert(func0(10) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem25.c:17:     assert(func0(100) == 50);
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _4
	li	a5,50		# tmp90,
	beq	a4,a5,.L10	#, tmp89, tmp90,
# problem25.c:17:     assert(func0(100) == 50);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem25.c:18:     assert(func0(49) == 7);
	li	a0,49		#,
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _5
	li	a5,7		# tmp93,
	beq	a4,a5,.L11	#, tmp92, tmp93,
# problem25.c:18:     assert(func0(49) == 7);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L11:
# problem25.c:20:     return 0;
	li	a5,0		# _17,
# problem25.c:21: }
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
