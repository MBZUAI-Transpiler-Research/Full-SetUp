	.file	"problem42.c"
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
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp74, n
	sw	a5,-20(s0)	# tmp75, n
# problem42.c:4:     return n * n;
	lw	a5,-20(s0)		# tmp78, n
	mulw	a5,a5,a5	# tmp76, tmp77, tmp77
	sext.w	a5,a5	# _2, tmp76
# problem42.c:5: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem42.c"
	.align	3
.LC1:
	.string	"func0(2) == 4"
	.align	3
.LC2:
	.string	"func0(3) == 9"
	.align	3
.LC3:
	.string	"func0(4) == 16"
	.align	3
.LC4:
	.string	"func0(8) == 64"
	.align	3
.LC5:
	.string	"func0(10) == 100"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem42.c:13:     assert(func0(2) == 4);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp79,
	mv	a4,a5	# tmp80, _1
	li	a5,4		# tmp81,
	beq	a4,a5,.L4	#, tmp80, tmp81,
# problem42.c:13:     assert(func0(2) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,13		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L4:
# problem42.c:14:     assert(func0(3) == 9);
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _2
	li	a5,9		# tmp84,
	beq	a4,a5,.L5	#, tmp83, tmp84,
# problem42.c:14:     assert(func0(3) == 9);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L5:
# problem42.c:15:     assert(func0(4) == 16);
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _3
	li	a5,16		# tmp87,
	beq	a4,a5,.L6	#, tmp86, tmp87,
# problem42.c:15:     assert(func0(4) == 16);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L6:
# problem42.c:16:     assert(func0(8) == 64);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _4
	li	a5,64		# tmp90,
	beq	a4,a5,.L7	#, tmp89, tmp90,
# problem42.c:16:     assert(func0(8) == 64);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem42.c:17:     assert(func0(10) == 100);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _5
	li	a5,100		# tmp93,
	beq	a4,a5,.L8	#, tmp92, tmp93,
# problem42.c:17:     assert(func0(10) == 100);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem42.c:19:     return 0;
	li	a5,0		# _17,
# problem42.c:20: }
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
