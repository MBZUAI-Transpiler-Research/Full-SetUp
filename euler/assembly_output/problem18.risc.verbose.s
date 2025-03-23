	.file	"problem18.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d\n"
	.align	3
.LC0:
	.string	"K"
	.zero	13
	.string	"_@"
	.zero	12
	.string	"\021/R"
	.zero	11
	.string	"\022#W\n"
	.zero	10
	.string	"\024\004R/A"
	.zero	9
	.string	"\023\001\027K\003\""
	.zero	8
	.string	"X\002MI\007?C"
	.zero	7
	.string	"cA\004\034\006\020F\\"
	.zero	6
	.string	"))\0328S(PF!"
	.zero	5
	.string	")0H!/ %\020^\035"
	.zero	4
	.string	"5G,A\031+[4a3\016"
	.zero	3
	.string	"F\013!\034MI\021N'D\0219"
	.zero	2
	.string	"[G4&\021\016[+:2\033\0350"
	.zero	1
	.string	"?B\004DY5C\036I\020EW(\037"
	.ascii	"\004>b\033\027\tFbI]&5<\004\027"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-256	#,,
	sd	ra,248(sp)	#,
	sd	s0,240(sp)	#,
	addi	s0,sp,256	#,,
# problem18.c:13: {
	la	a5,__stack_chk_guard		# tmp75,
	ld	a4, 0(a5)	# tmp86, __stack_chk_guard
	sd	a4, -24(s0)	# tmp86, D.1913
	li	a4, 0	# tmp86
# problem18.c:14:   const char triangle[N][N] = {
	lla	a4,.LC0	# tmp76,
	addi	a5,s0,-256	#, tmp77,
	mv	a3,a4	# tmp78, tmp76
	li	a4,225		# tmp79,
	mv	a2,a4	#, tmp79
	mv	a1,a3	#, tmp78
	mv	a0,a5	#, tmp77
	call	memcpy@plt	#
# problem18.c:32:   printf("%d\n", findmax(triangle, 0, 0));
	addi	a5,s0,-256	#, tmp81,
	li	a2,0		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp81
	call	findmax		#
	mv	a5,a0	# tmp82,
	mv	a1,a5	#, _1
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem18.c:34:   return 0;
	li	a5,0		# _6,
# problem18.c:35: }
	mv	a4,a5	# <retval>, _6
	la	a5,__stack_chk_guard		# tmp84,
	ld	a3, -24(s0)	# tmp87, D.1913
	ld	a5, 0(a5)	# tmp85, __stack_chk_guard
	xor	a5, a3, a5	# tmp85, tmp87
	li	a3, 0	# tmp87
	beq	a5,zero,.L3	#, tmp85,,
	call	__stack_chk_fail@plt	#
.L3:
	mv	a0,a4	#, <retval>
	ld	ra,248(sp)		#,
	ld	s0,240(sp)		#,
	addi	sp,sp,256	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	findmax, @function
findmax:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# triangle, triangle
	mv	a5,a1	# tmp87, row
	mv	a4,a2	# tmp89, col
	sw	a5,-44(s0)	# tmp88, row
	mv	a5,a4	# tmp90, tmp89
	sw	a5,-48(s0)	# tmp90, col
# problem18.c:42:   if (row == N) {
	lw	a5,-44(s0)		# tmp92, row
	sext.w	a4,a5	# tmp93, tmp91
	li	a5,15		# tmp94,
	bne	a4,a5,.L5	#, tmp93, tmp94,
# problem18.c:43:     return triangle[row][col];
	lw	a4,-44(s0)		# _1, row
	mv	a5,a4	# tmp95, _1
	slli	a5,a5,4	#, tmp96, tmp95
	sub	a5,a5,a4	# _2, tmp95, _1
	ld	a4,-40(s0)		# tmp97, triangle
	add	a4,a4,a5	# _2, _3, tmp97
# problem18.c:43:     return triangle[row][col];
	lw	a5,-48(s0)		# tmp98, col
	add	a5,a4,a5	# tmp98, tmp99, _3
	lbu	a5,0(a5)	# _4, (*_3)[col_19(D)]
	sext.w	a5,a5	# _14, _4
	j	.L6		#
.L5:
# problem18.c:45:   left = findmax(triangle, row+1, col);
	lw	a5,-44(s0)		# tmp102, row
	addiw	a5,a5,1	#, tmp100, tmp101
	sext.w	a5,a5	# _5, tmp100
	lw	a4,-48(s0)		# tmp103, col
	mv	a2,a4	#, tmp103
	mv	a1,a5	#, _5
	ld	a0,-40(s0)		#, triangle
	call	findmax		#
	mv	a5,a0	# tmp104,
	sw	a5,-24(s0)	# tmp104, left
# problem18.c:46:   right = findmax(triangle, row+1, col+1);
	lw	a5,-44(s0)		# tmp107, row
	addiw	a5,a5,1	#, tmp105, tmp106
	sext.w	a5,a5	# _6, tmp105
	lw	a4,-48(s0)		# tmp110, col
	addiw	a4,a4,1	#, tmp108, tmp109
	sext.w	a4,a4	# _7, tmp108
	mv	a2,a4	#, _7
	mv	a1,a5	#, _6
	ld	a0,-40(s0)		#, triangle
	call	findmax		#
	mv	a5,a0	# tmp111,
	sw	a5,-20(s0)	# tmp111, right
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	lw	a4,-44(s0)		# _8, row
	mv	a5,a4	# tmp112, _8
	slli	a5,a5,4	#, tmp113, tmp112
	sub	a5,a5,a4	# _9, tmp112, _8
	ld	a4,-40(s0)		# tmp114, triangle
	add	a4,a4,a5	# _9, _10, tmp114
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	lw	a5,-48(s0)		# tmp115, col
	add	a5,a4,a5	# tmp115, tmp116, _10
	lbu	a5,0(a5)	# _11, (*_10)[col_19(D)]
	sext.w	a4,a5	# _12, _11
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	lw	a5,-24(s0)		# tmp119, left
	mv	a1,a5	# tmp118, tmp119
	lw	a5,-20(s0)		# tmp120, right
	mv	a2,a5	# tmp117, tmp120
	sext.w	a3,a2	# tmp121, tmp117
	sext.w	a5,a1	# tmp122, tmp118
	bge	a3,a5,.L7	#, tmp121, tmp122,
	mv	a2,a1	# tmp117, tmp118
.L7:
	sext.w	a5,a2	# _13, tmp117
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	addw	a5,a4,a5	# _13, tmp123, _12
	sext.w	a5,a5	# _14, tmp123
.L6:
# problem18.c:49: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	findmax, .-findmax
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
