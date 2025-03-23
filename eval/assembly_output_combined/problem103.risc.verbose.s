	.file	"problem103.c"
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
	mv	a5,a0	# tmp76, x
	mv	a4,a1	# tmp78, y
	sw	a5,-20(s0)	# tmp77, x
	mv	a5,a4	# tmp79, tmp78
	sw	a5,-24(s0)	# tmp79, y
# problem103.c:4:     if (y < x) return -1;
	lw	a5,-24(s0)		# tmp81, y
	mv	a4,a5	# tmp80, tmp81
	lw	a5,-20(s0)		# tmp83, x
	sext.w	a4,a4	# tmp84, tmp80
	sext.w	a5,a5	# tmp85, tmp82
	bge	a4,a5,.L2	#, tmp84, tmp85,
# problem103.c:4:     if (y < x) return -1;
	li	a5,-1		# _3,
	j	.L3		#
.L2:
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	lw	a5,-24(s0)		# tmp87, y
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-20(s0)		# tmp89, x
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	bne	a4,a5,.L4	#, tmp90, tmp91,
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	lw	a5,-24(s0)		# tmp94, y
	mv	a4,a5	# tmp93, tmp94
	sraiw	a5,a4,31	#, tmp95, tmp93
	srliw	a5,a5,31	#, tmp96, tmp95
	addw	a4,a4,a5	# tmp96, tmp97, tmp93
	andi	a4,a4,1	#, tmp98, tmp97
	subw	a5,a4,a5	# tmp99, tmp98, tmp96
	sext.w	a5,a5	# _1, tmp99
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	mv	a4,a5	# tmp100, _1
	li	a5,1		# tmp101,
	bne	a4,a5,.L4	#, tmp100, tmp101,
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	li	a5,-1		# _3,
	j	.L3		#
.L4:
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	lw	a5,-24(s0)		# tmp104, y
	mv	a4,a5	# tmp103, tmp104
	sraiw	a5,a4,31	#, tmp105, tmp103
	srliw	a5,a5,31	#, tmp106, tmp105
	addw	a4,a4,a5	# tmp106, tmp107, tmp103
	andi	a4,a4,1	#, tmp108, tmp107
	subw	a5,a4,a5	# tmp109, tmp108, tmp106
	sext.w	a5,a5	# _2, tmp109
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	mv	a4,a5	# tmp110, _2
	li	a5,1		# tmp111,
	bne	a4,a5,.L5	#, tmp110, tmp111,
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	lw	a5,-24(s0)		# tmp114, y
	addiw	a5,a5,-1	#, tmp112, tmp113
	sext.w	a5,a5	# _3, tmp112
	j	.L3		#
.L5:
# problem103.c:7:     return y;
	lw	a5,-24(s0)		# _3, y
.L3:
# problem103.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem103.c"
	.align	3
.LC1:
	.string	"func0(12, 15) == 14"
	.align	3
.LC2:
	.string	"func0(13, 12) == -1"
	.align	3
.LC3:
	.string	"func0(33, 12354) == 12354"
	.align	3
.LC4:
	.string	"func0(5234, 5233) == -1"
	.align	3
.LC5:
	.string	"func0(6, 29) == 28"
	.align	3
.LC6:
	.string	"func0(27, 10) == -1"
	.align	3
.LC7:
	.string	"func0(7, 7) == -1"
	.align	3
.LC8:
	.string	"func0(546, 546) == 546"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem103.c:15:     assert(func0(12, 15) == 14);
	li	a1,15		#,
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _1
	li	a5,14		# tmp84,
	beq	a4,a5,.L7	#, tmp83, tmp84,
# problem103.c:15:     assert(func0(12, 15) == 14);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem103.c:16:     assert(func0(13, 12) == -1);
	li	a1,12		#,
	li	a0,13		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _2
	li	a5,-1		# tmp87,
	beq	a4,a5,.L8	#, tmp86, tmp87,
# problem103.c:16:     assert(func0(13, 12) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem103.c:17:     assert(func0(33, 12354) == 12354);
	li	a5,12288		# tmp88,
	addi	a1,a5,66	#,, tmp88
	li	a0,33		#,
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _3
	li	a5,12288		# tmp92,
	addi	a5,a5,66	#, tmp91, tmp92
	beq	a4,a5,.L9	#, tmp90, tmp91,
# problem103.c:17:     assert(func0(33, 12354) == 12354);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem103.c:18:     assert(func0(5234, 5233) == -1);
	li	a5,4096		# tmp93,
	addi	a1,a5,1137	#,, tmp93
	li	a5,4096		# tmp94,
	addi	a0,a5,1138	#,, tmp94
	call	func0		#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _4
	li	a5,-1		# tmp97,
	beq	a4,a5,.L10	#, tmp96, tmp97,
# problem103.c:18:     assert(func0(5234, 5233) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem103.c:19:     assert(func0(6, 29) == 28);
	li	a1,29		#,
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp98,
	mv	a4,a5	# tmp99, _5
	li	a5,28		# tmp100,
	beq	a4,a5,.L11	#, tmp99, tmp100,
# problem103.c:19:     assert(func0(6, 29) == 28);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L11:
# problem103.c:20:     assert(func0(27, 10) == -1);
	li	a1,10		#,
	li	a0,27		#,
	call	func0		#
	mv	a5,a0	# tmp101,
	mv	a4,a5	# tmp102, _6
	li	a5,-1		# tmp103,
	beq	a4,a5,.L12	#, tmp102, tmp103,
# problem103.c:20:     assert(func0(27, 10) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem103.c:21:     assert(func0(7, 7) == -1);
	li	a1,7		#,
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# tmp104,
	mv	a4,a5	# tmp105, _7
	li	a5,-1		# tmp106,
	beq	a4,a5,.L13	#, tmp105, tmp106,
# problem103.c:21:     assert(func0(7, 7) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L13:
# problem103.c:22:     assert(func0(546, 546) == 546);
	li	a1,546		#,
	li	a0,546		#,
	call	func0		#
	mv	a5,a0	# tmp107,
	mv	a4,a5	# tmp108, _8
	li	a5,546		# tmp109,
	beq	a4,a5,.L14	#, tmp108, tmp109,
# problem103.c:22:     assert(func0(546, 546) == 546);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L14:
# problem103.c:24:     return 0;
	li	a5,0		# _26,
# problem103.c:25: }
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
