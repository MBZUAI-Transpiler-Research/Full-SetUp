	.file	"problem76.c"
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
	mv	a5,a0	# tmp77, a
	sw	a5,-36(s0)	# tmp78, a
# problem76.c:5:     if (a < 2) return 0;
	lw	a5,-36(s0)		# tmp80, a
	sext.w	a4,a5	# tmp81, tmp79
	li	a5,1		# tmp82,
	bgt	a4,a5,.L2	#, tmp81, tmp82,
# problem76.c:5:     if (a < 2) return 0;
	li	a5,0		# _10,
	j	.L3		#
.L2:
# problem76.c:6:     int num = 0;
	sw	zero,-24(s0)	#, num
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	li	a5,2		# tmp83,
	sw	a5,-20(s0)	# tmp83, i
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	j	.L4		#
.L6:
# problem76.c:9:             a = a / i;
	lw	a5,-36(s0)		# tmp87, a
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-20(s0)		# tmp89, i
	divw	a5,a4,a5	# tmp88, tmp85, tmp86
	sw	a5,-36(s0)	# tmp85, a
# problem76.c:10:             num++;
	lw	a5,-24(s0)		# tmp92, num
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-24(s0)	# tmp90, num
.L5:
# problem76.c:8:         while (a % i == 0) {
	lw	a5,-36(s0)		# tmp95, a
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-20(s0)		# tmp98, i
	remw	a5,a4,a5	# tmp97, tmp96, tmp94
	sext.w	a5,a5	# _1, tmp96
# problem76.c:8:         while (a % i == 0) {
	beq	a5,zero,.L6	#, _1,,
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-20(s0)		# tmp101, i
	addiw	a5,a5,1	#, tmp99, tmp100
	sw	a5,-20(s0)	# tmp99, i
.L4:
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-20(s0)		# tmp104, i
	mulw	a5,a5,a5	# tmp102, tmp103, tmp103
	sext.w	a4,a5	# _2, tmp102
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-36(s0)		# tmp106, a
	sext.w	a5,a5	# tmp107, tmp105
	bge	a5,a4,.L5	#, tmp107, tmp108,
# problem76.c:13:     if (a > 1) num++;
	lw	a5,-36(s0)		# tmp110, a
	sext.w	a4,a5	# tmp111, tmp109
	li	a5,1		# tmp112,
	ble	a4,a5,.L8	#, tmp111, tmp112,
# problem76.c:13:     if (a > 1) num++;
	lw	a5,-24(s0)		# tmp115, num
	addiw	a5,a5,1	#, tmp113, tmp114
	sw	a5,-24(s0)	# tmp113, num
.L8:
# problem76.c:14:     return num == 3;
	lw	a5,-24(s0)		# tmp118, num
	sext.w	a4,a5	# tmp120, tmp117
	li	a5,3		# tmp122,
	sub	a5,a4,a5	# tmp121, tmp120, tmp122
	seqz	a5,a5	# tmp119, tmp121
	andi	a5,a5,0xff	# _3, tmp116
	sext.w	a5,a5	# _10, _3
.L3:
# problem76.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem76.c"
	.align	3
.LC1:
	.string	"func0(5) == 0"
	.align	3
.LC2:
	.string	"func0(30) == 1"
	.align	3
.LC3:
	.string	"func0(8) == 1"
	.align	3
.LC4:
	.string	"func0(10) == 0"
	.align	3
.LC5:
	.string	"func0(125) == 1"
	.align	3
.LC6:
	.string	"func0(3 * 5 * 7) == 1"
	.align	3
.LC7:
	.string	"func0(3 * 6 * 7) == 0"
	.align	3
.LC8:
	.string	"func0(9 * 9 * 9) == 0"
	.align	3
.LC9:
	.string	"func0(11 * 9 * 9) == 0"
	.align	3
.LC10:
	.string	"func0(11 * 13 * 7) == 1"
	.align	3
.LC11:
	.string	"All tests passed!"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem76.c:23:     assert(func0(5) == 0);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	beq	a5,zero,.L10	#, _1,,
# problem76.c:23:     assert(func0(5) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L10:
# problem76.c:24:     assert(func0(30) == 1);
	li	a0,30		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _2
	li	a5,1		# tmp87,
	beq	a4,a5,.L11	#, tmp86, tmp87,
# problem76.c:24:     assert(func0(30) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem76.c:25:     assert(func0(8) == 1); // 8 = 2 * 2 * 2
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _3
	li	a5,1		# tmp90,
	beq	a4,a5,.L12	#, tmp89, tmp90,
# problem76.c:25:     assert(func0(8) == 1); // 8 = 2 * 2 * 2
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L12:
# problem76.c:26:     assert(func0(10) == 0);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp91,
	beq	a5,zero,.L13	#, _4,,
# problem76.c:26:     assert(func0(10) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem76.c:27:     assert(func0(125) == 1); // 125 = 5 * 5 * 5 (three times the same prime)
	li	a0,125		#,
	call	func0		#
	mv	a5,a0	# tmp92,
	mv	a4,a5	# tmp93, _5
	li	a5,1		# tmp94,
	beq	a4,a5,.L14	#, tmp93, tmp94,
# problem76.c:27:     assert(func0(125) == 1); // 125 = 5 * 5 * 5 (three times the same prime)
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem76.c:28:     assert(func0(3 * 5 * 7) == 1);
	li	a0,105		#,
	call	func0		#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _6
	li	a5,1		# tmp97,
	beq	a4,a5,.L15	#, tmp96, tmp97,
# problem76.c:28:     assert(func0(3 * 5 * 7) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem76.c:29:     assert(func0(3 * 6 * 7) == 0);
	li	a0,126		#,
	call	func0		#
	mv	a5,a0	# tmp98,
	beq	a5,zero,.L16	#, _7,,
# problem76.c:29:     assert(func0(3 * 6 * 7) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L16:
# problem76.c:30:     assert(func0(9 * 9 * 9) == 0);
	li	a0,729		#,
	call	func0		#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L17	#, _8,,
# problem76.c:30:     assert(func0(9 * 9 * 9) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L17:
# problem76.c:31:     assert(func0(11 * 9 * 9) == 0);
	li	a0,891		#,
	call	func0		#
	mv	a5,a0	# tmp100,
	beq	a5,zero,.L18	#, _9,,
# problem76.c:31:     assert(func0(11 * 9 * 9) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L18:
# problem76.c:32:     assert(func0(11 * 13 * 7) == 1);
	li	a0,1001		#,
	call	func0		#
	mv	a5,a0	# tmp101,
	mv	a4,a5	# tmp102, _10
	li	a5,1		# tmp103,
	beq	a4,a5,.L19	#, tmp102, tmp103,
# problem76.c:32:     assert(func0(11 * 13 * 7) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC0	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L19:
# problem76.c:34:     printf("All tests passed!\n");
	lla	a0,.LC11	#,
	call	puts@plt	#
# problem76.c:36:     return 0;
	li	a5,0		# _33,
# problem76.c:37: }
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
