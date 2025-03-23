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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# txt, txt
# eval/problem135//code.c:6:     int len = strlen(txt);
	ld	a0,-40(s0)		#, txt
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem135//code.c:6:     int len = strlen(txt);
	sw	a5,-20(s0)	# _1, len
# eval/problem135//code.c:7:     if (len == 0) return 0;
	lw	a5,-20(s0)		# tmp98, len
	sext.w	a5,a5	# tmp99, tmp97
	bne	a5,zero,.L2	#, tmp99,,
# eval/problem135//code.c:7:     if (len == 0) return 0;
	li	a5,0		# _24,
	j	.L3		#
.L2:
# eval/problem135//code.c:8:     char last_char = txt[len - 1];
	lw	a5,-20(s0)		# _2, len
	addi	a5,a5,-1	#, _3, _2
	ld	a4,-40(s0)		# tmp100, txt
	add	a5,a4,a5	# _3, _4, tmp100
# eval/problem135//code.c:8:     char last_char = txt[len - 1];
	lbu	a5,0(a5)	# tmp101, *_4
	sb	a5,-22(s0)	# tmp101, last_char
# eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _5,
	ld	a4,0(a5)		# _6, *_5
	lbu	a5,-22(s0)	# _7, last_char
	slli	a5,a5,1	#, _8, _7
	add	a5,a4,a5	# _8, _9, _6
	lhu	a5,0(a5)	# _10, *_9
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1024	#, tmp102, _11
	sext.w	a5,a5	# _12, tmp102
# eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	bne	a5,zero,.L4	#, _12,,
# eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	li	a5,0		# _24,
	j	.L3		#
.L4:
# eval/problem135//code.c:10:     if (len == 1) return 1;
	lw	a5,-20(s0)		# tmp104, len
	sext.w	a4,a5	# tmp105, tmp103
	li	a5,1		# tmp106,
	bne	a4,a5,.L5	#, tmp105, tmp106,
# eval/problem135//code.c:10:     if (len == 1) return 1;
	li	a5,1		# _24,
	j	.L3		#
.L5:
# eval/problem135//code.c:11:     char second_last_char = txt[len - 2];
	lw	a5,-20(s0)		# _13, len
	addi	a5,a5,-2	#, _14, _13
	ld	a4,-40(s0)		# tmp107, txt
	add	a5,a4,a5	# _14, _15, tmp107
# eval/problem135//code.c:11:     char second_last_char = txt[len - 2];
	lbu	a5,0(a5)	# tmp108, *_15
	sb	a5,-21(s0)	# tmp108, second_last_char
# eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _16,
	ld	a4,0(a5)		# _17, *_16
	lbu	a5,-21(s0)	# _18, second_last_char
	slli	a5,a5,1	#, _19, _18
	add	a5,a4,a5	# _19, _20, _17
	lhu	a5,0(a5)	# _21, *_20
	sext.w	a5,a5	# _22, _21
	andi	a5,a5,1024	#, tmp109, _22
	sext.w	a5,a5	# _23, tmp109
# eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	beq	a5,zero,.L6	#, _23,,
# eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	li	a5,0		# _24,
	j	.L3		#
.L6:
# eval/problem135//code.c:13:     return 1;
	li	a5,1		# _24,
.L3:
# eval/problem135//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
