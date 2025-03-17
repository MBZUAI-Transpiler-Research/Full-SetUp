	.file	"problem14.c"
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
	mv	a5,a0	# tmp136, a
	mv	a4,a1	# tmp138, b
	sw	a5,-36(s0)	# tmp137, a
	mv	a5,a4	# tmp139, tmp138
	sw	a5,-40(s0)	# tmp139, b
# problem14.c:4:     while (b != 0) {
	j	.L2		#
.L3:
# problem14.c:5:         int m = a % b;
	lw	a5,-36(s0)		# tmp142, a
	mv	a4,a5	# tmp141, tmp142
	lw	a5,-40(s0)		# tmp145, b
	remw	a5,a4,a5	# tmp144, tmp143, tmp141
	sw	a5,-20(s0)	# tmp143, m
# problem14.c:6:         a = b;
	lw	a5,-40(s0)		# tmp146, b
	sw	a5,-36(s0)	# tmp146, a
# problem14.c:7:         b = m;
	lw	a5,-20(s0)		# tmp147, m
	sw	a5,-40(s0)	# tmp147, b
.L2:
# problem14.c:4:     while (b != 0) {
	lw	a5,-40(s0)		# tmp149, b
	sext.w	a5,a5	# tmp150, tmp148
	bne	a5,zero,.L3	#, tmp150,,
# problem14.c:9:     return a;
	lw	a5,-36(s0)		# _5, a
# problem14.c:10: }
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
	.string	"problem14.c"
	.align	3
.LC1:
	.string	"func0(3, 7) == 1"
	.align	3
.LC2:
	.string	"func0(10, 15) == 5"
	.align	3
.LC3:
	.string	"func0(49, 14) == 7"
	.align	3
.LC4:
	.string	"func0(144, 60) == 12"
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
# problem14.c:17:     assert(func0(3, 7) == 1);
	li	a1,7		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp140,
# problem14.c:17:     assert(func0(3, 7) == 1);
	mv	a4,a5	# tmp141, _1
	li	a5,1		# tmp142,
	beq	a4,a5,.L6	#, tmp141, tmp142,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L6:
# problem14.c:18:     assert(func0(10, 15) == 5);
	li	a1,15		#,
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem14.c:18:     assert(func0(10, 15) == 5);
	mv	a4,a5	# tmp144, _2
	li	a5,5		# tmp145,
	beq	a4,a5,.L7	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem14.c:19:     assert(func0(49, 14) == 7);
	li	a1,14		#,
	li	a0,49		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem14.c:19:     assert(func0(49, 14) == 7);
	mv	a4,a5	# tmp147, _3
	li	a5,7		# tmp148,
	beq	a4,a5,.L8	#, tmp147, tmp148,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L8:
# problem14.c:20:     assert(func0(144, 60) == 12);
	li	a1,60		#,
	li	a0,144		#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem14.c:20:     assert(func0(144, 60) == 12);
	mv	a4,a5	# tmp150, _4
	li	a5,12		# tmp151,
	beq	a4,a5,.L9	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem14.c:22:     return 0;
	li	a5,0		# _14,
# problem14.c:23: }
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
