	.file	"problem54.c"
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
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp136, x
	mv	a4,a1	# tmp138, y
	sw	a5,-20(s0)	# tmp137, x
	mv	a5,a4	# tmp139, tmp138
	sw	a5,-24(s0)	# tmp139, y
# problem54.c:4:     return x + y;
	lw	a5,-20(s0)		# tmp142, x
	mv	a4,a5	# tmp141, tmp142
	lw	a5,-24(s0)		# tmp144, y
	addw	a5,a4,a5	# tmp143, tmp140, tmp141
	sext.w	a5,a5	# _3, tmp140
# problem54.c:5: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
# problem54.c:13:     assert(func0(0, 1) == 1);
	li	a1,1		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp145,
# problem54.c:13:     assert(func0(0, 1) == 1);
	mv	a4,a5	# tmp146, _1
	li	a5,1		# tmp147,
	beq	a4,a5,.L4	#, tmp146, tmp147,
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
	mv	a5,a0	# tmp148,
# problem54.c:14:     assert(func0(1, 0) == 1);
	mv	a4,a5	# tmp149, _2
	li	a5,1		# tmp150,
	beq	a4,a5,.L5	#, tmp149, tmp150,
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
	mv	a5,a0	# tmp151,
# problem54.c:15:     assert(func0(2, 3) == 5);
	mv	a4,a5	# tmp152, _3
	li	a5,5		# tmp153,
	beq	a4,a5,.L6	#, tmp152, tmp153,
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
	mv	a5,a0	# tmp154,
# problem54.c:16:     assert(func0(5, 7) == 12);
	mv	a4,a5	# tmp155, _4
	li	a5,12		# tmp156,
	beq	a4,a5,.L7	#, tmp155, tmp156,
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
	mv	a5,a0	# tmp157,
# problem54.c:17:     assert(func0(7, 5) == 12);
	mv	a4,a5	# tmp158, _5
	li	a5,12		# tmp159,
	beq	a4,a5,.L8	#, tmp158, tmp159,
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
	mv	a5,a0	# tmp160,
# problem54.c:19:         int x = rand() % 1000;
	mv	a4,a5	# tmp161, _6
	li	a5,1000		# tmp163,
	remw	a5,a4,a5	# tmp163, tmp162, tmp161
	sw	a5,-24(s0)	# tmp162, x
# problem54.c:20:         int y = rand() % 1000;
	call	rand@plt	#
	mv	a5,a0	# tmp164,
# problem54.c:20:         int y = rand() % 1000;
	mv	a4,a5	# tmp165, _7
	li	a5,1000		# tmp167,
	remw	a5,a4,a5	# tmp167, tmp166, tmp165
	sw	a5,-20(s0)	# tmp166, y
# problem54.c:21:         assert(func0(x, y) == x + y);
	lw	a4,-20(s0)		# tmp168, y
	lw	a5,-24(s0)		# tmp169, x
	mv	a1,a4	#, tmp168
	mv	a0,a5	#, tmp169
	call	func0		#
	mv	a5,a0	# tmp170,
	mv	a3,a5	# _8, tmp170
# problem54.c:21:         assert(func0(x, y) == x + y);
	lw	a5,-24(s0)		# tmp173, x
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-20(s0)		# tmp175, y
	addw	a5,a4,a5	# tmp174, tmp171, tmp172
	sext.w	a5,a5	# _9, tmp171
	mv	a4,a3	# tmp176, _8
	beq	a4,a5,.L10	#, tmp176, tmp177,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	lw	a5,-28(s0)		# tmp180, i
	addiw	a5,a5,1	#, tmp178, tmp179
	sw	a5,-28(s0)	# tmp178, i
.L9:
# problem54.c:18:     for (int i = 0; i < 100; i += 1) {
	lw	a5,-28(s0)		# tmp182, i
	sext.w	a4,a5	# tmp183, tmp181
	li	a5,99		# tmp184,
	ble	a4,a5,.L11	#, tmp183, tmp184,
# problem54.c:23:     return 0;
	li	a5,0		# _24,
# problem54.c:24: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
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
