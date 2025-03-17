	.file	"problem132.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
	mv	a5,a0	# tmp137, n
	sw	a5,-36(s0)	# tmp138, n
# problem132.c:4:     int prod = 1, has_odd = 0, digit;
	li	a5,1		# tmp139,
	sw	a5,-28(s0)	# tmp139, prod
# problem132.c:4:     int prod = 1, has_odd = 0, digit;
	sw	zero,-24(s0)	#, has_odd
# problem132.c:5:     while (n > 0) {
	j	.L2		#
.L4:
# problem132.c:6:         digit = n % 10;
	lw	a5,-36(s0)		# tmp142, n
	mv	a4,a5	# tmp141, tmp142
	li	a5,10		# tmp144,
	remw	a5,a4,a5	# tmp144, tmp143, tmp141
	sw	a5,-20(s0)	# tmp143, digit
# problem132.c:7:         if (digit % 2 == 1) {
	lw	a5,-20(s0)		# tmp147, digit
	mv	a4,a5	# tmp146, tmp147
	sraiw	a5,a4,31	#, tmp148, tmp146
	srliw	a5,a5,31	#, tmp149, tmp148
	addw	a4,a4,a5	# tmp149, tmp150, tmp146
	andi	a4,a4,1	#, tmp151, tmp150
	subw	a5,a4,a5	# tmp152, tmp151, tmp149
	sext.w	a5,a5	# _1, tmp152
# problem132.c:7:         if (digit % 2 == 1) {
	mv	a4,a5	# tmp153, _1
	li	a5,1		# tmp154,
	bne	a4,a5,.L3	#, tmp153, tmp154,
# problem132.c:8:             has_odd = 1;
	li	a5,1		# tmp155,
	sw	a5,-24(s0)	# tmp155, has_odd
# problem132.c:9:             prod *= digit;
	lw	a5,-28(s0)		# tmp158, prod
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-20(s0)		# tmp160, digit
	mulw	a5,a4,a5	# tmp156, tmp157, tmp159
	sw	a5,-28(s0)	# tmp156, prod
.L3:
# problem132.c:11:         n /= 10;
	lw	a5,-36(s0)		# tmp163, n
	mv	a4,a5	# tmp162, tmp163
	li	a5,10		# tmp165,
	divw	a5,a4,a5	# tmp165, tmp164, tmp162
	sw	a5,-36(s0)	# tmp164, n
.L2:
# problem132.c:5:     while (n > 0) {
	lw	a5,-36(s0)		# tmp167, n
	sext.w	a5,a5	# tmp168, tmp166
	bgt	a5,zero,.L4	#, tmp168,,
# problem132.c:13:     return has_odd ? prod : 0;
	lw	a5,-24(s0)		# tmp170, has_odd
	sext.w	a5,a5	# tmp171, tmp169
	beq	a5,zero,.L5	#, tmp171,,
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
# problem132.c:21:     assert(func0(5) == 5);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem132.c:21:     assert(func0(5) == 5);
	mv	a4,a5	# tmp144, _1
	li	a5,5		# tmp145,
	beq	a4,a5,.L9	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L9:
# problem132.c:22:     assert(func0(54) == 5);
	li	a0,54		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem132.c:22:     assert(func0(54) == 5);
	mv	a4,a5	# tmp147, _2
	li	a5,5		# tmp148,
	beq	a4,a5,.L10	#, tmp147, tmp148,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem132.c:23:     assert(func0(120) == 1);
	li	a0,120		#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem132.c:23:     assert(func0(120) == 1);
	mv	a4,a5	# tmp150, _3
	li	a5,1		# tmp151,
	beq	a4,a5,.L11	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L11:
# problem132.c:24:     assert(func0(5014) == 5);
	li	a5,4096		# tmp152,
	addi	a0,a5,918	#,, tmp152
	call	func0		#
	mv	a5,a0	# tmp153,
# problem132.c:24:     assert(func0(5014) == 5);
	mv	a4,a5	# tmp154, _4
	li	a5,5		# tmp155,
	beq	a4,a5,.L12	#, tmp154, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem132.c:25:     assert(func0(98765) == 315);
	li	a5,98304		# tmp156,
	addi	a0,a5,461	#,, tmp156
	call	func0		#
	mv	a5,a0	# tmp157,
# problem132.c:25:     assert(func0(98765) == 315);
	mv	a4,a5	# tmp158, _5
	li	a5,315		# tmp159,
	beq	a4,a5,.L13	#, tmp158, tmp159,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem132.c:26:     assert(func0(5576543) == 2625);
	li	a5,5574656		# tmp160,
	addi	a0,a5,1887	#,, tmp160
	call	func0		#
	mv	a5,a0	# tmp161,
# problem132.c:26:     assert(func0(5576543) == 2625);
	mv	a4,a5	# tmp162, _6
	li	a5,4096		# tmp164,
	addi	a5,a5,-1471	#, tmp163, tmp164
	beq	a4,a5,.L14	#, tmp162, tmp163,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem132.c:27:     assert(func0(2468) == 0);
	li	a5,4096		# tmp165,
	addi	a0,a5,-1628	#,, tmp165
	call	func0		#
	mv	a5,a0	# tmp166,
# problem132.c:27:     assert(func0(2468) == 0);
	beq	a5,zero,.L15	#, _7,,
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
