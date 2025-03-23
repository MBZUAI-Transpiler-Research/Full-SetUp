	.file	"problem77.c"
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
	mv	a5,a0	# tmp74, x
	mv	a4,a1	# tmp76, n
	sw	a5,-36(s0)	# tmp75, x
	mv	a5,a4	# tmp77, tmp76
	sw	a5,-40(s0)	# tmp77, n
# problem77.c:4:     int p = 1, count = 0;
	li	a5,1		# tmp78,
	sw	a5,-24(s0)	# tmp78, p
# problem77.c:4:     int p = 1, count = 0;
	sw	zero,-20(s0)	#, count
# problem77.c:5:     while (p <= x && count < 100) {
	j	.L2		#
.L6:
# problem77.c:6:         if (p == x) return 1;
	lw	a5,-24(s0)		# tmp80, p
	mv	a4,a5	# tmp79, tmp80
	lw	a5,-36(s0)		# tmp82, x
	sext.w	a4,a4	# tmp83, tmp79
	sext.w	a5,a5	# tmp84, tmp81
	bne	a4,a5,.L3	#, tmp83, tmp84,
# problem77.c:6:         if (p == x) return 1;
	li	a5,1		# _3,
	j	.L4		#
.L3:
# problem77.c:7:         p = p * n; count += 1;
	lw	a5,-24(s0)		# tmp87, p
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-40(s0)		# tmp89, n
	mulw	a5,a4,a5	# tmp85, tmp86, tmp88
	sw	a5,-24(s0)	# tmp85, p
# problem77.c:7:         p = p * n; count += 1;
	lw	a5,-20(s0)		# tmp92, count
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-20(s0)	# tmp90, count
.L2:
# problem77.c:5:     while (p <= x && count < 100) {
	lw	a5,-24(s0)		# tmp94, p
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-36(s0)		# tmp96, x
	sext.w	a4,a4	# tmp97, tmp93
	sext.w	a5,a5	# tmp98, tmp95
	bgt	a4,a5,.L5	#, tmp97, tmp98,
# problem77.c:5:     while (p <= x && count < 100) {
	lw	a5,-20(s0)		# tmp100, count
	sext.w	a4,a5	# tmp101, tmp99
	li	a5,99		# tmp102,
	ble	a4,a5,.L6	#, tmp101, tmp102,
.L5:
# problem77.c:9:     return 0;
	li	a5,0		# _3,
.L4:
# problem77.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem77.c"
	.align	3
.LC1:
	.string	"func0(1, 4) == 1"
	.align	3
.LC2:
	.string	"func0(2, 2) == 1"
	.align	3
.LC3:
	.string	"func0(8, 2) == 1"
	.align	3
.LC4:
	.string	"func0(3, 2) == 0"
	.align	3
.LC5:
	.string	"func0(3, 1) == 0"
	.align	3
.LC6:
	.string	"func0(5, 3) == 0"
	.align	3
.LC7:
	.string	"func0(16, 2) == 1"
	.align	3
.LC8:
	.string	"func0(143214, 16) == 0"
	.align	3
.LC9:
	.string	"func0(4, 2) == 1"
	.align	3
.LC10:
	.string	"func0(9, 3) == 1"
	.align	3
.LC11:
	.string	"func0(16, 4) == 1"
	.align	3
.LC12:
	.string	"func0(24, 2) == 0"
	.align	3
.LC13:
	.string	"func0(128, 4) == 0"
	.align	3
.LC14:
	.string	"func0(12, 6) == 0"
	.align	3
.LC15:
	.string	"func0(1, 1) == 1"
	.align	3
.LC16:
	.string	"func0(1, 12) == 1"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem77.c:17:     assert(func0(1, 4) == 1);
	li	a1,4		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp90,
	mv	a4,a5	# tmp91, _1
	li	a5,1		# tmp92,
	beq	a4,a5,.L8	#, tmp91, tmp92,
# problem77.c:17:     assert(func0(1, 4) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L8:
# problem77.c:18:     assert(func0(2, 2) == 1);
	li	a1,2		#,
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp93,
	mv	a4,a5	# tmp94, _2
	li	a5,1		# tmp95,
	beq	a4,a5,.L9	#, tmp94, tmp95,
# problem77.c:18:     assert(func0(2, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem77.c:19:     assert(func0(8, 2) == 1);
	li	a1,2		#,
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp96,
	mv	a4,a5	# tmp97, _3
	li	a5,1		# tmp98,
	beq	a4,a5,.L10	#, tmp97, tmp98,
# problem77.c:19:     assert(func0(8, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem77.c:20:     assert(func0(3, 2) == 0);
	li	a1,2		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L11	#, _4,,
# problem77.c:20:     assert(func0(3, 2) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem77.c:21:     assert(func0(3, 1) == 0);
	li	a1,1		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp100,
	beq	a5,zero,.L12	#, _5,,
# problem77.c:21:     assert(func0(3, 1) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem77.c:22:     assert(func0(5, 3) == 0);
	li	a1,3		#,
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp101,
	beq	a5,zero,.L13	#, _6,,
# problem77.c:22:     assert(func0(5, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L13:
# problem77.c:23:     assert(func0(16, 2) == 1);
	li	a1,2		#,
	li	a0,16		#,
	call	func0		#
	mv	a5,a0	# tmp102,
	mv	a4,a5	# tmp103, _7
	li	a5,1		# tmp104,
	beq	a4,a5,.L14	#, tmp103, tmp104,
# problem77.c:23:     assert(func0(16, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L14:
# problem77.c:24:     assert(func0(143214, 16) == 0);
	li	a1,16		#,
	li	a5,143360		# tmp105,
	addi	a0,a5,-146	#,, tmp105
	call	func0		#
	mv	a5,a0	# tmp106,
	beq	a5,zero,.L15	#, _8,,
# problem77.c:24:     assert(func0(143214, 16) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem77.c:25:     assert(func0(4, 2) == 1);
	li	a1,2		#,
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp107,
	mv	a4,a5	# tmp108, _9
	li	a5,1		# tmp109,
	beq	a4,a5,.L16	#, tmp108, tmp109,
# problem77.c:25:     assert(func0(4, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L16:
# problem77.c:26:     assert(func0(9, 3) == 1);
	li	a1,3		#,
	li	a0,9		#,
	call	func0		#
	mv	a5,a0	# tmp110,
	mv	a4,a5	# tmp111, _10
	li	a5,1		# tmp112,
	beq	a4,a5,.L17	#, tmp111, tmp112,
# problem77.c:26:     assert(func0(9, 3) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L17:
# problem77.c:27:     assert(func0(16, 4) == 1);
	li	a1,4		#,
	li	a0,16		#,
	call	func0		#
	mv	a5,a0	# tmp113,
	mv	a4,a5	# tmp114, _11
	li	a5,1		# tmp115,
	beq	a4,a5,.L18	#, tmp114, tmp115,
# problem77.c:27:     assert(func0(16, 4) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L18:
# problem77.c:28:     assert(func0(24, 2) == 0);
	li	a1,2		#,
	li	a0,24		#,
	call	func0		#
	mv	a5,a0	# tmp116,
	beq	a5,zero,.L19	#, _12,,
# problem77.c:28:     assert(func0(24, 2) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L19:
# problem77.c:29:     assert(func0(128, 4) == 0);
	li	a1,4		#,
	li	a0,128		#,
	call	func0		#
	mv	a5,a0	# tmp117,
	beq	a5,zero,.L20	#, _13,,
# problem77.c:29:     assert(func0(128, 4) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC0	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L20:
# problem77.c:30:     assert(func0(12, 6) == 0);
	li	a1,6		#,
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp118,
	beq	a5,zero,.L21	#, _14,,
# problem77.c:30:     assert(func0(12, 6) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC0	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L21:
# problem77.c:31:     assert(func0(1, 1) == 1);
	li	a1,1		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp119,
	mv	a4,a5	# tmp120, _15
	li	a5,1		# tmp121,
	beq	a4,a5,.L22	#, tmp120, tmp121,
# problem77.c:31:     assert(func0(1, 1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L22:
# problem77.c:32:     assert(func0(1, 12) == 1);
	li	a1,12		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp122,
	mv	a4,a5	# tmp123, _16
	li	a5,1		# tmp124,
	beq	a4,a5,.L23	#, tmp123, tmp124,
# problem77.c:32:     assert(func0(1, 12) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC0	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L23:
# problem77.c:34:     return 0;
	li	a5,0		# _50,
# problem77.c:35: }
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
