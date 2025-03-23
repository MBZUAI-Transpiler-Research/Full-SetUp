	.file	"problem151.c"
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
	mv	a5,a0	# tmp138, n
	mv	a3,a1	# tmp140, x
	mv	a4,a2	# tmp142, y
	sw	a5,-36(s0)	# tmp139, n
	mv	a5,a3	# tmp141, tmp140
	sw	a5,-40(s0)	# tmp141, x
	mv	a5,a4	# tmp143, tmp142
	sw	a5,-44(s0)	# tmp143, y
# problem151.c:4:     int isp = 1;
	li	a5,1		# tmp144,
	sw	a5,-24(s0)	# tmp144, isp
# problem151.c:5:     if (n < 2) isp = 0;
	lw	a5,-36(s0)		# tmp146, n
	sext.w	a4,a5	# tmp147, tmp145
	li	a5,1		# tmp148,
	bgt	a4,a5,.L2	#, tmp147, tmp148,
# problem151.c:5:     if (n < 2) isp = 0;
	sw	zero,-24(s0)	#, isp
.L2:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	li	a5,2		# tmp149,
	sw	a5,-20(s0)	# tmp149, i
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	j	.L3		#
.L5:
# problem151.c:7:         if (n % i == 0) isp = 0;
	lw	a5,-36(s0)		# tmp152, n
	mv	a4,a5	# tmp151, tmp152
	lw	a5,-20(s0)		# tmp155, i
	remw	a5,a4,a5	# tmp154, tmp153, tmp151
	sext.w	a5,a5	# _1, tmp153
# problem151.c:7:         if (n % i == 0) isp = 0;
	bne	a5,zero,.L4	#, _1,,
# problem151.c:7:         if (n % i == 0) isp = 0;
	sw	zero,-24(s0)	#, isp
.L4:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-20(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-20(s0)	# tmp156, i
.L3:
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-20(s0)		# tmp161, i
	mulw	a5,a5,a5	# tmp159, tmp160, tmp160
	sext.w	a4,a5	# _2, tmp159
# problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-36(s0)		# tmp163, n
	sext.w	a5,a5	# tmp164, tmp162
	bge	a5,a4,.L5	#, tmp164, tmp165,
# problem151.c:9:     if (isp) return x;
	lw	a5,-24(s0)		# tmp167, isp
	sext.w	a5,a5	# tmp168, tmp166
	beq	a5,zero,.L6	#, tmp168,,
# problem151.c:9:     if (isp) return x;
	lw	a5,-40(s0)		# _7, x
# problem151.c:9:     if (isp) return x;
	j	.L7		#
.L6:
# problem151.c:10:     return y;
	lw	a5,-44(s0)		# _7, y
.L7:
# problem151.c:11: }
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
# problem151.c:18:     assert(func0(7, 34, 12) == 34);
	li	a2,12		#,
	li	a1,34		#,
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem151.c:18:     assert(func0(7, 34, 12) == 34);
	mv	a4,a5	# tmp147, _1
	li	a5,34		# tmp148,
	beq	a4,a5,.L9	#, tmp147, tmp148,
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
	mv	a5,a0	# tmp149,
# problem151.c:19:     assert(func0(15, 8, 5) == 5);
	mv	a4,a5	# tmp150, _2
	li	a5,5		# tmp151,
	beq	a4,a5,.L10	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem151.c:20:     assert(func0(3, 33, 5212) == 33);
	li	a5,4096		# tmp152,
	addi	a2,a5,1116	#,, tmp152
	li	a1,33		#,
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem151.c:20:     assert(func0(3, 33, 5212) == 33);
	mv	a4,a5	# tmp154, _3
	li	a5,33		# tmp155,
	beq	a4,a5,.L11	#, tmp154, tmp155,
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
	mv	a5,a0	# tmp156,
# problem151.c:21:     assert(func0(1259, 3, 52) == 3);
	mv	a4,a5	# tmp157, _4
	li	a5,3		# tmp158,
	beq	a4,a5,.L12	#, tmp157, tmp158,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem151.c:22:     assert(func0(7919, -1, 12) == -1);
	li	a2,12		#,
	li	a1,-1		#,
	li	a5,8192		# tmp159,
	addi	a0,a5,-273	#,, tmp159
	call	func0		#
	mv	a5,a0	# tmp160,
# problem151.c:22:     assert(func0(7919, -1, 12) == -1);
	mv	a4,a5	# tmp161, _5
	li	a5,-1		# tmp162,
	beq	a4,a5,.L13	#, tmp161, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem151.c:23:     assert(func0(3609, 1245, 583) == 583);
	li	a2,583		#,
	li	a1,1245		#,
	li	a5,4096		# tmp163,
	addi	a0,a5,-487	#,, tmp163
	call	func0		#
	mv	a5,a0	# tmp164,
# problem151.c:23:     assert(func0(3609, 1245, 583) == 583);
	mv	a4,a5	# tmp165, _6
	li	a5,583		# tmp166,
	beq	a4,a5,.L14	#, tmp165, tmp166,
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
	mv	a5,a0	# tmp167,
# problem151.c:24:     assert(func0(91, 56, 129) == 129);
	mv	a4,a5	# tmp168, _7
	li	a5,129		# tmp169,
	beq	a4,a5,.L15	#, tmp168, tmp169,
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
	mv	a5,a0	# tmp170,
# problem151.c:25:     assert(func0(6, 34, 1234) == 1234);
	mv	a4,a5	# tmp171, _8
	li	a5,1234		# tmp172,
	beq	a4,a5,.L16	#, tmp171, tmp172,
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
	mv	a5,a0	# tmp173,
# problem151.c:26:     assert(func0(1, 2, 0) == 0);
	beq	a5,zero,.L17	#, _9,,
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
	mv	a5,a0	# tmp174,
# problem151.c:27:     assert(func0(2, 2, 0) == 2);
	mv	a4,a5	# tmp175, _10
	li	a5,2		# tmp176,
	beq	a4,a5,.L18	#, tmp175, tmp176,
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
