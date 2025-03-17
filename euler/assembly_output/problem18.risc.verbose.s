	.file	"problem18.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-256	#,,
	.cfi_def_cfa_offset 256
	sd	ra,248(sp)	#,
	sd	s0,240(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,256	#,,
	.cfi_def_cfa 8, 0
# problem18.c:13: {
	la	a5,__stack_chk_guard		# tmp137,
	ld	a4, 0(a5)	# tmp148, __stack_chk_guard
	sd	a4, -24(s0)	# tmp148, D.2731
	li	a4, 0	# tmp148
# problem18.c:14:   const char triangle[N][N] = {
	lla	a4,.LC0	# tmp138,
	addi	a5,s0,-256	#, tmp139,
	mv	a3,a4	# tmp140, tmp138
	li	a4,225		# tmp141,
	mv	a2,a4	#, tmp141
	mv	a1,a3	#, tmp140
	mv	a0,a5	#, tmp139
	call	memcpy@plt	#
# problem18.c:32:   printf("%d\n", findmax(triangle, 0, 0));
	addi	a5,s0,-256	#, tmp143,
	li	a2,0		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp143
	call	findmax		#
	mv	a5,a0	# tmp144,
# problem18.c:32:   printf("%d\n", findmax(triangle, 0, 0));
	mv	a1,a5	#, _1
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem18.c:34:   return 0;
	li	a5,0		# _6,
# problem18.c:35: }
	mv	a4,a5	# <retval>, _6
	la	a5,__stack_chk_guard		# tmp146,
	ld	a3, -24(s0)	# tmp149, D.2731
	ld	a5, 0(a5)	# tmp147, __stack_chk_guard
	xor	a5, a3, a5	# tmp147, tmp149
	li	a3, 0	# tmp149
	beq	a5,zero,.L3	#, tmp147,,
	call	__stack_chk_fail@plt	#
.L3:
	mv	a0,a4	#, <retval>
	ld	ra,248(sp)		#,
	.cfi_restore 1
	ld	s0,240(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	findmax, @function
findmax:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# triangle, triangle
	mv	a5,a1	# tmp149, row
	mv	a4,a2	# tmp151, col
	sw	a5,-44(s0)	# tmp150, row
	mv	a5,a4	# tmp152, tmp151
	sw	a5,-48(s0)	# tmp152, col
# problem18.c:42:   if (row == N) {
	lw	a5,-44(s0)		# tmp154, row
	sext.w	a4,a5	# tmp155, tmp153
	li	a5,15		# tmp156,
	bne	a4,a5,.L5	#, tmp155, tmp156,
# problem18.c:43:     return triangle[row][col];
	lw	a4,-44(s0)		# _1, row
	mv	a5,a4	# tmp157, _1
	slli	a5,a5,4	#, tmp158, tmp157
	sub	a5,a5,a4	# _2, tmp157, _1
	ld	a4,-40(s0)		# tmp159, triangle
	add	a4,a4,a5	# _2, _3, tmp159
# problem18.c:43:     return triangle[row][col];
	lw	a5,-48(s0)		# tmp160, col
	add	a5,a4,a5	# tmp160, tmp161, _3
	lbu	a5,0(a5)	# _4, (*_3)[col_19(D)]
	sext.w	a5,a5	# _14, _4
	j	.L6		#
.L5:
# problem18.c:45:   left = findmax(triangle, row+1, col);
	lw	a5,-44(s0)		# tmp164, row
	addiw	a5,a5,1	#, tmp162, tmp163
	sext.w	a5,a5	# _5, tmp162
	lw	a4,-48(s0)		# tmp165, col
	mv	a2,a4	#, tmp165
	mv	a1,a5	#, _5
	ld	a0,-40(s0)		#, triangle
	call	findmax		#
	mv	a5,a0	# tmp166,
	sw	a5,-24(s0)	# tmp166, left
# problem18.c:46:   right = findmax(triangle, row+1, col+1);
	lw	a5,-44(s0)		# tmp169, row
	addiw	a5,a5,1	#, tmp167, tmp168
	sext.w	a5,a5	# _6, tmp167
	lw	a4,-48(s0)		# tmp172, col
	addiw	a4,a4,1	#, tmp170, tmp171
	sext.w	a4,a4	# _7, tmp170
	mv	a2,a4	#, _7
	mv	a1,a5	#, _6
	ld	a0,-40(s0)		#, triangle
	call	findmax		#
	mv	a5,a0	# tmp173,
	sw	a5,-20(s0)	# tmp173, right
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	lw	a4,-44(s0)		# _8, row
	mv	a5,a4	# tmp174, _8
	slli	a5,a5,4	#, tmp175, tmp174
	sub	a5,a5,a4	# _9, tmp174, _8
	ld	a4,-40(s0)		# tmp176, triangle
	add	a4,a4,a5	# _9, _10, tmp176
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	lw	a5,-48(s0)		# tmp177, col
	add	a5,a4,a5	# tmp177, tmp178, _10
	lbu	a5,0(a5)	# _11, (*_10)[col_19(D)]
	sext.w	a4,a5	# _12, _11
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	lw	a5,-24(s0)		# tmp181, left
	mv	a1,a5	# tmp180, tmp181
	lw	a5,-20(s0)		# tmp182, right
	mv	a2,a5	# tmp179, tmp182
	sext.w	a3,a2	# tmp183, tmp179
	sext.w	a5,a1	# tmp184, tmp180
	bge	a3,a5,.L7	#, tmp183, tmp184,
	mv	a2,a1	# tmp179, tmp180
.L7:
	sext.w	a5,a2	# _13, tmp179
# problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	addw	a5,a4,a5	# _13, tmp185, _12
	sext.w	a5,a5	# _14, tmp185
.L6:
# problem18.c:49: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	findmax, .-findmax
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
