	.file	"problem14.c"
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
	mv	a5,a0	# tmp74, a
	mv	a4,a1	# tmp76, b
	sw	a5,-36(s0)	# tmp75, a
	mv	a5,a4	# tmp77, tmp76
	sw	a5,-40(s0)	# tmp77, b
# problem14.c:4:     while (b != 0) {
	j	.L2		#
.L3:
# problem14.c:5:         int m = a % b;
	lw	a5,-36(s0)		# tmp80, a
	mv	a4,a5	# tmp79, tmp80
	lw	a5,-40(s0)		# tmp83, b
	remw	a5,a4,a5	# tmp82, tmp81, tmp79
	sw	a5,-20(s0)	# tmp81, m
# problem14.c:6:         a = b;
	lw	a5,-40(s0)		# tmp84, b
	sw	a5,-36(s0)	# tmp84, a
# problem14.c:7:         b = m;
	lw	a5,-20(s0)		# tmp85, m
	sw	a5,-40(s0)	# tmp85, b
.L2:
# problem14.c:4:     while (b != 0) {
	lw	a5,-40(s0)		# tmp87, b
	sext.w	a5,a5	# tmp88, tmp86
	bne	a5,zero,.L3	#, tmp88,,
# problem14.c:9:     return a;
	lw	a5,-36(s0)		# _5, a
# problem14.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem14.c"
	.align	3
.LC1:
	.string	"func0(3, 7) == 1"
	.align	3
.LC2:
	.string	"func0(10, 15) == 5"
	.align	3
.LC3:
	.string	"func0(49, 14) == 7"
	.align	3
.LC4:
	.string	"func0(144, 60) == 12"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem14.c:17:     assert(func0(3, 7) == 1);
	li	a1,7		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp78,
	mv	a4,a5	# tmp79, _1
	li	a5,1		# tmp80,
	beq	a4,a5,.L6	#, tmp79, tmp80,
# problem14.c:17:     assert(func0(3, 7) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L6:
# problem14.c:18:     assert(func0(10, 15) == 5);
	li	a1,15		#,
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _2
	li	a5,5		# tmp83,
	beq	a4,a5,.L7	#, tmp82, tmp83,
# problem14.c:18:     assert(func0(10, 15) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem14.c:19:     assert(func0(49, 14) == 7);
	li	a1,14		#,
	li	a0,49		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _3
	li	a5,7		# tmp86,
	beq	a4,a5,.L8	#, tmp85, tmp86,
# problem14.c:19:     assert(func0(49, 14) == 7);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L8:
# problem14.c:20:     assert(func0(144, 60) == 12);
	li	a1,60		#,
	li	a0,144		#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _4
	li	a5,12		# tmp89,
	beq	a4,a5,.L9	#, tmp88, tmp89,
# problem14.c:20:     assert(func0(144, 60) == 12);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem14.c:22:     return 0;
	li	a5,0		# _14,
# problem14.c:23: }
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
