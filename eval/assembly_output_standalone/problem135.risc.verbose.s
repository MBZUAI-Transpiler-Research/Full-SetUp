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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# txt, txt
# eval/problem135//code.c:6:     int len = strlen(txt);
	ld	a0,-40(s0)		#, txt
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem135//code.c:6:     int len = strlen(txt);
	sw	a5,-20(s0)	# _1, len
# eval/problem135//code.c:7:     if (len == 0) return 0;
	lw	a5,-20(s0)		# tmp160, len
	sext.w	a5,a5	# tmp161, tmp159
	bne	a5,zero,.L2	#, tmp161,,
# eval/problem135//code.c:7:     if (len == 0) return 0;
	li	a5,0		# _24,
# eval/problem135//code.c:7:     if (len == 0) return 0;
	j	.L3		#
.L2:
# eval/problem135//code.c:8:     char last_char = txt[len - 1];
	lw	a5,-20(s0)		# _2, len
	addi	a5,a5,-1	#, _3, _2
	ld	a4,-40(s0)		# tmp162, txt
	add	a5,a4,a5	# _3, _4, tmp162
# eval/problem135//code.c:8:     char last_char = txt[len - 1];
	lbu	a5,0(a5)	# tmp163, *_4
	sb	a5,-22(s0)	# tmp163, last_char
# eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _5,
# eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	ld	a4,0(a5)		# _6, *_5
	lbu	a5,-22(s0)	# _7, last_char
	slli	a5,a5,1	#, _8, _7
	add	a5,a4,a5	# _8, _9, _6
	lhu	a5,0(a5)	# _10, *_9
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1024	#, tmp164, _11
	sext.w	a5,a5	# _12, tmp164
# eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	bne	a5,zero,.L4	#, _12,,
# eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	li	a5,0		# _24,
# eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	j	.L3		#
.L4:
# eval/problem135//code.c:10:     if (len == 1) return 1;
	lw	a5,-20(s0)		# tmp166, len
	sext.w	a4,a5	# tmp167, tmp165
	li	a5,1		# tmp168,
	bne	a4,a5,.L5	#, tmp167, tmp168,
# eval/problem135//code.c:10:     if (len == 1) return 1;
	li	a5,1		# _24,
# eval/problem135//code.c:10:     if (len == 1) return 1;
	j	.L3		#
.L5:
# eval/problem135//code.c:11:     char second_last_char = txt[len - 2];
	lw	a5,-20(s0)		# _13, len
	addi	a5,a5,-2	#, _14, _13
	ld	a4,-40(s0)		# tmp169, txt
	add	a5,a4,a5	# _14, _15, tmp169
# eval/problem135//code.c:11:     char second_last_char = txt[len - 2];
	lbu	a5,0(a5)	# tmp170, *_15
	sb	a5,-21(s0)	# tmp170, second_last_char
# eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _16,
# eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	ld	a4,0(a5)		# _17, *_16
	lbu	a5,-21(s0)	# _18, second_last_char
	slli	a5,a5,1	#, _19, _18
	add	a5,a4,a5	# _19, _20, _17
	lhu	a5,0(a5)	# _21, *_20
	sext.w	a5,a5	# _22, _21
	andi	a5,a5,1024	#, tmp171, _22
	sext.w	a5,a5	# _23, tmp171
# eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	beq	a5,zero,.L6	#, _23,,
# eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	li	a5,0		# _24,
# eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	j	.L3		#
.L6:
# eval/problem135//code.c:13:     return 1;
	li	a5,1		# _24,
.L3:
# eval/problem135//code.c:14: }
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
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
