	.file	"problem37.c"
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
	mv	a5,a0	# tmp139, n
	sw	a5,-36(s0)	# tmp140, n
# problem37.c:4:     int count = 0;
	sw	zero,-28(s0)	#, count
# problem37.c:5:     for (int i = 0; i < n; i++)
	sw	zero,-24(s0)	#, i
# problem37.c:5:     for (int i = 0; i < n; i++)
	j	.L2		#
.L8:
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	lw	a5,-24(s0)		# tmp143, i
	mv	a4,a5	# tmp142, tmp143
	li	a5,11		# tmp145,
	remw	a5,a4,a5	# tmp145, tmp144, tmp142
	sext.w	a5,a5	# _1, tmp144
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	beq	a5,zero,.L3	#, _1,,
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	lw	a5,-24(s0)		# tmp148, i
	mv	a4,a5	# tmp147, tmp148
	li	a5,13		# tmp150,
	remw	a5,a4,a5	# tmp150, tmp149, tmp147
	sext.w	a5,a5	# _2, tmp149
# problem37.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	bne	a5,zero,.L4	#, _2,,
.L3:
# problem37.c:7:             int q = i;
	lw	a5,-24(s0)		# tmp151, i
	sw	a5,-20(s0)	# tmp151, q
# problem37.c:8:             while (q > 0) {
	j	.L5		#
.L7:
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	lw	a5,-20(s0)		# tmp154, q
	mv	a4,a5	# tmp153, tmp154
	li	a5,10		# tmp156,
	remw	a5,a4,a5	# tmp156, tmp155, tmp153
	sext.w	a5,a5	# _3, tmp155
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	mv	a4,a5	# tmp157, _3
	li	a5,7		# tmp158,
	bne	a4,a5,.L6	#, tmp157, tmp158,
# problem37.c:9:                 if (q % 10 == 7) count += 1;
	lw	a5,-28(s0)		# tmp161, count
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-28(s0)	# tmp159, count
.L6:
# problem37.c:10:                 q = q / 10;
	lw	a5,-20(s0)		# tmp164, q
	mv	a4,a5	# tmp163, tmp164
	li	a5,10		# tmp166,
	divw	a5,a4,a5	# tmp166, tmp165, tmp163
	sw	a5,-20(s0)	# tmp165, q
.L5:
# problem37.c:8:             while (q > 0) {
	lw	a5,-20(s0)		# tmp168, q
	sext.w	a5,a5	# tmp169, tmp167
	bgt	a5,zero,.L7	#, tmp169,,
.L4:
# problem37.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-24(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-24(s0)	# tmp170, i
.L2:
# problem37.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-24(s0)		# tmp174, i
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-36(s0)		# tmp176, n
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	blt	a4,a5,.L8	#, tmp177, tmp178,
# problem37.c:13:     return count;
	lw	a5,-28(s0)		# _13, count
# problem37.c:14: }
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
# problem37.c:22:     assert(func0(50) == 0);
	li	a0,50		#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem37.c:22:     assert(func0(50) == 0);
	beq	a5,zero,.L11	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L11:
# problem37.c:23:     assert(func0(78) == 2);
	li	a0,78		#,
	call	func0		#
	mv	a5,a0	# tmp145,
# problem37.c:23:     assert(func0(78) == 2);
	mv	a4,a5	# tmp146, _2
	li	a5,2		# tmp147,
	beq	a4,a5,.L12	#, tmp146, tmp147,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L12:
# problem37.c:24:     assert(func0(79) == 3);
	li	a0,79		#,
	call	func0		#
	mv	a5,a0	# tmp148,
# problem37.c:24:     assert(func0(79) == 3);
	mv	a4,a5	# tmp149, _3
	li	a5,3		# tmp150,
	beq	a4,a5,.L13	#, tmp149, tmp150,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L13:
# problem37.c:25:     assert(func0(100) == 3);
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# tmp151,
# problem37.c:25:     assert(func0(100) == 3);
	mv	a4,a5	# tmp152, _4
	li	a5,3		# tmp153,
	beq	a4,a5,.L14	#, tmp152, tmp153,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L14:
# problem37.c:26:     assert(func0(200) == 6);
	li	a0,200		#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem37.c:26:     assert(func0(200) == 6);
	mv	a4,a5	# tmp155, _5
	li	a5,6		# tmp156,
	beq	a4,a5,.L15	#, tmp155, tmp156,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L15:
# problem37.c:27:     assert(func0(4000) == 192);
	li	a5,4096		# tmp157,
	addi	a0,a5,-96	#,, tmp157
	call	func0		#
	mv	a5,a0	# tmp158,
# problem37.c:27:     assert(func0(4000) == 192);
	mv	a4,a5	# tmp159, _6
	li	a5,192		# tmp160,
	beq	a4,a5,.L16	#, tmp159, tmp160,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L16:
# problem37.c:28:     assert(func0(10000) == 639);
	li	a5,8192		# tmp161,
	addi	a0,a5,1808	#,, tmp161
	call	func0		#
	mv	a5,a0	# tmp162,
# problem37.c:28:     assert(func0(10000) == 639);
	mv	a4,a5	# tmp163, _7
	li	a5,639		# tmp164,
	beq	a4,a5,.L17	#, tmp163, tmp164,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L17:
# problem37.c:29:     assert(func0(100000) == 8026);
	li	a5,98304		# tmp165,
	addi	a0,a5,1696	#,, tmp165
	call	func0		#
	mv	a5,a0	# tmp166,
# problem37.c:29:     assert(func0(100000) == 8026);
	mv	a4,a5	# tmp167, _8
	li	a5,8192		# tmp169,
	addi	a5,a5,-166	#, tmp168, tmp169
	beq	a4,a5,.L18	#, tmp167, tmp168,
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
