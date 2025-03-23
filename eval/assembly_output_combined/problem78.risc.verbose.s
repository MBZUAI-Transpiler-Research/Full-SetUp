	.file	"problem78.c"
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
	mv	a5,a0	# tmp80, a
	sw	a5,-36(s0)	# tmp81, a
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	sw	zero,-20(s0)	#, i
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	j	.L2		#
.L5:
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a5,-20(s0)		# tmp84, i
	mulw	a5,a5,a5	# tmp82, tmp83, tmp83
	sext.w	a5,a5	# _1, tmp82
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a4,-20(s0)		# tmp87, i
	mulw	a5,a4,a5	# tmp85, tmp86, _1
	sext.w	a3,a5	# _2, tmp85
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a5,-36(s0)		# tmp90, a
	sraiw	a5,a5,31	#, tmp88, tmp89
	lw	a4,-36(s0)		# tmp92, a
	xor	a4,a5,a4	# tmp91, tmp93, tmp88
	subw	a5,a4,a5	# tmp94, tmp93, tmp88
	sext.w	a5,a5	# _3, tmp94
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	mv	a4,a3	# tmp95, _2
	bne	a4,a5,.L3	#, tmp95, tmp96,
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	li	a5,1		# _8,
	j	.L4		#
.L3:
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-20(s0)		# tmp99, i
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-20(s0)	# tmp97, i
.L2:
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-20(s0)		# tmp102, i
	mulw	a5,a5,a5	# tmp100, tmp101, tmp101
	sext.w	a5,a5	# _4, tmp100
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a4,-20(s0)		# tmp105, i
	mulw	a5,a4,a5	# tmp103, tmp104, _4
	sext.w	a3,a5	# _5, tmp103
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-36(s0)		# tmp108, a
	sraiw	a5,a5,31	#, tmp106, tmp107
	lw	a4,-36(s0)		# tmp110, a
	xor	a4,a5,a4	# tmp109, tmp111, tmp106
	subw	a5,a4,a5	# tmp112, tmp111, tmp106
	sext.w	a5,a5	# _6, tmp112
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	mv	a4,a3	# tmp113, _5
	ble	a4,a5,.L5	#, tmp113, tmp114,
# problem78.c:8:     return 0;
	li	a5,0		# _8,
.L4:
# problem78.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem78.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(2) == 0"
	.align	3
.LC3:
	.string	"func0(-1) == 1"
	.align	3
.LC4:
	.string	"func0(64) == 1"
	.align	3
.LC5:
	.string	"func0(180) == 0"
	.align	3
.LC6:
	.string	"func0(1000) == 1"
	.align	3
.LC7:
	.string	"func0(0) == 1"
	.align	3
.LC8:
	.string	"func0(1729) == 0"
	.align	3
.LC9:
	.string	"All tests passed."
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem78.c:17:     assert(func0(1) == 1);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _1
	li	a5,1		# tmp84,
	beq	a4,a5,.L7	#, tmp83, tmp84,
# problem78.c:17:     assert(func0(1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem78.c:18:     assert(func0(2) == 0);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L8	#, _2,,
# problem78.c:18:     assert(func0(2) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem78.c:19:     assert(func0(-1) == 1);
	li	a0,-1		#,
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _3
	li	a5,1		# tmp88,
	beq	a4,a5,.L9	#, tmp87, tmp88,
# problem78.c:19:     assert(func0(-1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem78.c:20:     assert(func0(64) == 1);
	li	a0,64		#,
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _4
	li	a5,1		# tmp91,
	beq	a4,a5,.L10	#, tmp90, tmp91,
# problem78.c:20:     assert(func0(64) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem78.c:21:     assert(func0(180) == 0);
	li	a0,180		#,
	call	func0		#
	mv	a5,a0	# tmp92,
	beq	a5,zero,.L11	#, _5,,
# problem78.c:21:     assert(func0(180) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L11:
# problem78.c:22:     assert(func0(1000) == 1);
	li	a0,1000		#,
	call	func0		#
	mv	a5,a0	# tmp93,
	mv	a4,a5	# tmp94, _6
	li	a5,1		# tmp95,
	beq	a4,a5,.L12	#, tmp94, tmp95,
# problem78.c:22:     assert(func0(1000) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem78.c:23:     assert(func0(0) == 1);
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp96,
	mv	a4,a5	# tmp97, _7
	li	a5,1		# tmp98,
	beq	a4,a5,.L13	#, tmp97, tmp98,
# problem78.c:23:     assert(func0(0) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L13:
# problem78.c:24:     assert(func0(1729) == 0);
	li	a0,1729		#,
	call	func0		#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L14	#, _8,,
# problem78.c:24:     assert(func0(1729) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L14:
# problem78.c:26:     printf("All tests passed.\n");
	lla	a0,.LC9	#,
	call	puts@plt	#
# problem78.c:27:     return 0;
	li	a5,0		# _27,
# problem78.c:28: }
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
