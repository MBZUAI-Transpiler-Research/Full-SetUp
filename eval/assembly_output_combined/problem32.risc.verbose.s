	.file	"problem32.c"
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
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# n, n
# problem32.c:4:     if (n < 2) return false;
	ld	a4,-40(s0)		# tmp76, n
	li	a5,1		# tmp77,
	bgt	a4,a5,.L2	#, tmp76, tmp77,
# problem32.c:4:     if (n < 2) return false;
	li	a5,0		# _4,
	j	.L3		#
.L2:
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	li	a5,2		# tmp78,
	sd	a5,-24(s0)	# tmp78, i
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	j	.L4		#
.L6:
# problem32.c:6:         if (n % i == 0) return false;
	ld	a4,-40(s0)		# tmp79, n
	ld	a5,-24(s0)		# tmp80, i
	rem	a5,a4,a5	# tmp80, _1, tmp79
# problem32.c:6:         if (n % i == 0) return false;
	bne	a5,zero,.L5	#, _1,,
# problem32.c:6:         if (n % i == 0) return false;
	li	a5,0		# _4,
	j	.L3		#
.L5:
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a5,-24(s0)		# tmp82, i
	addi	a5,a5,1	#, tmp81, tmp82
	sd	a5,-24(s0)	# tmp81, i
.L4:
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a5,-24(s0)		# tmp83, i
	mul	a5,a5,a5	# _2, tmp83, tmp83
# problem32.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a4,-40(s0)		# tmp84, n
	bge	a4,a5,.L6	#, tmp84, _2,
# problem32.c:7:     return true;
	li	a5,1		# _4,
.L3:
# problem32.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem32.c"
	.align	3
.LC1:
	.string	"func0(6) == false"
	.align	3
.LC2:
	.string	"func0(101) == true"
	.align	3
.LC3:
	.string	"func0(11) == true"
	.align	3
.LC4:
	.string	"func0(13441) == true"
	.align	3
.LC5:
	.string	"func0(61) == true"
	.align	3
.LC6:
	.string	"func0(4) == false"
	.align	3
.LC7:
	.string	"func0(1) == false"
	.align	3
.LC8:
	.string	"func0(5) == true"
	.align	3
.LC9:
	.string	"func0(17) == true"
	.align	3
.LC10:
	.string	"func0(5 * 17) == false"
	.align	3
.LC11:
	.string	"func0(11 * 7) == false"
	.align	3
.LC12:
	.string	"func0(13441 * 19) == false"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem32.c:16:     assert(func0(6) == false);
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp93,
	xori	a5,a5,1	#, tmp94, _1
	andi	a5,a5,0xff	# _2, tmp94
	bne	a5,zero,.L8	#, _2,,
# problem32.c:16:     assert(func0(6) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L8:
# problem32.c:17:     assert(func0(101) == true);
	li	a0,101		#,
	call	func0		#
	mv	a5,a0	# tmp95,
	bne	a5,zero,.L9	#, _3,,
# problem32.c:17:     assert(func0(101) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem32.c:18:     assert(func0(11) == true);
	li	a0,11		#,
	call	func0		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L10	#, _4,,
# problem32.c:18:     assert(func0(11) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem32.c:19:     assert(func0(13441) == true);
	li	a5,12288		# tmp97,
	addi	a0,a5,1153	#,, tmp97
	call	func0		#
	mv	a5,a0	# tmp98,
	bne	a5,zero,.L11	#, _5,,
# problem32.c:19:     assert(func0(13441) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem32.c:20:     assert(func0(61) == true);
	li	a0,61		#,
	call	func0		#
	mv	a5,a0	# tmp99,
	bne	a5,zero,.L12	#, _6,,
# problem32.c:20:     assert(func0(61) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem32.c:21:     assert(func0(4) == false);
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp100,
	xori	a5,a5,1	#, tmp101, _7
	andi	a5,a5,0xff	# _8, tmp101
	bne	a5,zero,.L13	#, _8,,
# problem32.c:21:     assert(func0(4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L13:
# problem32.c:22:     assert(func0(1) == false);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp102,
	xori	a5,a5,1	#, tmp103, _9
	andi	a5,a5,0xff	# _10, tmp103
	bne	a5,zero,.L14	#, _10,,
# problem32.c:22:     assert(func0(1) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L14:
# problem32.c:23:     assert(func0(5) == true);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp104,
	bne	a5,zero,.L15	#, _11,,
# problem32.c:23:     assert(func0(5) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem32.c:24:     assert(func0(11) == true);
	li	a0,11		#,
	call	func0		#
	mv	a5,a0	# tmp105,
	bne	a5,zero,.L16	#, _12,,
# problem32.c:24:     assert(func0(11) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L16:
# problem32.c:25:     assert(func0(17) == true);
	li	a0,17		#,
	call	func0		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L17	#, _13,,
# problem32.c:25:     assert(func0(17) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L17:
# problem32.c:26:     assert(func0(5 * 17) == false);
	li	a0,85		#,
	call	func0		#
	mv	a5,a0	# tmp107,
	xori	a5,a5,1	#, tmp108, _14
	andi	a5,a5,0xff	# _15, tmp108
	bne	a5,zero,.L18	#, _15,,
# problem32.c:26:     assert(func0(5 * 17) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L18:
# problem32.c:27:     assert(func0(11 * 7) == false);
	li	a0,77		#,
	call	func0		#
	mv	a5,a0	# tmp109,
	xori	a5,a5,1	#, tmp110, _16
	andi	a5,a5,0xff	# _17, tmp110
	bne	a5,zero,.L19	#, _17,,
# problem32.c:27:     assert(func0(11 * 7) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L19:
# problem32.c:28:     assert(func0(13441 * 19) == false);
	li	a5,253952		# tmp111,
	addi	a0,a5,1427	#,, tmp111
	call	func0		#
	mv	a5,a0	# tmp112,
	xori	a5,a5,1	#, tmp113, _18
	andi	a5,a5,0xff	# _19, tmp113
	bne	a5,zero,.L20	#, _19,,
# problem32.c:28:     assert(func0(13441 * 19) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L20:
# problem32.c:30:     return 0;
	li	a5,0		# _47,
# problem32.c:31: }
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
