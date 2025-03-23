	.file	"problem135.c"
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
# problem135.c:6:     int len = strlen(txt);
	ld	a0,-40(s0)		#, txt
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem135.c:6:     int len = strlen(txt);
	sw	a5,-20(s0)	# _1, len
# problem135.c:7:     if (len == 0) return 0;
	lw	a5,-20(s0)		# tmp98, len
	sext.w	a5,a5	# tmp99, tmp97
	bne	a5,zero,.L2	#, tmp99,,
# problem135.c:7:     if (len == 0) return 0;
	li	a5,0		# _24,
	j	.L3		#
.L2:
# problem135.c:8:     char last_char = txt[len - 1];
	lw	a5,-20(s0)		# _2, len
	addi	a5,a5,-1	#, _3, _2
	ld	a4,-40(s0)		# tmp100, txt
	add	a5,a4,a5	# _3, _4, tmp100
# problem135.c:8:     char last_char = txt[len - 1];
	lbu	a5,0(a5)	# tmp101, *_4
	sb	a5,-22(s0)	# tmp101, last_char
# problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
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
# problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	bne	a5,zero,.L4	#, _12,,
# problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	li	a5,0		# _24,
	j	.L3		#
.L4:
# problem135.c:10:     if (len == 1) return 1;
	lw	a5,-20(s0)		# tmp104, len
	sext.w	a4,a5	# tmp105, tmp103
	li	a5,1		# tmp106,
	bne	a4,a5,.L5	#, tmp105, tmp106,
# problem135.c:10:     if (len == 1) return 1;
	li	a5,1		# _24,
	j	.L3		#
.L5:
# problem135.c:11:     char second_last_char = txt[len - 2];
	lw	a5,-20(s0)		# _13, len
	addi	a5,a5,-2	#, _14, _13
	ld	a4,-40(s0)		# tmp107, txt
	add	a5,a4,a5	# _14, _15, tmp107
# problem135.c:11:     char second_last_char = txt[len - 2];
	lbu	a5,0(a5)	# tmp108, *_15
	sb	a5,-21(s0)	# tmp108, second_last_char
# problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
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
# problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	beq	a5,zero,.L6	#, _23,,
# problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	li	a5,0		# _24,
	j	.L3		#
.L6:
# problem135.c:13:     return 1;
	li	a5,1		# _24,
.L3:
# problem135.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"apple"
	.align	3
.LC1:
	.string	"problem135.c"
	.align	3
.LC2:
	.string	"func0(\"apple\") == 0"
	.align	3
.LC3:
	.string	"apple pi e"
	.align	3
.LC4:
	.string	"func0(\"apple pi e\") == 1"
	.align	3
.LC5:
	.string	"eeeee"
	.align	3
.LC6:
	.string	"func0(\"eeeee\") == 0"
	.align	3
.LC7:
	.string	"A"
	.align	3
.LC8:
	.string	"func0(\"A\") == 1"
	.align	3
.LC9:
	.string	"Pumpkin pie "
	.align	3
.LC10:
	.string	"func0(\"Pumpkin pie \") == 0"
	.align	3
.LC11:
	.string	"Pumpkin pie 1"
	.align	3
.LC12:
	.string	"func0(\"Pumpkin pie 1\") == 0"
	.align	3
.LC13:
	.string	""
	.align	3
.LC14:
	.string	"func0(\"\") == 0"
	.align	3
.LC15:
	.string	"eeeee e "
	.align	3
.LC16:
	.string	"func0(\"eeeee e \") == 0"
	.align	3
.LC17:
	.string	"apple pie"
	.align	3
.LC18:
	.string	"func0(\"apple pie\") == 0"
	.align	3
.LC19:
	.string	"apple pi e "
	.align	3
.LC20:
	.string	"func0(\"apple pi e \") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem135.c:21:     assert(func0("apple") == 0);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp84,
	beq	a5,zero,.L8	#, _1,,
# problem135.c:21:     assert(func0("apple") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem135.c:22:     assert(func0("apple pi e") == 1);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _2
	li	a5,1		# tmp87,
	beq	a4,a5,.L9	#, tmp86, tmp87,
# problem135.c:22:     assert(func0("apple pi e") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem135.c:23:     assert(func0("eeeee") == 0);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L10	#, _3,,
# problem135.c:23:     assert(func0("eeeee") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem135.c:24:     assert(func0("A") == 1);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _4
	li	a5,1		# tmp91,
	beq	a4,a5,.L11	#, tmp90, tmp91,
# problem135.c:24:     assert(func0("A") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem135.c:25:     assert(func0("Pumpkin pie ") == 0);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp92,
	beq	a5,zero,.L12	#, _5,,
# problem135.c:25:     assert(func0("Pumpkin pie ") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem135.c:26:     assert(func0("Pumpkin pie 1") == 0);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp93,
	beq	a5,zero,.L13	#, _6,,
# problem135.c:26:     assert(func0("Pumpkin pie 1") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem135.c:27:     assert(func0("") == 0);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L14	#, _7,,
# problem135.c:27:     assert(func0("") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L14:
# problem135.c:28:     assert(func0("eeeee e ") == 0);
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp95,
	beq	a5,zero,.L15	#, _8,,
# problem135.c:28:     assert(func0("eeeee e ") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L15:
# problem135.c:29:     assert(func0("apple pie") == 0);
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# tmp96,
	beq	a5,zero,.L16	#, _9,,
# problem135.c:29:     assert(func0("apple pie") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L16:
# problem135.c:30:     assert(func0("apple pi e ") == 0);
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# tmp97,
	beq	a5,zero,.L17	#, _10,,
# problem135.c:30:     assert(func0("apple pi e ") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L17:
# problem135.c:32:     return 0;
	li	a5,0		# _32,
# problem135.c:33: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
