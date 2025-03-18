	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
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
	ld	a4,-40(s0)		# tmp149, s
	add	a5,a4,a5	# _1, _2, tmp149
	lbu	a5,0(a5)	# _3, *_2
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	mv	a4,a5	# tmp150, _3
	li	a5,64		# tmp151,
	bleu	a4,a5,.L3	#, tmp150, tmp151,
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	lw	a5,-20(s0)		# _4, i
	ld	a4,-40(s0)		# tmp152, s
	add	a5,a4,a5	# _4, _5, tmp152
	lbu	a5,0(a5)	# _6, *_5
# eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	mv	a4,a5	# tmp153, _6
	li	a5,90		# tmp154,
	bgtu	a4,a5,.L3	#, tmp153, tmp154,
# eval/problem67//code.c:8:             sum += s[i];
	lw	a5,-20(s0)		# _7, i
	ld	a4,-40(s0)		# tmp155, s
	add	a5,a4,a5	# _7, _8, tmp155
	lbu	a5,0(a5)	# _9, *_8
	sext.w	a5,a5	# _10, _9
# eval/problem67//code.c:8:             sum += s[i];
	lw	a4,-24(s0)		# tmp158, sum
	addw	a5,a4,a5	# _10, tmp156, tmp157
	sw	a5,-24(s0)	# tmp156, sum
.L3:
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	lw	a5,-20(s0)		# tmp161, i
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-20(s0)	# tmp159, i
.L2:
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	lw	a5,-20(s0)		# _11, i
	ld	a4,-40(s0)		# tmp162, s
	add	a5,a4,a5	# _11, _12, tmp162
	lbu	a5,0(a5)	# _13, *_12
# eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	bne	a5,zero,.L4	#, _13,,
# eval/problem67//code.c:9:     return sum;
	lw	a5,-24(s0)		# _21, sum
# eval/problem67//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
