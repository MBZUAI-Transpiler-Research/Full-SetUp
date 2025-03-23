	.file	"problem54.c"
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
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp74, x
	mv	a4,a1	# tmp76, y
	sw	a5,-20(s0)	# tmp75, x
	mv	a5,a4	# tmp77, tmp76
	sw	a5,-24(s0)	# tmp77, y
# problem54.c:4:     return x + y;
	lw	a5,-20(s0)		# tmp80, x
	mv	a4,a5	# tmp79, tmp80
	lw	a5,-24(s0)		# tmp82, y
	addw	a5,a4,a5	# tmp81, tmp78, tmp79
	sext.w	a5,a5	# _3, tmp78
# problem54.c:5: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem54.c"
	.align	3
.LC1:
	.string	"func0(0, 1) == 1"
	.align	3
.LC2:
	.string	"func0(1, 0) == 1"
	.align	3
.LC3:
	.string	"func0(2, 3) == 5"
	.align	3
.LC4:
	.string	"func0(5, 7) == 12"
	.align	3
.LC5:
	.string	"func0(7, 5) == 12"
	.align	3
.LC6:
	.string	"func0(x, y) == x + y"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem54.c:13:     assert(func0(0, 1) == 1);
	li	a1,1		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp83,
	mv	a4,a5	# tmp84, _1
	li	a5,1		# tmp85,
	beq	a4,a5,.L4	#, tmp84, tmp85,
# problem54.c:13:     assert(func0(0, 1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,13		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L4:
# problem54.c:14:     assert(func0(1, 0) == 1);
	li	a1,0		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _2
	li	a5,1		# tmp88,
	beq	a4,a5,.L5	#, tmp87, tmp88,
# problem54.c:14:     assert(func0(1, 0) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L5:
# problem54.c:15:     assert(func0(2, 3) == 5);
	li	a1,3		#,
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _3
	li	a5,5		# tmp91,
	beq	a4,a5,.L6	#, tmp90, tmp91,
# problem54.c:15:     assert(func0(2, 3) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L6:
# problem54.c:16:     assert(func0(5, 7) == 12);
	li	a1,7		#,
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp92,
	mv	a4,a5	# tmp93, _4
	li	a5,12		# tmp94,
	beq	a4,a5,.L7	#, tmp93, tmp94,
# problem54.c:16:     assert(func0(5, 7) == 12);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem54.c:17:     assert(func0(7, 5) == 12);
	li	a1,5		#,
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _5
	li	a5,12		# tmp97,
	beq	a4,a5,.L8	#, tmp96, tmp97,
# problem54.c:17:     assert(func0(7, 5) == 12);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	sw	zero,-28(s0)	#, i
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	j	.L9		#
.L11:
# problem54.c:19:         int x = rand() % 1000;
	call	rand@plt	#
	mv	a5,a0	# tmp98,
# problem54.c:19:         int x = rand() % 1000;
	mv	a4,a5	# tmp99, _6
	li	a5,1000		# tmp101,
	remw	a5,a4,a5	# tmp101, tmp100, tmp99
	sw	a5,-24(s0)	# tmp100, x
# problem54.c:20:         int y = rand() % 1000;
	call	rand@plt	#
	mv	a5,a0	# tmp102,
# problem54.c:20:         int y = rand() % 1000;
	mv	a4,a5	# tmp103, _7
	li	a5,1000		# tmp105,
	remw	a5,a4,a5	# tmp105, tmp104, tmp103
	sw	a5,-20(s0)	# tmp104, y
# problem54.c:21:         assert(func0(x, y) == x + y);
	lw	a4,-20(s0)		# tmp106, y
	lw	a5,-24(s0)		# tmp107, x
	mv	a1,a4	#, tmp106
	mv	a0,a5	#, tmp107
	call	func0		#
	mv	a5,a0	# tmp108,
	mv	a3,a5	# _8, tmp108
	lw	a5,-24(s0)		# tmp111, x
	mv	a4,a5	# tmp110, tmp111
	lw	a5,-20(s0)		# tmp113, y
	addw	a5,a4,a5	# tmp112, tmp109, tmp110
	sext.w	a5,a5	# _9, tmp109
	mv	a4,a3	# tmp114, _8
	beq	a4,a5,.L10	#, tmp114, tmp115,
# problem54.c:21:         assert(func0(x, y) == x + y);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	lw	a5,-28(s0)		# tmp118, i
	addiw	a5,a5,1	#, tmp116, tmp117
	sw	a5,-28(s0)	# tmp116, i
.L9:
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	lw	a5,-28(s0)		# tmp120, i
	sext.w	a4,a5	# tmp121, tmp119
	li	a5,99		# tmp122,
	ble	a4,a5,.L11	#, tmp121, tmp122,
# problem54.c:23:     return 0;
	li	a5,0		# _24,
# problem54.c:24: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
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
