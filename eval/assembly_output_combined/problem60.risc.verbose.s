	.file	"problem60.c"
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
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	li	a5,2		# tmp78,
	sw	a5,-20(s0)	# tmp78, i
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	j	.L2		#
.L5:
# problem60.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp82, n
	mv	a4,a5	# tmp81, tmp82
	lw	a5,-20(s0)		# tmp84, i
	divw	a5,a4,a5	# tmp83, tmp80, tmp81
	sw	a5,-36(s0)	# tmp80, n
.L3:
# problem60.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp87, n
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-20(s0)		# tmp90, i
	remw	a5,a4,a5	# tmp89, tmp88, tmp86
	sext.w	a5,a5	# _1, tmp88
# problem60.c:5:         while (n % i == 0 && n > i) n = n / i;
	bne	a5,zero,.L4	#, _1,,
# problem60.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp92, n
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-20(s0)		# tmp94, i
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	bgt	a4,a5,.L5	#, tmp95, tmp96,
.L4:
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp99, i
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-20(s0)	# tmp97, i
.L2:
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp102, i
	mulw	a5,a5,a5	# tmp100, tmp101, tmp101
	sext.w	a4,a5	# _2, tmp100
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-36(s0)		# tmp104, n
	sext.w	a5,a5	# tmp105, tmp103
	bge	a5,a4,.L3	#, tmp105, tmp106,
# problem60.c:6:     return n;
	lw	a5,-36(s0)		# _8, n
# problem60.c:7: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem60.c"
	.align	3
.LC1:
	.string	"func0(15) == 5"
	.align	3
.LC2:
	.string	"func0(27) == 3"
	.align	3
.LC3:
	.string	"func0(63) == 7"
	.align	3
.LC4:
	.string	"func0(330) == 11"
	.align	3
.LC5:
	.string	"func0(13195) == 29"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem60.c:14:     assert(func0(15) == 5);
	li	a0,15		#,
	call	func0		#
	mv	a5,a0	# tmp79,
	mv	a4,a5	# tmp80, _1
	li	a5,5		# tmp81,
	beq	a4,a5,.L9	#, tmp80, tmp81,
# problem60.c:14:     assert(func0(15) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L9:
# problem60.c:15:     assert(func0(27) == 3);
	li	a0,27		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _2
	li	a5,3		# tmp84,
	beq	a4,a5,.L10	#, tmp83, tmp84,
# problem60.c:15:     assert(func0(27) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem60.c:16:     assert(func0(63) == 7);
	li	a0,63		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _3
	li	a5,7		# tmp87,
	beq	a4,a5,.L11	#, tmp86, tmp87,
# problem60.c:16:     assert(func0(63) == 7);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L11:
# problem60.c:17:     assert(func0(330) == 11);
	li	a0,330		#,
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _4
	li	a5,11		# tmp90,
	beq	a4,a5,.L12	#, tmp89, tmp90,
# problem60.c:17:     assert(func0(330) == 11);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem60.c:18:     assert(func0(13195) == 29);
	li	a5,12288		# tmp91,
	addi	a0,a5,907	#,, tmp91
	call	func0		#
	mv	a5,a0	# tmp92,
	mv	a4,a5	# tmp93, _5
	li	a5,29		# tmp94,
	beq	a4,a5,.L13	#, tmp93, tmp94,
# problem60.c:18:     assert(func0(13195) == 29);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem60.c:20:     return 0;
	li	a5,0		# _17,
# problem60.c:21: }
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
