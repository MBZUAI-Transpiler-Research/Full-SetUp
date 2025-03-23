	.file	"problem151.c"
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
	mv	a5,a0	# tmp76, n
	mv	a3,a1	# tmp78, x
	mv	a4,a2	# tmp80, y
	sw	a5,-36(s0)	# tmp77, n
	mv	a5,a3	# tmp79, tmp78
	sw	a5,-40(s0)	# tmp79, x
	mv	a5,a4	# tmp81, tmp80
	sw	a5,-44(s0)	# tmp81, y
# problem151.c:4:     int isp = 1;
	li	a5,1		# tmp82,
	sw	a5,-24(s0)	# tmp82, isp
# problem151.c:5:     if (n < 2) isp = 0;
	lw	a5,-36(s0)		# tmp84, n
	sext.w	a4,a5	# tmp85, tmp83
	li	a5,1		# tmp86,
	bgt	a4,a5,.L2	#, tmp85, tmp86,
# problem151.c:5:     if (n < 2) isp = 0;
	sw	zero,-24(s0)	#, isp
.L2:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	li	a5,2		# tmp87,
	sw	a5,-20(s0)	# tmp87, i
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	j	.L3		#
.L5:
# problem151.c:7:         if (n % i == 0) isp = 0;
	lw	a5,-36(s0)		# tmp90, n
	mv	a4,a5	# tmp89, tmp90
	lw	a5,-20(s0)		# tmp93, i
	remw	a5,a4,a5	# tmp92, tmp91, tmp89
	sext.w	a5,a5	# _1, tmp91
# problem151.c:7:         if (n % i == 0) isp = 0;
	bne	a5,zero,.L4	#, _1,,
# problem151.c:7:         if (n % i == 0) isp = 0;
	sw	zero,-24(s0)	#, isp
.L4:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-20(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-20(s0)	# tmp94, i
.L3:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-20(s0)		# tmp99, i
	mulw	a5,a5,a5	# tmp97, tmp98, tmp98
	sext.w	a4,a5	# _2, tmp97
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-36(s0)		# tmp101, n
	sext.w	a5,a5	# tmp102, tmp100
	bge	a5,a4,.L5	#, tmp102, tmp103,
# problem151.c:9:     if (isp) return x;
	lw	a5,-24(s0)		# tmp105, isp
	sext.w	a5,a5	# tmp106, tmp104
	beq	a5,zero,.L6	#, tmp106,,
# problem151.c:9:     if (isp) return x;
	lw	a5,-40(s0)		# _7, x
	j	.L7		#
.L6:
# problem151.c:10:     return y;
	lw	a5,-44(s0)		# _7, y
.L7:
# problem151.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem151.c"
	.align	3
.LC1:
	.string	"func0(7, 34, 12) == 34"
	.align	3
.LC2:
	.string	"func0(15, 8, 5) == 5"
	.align	3
.LC3:
	.string	"func0(3, 33, 5212) == 33"
	.align	3
.LC4:
	.string	"func0(1259, 3, 52) == 3"
	.align	3
.LC5:
	.string	"func0(7919, -1, 12) == -1"
	.align	3
.LC6:
	.string	"func0(3609, 1245, 583) == 583"
	.align	3
.LC7:
	.string	"func0(91, 56, 129) == 129"
	.align	3
.LC8:
	.string	"func0(6, 34, 1234) == 1234"
	.align	3
.LC9:
	.string	"func0(1, 2, 0) == 0"
	.align	3
.LC10:
	.string	"func0(2, 2, 0) == 2"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem151.c:18:     assert(func0(7, 34, 12) == 34);
	li	a2,12		#,
	li	a1,34		#,
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _1
	li	a5,34		# tmp86,
	beq	a4,a5,.L9	#, tmp85, tmp86,
# problem151.c:18:     assert(func0(7, 34, 12) == 34);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L9:
# problem151.c:19:     assert(func0(15, 8, 5) == 5);
	li	a2,5		#,
	li	a1,8		#,
	li	a0,15		#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _2
	li	a5,5		# tmp89,
	beq	a4,a5,.L10	#, tmp88, tmp89,
# problem151.c:19:     assert(func0(15, 8, 5) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem151.c:20:     assert(func0(3, 33, 5212) == 33);
	li	a5,4096		# tmp90,
	addi	a2,a5,1116	#,, tmp90
	li	a1,33		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _3
	li	a5,33		# tmp93,
	beq	a4,a5,.L11	#, tmp92, tmp93,
# problem151.c:20:     assert(func0(3, 33, 5212) == 33);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L11:
# problem151.c:21:     assert(func0(1259, 3, 52) == 3);
	li	a2,52		#,
	li	a1,3		#,
	li	a0,1259		#,
	call	func0		#
	mv	a5,a0	# tmp94,
	mv	a4,a5	# tmp95, _4
	li	a5,3		# tmp96,
	beq	a4,a5,.L12	#, tmp95, tmp96,
# problem151.c:21:     assert(func0(1259, 3, 52) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem151.c:22:     assert(func0(7919, -1, 12) == -1);
	li	a2,12		#,
	li	a1,-1		#,
	li	a5,8192		# tmp97,
	addi	a0,a5,-273	#,, tmp97
	call	func0		#
	mv	a5,a0	# tmp98,
	mv	a4,a5	# tmp99, _5
	li	a5,-1		# tmp100,
	beq	a4,a5,.L13	#, tmp99, tmp100,
# problem151.c:22:     assert(func0(7919, -1, 12) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem151.c:23:     assert(func0(3609, 1245, 583) == 583);
	li	a2,583		#,
	li	a1,1245		#,
	li	a5,4096		# tmp101,
	addi	a0,a5,-487	#,, tmp101
	call	func0		#
	mv	a5,a0	# tmp102,
	mv	a4,a5	# tmp103, _6
	li	a5,583		# tmp104,
	beq	a4,a5,.L14	#, tmp103, tmp104,
# problem151.c:23:     assert(func0(3609, 1245, 583) == 583);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem151.c:24:     assert(func0(91, 56, 129) == 129);
	li	a2,129		#,
	li	a1,56		#,
	li	a0,91		#,
	call	func0		#
	mv	a5,a0	# tmp105,
	mv	a4,a5	# tmp106, _7
	li	a5,129		# tmp107,
	beq	a4,a5,.L15	#, tmp106, tmp107,
# problem151.c:24:     assert(func0(91, 56, 129) == 129);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L15:
# problem151.c:25:     assert(func0(6, 34, 1234) == 1234);
	li	a2,1234		#,
	li	a1,34		#,
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp108,
	mv	a4,a5	# tmp109, _8
	li	a5,1234		# tmp110,
	beq	a4,a5,.L16	#, tmp109, tmp110,
# problem151.c:25:     assert(func0(6, 34, 1234) == 1234);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L16:
# problem151.c:26:     assert(func0(1, 2, 0) == 0);
	li	a2,0		#,
	li	a1,2		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp111,
	beq	a5,zero,.L17	#, _9,,
# problem151.c:26:     assert(func0(1, 2, 0) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L17:
# problem151.c:27:     assert(func0(2, 2, 0) == 2);
	li	a2,0		#,
	li	a1,2		#,
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp112,
	mv	a4,a5	# tmp113, _10
	li	a5,2		# tmp114,
	beq	a4,a5,.L18	#, tmp113, tmp114,
# problem151.c:27:     assert(func0(2, 2, 0) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L18:
# problem151.c:29:     return 0;
	li	a5,0		# _32,
# problem151.c:30: }
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
