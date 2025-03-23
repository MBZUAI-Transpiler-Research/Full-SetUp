	.file	"problem67.c"
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
# problem67.c:5:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	sw	zero,-20(s0)	#, i
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	j	.L2		#
.L4:
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	lw	a5,-20(s0)		# _1, i
	ld	a4,-40(s0)		# tmp87, s
	add	a5,a4,a5	# _1, _2, tmp87
	lbu	a5,0(a5)	# _3, *_2
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	mv	a4,a5	# tmp88, _3
	li	a5,64		# tmp89,
	bleu	a4,a5,.L3	#, tmp88, tmp89,
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	lw	a5,-20(s0)		# _4, i
	ld	a4,-40(s0)		# tmp90, s
	add	a5,a4,a5	# _4, _5, tmp90
	lbu	a5,0(a5)	# _6, *_5
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	mv	a4,a5	# tmp91, _6
	li	a5,90		# tmp92,
	bgtu	a4,a5,.L3	#, tmp91, tmp92,
# problem67.c:8:             sum += s[i];
	lw	a5,-20(s0)		# _7, i
	ld	a4,-40(s0)		# tmp93, s
	add	a5,a4,a5	# _7, _8, tmp93
	lbu	a5,0(a5)	# _9, *_8
	sext.w	a5,a5	# _10, _9
# problem67.c:8:             sum += s[i];
	lw	a4,-24(s0)		# tmp96, sum
	addw	a5,a4,a5	# _10, tmp94, tmp95
	sw	a5,-24(s0)	# tmp94, sum
.L3:
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	lw	a5,-20(s0)		# tmp99, i
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-20(s0)	# tmp97, i
.L2:
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	lw	a5,-20(s0)		# _11, i
	ld	a4,-40(s0)		# tmp100, s
	add	a5,a4,a5	# _11, _12, tmp100
	lbu	a5,0(a5)	# _13, *_12
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	bne	a5,zero,.L4	#, _13,,
# problem67.c:9:     return sum;
	lw	a5,-24(s0)		# _21, sum
# problem67.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem67.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"abAB"
	.align	3
.LC4:
	.string	"func0(\"abAB\") == 131"
	.align	3
.LC5:
	.string	"abcCd"
	.align	3
.LC6:
	.string	"func0(\"abcCd\") == 67"
	.align	3
.LC7:
	.string	"helloE"
	.align	3
.LC8:
	.string	"func0(\"helloE\") == 69"
	.align	3
.LC9:
	.string	"woArBld"
	.align	3
.LC10:
	.string	"func0(\"woArBld\") == 131"
	.align	3
.LC11:
	.string	"aAaaaXa"
	.align	3
.LC12:
	.string	"func0(\"aAaaaXa\") == 153"
	.align	3
.LC13:
	.string	" How are yOu?"
	.align	3
.LC14:
	.string	"func0(\" How are yOu?\") == 151"
	.align	3
.LC15:
	.string	"You arE Very Smart"
	.align	3
.LC16:
	.string	"func0(\"You arE Very Smart\") == 327"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem67.c:17:     assert(func0("") == 0);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L7	#, _1,,
# problem67.c:17:     assert(func0("") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem67.c:18:     assert(func0("abAB") == 131);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp83,
	mv	a4,a5	# tmp84, _2
	li	a5,131		# tmp85,
	beq	a4,a5,.L8	#, tmp84, tmp85,
# problem67.c:18:     assert(func0("abAB") == 131);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L8:
# problem67.c:19:     assert(func0("abcCd") == 67);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _3
	li	a5,67		# tmp88,
	beq	a4,a5,.L9	#, tmp87, tmp88,
# problem67.c:19:     assert(func0("abcCd") == 67);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem67.c:20:     assert(func0("helloE") == 69);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _4
	li	a5,69		# tmp91,
	beq	a4,a5,.L10	#, tmp90, tmp91,
# problem67.c:20:     assert(func0("helloE") == 69);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem67.c:21:     assert(func0("woArBld") == 131);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp92,
	mv	a4,a5	# tmp93, _5
	li	a5,131		# tmp94,
	beq	a4,a5,.L11	#, tmp93, tmp94,
# problem67.c:21:     assert(func0("woArBld") == 131);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem67.c:22:     assert(func0("aAaaaXa") == 153);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _6
	li	a5,153		# tmp97,
	beq	a4,a5,.L12	#, tmp96, tmp97,
# problem67.c:22:     assert(func0("aAaaaXa") == 153);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem67.c:23:     assert(func0(" How are yOu?") == 151);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp98,
	mv	a4,a5	# tmp99, _7
	li	a5,151		# tmp100,
	beq	a4,a5,.L13	#, tmp99, tmp100,
# problem67.c:23:     assert(func0(" How are yOu?") == 151);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L13:
# problem67.c:24:     assert(func0("You arE Very Smart") == 327);
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp101,
	mv	a4,a5	# tmp102, _8
	li	a5,327		# tmp103,
	beq	a4,a5,.L14	#, tmp102, tmp103,
# problem67.c:24:     assert(func0("You arE Very Smart") == 327);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L14:
# problem67.c:26:     return 0;
	li	a5,0		# _26,
# problem67.c:27: }
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
