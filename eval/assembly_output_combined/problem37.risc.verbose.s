	.file	"problem37.c"
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
	mv	a5,a0	# tmp77, n
	sw	a5,-36(s0)	# tmp78, n
# problem37.c:4:     int count = 0;
	sw	zero,-28(s0)	#, count
# problem37.c:5:     for (int i = 0; i < n; i++)
	sw	zero,-24(s0)	#, i
# problem37.c:5:     for (int i = 0; i < n; i++)
	j	.L2		#
.L8:
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	lw	a5,-24(s0)		# tmp81, i
	mv	a4,a5	# tmp80, tmp81
	li	a5,11		# tmp83,
	remw	a5,a4,a5	# tmp83, tmp82, tmp80
	sext.w	a5,a5	# _1, tmp82
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	beq	a5,zero,.L3	#, _1,,
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	lw	a5,-24(s0)		# tmp86, i
	mv	a4,a5	# tmp85, tmp86
	li	a5,13		# tmp88,
	remw	a5,a4,a5	# tmp88, tmp87, tmp85
	sext.w	a5,a5	# _2, tmp87
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	bne	a5,zero,.L4	#, _2,,
.L3:
# problem37.c:7:             int q = i;
	lw	a5,-24(s0)		# tmp89, i
	sw	a5,-20(s0)	# tmp89, q
# problem37.c:8:             while (q > 0) {
	j	.L5		#
.L7:
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	lw	a5,-20(s0)		# tmp92, q
	mv	a4,a5	# tmp91, tmp92
	li	a5,10		# tmp94,
	remw	a5,a4,a5	# tmp94, tmp93, tmp91
	sext.w	a5,a5	# _3, tmp93
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	mv	a4,a5	# tmp95, _3
	li	a5,7		# tmp96,
	bne	a4,a5,.L6	#, tmp95, tmp96,
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	lw	a5,-28(s0)		# tmp99, count
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-28(s0)	# tmp97, count
.L6:
# problem37.c:10:                 q = q / 10;
	lw	a5,-20(s0)		# tmp102, q
	mv	a4,a5	# tmp101, tmp102
	li	a5,10		# tmp104,
	divw	a5,a4,a5	# tmp104, tmp103, tmp101
	sw	a5,-20(s0)	# tmp103, q
.L5:
# problem37.c:8:             while (q > 0) {
	lw	a5,-20(s0)		# tmp106, q
	sext.w	a5,a5	# tmp107, tmp105
	bgt	a5,zero,.L7	#, tmp107,,
.L4:
# problem37.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-24(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-24(s0)	# tmp108, i
.L2:
# problem37.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-24(s0)		# tmp112, i
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-36(s0)		# tmp114, n
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	blt	a4,a5,.L8	#, tmp115, tmp116,
# problem37.c:13:     return count;
	lw	a5,-28(s0)		# _13, count
# problem37.c:14: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem37.c"
	.align	3
.LC1:
	.string	"func0(50) == 0"
	.align	3
.LC2:
	.string	"func0(78) == 2"
	.align	3
.LC3:
	.string	"func0(79) == 3"
	.align	3
.LC4:
	.string	"func0(100) == 3"
	.align	3
.LC5:
	.string	"func0(200) == 6"
	.align	3
.LC6:
	.string	"func0(4000) == 192"
	.align	3
.LC7:
	.string	"func0(10000) == 639"
	.align	3
.LC8:
	.string	"func0(100000) == 8026"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem37.c:22:     assert(func0(50) == 0);
	li	a0,50		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L11	#, _1,,
# problem37.c:22:     assert(func0(50) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L11:
# problem37.c:23:     assert(func0(78) == 2);
	li	a0,78		#,
	call	func0		#
	mv	a5,a0	# tmp83,
	mv	a4,a5	# tmp84, _2
	li	a5,2		# tmp85,
	beq	a4,a5,.L12	#, tmp84, tmp85,
# problem37.c:23:     assert(func0(78) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L12:
# problem37.c:24:     assert(func0(79) == 3);
	li	a0,79		#,
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _3
	li	a5,3		# tmp88,
	beq	a4,a5,.L13	#, tmp87, tmp88,
# problem37.c:24:     assert(func0(79) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L13:
# problem37.c:25:     assert(func0(100) == 3);
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _4
	li	a5,3		# tmp91,
	beq	a4,a5,.L14	#, tmp90, tmp91,
# problem37.c:25:     assert(func0(100) == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L14:
# problem37.c:26:     assert(func0(200) == 6);
	li	a0,200		#,
	call	func0		#
	mv	a5,a0	# tmp92,
	mv	a4,a5	# tmp93, _5
	li	a5,6		# tmp94,
	beq	a4,a5,.L15	#, tmp93, tmp94,
# problem37.c:26:     assert(func0(200) == 6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L15:
# problem37.c:27:     assert(func0(4000) == 192);
	li	a5,4096		# tmp95,
	addi	a0,a5,-96	#,, tmp95
	call	func0		#
	mv	a5,a0	# tmp96,
	mv	a4,a5	# tmp97, _6
	li	a5,192		# tmp98,
	beq	a4,a5,.L16	#, tmp97, tmp98,
# problem37.c:27:     assert(func0(4000) == 192);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L16:
# problem37.c:28:     assert(func0(10000) == 639);
	li	a5,8192		# tmp99,
	addi	a0,a5,1808	#,, tmp99
	call	func0		#
	mv	a5,a0	# tmp100,
	mv	a4,a5	# tmp101, _7
	li	a5,639		# tmp102,
	beq	a4,a5,.L17	#, tmp101, tmp102,
# problem37.c:28:     assert(func0(10000) == 639);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L17:
# problem37.c:29:     assert(func0(100000) == 8026);
	li	a5,98304		# tmp103,
	addi	a0,a5,1696	#,, tmp103
	call	func0		#
	mv	a5,a0	# tmp104,
	mv	a4,a5	# tmp105, _8
	li	a5,8192		# tmp107,
	addi	a5,a5,-166	#, tmp106, tmp107
	beq	a4,a5,.L18	#, tmp105, tmp106,
# problem37.c:29:     assert(func0(100000) == 8026);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L18:
	li	a5,0		# _26,
# problem37.c:30: }
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
