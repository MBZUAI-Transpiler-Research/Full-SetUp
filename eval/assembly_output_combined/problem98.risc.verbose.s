	.file	"problem98.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp140, a
	mv	a4,a1	# tmp142, b
	sw	a5,-20(s0)	# tmp141, a
	mv	a5,a4	# tmp143, tmp142
	sw	a5,-24(s0)	# tmp143, b
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lw	a5,-20(s0)		# tmp146, a
	sraiw	a5,a5,31	#, tmp144, tmp145
	lw	a4,-20(s0)		# tmp148, a
	xor	a4,a5,a4	# tmp147, tmp149, tmp144
	subw	a5,a4,a5	# tmp150, tmp149, tmp144
	sext.w	a5,a5	# _1, tmp150
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mv	a4,a5	# tmp152, _1
	li	a5,10		# tmp154,
	remw	a5,a4,a5	# tmp154, tmp153, tmp152
	sext.w	a4,a5	# _2, tmp153
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lw	a5,-24(s0)		# tmp157, b
	sraiw	a5,a5,31	#, tmp155, tmp156
	lw	a3,-24(s0)		# tmp159, b
	xor	a3,a5,a3	# tmp158, tmp160, tmp155
	subw	a5,a3,a5	# tmp161, tmp160, tmp155
	sext.w	a5,a5	# _3, tmp161
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mv	a3,a5	# tmp163, _3
	li	a5,10		# tmp165,
	remw	a5,a3,a5	# tmp165, tmp164, tmp163
	sext.w	a5,a5	# _4, tmp164
# problem98.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mulw	a5,a4,a5	# tmp166, _2, _4
	sext.w	a5,a5	# _7, tmp166
# problem98.c:6: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem98.c"
	.align	3
.LC1:
	.string	"func0(148, 412) == 16"
	.align	3
.LC2:
	.string	"func0(19, 28) == 72"
	.align	3
.LC3:
	.string	"func0(2020, 1851) == 0"
	.align	3
.LC4:
	.string	"func0(14, -15) == 20"
	.align	3
.LC5:
	.string	"func0(76, 67) == 42"
	.align	3
.LC6:
	.string	"func0(17, 27) == 49"
	.align	3
.LC7:
	.string	"func0(0, 1) == 0"
	.align	3
.LC8:
	.string	"func0(0, 0) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem98.c:13:     assert(func0(148, 412) == 16);
	li	a1,412		#,
	li	a0,148		#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem98.c:13:     assert(func0(148, 412) == 16);
	mv	a4,a5	# tmp145, _1
	li	a5,16		# tmp146,
	beq	a4,a5,.L4	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,13		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L4:
# problem98.c:14:     assert(func0(19, 28) == 72);
	li	a1,28		#,
	li	a0,19		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem98.c:14:     assert(func0(19, 28) == 72);
	mv	a4,a5	# tmp148, _2
	li	a5,72		# tmp149,
	beq	a4,a5,.L5	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L5:
# problem98.c:15:     assert(func0(2020, 1851) == 0);
	li	a1,1851		#,
	li	a0,2020		#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem98.c:15:     assert(func0(2020, 1851) == 0);
	beq	a5,zero,.L6	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L6:
# problem98.c:16:     assert(func0(14, -15) == 20);
	li	a1,-15		#,
	li	a0,14		#,
	call	func0		#
	mv	a5,a0	# tmp151,
# problem98.c:16:     assert(func0(14, -15) == 20);
	mv	a4,a5	# tmp152, _4
	li	a5,20		# tmp153,
	beq	a4,a5,.L7	#, tmp152, tmp153,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem98.c:17:     assert(func0(76, 67) == 42);
	li	a1,67		#,
	li	a0,76		#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem98.c:17:     assert(func0(76, 67) == 42);
	mv	a4,a5	# tmp155, _5
	li	a5,42		# tmp156,
	beq	a4,a5,.L8	#, tmp155, tmp156,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem98.c:18:     assert(func0(17, 27) == 49);
	li	a1,27		#,
	li	a0,17		#,
	call	func0		#
	mv	a5,a0	# tmp157,
# problem98.c:18:     assert(func0(17, 27) == 49);
	mv	a4,a5	# tmp158, _6
	li	a5,49		# tmp159,
	beq	a4,a5,.L9	#, tmp158, tmp159,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem98.c:19:     assert(func0(0, 1) == 0);
	li	a1,1		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem98.c:19:     assert(func0(0, 1) == 0);
	beq	a5,zero,.L10	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L10:
# problem98.c:20:     assert(func0(0, 0) == 0);
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp161,
# problem98.c:20:     assert(func0(0, 0) == 0);
	beq	a5,zero,.L11	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem98.c:22:     return 0;
	li	a5,0		# _26,
# problem98.c:23: }
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
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
