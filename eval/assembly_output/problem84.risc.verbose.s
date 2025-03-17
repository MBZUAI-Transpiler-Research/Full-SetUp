	.file	"problem84.c"
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
	mv	a5,a0	# tmp136, n
	sw	a5,-36(s0)	# tmp137, n
# problem84.c:4:     if (n < 1) return 0;
	lw	a5,-36(s0)		# tmp139, n
	sext.w	a5,a5	# tmp140, tmp138
	bgt	a5,zero,.L2	#, tmp140,,
# problem84.c:4:     if (n < 1) return 0;
	li	a5,0		# _3,
# problem84.c:4:     if (n < 1) return 0;
	j	.L3		#
.L2:
# problem84.c:5:     if (n == 1) return 1;
	lw	a5,-36(s0)		# tmp142, n
	sext.w	a4,a5	# tmp143, tmp141
	li	a5,1		# tmp144,
	bne	a4,a5,.L4	#, tmp143, tmp144,
# problem84.c:5:     if (n == 1) return 1;
	li	a5,1		# _3,
# problem84.c:5:     if (n == 1) return 1;
	j	.L3		#
.L4:
# problem84.c:6:     int out = 18;
	li	a5,18		# tmp145,
	sw	a5,-24(s0)	# tmp145, out
# problem84.c:7:     for (int i = 2; i < n; i++)
	li	a5,2		# tmp146,
	sw	a5,-20(s0)	# tmp146, i
# problem84.c:7:     for (int i = 2; i < n; i++)
	j	.L5		#
.L6:
# problem84.c:8:         out = out * 10;
	lw	a5,-24(s0)		# tmp148, out
	mv	a4,a5	# tmp147, tmp148
	mv	a5,a4	# tmp149, tmp147
	slliw	a5,a5,2	#, tmp150, tmp149
	addw	a5,a5,a4	# tmp147, tmp149, tmp149
	slliw	a5,a5,1	#, tmp151, tmp149
	sw	a5,-24(s0)	# tmp149, out
# problem84.c:7:     for (int i = 2; i < n; i++)
	lw	a5,-20(s0)		# tmp154, i
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-20(s0)	# tmp152, i
.L5:
# problem84.c:7:     for (int i = 2; i < n; i++)
	lw	a5,-20(s0)		# tmp156, i
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-36(s0)		# tmp158, n
	sext.w	a4,a4	# tmp159, tmp155
	sext.w	a5,a5	# tmp160, tmp157
	blt	a4,a5,.L6	#, tmp159, tmp160,
# problem84.c:9:     return out;
	lw	a5,-24(s0)		# _3, out
.L3:
# problem84.c:10: }
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
	.string	"problem84.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(2) == 18"
	.align	3
.LC3:
	.string	"func0(3) == 180"
	.align	3
.LC4:
	.string	"func0(4) == 1800"
	.align	3
.LC5:
	.string	"func0(5) == 18000"
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
# problem84.c:17:     assert(func0(1) == 1);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp141,
# problem84.c:17:     assert(func0(1) == 1);
	mv	a4,a5	# tmp142, _1
	li	a5,1		# tmp143,
	beq	a4,a5,.L8	#, tmp142, tmp143,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L8:
# problem84.c:18:     assert(func0(2) == 18);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem84.c:18:     assert(func0(2) == 18);
	mv	a4,a5	# tmp145, _2
	li	a5,18		# tmp146,
	beq	a4,a5,.L9	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem84.c:19:     assert(func0(3) == 180);
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem84.c:19:     assert(func0(3) == 180);
	mv	a4,a5	# tmp148, _3
	li	a5,180		# tmp149,
	beq	a4,a5,.L10	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem84.c:20:     assert(func0(4) == 1800);
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem84.c:20:     assert(func0(4) == 1800);
	mv	a4,a5	# tmp151, _4
	li	a5,1800		# tmp152,
	beq	a4,a5,.L11	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem84.c:21:     assert(func0(5) == 18000);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem84.c:21:     assert(func0(5) == 18000);
	mv	a4,a5	# tmp154, _5
	li	a5,16384		# tmp156,
	addi	a5,a5,1616	#, tmp155, tmp156
	beq	a4,a5,.L12	#, tmp154, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem84.c:23:     return 0;
	li	a5,0		# _17,
# problem84.c:24: }
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
