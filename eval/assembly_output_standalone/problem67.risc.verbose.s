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
	sd	a0,-40(s0)	# s, s
# eval/problem67//code.c:5:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	sw	zero,-20(s0)	#, i
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	j	.L2		#
.L4:
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	lw	a5,-20(s0)		# _1, i
	ld	a4,-40(s0)		# tmp87, s
	add	a5,a4,a5	# _1, _2, tmp87
	lbu	a5,0(a5)	# _3, *_2
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	mv	a4,a5	# tmp88, _3
	li	a5,64		# tmp89,
	bleu	a4,a5,.L3	#, tmp88, tmp89,
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	lw	a5,-20(s0)		# _4, i
	ld	a4,-40(s0)		# tmp90, s
	add	a5,a4,a5	# _4, _5, tmp90
	lbu	a5,0(a5)	# _6, *_5
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	mv	a4,a5	# tmp91, _6
	li	a5,90		# tmp92,
	bgtu	a4,a5,.L3	#, tmp91, tmp92,
# eval/problem67//code.c:8:             sum += s[i];
	lw	a5,-20(s0)		# _7, i
	ld	a4,-40(s0)		# tmp93, s
	add	a5,a4,a5	# _7, _8, tmp93
	lbu	a5,0(a5)	# _9, *_8
	sext.w	a5,a5	# _10, _9
# eval/problem67//code.c:8:             sum += s[i];
	lw	a4,-24(s0)		# tmp96, sum
	addw	a5,a4,a5	# _10, tmp94, tmp95
	sw	a5,-24(s0)	# tmp94, sum
.L3:
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	lw	a5,-20(s0)		# tmp99, i
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-20(s0)	# tmp97, i
.L2:
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	lw	a5,-20(s0)		# _11, i
	ld	a4,-40(s0)		# tmp100, s
	add	a5,a4,a5	# _11, _12, tmp100
	lbu	a5,0(a5)	# _13, *_12
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	bne	a5,zero,.L4	#, _13,,
# eval/problem67//code.c:9:     return sum;
	lw	a5,-24(s0)		# _21, sum
# eval/problem67//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
