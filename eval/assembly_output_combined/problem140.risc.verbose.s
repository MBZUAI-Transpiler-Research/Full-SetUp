	.file	"problem140.c"
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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp137, n
	sw	a5,-52(s0)	# tmp138, n
# problem140.c:4:     long long fact = 1, bfact = 1;
	li	a5,1		# tmp139,
	sd	a5,-32(s0)	# tmp139, fact
# problem140.c:4:     long long fact = 1, bfact = 1;
	li	a5,1		# tmp140,
	sd	a5,-24(s0)	# tmp140, bfact
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp141,
	sw	a5,-36(s0)	# tmp141, i
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L3:
# problem140.c:6:         fact = fact * i;
	lw	a5,-36(s0)		# _1, i
# problem140.c:6:         fact = fact * i;
	ld	a4,-32(s0)		# tmp143, fact
	mul	a5,a4,a5	# tmp142, tmp143, _1
	sd	a5,-32(s0)	# tmp142, fact
# problem140.c:7:         bfact = bfact * fact;
	ld	a4,-24(s0)		# tmp145, bfact
	ld	a5,-32(s0)		# tmp146, fact
	mul	a5,a4,a5	# tmp144, tmp145, tmp146
	sd	a5,-24(s0)	# tmp144, bfact
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	lw	a5,-36(s0)		# tmp149, i
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-36(s0)	# tmp147, i
.L2:
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	lw	a5,-36(s0)		# tmp151, i
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-52(s0)		# tmp153, n
	sext.w	a4,a4	# tmp154, tmp150
	sext.w	a5,a5	# tmp155, tmp152
	ble	a4,a5,.L3	#, tmp154, tmp155,
# problem140.c:9:     return bfact;
	ld	a5,-24(s0)		# _9, bfact
# problem140.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem140.c"
	.align	3
.LC1:
	.string	"func0(4) == 288"
	.align	3
.LC2:
	.string	"func0(5) == 34560"
	.align	3
.LC3:
	.string	"func0(7) == 125411328000"
	.align	3
.LC4:
	.string	"func0(1) == 1"
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
# problem140.c:17:     assert(func0(4) == 288);
	li	a0,4		#,
	call	func0		#
	mv	a4,a0	# _1,
# problem140.c:17:     assert(func0(4) == 288);
	li	a5,288		# tmp140,
	beq	a4,a5,.L6	#, _1, tmp140,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L6:
# problem140.c:18:     assert(func0(5) == 34560);
	li	a0,5		#,
	call	func0		#
	mv	a4,a0	# _2,
# problem140.c:18:     assert(func0(5) == 34560);
	li	a5,32768		# tmp142,
	addi	a5,a5,1792	#, tmp141, tmp142
	beq	a4,a5,.L7	#, _2, tmp141,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem140.c:19:     assert(func0(7) == 125411328000);
	li	a0,7		#,
	call	func0		#
	mv	a4,a0	# _3,
# problem140.c:19:     assert(func0(7) == 125411328000);
	li	a5,1912832		# tmp144,
	addi	a5,a5,793	#, tmp145, tmp144
	slli	a5,a5,16	#, tmp143, tmp145
	beq	a4,a5,.L8	#, _3, tmp143,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L8:
# problem140.c:20:     assert(func0(1) == 1);
	li	a0,1		#,
	call	func0		#
	mv	a4,a0	# _4,
# problem140.c:20:     assert(func0(1) == 1);
	li	a5,1		# tmp146,
	beq	a4,a5,.L9	#, _4, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem140.c:22:     return 0;
	li	a5,0		# _14,
# problem140.c:23: }
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
