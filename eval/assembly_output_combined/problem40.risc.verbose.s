	.file	"problem40.c"
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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, n
	sw	a5,-52(s0)	# tmp139, n
# problem40.c:4:     int f1 = 1, f2 = 2, m;
	li	a5,1		# tmp140,
	sw	a5,-40(s0)	# tmp140, f1
# problem40.c:4:     int f1 = 1, f2 = 2, m;
	li	a5,2		# tmp141,
	sw	a5,-36(s0)	# tmp141, f2
# problem40.c:5:     int count = 0;
	sw	zero,-32(s0)	#, count
# problem40.c:6:     while (count < n) {
	j	.L2		#
.L9:
# problem40.c:7:         f1 = f1 + f2;
	lw	a5,-40(s0)		# tmp144, f1
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-36(s0)		# tmp146, f2
	addw	a5,a4,a5	# tmp145, tmp142, tmp143
	sw	a5,-40(s0)	# tmp142, f1
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-40(s0)		# tmp147, f1
	sw	a5,-20(s0)	# tmp147, m
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-36(s0)		# tmp148, f2
	sw	a5,-40(s0)	# tmp148, f1
# problem40.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-20(s0)		# tmp149, m
	sw	a5,-36(s0)	# tmp149, f2
# problem40.c:9:         int isprime = 1;
	li	a5,1		# tmp150,
	sw	a5,-28(s0)	# tmp150, isprime
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	li	a5,2		# tmp151,
	sw	a5,-24(s0)	# tmp151, w
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	j	.L3		#
.L6:
# problem40.c:11:             if (f1 % w == 0) {
	lw	a5,-40(s0)		# tmp154, f1
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-24(s0)		# tmp157, w
	remw	a5,a4,a5	# tmp156, tmp155, tmp153
	sext.w	a5,a5	# _1, tmp155
# problem40.c:11:             if (f1 % w == 0) {
	bne	a5,zero,.L4	#, _1,,
# problem40.c:12:                 isprime = 0; break;
	sw	zero,-28(s0)	#, isprime
# problem40.c:12:                 isprime = 0; break;
	j	.L5		#
.L4:
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-24(s0)		# tmp160, w
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, w
.L3:
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-24(s0)		# tmp163, w
	mulw	a5,a5,a5	# tmp161, tmp162, tmp162
	sext.w	a4,a5	# _2, tmp161
# problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-40(s0)		# tmp165, f1
	sext.w	a5,a5	# tmp166, tmp164
	bge	a5,a4,.L6	#, tmp166, tmp167,
.L5:
# problem40.c:15:         if (isprime) count += 1;
	lw	a5,-28(s0)		# tmp169, isprime
	sext.w	a5,a5	# tmp170, tmp168
	beq	a5,zero,.L7	#, tmp170,,
# problem40.c:15:         if (isprime) count += 1;
	lw	a5,-32(s0)		# tmp173, count
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-32(s0)	# tmp171, count
.L7:
# problem40.c:16:         if (count == n) return f1;
	lw	a5,-32(s0)		# tmp175, count
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-52(s0)		# tmp177, n
	sext.w	a4,a4	# tmp178, tmp174
	sext.w	a5,a5	# tmp179, tmp176
	bne	a4,a5,.L2	#, tmp178, tmp179,
# problem40.c:16:         if (count == n) return f1;
	lw	a5,-40(s0)		# _9, f1
# problem40.c:16:         if (count == n) return f1;
	j	.L8		#
.L2:
# problem40.c:6:     while (count < n) {
	lw	a5,-32(s0)		# tmp181, count
	mv	a4,a5	# tmp180, tmp181
	lw	a5,-52(s0)		# tmp183, n
	sext.w	a4,a4	# tmp184, tmp180
	sext.w	a5,a5	# tmp185, tmp182
	blt	a4,a5,.L9	#, tmp184, tmp185,
# problem40.c:18:     return 0;
	li	a5,0		# _9,
.L8:
# problem40.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
# problem40.c:27:     assert(func0(1) == 2);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem40.c:27:     assert(func0(1) == 2);
	mv	a4,a5	# tmp147, _1
	li	a5,2		# tmp148,
	beq	a4,a5,.L11	#, tmp147, tmp148,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L11:
# problem40.c:28:     assert(func0(2) == 3);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem40.c:28:     assert(func0(2) == 3);
	mv	a4,a5	# tmp150, _2
	li	a5,3		# tmp151,
	beq	a4,a5,.L12	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L12:
# problem40.c:29:     assert(func0(3) == 5);
	li	a0,3		#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem40.c:29:     assert(func0(3) == 5);
	mv	a4,a5	# tmp153, _3
	li	a5,5		# tmp154,
	beq	a4,a5,.L13	#, tmp153, tmp154,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L13:
# problem40.c:30:     assert(func0(4) == 13);
	li	a0,4		#,
	call	func0		#
	mv	a5,a0	# tmp155,
# problem40.c:30:     assert(func0(4) == 13);
	mv	a4,a5	# tmp156, _4
	li	a5,13		# tmp157,
	beq	a4,a5,.L14	#, tmp156, tmp157,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L14:
# problem40.c:31:     assert(func0(5) == 89);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp158,
# problem40.c:31:     assert(func0(5) == 89);
	mv	a4,a5	# tmp159, _5
	li	a5,89		# tmp160,
	beq	a4,a5,.L15	#, tmp159, tmp160,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L15:
# problem40.c:32:     assert(func0(6) == 233);
	li	a0,6		#,
	call	func0		#
	mv	a5,a0	# tmp161,
# problem40.c:32:     assert(func0(6) == 233);
	mv	a4,a5	# tmp162, _6
	li	a5,233		# tmp163,
	beq	a4,a5,.L16	#, tmp162, tmp163,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L16:
# problem40.c:33:     assert(func0(7) == 1597);
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# tmp164,
# problem40.c:33:     assert(func0(7) == 1597);
	mv	a4,a5	# tmp165, _7
	li	a5,1597		# tmp166,
	beq	a4,a5,.L17	#, tmp165, tmp166,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L17:
# problem40.c:34:     assert(func0(8) == 28657);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp167,
# problem40.c:34:     assert(func0(8) == 28657);
	mv	a4,a5	# tmp168, _8
	li	a5,28672		# tmp170,
	addi	a5,a5,-15	#, tmp169, tmp170
	beq	a4,a5,.L18	#, tmp168, tmp169,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L18:
# problem40.c:35:     assert(func0(9) == 514229);
	li	a0,9		#,
	call	func0		#
	mv	a5,a0	# tmp171,
# problem40.c:35:     assert(func0(9) == 514229);
	mv	a4,a5	# tmp172, _9
	li	a5,516096		# tmp174,
	addi	a5,a5,-1867	#, tmp173, tmp174
	beq	a4,a5,.L19	#, tmp172, tmp173,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC0	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L19:
# problem40.c:36:     assert(func0(10) == 433494437);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp175,
# problem40.c:36:     assert(func0(10) == 433494437);
	mv	a4,a5	# tmp176, _10
	li	a5,433496064		# tmp178,
	addi	a5,a5,-1627	#, tmp177, tmp178
	beq	a4,a5,.L20	#, tmp176, tmp177,
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
