	.file	"problem67.c"
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
# problem67.c:5:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	sw	zero,-20(s0)	#, i
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	j	.L2		#
.L4:
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	lw	a5,-20(s0)		# _1, i
	ld	a4,-40(s0)		# tmp149, s
	add	a5,a4,a5	# _1, _2, tmp149
	lbu	a5,0(a5)	# _3, *_2
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	mv	a4,a5	# tmp150, _3
	li	a5,64		# tmp151,
	bleu	a4,a5,.L3	#, tmp150, tmp151,
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	lw	a5,-20(s0)		# _4, i
	ld	a4,-40(s0)		# tmp152, s
	add	a5,a4,a5	# _4, _5, tmp152
	lbu	a5,0(a5)	# _6, *_5
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	mv	a4,a5	# tmp153, _6
	li	a5,90		# tmp154,
	bgtu	a4,a5,.L3	#, tmp153, tmp154,
# problem67.c:8:             sum += s[i];
	lw	a5,-20(s0)		# _7, i
	ld	a4,-40(s0)		# tmp155, s
	add	a5,a4,a5	# _7, _8, tmp155
	lbu	a5,0(a5)	# _9, *_8
	sext.w	a5,a5	# _10, _9
# problem67.c:8:             sum += s[i];
	lw	a4,-24(s0)		# tmp158, sum
	addw	a5,a4,a5	# _10, tmp156, tmp157
	sw	a5,-24(s0)	# tmp156, sum
.L3:
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	lw	a5,-20(s0)		# tmp161, i
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-20(s0)	# tmp159, i
.L2:
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	lw	a5,-20(s0)		# _11, i
	ld	a4,-40(s0)		# tmp162, s
	add	a5,a4,a5	# _11, _12, tmp162
	lbu	a5,0(a5)	# _13, *_12
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	bne	a5,zero,.L4	#, _13,,
# problem67.c:9:     return sum;
	lw	a5,-24(s0)		# _21, sum
# problem67.c:10: }
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem67.c:17:     assert(func0("") == 0);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem67.c:17:     assert(func0("") == 0);
	beq	a5,zero,.L7	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem67.c:18:     assert(func0("abAB") == 131);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp145,
# problem67.c:18:     assert(func0("abAB") == 131);
	mv	a4,a5	# tmp146, _2
	li	a5,131		# tmp147,
	beq	a4,a5,.L8	#, tmp146, tmp147,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L8:
# problem67.c:19:     assert(func0("abcCd") == 67);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp148,
# problem67.c:19:     assert(func0("abcCd") == 67);
	mv	a4,a5	# tmp149, _3
	li	a5,67		# tmp150,
	beq	a4,a5,.L9	#, tmp149, tmp150,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem67.c:20:     assert(func0("helloE") == 69);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp151,
# problem67.c:20:     assert(func0("helloE") == 69);
	mv	a4,a5	# tmp152, _4
	li	a5,69		# tmp153,
	beq	a4,a5,.L10	#, tmp152, tmp153,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem67.c:21:     assert(func0("woArBld") == 131);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem67.c:21:     assert(func0("woArBld") == 131);
	mv	a4,a5	# tmp155, _5
	li	a5,131		# tmp156,
	beq	a4,a5,.L11	#, tmp155, tmp156,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem67.c:22:     assert(func0("aAaaaXa") == 153);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp157,
# problem67.c:22:     assert(func0("aAaaaXa") == 153);
	mv	a4,a5	# tmp158, _6
	li	a5,153		# tmp159,
	beq	a4,a5,.L12	#, tmp158, tmp159,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem67.c:23:     assert(func0(" How are yOu?") == 151);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem67.c:23:     assert(func0(" How are yOu?") == 151);
	mv	a4,a5	# tmp161, _7
	li	a5,151		# tmp162,
	beq	a4,a5,.L13	#, tmp161, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L13:
# problem67.c:24:     assert(func0("You arE Very Smart") == 327);
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp163,
# problem67.c:24:     assert(func0("You arE Very Smart") == 327);
	mv	a4,a5	# tmp164, _8
	li	a5,327		# tmp165,
	beq	a4,a5,.L14	#, tmp164, tmp165,
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
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
