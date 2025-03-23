	.file	"problem64.c"
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
	addi	sp,sp,-448	#,,
	.cfi_def_cfa_offset 448
	sd	ra,440(sp)	#,
	sd	s0,432(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,448	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp144, n
	sw	a5,-436(s0)	# tmp145, n
# problem64.c:3: int func0(int n) {
	la	a5,__stack_chk_guard		# tmp146,
	ld	a4, 0(a5)	# tmp182, __stack_chk_guard
	sd	a4, -24(s0)	# tmp182, D.2763
	li	a4, 0	# tmp182
# problem64.c:4:     int ff[100] = {0};
	addi	a5,s0,-424	#, tmp147,
	li	a4,400		# tmp148,
	mv	a2,a4	#, tmp148
	li	a1,0		#,
	mv	a0,a5	#, tmp147
	call	memset@plt	#
# problem64.c:5:     ff[1] = 0;
	sw	zero,-420(s0)	#, ff[1]
# problem64.c:6:     ff[2] = 1;
	li	a5,1		# tmp150,
	sw	a5,-416(s0)	# tmp150, ff[2]
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	li	a5,3		# tmp151,
	sw	a5,-428(s0)	# tmp151, i
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	j	.L2		#
.L3:
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp154, i
	addiw	a5,a5,-1	#, tmp152, tmp153
	sext.w	a5,a5	# _1, tmp152
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp155, _1
	addi	a5,a5,-16	#, tmp186, tmp155
	add	a5,a5,s0	#, tmp155, tmp186
	lw	a4,-408(a5)		# _2, ff[_1]
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp158, i
	addiw	a5,a5,-2	#, tmp156, tmp157
	sext.w	a5,a5	# _3, tmp156
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp159, _3
	addi	a5,a5,-16	#, tmp187, tmp159
	add	a5,a5,s0	#, tmp159, tmp187
	lw	a5,-408(a5)		# _4, ff[_3]
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addw	a5,a4,a5	# _4, tmp160, _2
	sext.w	a4,a5	# _5, tmp160
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp163, i
	addiw	a5,a5,-3	#, tmp161, tmp162
	sext.w	a5,a5	# _6, tmp161
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp164, _6
	addi	a5,a5,-16	#, tmp188, tmp164
	add	a5,a5,s0	#, tmp164, tmp188
	lw	a5,-408(a5)		# _7, ff[_6]
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addw	a5,a4,a5	# _7, tmp165, _5
	sext.w	a4,a5	# _8, tmp165
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp166, i
	slli	a5,a5,2	#, tmp167, tmp166
	addi	a5,a5,-16	#, tmp189, tmp167
	add	a5,a5,s0	#, tmp167, tmp189
	sw	a4,-408(a5)	# _8, ff[i_9]
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	lw	a5,-428(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-428(s0)	# tmp168, i
.L2:
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	lw	a5,-428(s0)		# tmp172, i
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-436(s0)		# tmp174, n
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	ble	a4,a5,.L3	#, tmp175, tmp176,
# problem64.c:10:     return ff[n];
	lw	a5,-436(s0)		# tmp177, n
	slli	a5,a5,2	#, tmp178, tmp177
	addi	a5,a5,-16	#, tmp190, tmp178
	add	a5,a5,s0	#, tmp178, tmp190
	lw	a5,-408(a5)		# _17, ff[n_16(D)]
	mv	a4,a5	# <retval>, _17
# problem64.c:11: }
	la	a5,__stack_chk_guard		# tmp180,
	ld	a3, -24(s0)	# tmp183, D.2763
	ld	a5, 0(a5)	# tmp181, __stack_chk_guard
	xor	a5, a3, a5	# tmp181, tmp183
	li	a3, 0	# tmp183
	beq	a5,zero,.L5	#, tmp181,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	ld	ra,440(sp)		#,
	.cfi_restore 1
	ld	s0,432(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 448
	addi	sp,sp,448	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem64.c"
	.align	3
.LC1:
	.string	"func0(2) == 1"
	.align	3
.LC2:
	.string	"func0(1) == 0"
	.align	3
.LC3:
	.string	"func0(5) == 4"
	.align	3
.LC4:
	.string	"func0(8) == 24"
	.align	3
.LC5:
	.string	"func0(10) == 81"
	.align	3
.LC6:
	.string	"func0(12) == 274"
	.align	3
.LC7:
	.string	"func0(14) == 927"
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
# problem64.c:18:     assert(func0(2) == 1);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem64.c:18:     assert(func0(2) == 1);
	mv	a4,a5	# tmp144, _1
	li	a5,1		# tmp145,
	beq	a4,a5,.L7	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem64.c:19:     assert(func0(1) == 0);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem64.c:19:     assert(func0(1) == 0);
	beq	a5,zero,.L8	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem64.c:20:     assert(func0(5) == 4);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem64.c:20:     assert(func0(5) == 4);
	mv	a4,a5	# tmp148, _3
	li	a5,4		# tmp149,
	beq	a4,a5,.L9	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem64.c:21:     assert(func0(8) == 24);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem64.c:21:     assert(func0(8) == 24);
	mv	a4,a5	# tmp151, _4
	li	a5,24		# tmp152,
	beq	a4,a5,.L10	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem64.c:22:     assert(func0(10) == 81);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem64.c:22:     assert(func0(10) == 81);
	mv	a4,a5	# tmp154, _5
	li	a5,81		# tmp155,
	beq	a4,a5,.L11	#, tmp154, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L11:
# problem64.c:23:     assert(func0(12) == 274);
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp156,
# problem64.c:23:     assert(func0(12) == 274);
	mv	a4,a5	# tmp157, _6
	li	a5,274		# tmp158,
	beq	a4,a5,.L12	#, tmp157, tmp158,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem64.c:24:     assert(func0(14) == 927);
	li	a0,14		#,
	call	func0		#
	mv	a5,a0	# tmp159,
# problem64.c:24:     assert(func0(14) == 927);
	mv	a4,a5	# tmp160, _7
	li	a5,927		# tmp161,
	beq	a4,a5,.L13	#, tmp160, tmp161,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L13:
# problem64.c:26:     return 0;
	li	a5,0		# _23,
# problem64.c:27: }
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
