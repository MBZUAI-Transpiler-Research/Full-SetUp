	.file	"problem40.c"
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
	mv	a5,a0	# tmp76, n
	sw	a5,-52(s0)	# tmp77, n
# problem40.c:4:     int f1 = 1, f2 = 2, m;
	li	a5,1		# tmp78,
	sw	a5,-40(s0)	# tmp78, f1
# problem40.c:4:     int f1 = 1, f2 = 2, m;
	li	a5,2		# tmp79,
	sw	a5,-36(s0)	# tmp79, f2
# problem40.c:5:     int count = 0;
	sw	zero,-32(s0)	#, count
# problem40.c:6:     while (count < n) {
	j	.L2		#
.L9:
# problem40.c:7:         f1 = f1 + f2;
	lw	a5,-40(s0)		# tmp82, f1
	mv	a4,a5	# tmp81, tmp82
	lw	a5,-36(s0)		# tmp84, f2
	addw	a5,a4,a5	# tmp83, tmp80, tmp81
	sw	a5,-40(s0)	# tmp80, f1
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-40(s0)		# tmp85, f1
	sw	a5,-20(s0)	# tmp85, m
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-36(s0)		# tmp86, f2
	sw	a5,-40(s0)	# tmp86, f1
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-20(s0)		# tmp87, m
	sw	a5,-36(s0)	# tmp87, f2
# problem40.c:9:         int isprime = 1;
	li	a5,1		# tmp88,
	sw	a5,-28(s0)	# tmp88, isprime
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	li	a5,2		# tmp89,
	sw	a5,-24(s0)	# tmp89, w
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	j	.L3		#
.L6:
# problem40.c:11:             if (f1 % w == 0) {
	lw	a5,-40(s0)		# tmp92, f1
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-24(s0)		# tmp95, w
	remw	a5,a4,a5	# tmp94, tmp93, tmp91
	sext.w	a5,a5	# _1, tmp93
# problem40.c:11:             if (f1 % w == 0) {
	bne	a5,zero,.L4	#, _1,,
# problem40.c:12:                 isprime = 0; break;
	sw	zero,-28(s0)	#, isprime
# problem40.c:12:                 isprime = 0; break;
	j	.L5		#
.L4:
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-24(s0)		# tmp98, w
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, w
.L3:
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-24(s0)		# tmp101, w
	mulw	a5,a5,a5	# tmp99, tmp100, tmp100
	sext.w	a4,a5	# _2, tmp99
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-40(s0)		# tmp103, f1
	sext.w	a5,a5	# tmp104, tmp102
	bge	a5,a4,.L6	#, tmp104, tmp105,
.L5:
# problem40.c:15:         if (isprime) count += 1;
	lw	a5,-28(s0)		# tmp107, isprime
	sext.w	a5,a5	# tmp108, tmp106
	beq	a5,zero,.L7	#, tmp108,,
# problem40.c:15:         if (isprime) count += 1;
	lw	a5,-32(s0)		# tmp111, count
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-32(s0)	# tmp109, count
.L7:
# problem40.c:16:         if (count == n) return f1;
	lw	a5,-32(s0)		# tmp113, count
	mv	a4,a5	# tmp112, tmp113
	lw	a5,-52(s0)		# tmp115, n
	sext.w	a4,a4	# tmp116, tmp112
	sext.w	a5,a5	# tmp117, tmp114
	bne	a4,a5,.L2	#, tmp116, tmp117,
# problem40.c:16:         if (count == n) return f1;
	lw	a5,-40(s0)		# _9, f1
	j	.L8		#
.L2:
# problem40.c:6:     while (count < n) {
	lw	a5,-32(s0)		# tmp119, count
	mv	a4,a5	# tmp118, tmp119
	lw	a5,-52(s0)		# tmp121, n
	sext.w	a4,a4	# tmp122, tmp118
	sext.w	a5,a5	# tmp123, tmp120
	blt	a4,a5,.L9	#, tmp122, tmp123,
# problem40.c:18:     return 0;
	li	a5,0		# _9,
.L8:
# problem40.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem40.c"
	.align	3
.LC1:
	.string	"func0(1) == 2"
	.align	3
.LC2:
	.string	"func0(2) == 3"
	.align	3
.LC3:
	.string	"func0(3) == 5"
	.align	3
.LC4:
	.string	"func0(4) == 13"
	.align	3
.LC5:
	.string	"func0(5) == 89"
	.align	3
.LC6:
	.string	"func0(6) == 233"
	.align	3
.LC7:
	.string	"func0(7) == 1597"
	.align	3
.LC8:
	.string	"func0(8) == 28657"
	.align	3
.LC9:
	.string	"func0(9) == 514229"
	.align	3
.LC10:
	.string	"func0(10) == 433494437"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem40.c:27:     assert(func0(1) == 2);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _1
	li	a5,2		# tmp86,
	beq	a4,a5,.L11	#, tmp85, tmp86,
# problem40.c:27:     assert(func0(1) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L11:
# problem40.c:28:     assert(func0(2) == 3);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _2
	li	a5,3		# tmp89,
	beq	a4,a5,.L12	#, tmp88, tmp89,
# problem40.c:28:     assert(func0(2) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L12:
# problem40.c:29:     assert(func0(3) == 5);
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp90,
	mv	a4,a5	# tmp91, _3
	li	a5,5		# tmp92,
	beq	a4,a5,.L13	#, tmp91, tmp92,
# problem40.c:29:     assert(func0(3) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L13:
# problem40.c:30:     assert(func0(4) == 13);
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp93,
	mv	a4,a5	# tmp94, _4
	li	a5,13		# tmp95,
	beq	a4,a5,.L14	#, tmp94, tmp95,
# problem40.c:30:     assert(func0(4) == 13);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L14:
# problem40.c:31:     assert(func0(5) == 89);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp96,
	mv	a4,a5	# tmp97, _5
	li	a5,89		# tmp98,
	beq	a4,a5,.L15	#, tmp97, tmp98,
# problem40.c:31:     assert(func0(5) == 89);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L15:
# problem40.c:32:     assert(func0(6) == 233);
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp99,
	mv	a4,a5	# tmp100, _6
	li	a5,233		# tmp101,
	beq	a4,a5,.L16	#, tmp100, tmp101,
# problem40.c:32:     assert(func0(6) == 233);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L16:
# problem40.c:33:     assert(func0(7) == 1597);
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# tmp102,
	mv	a4,a5	# tmp103, _7
	li	a5,1597		# tmp104,
	beq	a4,a5,.L17	#, tmp103, tmp104,
# problem40.c:33:     assert(func0(7) == 1597);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L17:
# problem40.c:34:     assert(func0(8) == 28657);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp105,
	mv	a4,a5	# tmp106, _8
	li	a5,28672		# tmp108,
	addi	a5,a5,-15	#, tmp107, tmp108
	beq	a4,a5,.L18	#, tmp106, tmp107,
# problem40.c:34:     assert(func0(8) == 28657);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L18:
# problem40.c:35:     assert(func0(9) == 514229);
	li	a0,9		#,
	call	func0		#
	mv	a5,a0	# tmp109,
	mv	a4,a5	# tmp110, _9
	li	a5,516096		# tmp112,
	addi	a5,a5,-1867	#, tmp111, tmp112
	beq	a4,a5,.L19	#, tmp110, tmp111,
# problem40.c:35:     assert(func0(9) == 514229);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC0	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L19:
# problem40.c:36:     assert(func0(10) == 433494437);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp113,
	mv	a4,a5	# tmp114, _10
	li	a5,433496064		# tmp116,
	addi	a5,a5,-1627	#, tmp115, tmp116
	beq	a4,a5,.L20	#, tmp114, tmp115,
# problem40.c:36:     assert(func0(10) == 433494437);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC0	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L20:
# problem40.c:38:     return 0;
	li	a5,0		# _32,
# problem40.c:39: }
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
