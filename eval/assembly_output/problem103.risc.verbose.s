	.file	"problem103.c"
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
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, x
	mv	a4,a1	# tmp140, y
	sw	a5,-20(s0)	# tmp139, x
	mv	a5,a4	# tmp141, tmp140
	sw	a5,-24(s0)	# tmp141, y
# problem103.c:4:     if (y < x) return -1;
	lw	a5,-24(s0)		# tmp143, y
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-20(s0)		# tmp145, x
	sext.w	a4,a4	# tmp146, tmp142
	sext.w	a5,a5	# tmp147, tmp144
	bge	a4,a5,.L2	#, tmp146, tmp147,
# problem103.c:4:     if (y < x) return -1;
	li	a5,-1		# _3,
# problem103.c:4:     if (y < x) return -1;
	j	.L3		#
.L2:
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	lw	a5,-24(s0)		# tmp149, y
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-20(s0)		# tmp151, x
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	bne	a4,a5,.L4	#, tmp152, tmp153,
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	lw	a5,-24(s0)		# tmp156, y
	mv	a4,a5	# tmp155, tmp156
	sraiw	a5,a4,31	#, tmp157, tmp155
	srliw	a5,a5,31	#, tmp158, tmp157
	addw	a4,a4,a5	# tmp158, tmp159, tmp155
	andi	a4,a4,1	#, tmp160, tmp159
	subw	a5,a4,a5	# tmp161, tmp160, tmp158
	sext.w	a5,a5	# _1, tmp161
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	mv	a4,a5	# tmp162, _1
	li	a5,1		# tmp163,
	bne	a4,a5,.L4	#, tmp162, tmp163,
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	li	a5,-1		# _3,
# problem103.c:5:     if (y == x && y % 2 == 1) return -1;
	j	.L3		#
.L4:
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	lw	a5,-24(s0)		# tmp166, y
	mv	a4,a5	# tmp165, tmp166
	sraiw	a5,a4,31	#, tmp167, tmp165
	srliw	a5,a5,31	#, tmp168, tmp167
	addw	a4,a4,a5	# tmp168, tmp169, tmp165
	andi	a4,a4,1	#, tmp170, tmp169
	subw	a5,a4,a5	# tmp171, tmp170, tmp168
	sext.w	a5,a5	# _2, tmp171
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	mv	a4,a5	# tmp172, _2
	li	a5,1		# tmp173,
	bne	a4,a5,.L5	#, tmp172, tmp173,
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	lw	a5,-24(s0)		# tmp176, y
	addiw	a5,a5,-1	#, tmp174, tmp175
	sext.w	a5,a5	# _3, tmp174
# problem103.c:6:     if (y % 2 == 1) return y - 1;
	j	.L3		#
.L5:
# problem103.c:7:     return y;
	lw	a5,-24(s0)		# _3, y
.L3:
# problem103.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem103.c"
	.align	3
.LC1:
	.string	"func0(12, 15) == 14"
	.align	3
.LC2:
	.string	"func0(13, 12) == -1"
	.align	3
.LC3:
	.string	"func0(33, 12354) == 12354"
	.align	3
.LC4:
	.string	"func0(5234, 5233) == -1"
	.align	3
.LC5:
	.string	"func0(6, 29) == 28"
	.align	3
.LC6:
	.string	"func0(27, 10) == -1"
	.align	3
.LC7:
	.string	"func0(7, 7) == -1"
	.align	3
.LC8:
	.string	"func0(546, 546) == 546"
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
# problem103.c:15:     assert(func0(12, 15) == 14);
	li	a1,15		#,
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem103.c:15:     assert(func0(12, 15) == 14);
	mv	a4,a5	# tmp145, _1
	li	a5,14		# tmp146,
	beq	a4,a5,.L7	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem103.c:16:     assert(func0(13, 12) == -1);
	li	a1,12		#,
	li	a0,13		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem103.c:16:     assert(func0(13, 12) == -1);
	mv	a4,a5	# tmp148, _2
	li	a5,-1		# tmp149,
	beq	a4,a5,.L8	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem103.c:17:     assert(func0(33, 12354) == 12354);
	li	a5,12288		# tmp150,
	addi	a1,a5,66	#,, tmp150
	li	a0,33		#,
	call	func0		#
	mv	a5,a0	# tmp151,
# problem103.c:17:     assert(func0(33, 12354) == 12354);
	mv	a4,a5	# tmp152, _3
	li	a5,12288		# tmp154,
	addi	a5,a5,66	#, tmp153, tmp154
	beq	a4,a5,.L9	#, tmp152, tmp153,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem103.c:18:     assert(func0(5234, 5233) == -1);
	li	a5,4096		# tmp155,
	addi	a1,a5,1137	#,, tmp155
	li	a5,4096		# tmp156,
	addi	a0,a5,1138	#,, tmp156
	call	func0		#
	mv	a5,a0	# tmp157,
# problem103.c:18:     assert(func0(5234, 5233) == -1);
	mv	a4,a5	# tmp158, _4
	li	a5,-1		# tmp159,
	beq	a4,a5,.L10	#, tmp158, tmp159,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem103.c:19:     assert(func0(6, 29) == 28);
	li	a1,29		#,
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem103.c:19:     assert(func0(6, 29) == 28);
	mv	a4,a5	# tmp161, _5
	li	a5,28		# tmp162,
	beq	a4,a5,.L11	#, tmp161, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L11:
# problem103.c:20:     assert(func0(27, 10) == -1);
	li	a1,10		#,
	li	a0,27		#,
	call	func0		#
	mv	a5,a0	# tmp163,
# problem103.c:20:     assert(func0(27, 10) == -1);
	mv	a4,a5	# tmp164, _6
	li	a5,-1		# tmp165,
	beq	a4,a5,.L12	#, tmp164, tmp165,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem103.c:21:     assert(func0(7, 7) == -1);
	li	a1,7		#,
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# tmp166,
# problem103.c:21:     assert(func0(7, 7) == -1);
	mv	a4,a5	# tmp167, _7
	li	a5,-1		# tmp168,
	beq	a4,a5,.L13	#, tmp167, tmp168,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L13:
# problem103.c:22:     assert(func0(546, 546) == 546);
	li	a1,546		#,
	li	a0,546		#,
	call	func0		#
	mv	a5,a0	# tmp169,
# problem103.c:22:     assert(func0(546, 546) == 546);
	mv	a4,a5	# tmp170, _8
	li	a5,546		# tmp171,
	beq	a4,a5,.L14	#, tmp170, tmp171,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L14:
# problem103.c:24:     return 0;
	li	a5,0		# _26,
# problem103.c:25: }
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
