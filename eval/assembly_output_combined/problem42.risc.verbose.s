	.file	"problem42.c"
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
	mv	a5,a0	# tmp136, n
	sw	a5,-20(s0)	# tmp137, n
# problem42.c:4:     return n * n;
	lw	a5,-20(s0)		# tmp140, n
	mulw	a5,a5,a5	# tmp138, tmp139, tmp139
	sext.w	a5,a5	# _2, tmp138
# problem42.c:5: }
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
	.string	"problem42.c"
	.align	3
.LC1:
	.string	"func0(2) == 4"
	.align	3
.LC2:
	.string	"func0(3) == 9"
	.align	3
.LC3:
	.string	"func0(4) == 16"
	.align	3
.LC4:
	.string	"func0(8) == 64"
	.align	3
.LC5:
	.string	"func0(10) == 100"
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
# problem42.c:13:     assert(func0(2) == 4);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp141,
# problem42.c:13:     assert(func0(2) == 4);
	mv	a4,a5	# tmp142, _1
	li	a5,4		# tmp143,
	beq	a4,a5,.L4	#, tmp142, tmp143,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,13		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L4:
# problem42.c:14:     assert(func0(3) == 9);
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem42.c:14:     assert(func0(3) == 9);
	mv	a4,a5	# tmp145, _2
	li	a5,9		# tmp146,
	beq	a4,a5,.L5	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L5:
# problem42.c:15:     assert(func0(4) == 16);
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem42.c:15:     assert(func0(4) == 16);
	mv	a4,a5	# tmp148, _3
	li	a5,16		# tmp149,
	beq	a4,a5,.L6	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L6:
# problem42.c:16:     assert(func0(8) == 64);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem42.c:16:     assert(func0(8) == 64);
	mv	a4,a5	# tmp151, _4
	li	a5,64		# tmp152,
	beq	a4,a5,.L7	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem42.c:17:     assert(func0(10) == 100);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem42.c:17:     assert(func0(10) == 100);
	mv	a4,a5	# tmp154, _5
	li	a5,100		# tmp155,
	beq	a4,a5,.L8	#, tmp154, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem42.c:19:     return 0;
	li	a5,0		# _17,
# problem42.c:20: }
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
