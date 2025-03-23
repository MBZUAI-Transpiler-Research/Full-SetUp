	.file	"code.c"
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
# eval/problem103//code.c:4:     if (y < x) return -1;
	lw	a5,-24(s0)		# tmp81, y
	mv	a4,a5	# tmp80, tmp81
	lw	a5,-20(s0)		# tmp83, x
	sext.w	a4,a4	# tmp84, tmp80
	sext.w	a5,a5	# tmp85, tmp82
	bge	a4,a5,.L2	#, tmp84, tmp85,
# eval/problem103//code.c:4:     if (y < x) return -1;
	li	a5,-1		# _3,
	j	.L3		#
.L2:
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	lw	a5,-24(s0)		# tmp87, y
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-20(s0)		# tmp89, x
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	bne	a4,a5,.L4	#, tmp90, tmp91,
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	lw	a5,-24(s0)		# tmp94, y
	mv	a4,a5	# tmp93, tmp94
	sraiw	a5,a4,31	#, tmp95, tmp93
	srliw	a5,a5,31	#, tmp96, tmp95
	addw	a4,a4,a5	# tmp96, tmp97, tmp93
	andi	a4,a4,1	#, tmp98, tmp97
	subw	a5,a4,a5	# tmp99, tmp98, tmp96
	sext.w	a5,a5	# _1, tmp99
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	mv	a4,a5	# tmp100, _1
	li	a5,1		# tmp101,
	bne	a4,a5,.L4	#, tmp100, tmp101,
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	li	a5,-1		# _3,
	j	.L3		#
.L4:
# eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	lw	a5,-24(s0)		# tmp104, y
	mv	a4,a5	# tmp103, tmp104
	sraiw	a5,a4,31	#, tmp105, tmp103
	srliw	a5,a5,31	#, tmp106, tmp105
	addw	a4,a4,a5	# tmp106, tmp107, tmp103
	andi	a4,a4,1	#, tmp108, tmp107
	subw	a5,a4,a5	# tmp109, tmp108, tmp106
	sext.w	a5,a5	# _2, tmp109
# eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	mv	a4,a5	# tmp110, _2
	li	a5,1		# tmp111,
	bne	a4,a5,.L5	#, tmp110, tmp111,
# eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	lw	a5,-24(s0)		# tmp114, y
	addiw	a5,a5,-1	#, tmp112, tmp113
	sext.w	a5,a5	# _3, tmp112
	j	.L3		#
.L5:
# eval/problem103//code.c:7:     return y;
	lw	a5,-24(s0)		# _3, y
.L3:
# eval/problem103//code.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
