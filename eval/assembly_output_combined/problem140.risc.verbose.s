	.file	"problem140.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp75, n
	sw	a5,-52(s0)	# tmp76, n
# problem140.c:4:     long long fact = 1, bfact = 1;
	li	a5,1		# tmp77,
	sd	a5,-32(s0)	# tmp77, fact
# problem140.c:4:     long long fact = 1, bfact = 1;
	li	a5,1		# tmp78,
	sd	a5,-24(s0)	# tmp78, bfact
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp79,
	sw	a5,-36(s0)	# tmp79, i
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L3:
# problem140.c:6:         fact = fact * i;
	lw	a5,-36(s0)		# _1, i
# problem140.c:6:         fact = fact * i;
	ld	a4,-32(s0)		# tmp81, fact
	mul	a5,a4,a5	# tmp80, tmp81, _1
	sd	a5,-32(s0)	# tmp80, fact
# problem140.c:7:         bfact = bfact * fact;
	ld	a4,-24(s0)		# tmp83, bfact
	ld	a5,-32(s0)		# tmp84, fact
	mul	a5,a4,a5	# tmp82, tmp83, tmp84
	sd	a5,-24(s0)	# tmp82, bfact
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	lw	a5,-36(s0)		# tmp87, i
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-36(s0)	# tmp85, i
.L2:
# problem140.c:5:     for (int i = 1; i <= n; i++) {
	lw	a5,-36(s0)		# tmp89, i
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-52(s0)		# tmp91, n
	sext.w	a4,a4	# tmp92, tmp88
	sext.w	a5,a5	# tmp93, tmp90
	ble	a4,a5,.L3	#, tmp92, tmp93,
# problem140.c:9:     return bfact;
	ld	a5,-24(s0)		# _9, bfact
# problem140.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem140.c:17:     assert(func0(4) == 288);
	li	a0,4		#,
	call	func0		#
	mv	a4,a0	# _1,
	li	a5,288		# tmp78,
	beq	a4,a5,.L6	#, _1, tmp78,
# problem140.c:17:     assert(func0(4) == 288);
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
	li	a5,32768		# tmp80,
	addi	a5,a5,1792	#, tmp79, tmp80
	beq	a4,a5,.L7	#, _2, tmp79,
# problem140.c:18:     assert(func0(5) == 34560);
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
	li	a5,1912832		# tmp82,
	addi	a5,a5,793	#, tmp83, tmp82
	slli	a5,a5,16	#, tmp81, tmp83
	beq	a4,a5,.L8	#, _3, tmp81,
# problem140.c:19:     assert(func0(7) == 125411328000);
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
	li	a5,1		# tmp84,
	beq	a4,a5,.L9	#, _4, tmp84,
# problem140.c:20:     assert(func0(1) == 1);
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
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
