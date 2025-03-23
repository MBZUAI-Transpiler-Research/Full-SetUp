	.file	"problem128.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"NO"
	.align	3
.LC1:
	.string	"YES"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp76, interval1_start
	mv	a4,a3	# tmp82, interval2_end
	sw	a5,-36(s0)	# tmp77, interval1_start
	mv	a5,a1	# tmp79, tmp78
	sw	a5,-40(s0)	# tmp79, interval1_end
	mv	a5,a2	# tmp81, tmp80
	sw	a5,-44(s0)	# tmp81, interval2_start
	mv	a5,a4	# tmp83, tmp82
	sw	a5,-48(s0)	# tmp83, interval2_end
# problem128.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	lw	a5,-36(s0)		# tmp86, interval1_start
	mv	a2,a5	# tmp85, tmp86
	lw	a5,-44(s0)		# tmp87, interval2_start
	sext.w	a3,a5	# tmp88, tmp84
	sext.w	a4,a2	# tmp89, tmp85
	bge	a3,a4,.L2	#, tmp88, tmp89,
	mv	a5,a2	# tmp84, tmp85
.L2:
	sw	a5,-28(s0)	# tmp84, inter1
# problem128.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	lw	a5,-40(s0)		# tmp92, interval1_end
	mv	a2,a5	# tmp91, tmp92
	lw	a5,-48(s0)		# tmp93, interval2_end
	sext.w	a3,a5	# tmp94, tmp90
	sext.w	a4,a2	# tmp95, tmp91
	ble	a3,a4,.L3	#, tmp94, tmp95,
	mv	a5,a2	# tmp90, tmp91
.L3:
	sw	a5,-24(s0)	# tmp90, inter2
# problem128.c:7:     l = inter2 - inter1;
	lw	a5,-24(s0)		# tmp98, inter2
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-28(s0)		# tmp100, inter1
	subw	a5,a4,a5	# tmp96, tmp97, tmp99
	sw	a5,-20(s0)	# tmp96, l
# problem128.c:9:     if (l < 2) return "NO";
	lw	a5,-20(s0)		# tmp102, l
	sext.w	a4,a5	# tmp103, tmp101
	li	a5,1		# tmp104,
	bgt	a4,a5,.L4	#, tmp103, tmp104,
# problem128.c:9:     if (l < 2) return "NO";
	lla	a5,.LC0	# _4,
	j	.L5		#
.L4:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	li	a5,2		# tmp105,
	sw	a5,-32(s0)	# tmp105, i
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	j	.L6		#
.L8:
# problem128.c:12:         if (l % i == 0) return "NO";
	lw	a5,-20(s0)		# tmp108, l
	mv	a4,a5	# tmp107, tmp108
	lw	a5,-32(s0)		# tmp111, i
	remw	a5,a4,a5	# tmp110, tmp109, tmp107
	sext.w	a5,a5	# _1, tmp109
# problem128.c:12:         if (l % i == 0) return "NO";
	bne	a5,zero,.L7	#, _1,,
# problem128.c:12:         if (l % i == 0) return "NO";
	lla	a5,.LC0	# _4,
	j	.L5		#
.L7:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-32(s0)		# tmp114, i
	addiw	a5,a5,1	#, tmp112, tmp113
	sw	a5,-32(s0)	# tmp112, i
.L6:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-32(s0)		# tmp117, i
	mulw	a5,a5,a5	# tmp115, tmp116, tmp116
	sext.w	a4,a5	# _2, tmp115
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-20(s0)		# tmp119, l
	sext.w	a5,a5	# tmp120, tmp118
	bge	a5,a4,.L8	#, tmp120, tmp121,
# problem128.c:14:     return "YES";
	lla	a5,.LC1	# _4,
.L5:
# problem128.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem128.c"
	.align	3
.LC3:
	.string	"strcmp(func0(1, 2, 2, 3), \"NO\") == 0"
	.align	3
.LC4:
	.string	"strcmp(func0(-1, 1, 0, 4), \"NO\") == 0"
	.align	3
.LC5:
	.string	"strcmp(func0(-3, -1, -5, 5), \"YES\") == 0"
	.align	3
.LC6:
	.string	"strcmp(func0(-2, 2, -4, 0), \"YES\") == 0"
	.align	3
.LC7:
	.string	"strcmp(func0(-11, 2, -1, -1), \"NO\") == 0"
	.align	3
.LC8:
	.string	"strcmp(func0(1, 2, 3, 5), \"NO\") == 0"
	.align	3
.LC9:
	.string	"strcmp(func0(1, 2, 1, 2), \"NO\") == 0"
	.align	3
.LC10:
	.string	"strcmp(func0(-2, -2, -3, -2), \"NO\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	li	a3,3		#,
	li	a2,2		#,
	li	a1,2		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# _1,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp90,
	beq	a5,zero,.L10	#, _2,,
# problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	li	a3,4		#,
	li	a2,0		#,
	li	a1,1		#,
	li	a0,-1		#,
	call	func0		#
	mv	a5,a0	# _3,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp91,
	beq	a5,zero,.L11	#, _4,,
# problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC2	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	li	a3,5		#,
	li	a2,-5		#,
	li	a1,-1		#,
	li	a0,-3		#,
	call	func0		#
	mv	a5,a0	# _5,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp92,
	beq	a5,zero,.L12	#, _6,,
# problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	li	a3,0		#,
	li	a2,-4		#,
	li	a1,2		#,
	li	a0,-2		#,
	call	func0		#
	mv	a5,a0	# _7,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp93,
	beq	a5,zero,.L13	#, _8,,
# problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L13:
# problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	li	a3,-1		#,
	li	a2,-1		#,
	li	a1,2		#,
	li	a0,-11		#,
	call	func0		#
	mv	a5,a0	# _9,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L14	#, _10,,
# problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L14:
# problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	li	a3,5		#,
	li	a2,3		#,
	li	a1,2		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# _11,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
	beq	a5,zero,.L15	#, _12,,
# problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC2	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	li	a3,2		#,
	li	a2,1		#,
	li	a1,2		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# _13,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp96,
	beq	a5,zero,.L16	#, _14,,
# problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L16:
# problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	li	a3,-2		#,
	li	a2,-3		#,
	li	a1,-2		#,
	li	a0,-2		#,
	call	func0		#
	mv	a5,a0	# _15,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp97,
	beq	a5,zero,.L17	#, _16,,
# problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC2	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L17:
# problem128.c:33:     return 0;
	li	a5,0		# _34,
# problem128.c:34: }
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
