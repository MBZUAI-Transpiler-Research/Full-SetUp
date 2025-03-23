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
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp80, a
	sw	a5,-36(s0)	# tmp81, a
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	sw	zero,-20(s0)	#, i
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	j	.L2		#
.L5:
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a5,-20(s0)		# tmp84, i
	mulw	a5,a5,a5	# tmp82, tmp83, tmp83
	sext.w	a5,a5	# _1, tmp82
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a4,-20(s0)		# tmp87, i
	mulw	a5,a4,a5	# tmp85, tmp86, _1
	sext.w	a3,a5	# _2, tmp85
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a5,-36(s0)		# tmp90, a
	sraiw	a5,a5,31	#, tmp88, tmp89
	lw	a4,-36(s0)		# tmp92, a
	xor	a4,a5,a4	# tmp91, tmp93, tmp88
	subw	a5,a4,a5	# tmp94, tmp93, tmp88
	sext.w	a5,a5	# _3, tmp94
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	mv	a4,a3	# tmp95, _2
	bne	a4,a5,.L3	#, tmp95, tmp96,
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	li	a5,1		# _8,
	j	.L4		#
.L3:
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-20(s0)		# tmp99, i
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-20(s0)	# tmp97, i
.L2:
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-20(s0)		# tmp102, i
	mulw	a5,a5,a5	# tmp100, tmp101, tmp101
	sext.w	a5,a5	# _4, tmp100
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a4,-20(s0)		# tmp105, i
	mulw	a5,a4,a5	# tmp103, tmp104, _4
	sext.w	a3,a5	# _5, tmp103
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-36(s0)		# tmp108, a
	sraiw	a5,a5,31	#, tmp106, tmp107
	lw	a4,-36(s0)		# tmp110, a
	xor	a4,a5,a4	# tmp109, tmp111, tmp106
	subw	a5,a4,a5	# tmp112, tmp111, tmp106
	sext.w	a5,a5	# _6, tmp112
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	mv	a4,a3	# tmp113, _5
	ble	a4,a5,.L5	#, tmp113, tmp114,
# eval/problem78//code.c:8:     return 0;
	li	a5,0		# _8,
.L4:
# eval/problem78//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
