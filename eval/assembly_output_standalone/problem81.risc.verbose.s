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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# s, s
# eval/problem81//code.c:5:     if (strlen(s) < 3) return false;
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a4,a0	# _1,
# eval/problem81//code.c:5:     if (strlen(s) < 3) return false;
	li	a5,2		# tmp153,
	bgtu	a4,a5,.L2	#, _1, tmp153,
# eval/problem81//code.c:5:     if (strlen(s) < 3) return false;
	li	a5,0		# _19,
# eval/problem81//code.c:5:     if (strlen(s) < 3) return false;
	j	.L3		#
.L2:
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	li	a5,2		# tmp154,
	sw	a5,-36(s0)	# tmp154, i
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	j	.L4		#
.L7:
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _2, i
	ld	a4,-56(s0)		# tmp155, s
	add	a5,a4,a5	# _2, _3, tmp155
	lbu	a3,0(a5)	# _4, *_3
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _5, i
	addi	a5,a5,-1	#, _6, _5
	ld	a4,-56(s0)		# tmp156, s
	add	a5,a4,a5	# _6, _7, tmp156
	lbu	a5,0(a5)	# _8, *_7
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	mv	a4,a3	# tmp157, _4
	beq	a4,a5,.L5	#, tmp157, tmp158,
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _9, i
	ld	a4,-56(s0)		# tmp159, s
	add	a5,a4,a5	# _9, _10, tmp159
	lbu	a3,0(a5)	# _11, *_10
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _12, i
	addi	a5,a5,-2	#, _13, _12
	ld	a4,-56(s0)		# tmp160, s
	add	a5,a4,a5	# _13, _14, tmp160
	lbu	a5,0(a5)	# _15, *_14
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	mv	a4,a3	# tmp161, _11
	bne	a4,a5,.L6	#, tmp161, tmp162,
.L5:
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	li	a5,0		# _19,
# eval/problem81//code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	j	.L3		#
.L6:
# eval/problem81//code.c:6:     for (int i = 2; i < strlen(s); i++)
	lw	a5,-36(s0)		# tmp165, i
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-36(s0)	# tmp163, i
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
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
