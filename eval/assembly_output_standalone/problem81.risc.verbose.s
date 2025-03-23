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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# s, s
# eval/problem81//code.c:5:     if (strlen(s) < 3) return false;
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a4,a0	# _1,
# eval/problem81//code.c:5:     if (strlen(s) < 3) return false;
	li	a5,2		# tmp91,
	bgtu	a4,a5,.L2	#, _1, tmp91,
# eval/problem81//code.c:5:     if (strlen(s) < 3) return false;
	li	a5,0		# _19,
	j	.L3		#
.L2:
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	li	a5,2		# tmp92,
	sw	a5,-36(s0)	# tmp92, i
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	j	.L4		#
.L7:
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _2, i
	ld	a4,-56(s0)		# tmp93, s
	add	a5,a4,a5	# _2, _3, tmp93
	lbu	a3,0(a5)	# _4, *_3
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _5, i
	addi	a5,a5,-1	#, _6, _5
	ld	a4,-56(s0)		# tmp94, s
	add	a5,a4,a5	# _6, _7, tmp94
	lbu	a5,0(a5)	# _8, *_7
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	mv	a4,a3	# tmp95, _4
	beq	a4,a5,.L5	#, tmp95, tmp96,
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _9, i
	ld	a4,-56(s0)		# tmp97, s
	add	a5,a4,a5	# _9, _10, tmp97
	lbu	a3,0(a5)	# _11, *_10
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _12, i
	addi	a5,a5,-2	#, _13, _12
	ld	a4,-56(s0)		# tmp98, s
	add	a5,a4,a5	# _13, _14, tmp98
	lbu	a5,0(a5)	# _15, *_14
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	mv	a4,a3	# tmp99, _11
	bne	a4,a5,.L6	#, tmp99, tmp100,
.L5:
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	li	a5,0		# _19,
	j	.L3		#
.L6:
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	lw	a5,-36(s0)		# tmp103, i
	addiw	a5,a5,1	#, tmp101, tmp102
	sw	a5,-36(s0)	# tmp101, i
.L4:
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	lw	s1,-36(s0)		# _16, i
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _17,
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	bltu	s1,a5,.L7	#, _16, _17,
# eval/problem81//code.c:8:     return true;
	li	a5,1		# _19,
.L3:
# eval/problem81//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
