	.file	"problem132.c"
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
	mv	a5,a0	# tmp75, n
	sw	a5,-36(s0)	# tmp76, n
# problem132.c:4:     int prod = 1, has_odd = 0, digit;
	li	a5,1		# tmp77,
	sw	a5,-28(s0)	# tmp77, prod
# problem132.c:4:     int prod = 1, has_odd = 0, digit;
	sw	zero,-24(s0)	#, has_odd
# problem132.c:5:     while (n > 0) {
	j	.L2		#
.L4:
# problem132.c:6:         digit = n % 10;
	lw	a5,-36(s0)		# tmp80, n
	mv	a4,a5	# tmp79, tmp80
	li	a5,10		# tmp82,
	remw	a5,a4,a5	# tmp82, tmp81, tmp79
	sw	a5,-20(s0)	# tmp81, digit
# problem132.c:7:         if (digit % 2 == 1) {
	lw	a5,-20(s0)		# tmp85, digit
	mv	a4,a5	# tmp84, tmp85
	sraiw	a5,a4,31	#, tmp86, tmp84
	srliw	a5,a5,31	#, tmp87, tmp86
	addw	a4,a4,a5	# tmp87, tmp88, tmp84
	andi	a4,a4,1	#, tmp89, tmp88
	subw	a5,a4,a5	# tmp90, tmp89, tmp87
	sext.w	a5,a5	# _1, tmp90
# problem132.c:7:         if (digit % 2 == 1) {
	mv	a4,a5	# tmp91, _1
	li	a5,1		# tmp92,
	bne	a4,a5,.L3	#, tmp91, tmp92,
# problem132.c:8:             has_odd = 1;
	li	a5,1		# tmp93,
	sw	a5,-24(s0)	# tmp93, has_odd
# problem132.c:9:             prod *= digit;
	lw	a5,-28(s0)		# tmp96, prod
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-20(s0)		# tmp98, digit
	mulw	a5,a4,a5	# tmp94, tmp95, tmp97
	sw	a5,-28(s0)	# tmp94, prod
.L3:
# problem132.c:11:         n /= 10;
	lw	a5,-36(s0)		# tmp101, n
	mv	a4,a5	# tmp100, tmp101
	li	a5,10		# tmp103,
	divw	a5,a4,a5	# tmp103, tmp102, tmp100
	sw	a5,-36(s0)	# tmp102, n
.L2:
# problem132.c:5:     while (n > 0) {
	lw	a5,-36(s0)		# tmp105, n
	sext.w	a5,a5	# tmp106, tmp104
	bgt	a5,zero,.L4	#, tmp106,,
# problem132.c:13:     return has_odd ? prod : 0;
	lw	a5,-24(s0)		# tmp108, has_odd
	sext.w	a5,a5	# tmp109, tmp107
	beq	a5,zero,.L5	#, tmp109,,
# problem132.c:13:     return has_odd ? prod : 0;
	lw	a5,-28(s0)		# iftmp.0_7, prod
	j	.L6		#
.L5:
# problem132.c:13:     return has_odd ? prod : 0;
	li	a5,0		# iftmp.0_7,
.L6:
# problem132.c:14: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem132.c"
	.align	3
.LC1:
	.string	"func0(5) == 5"
	.align	3
.LC2:
	.string	"func0(54) == 5"
	.align	3
.LC3:
	.string	"func0(120) == 1"
	.align	3
.LC4:
	.string	"func0(5014) == 5"
	.align	3
.LC5:
	.string	"func0(98765) == 315"
	.align	3
.LC6:
	.string	"func0(5576543) == 2625"
	.align	3
.LC7:
	.string	"func0(2468) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem132.c:21:     assert(func0(5) == 5);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _1
	li	a5,5		# tmp83,
	beq	a4,a5,.L9	#, tmp82, tmp83,
# problem132.c:21:     assert(func0(5) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L9:
# problem132.c:22:     assert(func0(54) == 5);
	li	a0,54		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _2
	li	a5,5		# tmp86,
	beq	a4,a5,.L10	#, tmp85, tmp86,
# problem132.c:22:     assert(func0(54) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem132.c:23:     assert(func0(120) == 1);
	li	a0,120		#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _3
	li	a5,1		# tmp89,
	beq	a4,a5,.L11	#, tmp88, tmp89,
# problem132.c:23:     assert(func0(120) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L11:
# problem132.c:24:     assert(func0(5014) == 5);
	li	a5,4096		# tmp90,
	addi	a0,a5,918	#,, tmp90
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _4
	li	a5,5		# tmp93,
	beq	a4,a5,.L12	#, tmp92, tmp93,
# problem132.c:24:     assert(func0(5014) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem132.c:25:     assert(func0(98765) == 315);
	li	a5,98304		# tmp94,
	addi	a0,a5,461	#,, tmp94
	call	func0		#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _5
	li	a5,315		# tmp97,
	beq	a4,a5,.L13	#, tmp96, tmp97,
# problem132.c:25:     assert(func0(98765) == 315);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem132.c:26:     assert(func0(5576543) == 2625);
	li	a5,5574656		# tmp98,
	addi	a0,a5,1887	#,, tmp98
	call	func0		#
	mv	a5,a0	# tmp99,
	mv	a4,a5	# tmp100, _6
	li	a5,4096		# tmp102,
	addi	a5,a5,-1471	#, tmp101, tmp102
	beq	a4,a5,.L14	#, tmp100, tmp101,
# problem132.c:26:     assert(func0(5576543) == 2625);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem132.c:27:     assert(func0(2468) == 0);
	li	a5,4096		# tmp103,
	addi	a0,a5,-1628	#,, tmp103
	call	func0		#
	mv	a5,a0	# tmp104,
	beq	a5,zero,.L15	#, _7,,
# problem132.c:27:     assert(func0(2468) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L15:
# problem132.c:29:     return 0;
	li	a5,0		# _23,
# problem132.c:30: }
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
