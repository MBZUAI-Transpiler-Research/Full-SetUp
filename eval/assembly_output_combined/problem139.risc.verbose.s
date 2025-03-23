	.file	"problem139.c"
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
	mv	a5,a0	# tmp76, n
	sw	a5,-20(s0)	# tmp77, n
# problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	lw	a5,-20(s0)		# n.0_1, n
	andi	a5,a5,1	#, tmp79, tmp78
	sext.w	a5,a5	# _2, tmp79
# problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	bne	a5,zero,.L2	#, _2,,
# problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	lw	a5,-20(s0)		# tmp81, n
	sext.w	a4,a5	# tmp82, tmp80
	li	a5,7		# tmp83,
	ble	a4,a5,.L2	#, tmp82, tmp83,
# problem139.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	li	a5,1		# _3,
	j	.L3		#
.L2:
# problem139.c:5:     return 0;
	li	a5,0		# _3,
.L3:
# problem139.c:6: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem139.c"
	.align	3
.LC1:
	.string	"func0(4) == 0"
	.align	3
.LC2:
	.string	"func0(6) == 0"
	.align	3
.LC3:
	.string	"func0(8) == 1"
	.align	3
.LC4:
	.string	"func0(10) == 1"
	.align	3
.LC5:
	.string	"func0(11) == 0"
	.align	3
.LC6:
	.string	"func0(12) == 1"
	.align	3
.LC7:
	.string	"func0(13) == 0"
	.align	3
.LC8:
	.string	"func0(16) == 1"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem139.c:13:     assert(func0(4) == 0);
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L5	#, _1,,
# problem139.c:13:     assert(func0(4) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,13		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L5:
# problem139.c:14:     assert(func0(6) == 0);
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp83,
	beq	a5,zero,.L6	#, _2,,
# problem139.c:14:     assert(func0(6) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L6:
# problem139.c:15:     assert(func0(8) == 1);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _3
	li	a5,1		# tmp86,
	beq	a4,a5,.L7	#, tmp85, tmp86,
# problem139.c:15:     assert(func0(8) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L7:
# problem139.c:16:     assert(func0(10) == 1);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _4
	li	a5,1		# tmp89,
	beq	a4,a5,.L8	#, tmp88, tmp89,
# problem139.c:16:     assert(func0(10) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L8:
# problem139.c:17:     assert(func0(11) == 0);
	li	a0,11		#,
	call	func0		#
	mv	a5,a0	# tmp90,
	beq	a5,zero,.L9	#, _5,,
# problem139.c:17:     assert(func0(11) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L9:
# problem139.c:18:     assert(func0(12) == 1);
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _6
	li	a5,1		# tmp93,
	beq	a4,a5,.L10	#, tmp92, tmp93,
# problem139.c:18:     assert(func0(12) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem139.c:19:     assert(func0(13) == 0);
	li	a0,13		#,
	call	func0		#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L11	#, _7,,
# problem139.c:19:     assert(func0(13) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L11:
# problem139.c:20:     assert(func0(16) == 1);
	li	a0,16		#,
	call	func0		#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _8
	li	a5,1		# tmp97,
	beq	a4,a5,.L12	#, tmp96, tmp97,
# problem139.c:20:     assert(func0(16) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L12:
# problem139.c:22:     return 0;
	li	a5,0		# _26,
# problem139.c:23: }
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
