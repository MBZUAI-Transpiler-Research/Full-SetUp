	.file	"problem50.c"
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
	mv	a5,a0	# tmp137, n
	mv	a4,a1	# tmp139, p
	sw	a5,-36(s0)	# tmp138, n
	mv	a5,a4	# tmp140, tmp139
	sw	a5,-40(s0)	# tmp140, p
# problem50.c:4:     int out = 1;
	li	a5,1		# tmp141,
	sw	a5,-24(s0)	# tmp141, out
# problem50.c:5:     for (int i = 0; i < n; i++)
	sw	zero,-20(s0)	#, i
# problem50.c:5:     for (int i = 0; i < n; i++)
	j	.L2		#
.L3:
# problem50.c:6:         out = (out * 2) % p;
	lw	a5,-24(s0)		# tmp144, out
	slliw	a5,a5,1	#, tmp142, tmp143
	sext.w	a5,a5	# _1, tmp142
# problem50.c:6:         out = (out * 2) % p;
	mv	a4,a5	# tmp146, _1
	lw	a5,-40(s0)		# tmp149, p
	remw	a5,a4,a5	# tmp148, tmp147, tmp146
	sw	a5,-24(s0)	# tmp147, out
# problem50.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L2:
# problem50.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-36(s0)		# tmp156, n
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L3	#, tmp157, tmp158,
# problem50.c:7:     return out;
	lw	a5,-24(s0)		# _7, out
# problem50.c:8: }
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
	.string	"problem50.c"
	.align	3
.LC1:
	.string	"func0(3, 5) == 3"
	.align	3
.LC2:
	.string	"func0(1101, 101) == 2"
	.align	3
.LC3:
	.string	"func0(0, 101) == 1"
	.align	3
.LC4:
	.string	"func0(3, 11) == 8"
	.align	3
.LC5:
	.string	"func0(100, 101) == 1"
	.align	3
.LC6:
	.string	"func0(30, 5) == 4"
	.align	3
.LC7:
	.string	"func0(31, 5) == 3"
	.align	3
.LC8:
	.string	"All tests passed."
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
# problem50.c:16:     assert(func0(3, 5) == 3);
	li	a1,5		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem50.c:16:     assert(func0(3, 5) == 3);
	mv	a4,a5	# tmp144, _1
	li	a5,3		# tmp145,
	beq	a4,a5,.L6	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L6:
# problem50.c:17:     assert(func0(1101, 101) == 2);
	li	a1,101		#,
	li	a0,1101		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem50.c:17:     assert(func0(1101, 101) == 2);
	mv	a4,a5	# tmp147, _2
	li	a5,2		# tmp148,
	beq	a4,a5,.L7	#, tmp147, tmp148,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem50.c:18:     assert(func0(0, 101) == 1);
	li	a1,101		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem50.c:18:     assert(func0(0, 101) == 1);
	mv	a4,a5	# tmp150, _3
	li	a5,1		# tmp151,
	beq	a4,a5,.L8	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L8:
# problem50.c:19:     assert(func0(3, 11) == 8);
	li	a1,11		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem50.c:19:     assert(func0(3, 11) == 8);
	mv	a4,a5	# tmp153, _4
	li	a5,8		# tmp154,
	beq	a4,a5,.L9	#, tmp153, tmp154,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem50.c:20:     assert(func0(100, 101) == 1);
	li	a1,101		#,
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# tmp155,
# problem50.c:20:     assert(func0(100, 101) == 1);
	mv	a4,a5	# tmp156, _5
	li	a5,1		# tmp157,
	beq	a4,a5,.L10	#, tmp156, tmp157,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem50.c:21:     assert(func0(30, 5) == 4);
	li	a1,5		#,
	li	a0,30		#,
	call	func0		#
	mv	a5,a0	# tmp158,
# problem50.c:21:     assert(func0(30, 5) == 4);
	mv	a4,a5	# tmp159, _6
	li	a5,4		# tmp160,
	beq	a4,a5,.L11	#, tmp159, tmp160,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem50.c:22:     assert(func0(31, 5) == 3);
	li	a1,5		#,
	li	a0,31		#,
	call	func0		#
	mv	a5,a0	# tmp161,
# problem50.c:22:     assert(func0(31, 5) == 3);
	mv	a4,a5	# tmp162, _7
	li	a5,3		# tmp163,
	beq	a4,a5,.L12	#, tmp162, tmp163,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem50.c:24:     printf("All tests passed.\n");
	lla	a0,.LC8	#,
	call	puts@plt	#
# problem50.c:25:     return 0;
	li	a5,0		# _24,
# problem50.c:26: }
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
