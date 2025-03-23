	.file	"problem98.c"
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
	mv	a5,a0	# tmp78, a
	mv	a4,a1	# tmp80, b
	sw	a5,-20(s0)	# tmp79, a
	mv	a5,a4	# tmp81, tmp80
	sw	a5,-24(s0)	# tmp81, b
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lw	a5,-20(s0)		# tmp84, a
	sraiw	a5,a5,31	#, tmp82, tmp83
	lw	a4,-20(s0)		# tmp86, a
	xor	a4,a5,a4	# tmp85, tmp87, tmp82
	subw	a5,a4,a5	# tmp88, tmp87, tmp82
	sext.w	a5,a5	# _1, tmp88
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mv	a4,a5	# tmp90, _1
	li	a5,10		# tmp92,
	remw	a5,a4,a5	# tmp92, tmp91, tmp90
	sext.w	a4,a5	# _2, tmp91
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lw	a5,-24(s0)		# tmp95, b
	sraiw	a5,a5,31	#, tmp93, tmp94
	lw	a3,-24(s0)		# tmp97, b
	xor	a3,a5,a3	# tmp96, tmp98, tmp93
	subw	a5,a3,a5	# tmp99, tmp98, tmp93
	sext.w	a5,a5	# _3, tmp99
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mv	a3,a5	# tmp101, _3
	li	a5,10		# tmp103,
	remw	a5,a3,a5	# tmp103, tmp102, tmp101
	sext.w	a5,a5	# _4, tmp102
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mulw	a5,a4,a5	# tmp104, _2, _4
	sext.w	a5,a5	# _7, tmp104
# problem98.c:6: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem98.c"
	.align	3
.LC1:
	.string	"func0(148, 412) == 16"
	.align	3
.LC2:
	.string	"func0(19, 28) == 72"
	.align	3
.LC3:
	.string	"func0(2020, 1851) == 0"
	.align	3
.LC4:
	.string	"func0(14, -15) == 20"
	.align	3
.LC5:
	.string	"func0(76, 67) == 42"
	.align	3
.LC6:
	.string	"func0(17, 27) == 49"
	.align	3
.LC7:
	.string	"func0(0, 1) == 0"
	.align	3
.LC8:
	.string	"func0(0, 0) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem98.c:13:     assert(func0(148, 412) == 16);
	li	a1,412		#,
	li	a0,148		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _1
	li	a5,16		# tmp84,
	beq	a4,a5,.L4	#, tmp83, tmp84,
# problem98.c:13:     assert(func0(148, 412) == 16);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,13		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L4:
# problem98.c:14:     assert(func0(19, 28) == 72);
	li	a1,28		#,
	li	a0,19		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _2
	li	a5,72		# tmp87,
	beq	a4,a5,.L5	#, tmp86, tmp87,
# problem98.c:14:     assert(func0(19, 28) == 72);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L5:
# problem98.c:15:     assert(func0(2020, 1851) == 0);
	li	a1,1851		#,
	li	a0,2020		#,
	call	func0		#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L6	#, _3,,
# problem98.c:15:     assert(func0(2020, 1851) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L6:
# problem98.c:16:     assert(func0(14, -15) == 20);
	li	a1,-15		#,
	li	a0,14		#,
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _4
	li	a5,20		# tmp91,
	beq	a4,a5,.L7	#, tmp90, tmp91,
# problem98.c:16:     assert(func0(14, -15) == 20);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem98.c:17:     assert(func0(76, 67) == 42);
	li	a1,67		#,
	li	a0,76		#,
	call	func0		#
	mv	a5,a0	# tmp92,
	mv	a4,a5	# tmp93, _5
	li	a5,42		# tmp94,
	beq	a4,a5,.L8	#, tmp93, tmp94,
# problem98.c:17:     assert(func0(76, 67) == 42);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem98.c:18:     assert(func0(17, 27) == 49);
	li	a1,27		#,
	li	a0,17		#,
	call	func0		#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _6
	li	a5,49		# tmp97,
	beq	a4,a5,.L9	#, tmp96, tmp97,
# problem98.c:18:     assert(func0(17, 27) == 49);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem98.c:19:     assert(func0(0, 1) == 0);
	li	a1,1		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp98,
	beq	a5,zero,.L10	#, _7,,
# problem98.c:19:     assert(func0(0, 1) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L10:
# problem98.c:20:     assert(func0(0, 0) == 0);
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L11	#, _8,,
# problem98.c:20:     assert(func0(0, 0) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem98.c:22:     return 0;
	li	a5,0		# _26,
# problem98.c:23: }
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
