	.file	"problem60.c"
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
	mv	a5,a0	# tmp138, n
	sw	a5,-36(s0)	# tmp139, n
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	li	a5,2		# tmp140,
	sw	a5,-20(s0)	# tmp140, i
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	j	.L2		#
.L5:
# problem60.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp144, n
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-20(s0)		# tmp146, i
	divw	a5,a4,a5	# tmp145, tmp142, tmp143
	sw	a5,-36(s0)	# tmp142, n
.L3:
# problem60.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp149, n
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-20(s0)		# tmp152, i
	remw	a5,a4,a5	# tmp151, tmp150, tmp148
	sext.w	a5,a5	# _1, tmp150
# problem60.c:5:         while (n % i == 0 && n > i) n = n / i;
	bne	a5,zero,.L4	#, _1,,
# problem60.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp154, n
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-20(s0)		# tmp156, i
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	bgt	a4,a5,.L5	#, tmp157, tmp158,
.L4:
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp161, i
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-20(s0)	# tmp159, i
.L2:
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp164, i
	mulw	a5,a5,a5	# tmp162, tmp163, tmp163
	sext.w	a4,a5	# _2, tmp162
# problem60.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-36(s0)		# tmp166, n
	sext.w	a5,a5	# tmp167, tmp165
	bge	a5,a4,.L3	#, tmp167, tmp168,
# problem60.c:6:     return n;
	lw	a5,-36(s0)		# _8, n
# problem60.c:7: }
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
	.string	"problem60.c"
	.align	3
.LC1:
	.string	"func0(15) == 5"
	.align	3
.LC2:
	.string	"func0(27) == 3"
	.align	3
.LC3:
	.string	"func0(63) == 7"
	.align	3
.LC4:
	.string	"func0(330) == 11"
	.align	3
.LC5:
	.string	"func0(13195) == 29"
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
# problem60.c:14:     assert(func0(15) == 5);
	li	a0,15		#,
	call	func0		#
	mv	a5,a0	# tmp141,
# problem60.c:14:     assert(func0(15) == 5);
	mv	a4,a5	# tmp142, _1
	li	a5,5		# tmp143,
	beq	a4,a5,.L9	#, tmp142, tmp143,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L9:
# problem60.c:15:     assert(func0(27) == 3);
	li	a0,27		#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem60.c:15:     assert(func0(27) == 3);
	mv	a4,a5	# tmp145, _2
	li	a5,3		# tmp146,
	beq	a4,a5,.L10	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem60.c:16:     assert(func0(63) == 7);
	li	a0,63		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem60.c:16:     assert(func0(63) == 7);
	mv	a4,a5	# tmp148, _3
	li	a5,7		# tmp149,
	beq	a4,a5,.L11	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L11:
# problem60.c:17:     assert(func0(330) == 11);
	li	a0,330		#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem60.c:17:     assert(func0(330) == 11);
	mv	a4,a5	# tmp151, _4
	li	a5,11		# tmp152,
	beq	a4,a5,.L12	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem60.c:18:     assert(func0(13195) == 29);
	li	a5,12288		# tmp153,
	addi	a0,a5,907	#,, tmp153
	call	func0		#
	mv	a5,a0	# tmp154,
# problem60.c:18:     assert(func0(13195) == 29);
	mv	a4,a5	# tmp155, _5
	li	a5,29		# tmp156,
	beq	a4,a5,.L13	#, tmp155, tmp156,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem60.c:20:     return 0;
	li	a5,0		# _17,
# problem60.c:21: }
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
