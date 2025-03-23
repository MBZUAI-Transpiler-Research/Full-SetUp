	.file	"problem128.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, interval1_start
	mv	a4,a3	# tmp144, interval2_end
	sw	a5,-36(s0)	# tmp139, interval1_start
	mv	a5,a1	# tmp141, tmp140
	sw	a5,-40(s0)	# tmp141, interval1_end
	mv	a5,a2	# tmp143, tmp142
	sw	a5,-44(s0)	# tmp143, interval2_start
	mv	a5,a4	# tmp145, tmp144
	sw	a5,-48(s0)	# tmp145, interval2_end
# problem128.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	lw	a5,-36(s0)		# tmp148, interval1_start
	mv	a2,a5	# tmp147, tmp148
	lw	a5,-44(s0)		# tmp149, interval2_start
	sext.w	a3,a5	# tmp150, tmp146
	sext.w	a4,a2	# tmp151, tmp147
	bge	a3,a4,.L2	#, tmp150, tmp151,
	mv	a5,a2	# tmp146, tmp147
.L2:
	sw	a5,-28(s0)	# tmp146, inter1
# problem128.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	lw	a5,-40(s0)		# tmp154, interval1_end
	mv	a2,a5	# tmp153, tmp154
	lw	a5,-48(s0)		# tmp155, interval2_end
	sext.w	a3,a5	# tmp156, tmp152
	sext.w	a4,a2	# tmp157, tmp153
	ble	a3,a4,.L3	#, tmp156, tmp157,
	mv	a5,a2	# tmp152, tmp153
.L3:
	sw	a5,-24(s0)	# tmp152, inter2
# problem128.c:7:     l = inter2 - inter1;
	lw	a5,-24(s0)		# tmp160, inter2
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-28(s0)		# tmp162, inter1
	subw	a5,a4,a5	# tmp158, tmp159, tmp161
	sw	a5,-20(s0)	# tmp158, l
# problem128.c:9:     if (l < 2) return "NO";
	lw	a5,-20(s0)		# tmp164, l
	sext.w	a4,a5	# tmp165, tmp163
	li	a5,1		# tmp166,
	bgt	a4,a5,.L4	#, tmp165, tmp166,
# problem128.c:9:     if (l < 2) return "NO";
	lla	a5,.LC0	# _4,
# problem128.c:9:     if (l < 2) return "NO";
	j	.L5		#
.L4:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	li	a5,2		# tmp167,
	sw	a5,-32(s0)	# tmp167, i
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	j	.L6		#
.L8:
# problem128.c:12:         if (l % i == 0) return "NO";
	lw	a5,-20(s0)		# tmp170, l
	mv	a4,a5	# tmp169, tmp170
	lw	a5,-32(s0)		# tmp173, i
	remw	a5,a4,a5	# tmp172, tmp171, tmp169
	sext.w	a5,a5	# _1, tmp171
# problem128.c:12:         if (l % i == 0) return "NO";
	bne	a5,zero,.L7	#, _1,,
# problem128.c:12:         if (l % i == 0) return "NO";
	lla	a5,.LC0	# _4,
# problem128.c:12:         if (l % i == 0) return "NO";
	j	.L5		#
.L7:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-32(s0)		# tmp176, i
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-32(s0)	# tmp174, i
.L6:
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-32(s0)		# tmp179, i
	mulw	a5,a5,a5	# tmp177, tmp178, tmp178
	sext.w	a4,a5	# _2, tmp177
# problem128.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-20(s0)		# tmp181, l
	sext.w	a5,a5	# tmp182, tmp180
	bge	a5,a4,.L8	#, tmp182, tmp183,
# problem128.c:14:     return "YES";
	lla	a5,.LC1	# _4,
.L5:
# problem128.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	li	a3,3		#,
	li	a2,2		#,
	li	a1,2		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# _1,
# problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp152,
# problem128.c:24:     assert(strcmp(func0(1, 2, 2, 3), "NO") == 0);
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
# problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp153,
# problem128.c:25:     assert(strcmp(func0(-1, 1, 0, 4), "NO") == 0);
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
# problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp154,
# problem128.c:26:     assert(strcmp(func0(-3, -1, -5, 5), "YES") == 0);
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
# problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp155,
# problem128.c:27:     assert(strcmp(func0(-2, 2, -4, 0), "YES") == 0);
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
# problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp156,
# problem128.c:28:     assert(strcmp(func0(-11, 2, -1, -1), "NO") == 0);
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
# problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp157,
# problem128.c:29:     assert(strcmp(func0(1, 2, 3, 5), "NO") == 0);
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
# problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp158,
# problem128.c:30:     assert(strcmp(func0(1, 2, 1, 2), "NO") == 0);
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
# problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# problem128.c:31:     assert(strcmp(func0(-2, -2, -3, -2), "NO") == 0);
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
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
