	.file	"problem84.c"
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
	mv	a5,a0	# tmp74, n
	sw	a5,-36(s0)	# tmp75, n
# problem84.c:4:     if (n < 1) return 0;
	lw	a5,-36(s0)		# tmp77, n
	sext.w	a5,a5	# tmp78, tmp76
	bgt	a5,zero,.L2	#, tmp78,,
# problem84.c:4:     if (n < 1) return 0;
	li	a5,0		# _3,
	j	.L3		#
.L2:
# problem84.c:5:     if (n == 1) return 1;
	lw	a5,-36(s0)		# tmp80, n
	sext.w	a4,a5	# tmp81, tmp79
	li	a5,1		# tmp82,
	bne	a4,a5,.L4	#, tmp81, tmp82,
# problem84.c:5:     if (n == 1) return 1;
	li	a5,1		# _3,
	j	.L3		#
.L4:
# problem84.c:6:     int out = 18;
	li	a5,18		# tmp83,
	sw	a5,-24(s0)	# tmp83, out
# problem84.c:7:     for (int i = 2; i < n; i++)
	li	a5,2		# tmp84,
	sw	a5,-20(s0)	# tmp84, i
# problem84.c:7:     for (int i = 2; i < n; i++)
	j	.L5		#
.L6:
# problem84.c:8:         out = out * 10;
	lw	a5,-24(s0)		# tmp86, out
	mv	a4,a5	# tmp85, tmp86
	mv	a5,a4	# tmp87, tmp85
	slliw	a5,a5,2	#, tmp88, tmp87
	addw	a5,a5,a4	# tmp85, tmp87, tmp87
	slliw	a5,a5,1	#, tmp89, tmp87
	sw	a5,-24(s0)	# tmp87, out
# problem84.c:7:     for (int i = 2; i < n; i++)
	lw	a5,-20(s0)		# tmp92, i
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-20(s0)	# tmp90, i
.L5:
# problem84.c:7:     for (int i = 2; i < n; i++)
	lw	a5,-20(s0)		# tmp94, i
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-36(s0)		# tmp96, n
	sext.w	a4,a4	# tmp97, tmp93
	sext.w	a5,a5	# tmp98, tmp95
	blt	a4,a5,.L6	#, tmp97, tmp98,
# problem84.c:9:     return out;
	lw	a5,-24(s0)		# _3, out
.L3:
# problem84.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem84.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(2) == 18"
	.align	3
.LC3:
	.string	"func0(3) == 180"
	.align	3
.LC4:
	.string	"func0(4) == 1800"
	.align	3
.LC5:
	.string	"func0(5) == 18000"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem84.c:17:     assert(func0(1) == 1);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp79,
	mv	a4,a5	# tmp80, _1
	li	a5,1		# tmp81,
	beq	a4,a5,.L8	#, tmp80, tmp81,
# problem84.c:17:     assert(func0(1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L8:
# problem84.c:18:     assert(func0(2) == 18);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _2
	li	a5,18		# tmp84,
	beq	a4,a5,.L9	#, tmp83, tmp84,
# problem84.c:18:     assert(func0(2) == 18);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem84.c:19:     assert(func0(3) == 180);
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _3
	li	a5,180		# tmp87,
	beq	a4,a5,.L10	#, tmp86, tmp87,
# problem84.c:19:     assert(func0(3) == 180);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem84.c:20:     assert(func0(4) == 1800);
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _4
	li	a5,1800		# tmp90,
	beq	a4,a5,.L11	#, tmp89, tmp90,
# problem84.c:20:     assert(func0(4) == 1800);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem84.c:21:     assert(func0(5) == 18000);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _5
	li	a5,16384		# tmp94,
	addi	a5,a5,1616	#, tmp93, tmp94
	beq	a4,a5,.L12	#, tmp92, tmp93,
# problem84.c:21:     assert(func0(5) == 18000);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem84.c:23:     return 0;
	li	a5,0		# _17,
# problem84.c:24: }
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
