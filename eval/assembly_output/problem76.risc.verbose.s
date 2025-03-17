	.file	"problem76.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp139, a
	sw	a5,-36(s0)	# tmp140, a
# problem76.c:5:     if (a < 2) return 0;
	lw	a5,-36(s0)		# tmp142, a
	sext.w	a4,a5	# tmp143, tmp141
	li	a5,1		# tmp144,
	bgt	a4,a5,.L2	#, tmp143, tmp144,
# problem76.c:5:     if (a < 2) return 0;
	li	a5,0		# _10,
# problem76.c:5:     if (a < 2) return 0;
	j	.L3		#
.L2:
# problem76.c:6:     int num = 0;
	sw	zero,-24(s0)	#, num
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	li	a5,2		# tmp145,
	sw	a5,-20(s0)	# tmp145, i
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	j	.L4		#
.L6:
# problem76.c:9:             a = a / i;
	lw	a5,-36(s0)		# tmp149, a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-20(s0)		# tmp151, i
	divw	a5,a4,a5	# tmp150, tmp147, tmp148
	sw	a5,-36(s0)	# tmp147, a
# problem76.c:10:             num++;
	lw	a5,-24(s0)		# tmp154, num
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-24(s0)	# tmp152, num
.L5:
# problem76.c:8:         while (a % i == 0) {
	lw	a5,-36(s0)		# tmp157, a
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-20(s0)		# tmp160, i
	remw	a5,a4,a5	# tmp159, tmp158, tmp156
	sext.w	a5,a5	# _1, tmp158
# problem76.c:8:         while (a % i == 0) {
	beq	a5,zero,.L6	#, _1,,
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-20(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-20(s0)	# tmp161, i
.L4:
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-20(s0)		# tmp166, i
	mulw	a5,a5,a5	# tmp164, tmp165, tmp165
	sext.w	a4,a5	# _2, tmp164
# problem76.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-36(s0)		# tmp168, a
	sext.w	a5,a5	# tmp169, tmp167
	bge	a5,a4,.L5	#, tmp169, tmp170,
# problem76.c:13:     if (a > 1) num++;
	lw	a5,-36(s0)		# tmp172, a
	sext.w	a4,a5	# tmp173, tmp171
	li	a5,1		# tmp174,
	ble	a4,a5,.L8	#, tmp173, tmp174,
# problem76.c:13:     if (a > 1) num++;
	lw	a5,-24(s0)		# tmp177, num
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-24(s0)	# tmp175, num
.L8:
# problem76.c:14:     return num == 3;
	lw	a5,-24(s0)		# tmp180, num
	sext.w	a4,a5	# tmp182, tmp179
	li	a5,3		# tmp184,
	sub	a5,a4,a5	# tmp183, tmp182, tmp184
	seqz	a5,a5	# tmp181, tmp183
	andi	a5,a5,0xff	# _3, tmp178
	sext.w	a5,a5	# _10, _3
.L3:
# problem76.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
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
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem76.c:23:     assert(func0(5) == 0);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem76.c:23:     assert(func0(5) == 0);
	beq	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L10:
# problem76.c:24:     assert(func0(30) == 1);
	li	a0,30		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem76.c:24:     assert(func0(30) == 1);
	mv	a4,a5	# tmp148, _2
	li	a5,1		# tmp149,
	beq	a4,a5,.L11	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem76.c:25:     assert(func0(8) == 1); // 8 = 2 * 2 * 2
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem76.c:25:     assert(func0(8) == 1); // 8 = 2 * 2 * 2
	mv	a4,a5	# tmp151, _3
	li	a5,1		# tmp152,
	beq	a4,a5,.L12	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L12:
# problem76.c:26:     assert(func0(10) == 0);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem76.c:26:     assert(func0(10) == 0);
	beq	a5,zero,.L13	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem76.c:27:     assert(func0(125) == 1); // 125 = 5 * 5 * 5 (three times the same prime)
	li	a0,125		#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem76.c:27:     assert(func0(125) == 1); // 125 = 5 * 5 * 5 (three times the same prime)
	mv	a4,a5	# tmp155, _5
	li	a5,1		# tmp156,
	beq	a4,a5,.L14	#, tmp155, tmp156,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem76.c:28:     assert(func0(3 * 5 * 7) == 1);
	li	a0,105		#,
	call	func0		#
	mv	a5,a0	# tmp157,
# problem76.c:28:     assert(func0(3 * 5 * 7) == 1);
	mv	a4,a5	# tmp158, _6
	li	a5,1		# tmp159,
	beq	a4,a5,.L15	#, tmp158, tmp159,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem76.c:29:     assert(func0(3 * 6 * 7) == 0);
	li	a0,126		#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem76.c:29:     assert(func0(3 * 6 * 7) == 0);
	beq	a5,zero,.L16	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L16:
# problem76.c:30:     assert(func0(9 * 9 * 9) == 0);
	li	a0,729		#,
	call	func0		#
	mv	a5,a0	# tmp161,
# problem76.c:30:     assert(func0(9 * 9 * 9) == 0);
	beq	a5,zero,.L17	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L17:
# problem76.c:31:     assert(func0(11 * 9 * 9) == 0);
	li	a0,891		#,
	call	func0		#
	mv	a5,a0	# tmp162,
# problem76.c:31:     assert(func0(11 * 9 * 9) == 0);
	beq	a5,zero,.L18	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L18:
# problem76.c:32:     assert(func0(11 * 13 * 7) == 1);
	li	a0,1001		#,
	call	func0		#
	mv	a5,a0	# tmp163,
# problem76.c:32:     assert(func0(11 * 13 * 7) == 1);
	mv	a4,a5	# tmp164, _10
	li	a5,1		# tmp165,
	beq	a4,a5,.L19	#, tmp164, tmp165,
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
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
