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
	mv	a5,a0	# tmp76, n
	sw	a5,-20(s0)	# tmp77, n
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	lw	a5,-20(s0)		# n.0_1, n
	andi	a5,a5,1	#, tmp79, tmp78
	sext.w	a5,a5	# _2, tmp79
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	bne	a5,zero,.L2	#, _2,,
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	lw	a5,-20(s0)		# tmp81, n
	sext.w	a4,a5	# tmp82, tmp80
	li	a5,7		# tmp83,
	ble	a4,a5,.L2	#, tmp82, tmp83,
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	li	a5,1		# _3,
	j	.L3		#
.L2:
# eval/problem139//code.c:5:     return 0;
	li	a5,0		# _3,
.L3:
# eval/problem139//code.c:6: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
