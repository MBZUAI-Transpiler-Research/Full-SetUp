	.file	"problem61.c"
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
	mv	a5,a0	# tmp138, n
	sw	a5,-20(s0)	# tmp139, n
# problem61.c:4:     return n * (n + 1) / 2;
	lw	a5,-20(s0)		# tmp142, n
	addiw	a5,a5,1	#, tmp140, tmp141
	sext.w	a5,a5	# _1, tmp140
# problem61.c:4:     return n * (n + 1) / 2;
	lw	a4,-20(s0)		# tmp145, n
	mulw	a5,a4,a5	# tmp143, tmp144, _1
	sext.w	a5,a5	# _2, tmp143
# problem61.c:4:     return n * (n + 1) / 2;
	srliw	a4,a5,31	#, tmp148, tmp147
	addw	a5,a4,a5	# tmp147, tmp149, tmp148
	sraiw	a5,a5,1	#, tmp150, tmp149
	sext.w	a5,a5	# _4, tmp150
# problem61.c:5: }
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
	.string	"problem61.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(6) == 21"
	.align	3
.LC3:
	.string	"func0(11) == 66"
	.align	3
.LC4:
	.string	"func0(30) == 465"
	.align	3
.LC5:
	.string	"func0(100) == 5050"
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
# problem61.c:12:     assert(func0(1) == 1);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp141,
# problem61.c:12:     assert(func0(1) == 1);
	mv	a4,a5	# tmp142, _1
	li	a5,1		# tmp143,
	beq	a4,a5,.L4	#, tmp142, tmp143,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,12		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L4:
# problem61.c:13:     assert(func0(6) == 21);
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem61.c:13:     assert(func0(6) == 21);
	mv	a4,a5	# tmp145, _2
	li	a5,21		# tmp146,
	beq	a4,a5,.L5	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,13		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L5:
# problem61.c:14:     assert(func0(11) == 66);
	li	a0,11		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem61.c:14:     assert(func0(11) == 66);
	mv	a4,a5	# tmp148, _3
	li	a5,66		# tmp149,
	beq	a4,a5,.L6	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L6:
# problem61.c:15:     assert(func0(30) == 465);
	li	a0,30		#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem61.c:15:     assert(func0(30) == 465);
	mv	a4,a5	# tmp151, _4
	li	a5,465		# tmp152,
	beq	a4,a5,.L7	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem61.c:16:     assert(func0(100) == 5050);
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem61.c:16:     assert(func0(100) == 5050);
	mv	a4,a5	# tmp154, _5
	li	a5,4096		# tmp156,
	addi	a5,a5,954	#, tmp155, tmp156
	beq	a4,a5,.L8	#, tmp154, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem61.c:18:     return 0;
	li	a5,0		# _17,
# problem61.c:19: }
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
