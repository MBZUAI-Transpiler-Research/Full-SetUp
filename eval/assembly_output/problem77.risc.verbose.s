	.file	"problem77.c"
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
	mv	a5,a0	# tmp136, x
	mv	a4,a1	# tmp138, n
	sw	a5,-36(s0)	# tmp137, x
	mv	a5,a4	# tmp139, tmp138
	sw	a5,-40(s0)	# tmp139, n
# problem77.c:4:     int p = 1, count = 0;
	li	a5,1		# tmp140,
	sw	a5,-24(s0)	# tmp140, p
# problem77.c:4:     int p = 1, count = 0;
	sw	zero,-20(s0)	#, count
# problem77.c:5:     while (p <= x && count < 100) {
	j	.L2		#
.L6:
# problem77.c:6:         if (p == x) return 1;
	lw	a5,-24(s0)		# tmp142, p
	mv	a4,a5	# tmp141, tmp142
	lw	a5,-36(s0)		# tmp144, x
	sext.w	a4,a4	# tmp145, tmp141
	sext.w	a5,a5	# tmp146, tmp143
	bne	a4,a5,.L3	#, tmp145, tmp146,
# problem77.c:6:         if (p == x) return 1;
	li	a5,1		# _3,
# problem77.c:6:         if (p == x) return 1;
	j	.L4		#
.L3:
# problem77.c:7:         p = p * n; count += 1;
	lw	a5,-24(s0)		# tmp149, p
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-40(s0)		# tmp151, n
	mulw	a5,a4,a5	# tmp147, tmp148, tmp150
	sw	a5,-24(s0)	# tmp147, p
# problem77.c:7:         p = p * n; count += 1;
	lw	a5,-20(s0)		# tmp154, count
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-20(s0)	# tmp152, count
.L2:
# problem77.c:5:     while (p <= x && count < 100) {
	lw	a5,-24(s0)		# tmp156, p
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-36(s0)		# tmp158, x
	sext.w	a4,a4	# tmp159, tmp155
	sext.w	a5,a5	# tmp160, tmp157
	bgt	a4,a5,.L5	#, tmp159, tmp160,
# problem77.c:5:     while (p <= x && count < 100) {
	lw	a5,-20(s0)		# tmp162, count
	sext.w	a4,a5	# tmp163, tmp161
	li	a5,99		# tmp164,
	ble	a4,a5,.L6	#, tmp163, tmp164,
.L5:
# problem77.c:9:     return 0;
	li	a5,0		# _3,
.L4:
# problem77.c:10: }
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
# problem77.c:17:     assert(func0(1, 4) == 1);
	li	a1,4		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem77.c:17:     assert(func0(1, 4) == 1);
	mv	a4,a5	# tmp153, _1
	li	a5,1		# tmp154,
	beq	a4,a5,.L8	#, tmp153, tmp154,
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
	mv	a5,a0	# tmp155,
# problem77.c:18:     assert(func0(2, 2) == 1);
	mv	a4,a5	# tmp156, _2
	li	a5,1		# tmp157,
	beq	a4,a5,.L9	#, tmp156, tmp157,
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
	mv	a5,a0	# tmp158,
# problem77.c:19:     assert(func0(8, 2) == 1);
	mv	a4,a5	# tmp159, _3
	li	a5,1		# tmp160,
	beq	a4,a5,.L10	#, tmp159, tmp160,
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
	mv	a5,a0	# tmp161,
# problem77.c:20:     assert(func0(3, 2) == 0);
	beq	a5,zero,.L11	#, _4,,
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
	mv	a5,a0	# tmp162,
# problem77.c:21:     assert(func0(3, 1) == 0);
	beq	a5,zero,.L12	#, _5,,
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
	mv	a5,a0	# tmp163,
# problem77.c:22:     assert(func0(5, 3) == 0);
	beq	a5,zero,.L13	#, _6,,
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
	mv	a5,a0	# tmp164,
# problem77.c:23:     assert(func0(16, 2) == 1);
	mv	a4,a5	# tmp165, _7
	li	a5,1		# tmp166,
	beq	a4,a5,.L14	#, tmp165, tmp166,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L14:
# problem77.c:24:     assert(func0(143214, 16) == 0);
	li	a1,16		#,
	li	a5,143360		# tmp167,
	addi	a0,a5,-146	#,, tmp167
	call	func0		#
	mv	a5,a0	# tmp168,
# problem77.c:24:     assert(func0(143214, 16) == 0);
	beq	a5,zero,.L15	#, _8,,
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
	mv	a5,a0	# tmp169,
# problem77.c:25:     assert(func0(4, 2) == 1);
	mv	a4,a5	# tmp170, _9
	li	a5,1		# tmp171,
	beq	a4,a5,.L16	#, tmp170, tmp171,
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
	mv	a5,a0	# tmp172,
# problem77.c:26:     assert(func0(9, 3) == 1);
	mv	a4,a5	# tmp173, _10
	li	a5,1		# tmp174,
	beq	a4,a5,.L17	#, tmp173, tmp174,
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
	mv	a5,a0	# tmp175,
# problem77.c:27:     assert(func0(16, 4) == 1);
	mv	a4,a5	# tmp176, _11
	li	a5,1		# tmp177,
	beq	a4,a5,.L18	#, tmp176, tmp177,
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
	mv	a5,a0	# tmp178,
# problem77.c:28:     assert(func0(24, 2) == 0);
	beq	a5,zero,.L19	#, _12,,
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
	mv	a5,a0	# tmp179,
# problem77.c:29:     assert(func0(128, 4) == 0);
	beq	a5,zero,.L20	#, _13,,
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
	mv	a5,a0	# tmp180,
# problem77.c:30:     assert(func0(12, 6) == 0);
	beq	a5,zero,.L21	#, _14,,
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
	mv	a5,a0	# tmp181,
# problem77.c:31:     assert(func0(1, 1) == 1);
	mv	a4,a5	# tmp182, _15
	li	a5,1		# tmp183,
	beq	a4,a5,.L22	#, tmp182, tmp183,
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
	mv	a5,a0	# tmp184,
# problem77.c:32:     assert(func0(1, 12) == 1);
	mv	a4,a5	# tmp185, _16
	li	a5,1		# tmp186,
	beq	a4,a5,.L23	#, tmp185, tmp186,
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
