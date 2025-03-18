	.file	"problem47.c"
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
	mv	a5,a0	# tmp147, n
	sw	a5,-436(s0)	# tmp148, n
# problem47.c:3: int func0(int n) {
	la	a5,__stack_chk_guard		# tmp149,
	ld	a4, 0(a5)	# tmp187, __stack_chk_guard
	sd	a4, -24(s0)	# tmp187, D.2754
	li	a4, 0	# tmp187
# problem47.c:5:     f[0] = 0;
	sw	zero,-424(s0)	#, f[0]
# problem47.c:6:     f[1] = 0;
	sw	zero,-420(s0)	#, f[1]
# problem47.c:7:     f[2] = 2;
	li	a5,2		# tmp150,
	sw	a5,-416(s0)	# tmp150, f[2]
# problem47.c:8:     f[3] = 0;
	sw	zero,-412(s0)	#, f[3]
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	li	a5,4		# tmp151,
	sw	a5,-428(s0)	# tmp151, i
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	j	.L2		#
.L3:
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp154, i
	addiw	a5,a5,-1	#, tmp152, tmp153
	sext.w	a5,a5	# _1, tmp152
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp155, _1
	addi	a5,a5,-16	#, tmp191, tmp155
	add	a5,a5,s0	#, tmp155, tmp191
	lw	a4,-408(a5)		# _2, f[_1]
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp158, i
	addiw	a5,a5,-2	#, tmp156, tmp157
	sext.w	a5,a5	# _3, tmp156
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp159, _3
	addi	a5,a5,-16	#, tmp192, tmp159
	add	a5,a5,s0	#, tmp159, tmp192
	lw	a5,-408(a5)		# _4, f[_3]
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _4, tmp160, _2
	sext.w	a4,a5	# _5, tmp160
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp163, i
	addiw	a5,a5,-3	#, tmp161, tmp162
	sext.w	a5,a5	# _6, tmp161
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp164, _6
	addi	a5,a5,-16	#, tmp193, tmp164
	add	a5,a5,s0	#, tmp164, tmp193
	lw	a5,-408(a5)		# _7, f[_6]
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _7, tmp165, _5
	sext.w	a4,a5	# _8, tmp165
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp168, i
	addiw	a5,a5,-4	#, tmp166, tmp167
	sext.w	a5,a5	# _9, tmp166
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp169, _9
	addi	a5,a5,-16	#, tmp194, tmp169
	add	a5,a5,s0	#, tmp169, tmp194
	lw	a5,-408(a5)		# _10, f[_9]
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _10, tmp170, _8
	sext.w	a4,a5	# _11, tmp170
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp171, i
	slli	a5,a5,2	#, tmp172, tmp171
	addi	a5,a5,-16	#, tmp195, tmp172
	add	a5,a5,s0	#, tmp172, tmp195
	sw	a4,-408(a5)	# _11, f[i_12]
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	lw	a5,-428(s0)		# tmp175, i
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-428(s0)	# tmp173, i
.L2:
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	lw	a5,-428(s0)		# tmp177, i
	mv	a4,a5	# tmp176, tmp177
	lw	a5,-436(s0)		# tmp179, n
	sext.w	a4,a4	# tmp180, tmp176
	sext.w	a5,a5	# tmp181, tmp178
	ble	a4,a5,.L3	#, tmp180, tmp181,
# problem47.c:12:     return f[n];
	lw	a5,-436(s0)		# tmp182, n
	slli	a5,a5,2	#, tmp183, tmp182
	addi	a5,a5,-16	#, tmp196, tmp183
	add	a5,a5,s0	#, tmp183, tmp196
	lw	a5,-408(a5)		# _21, f[n_20(D)]
	mv	a4,a5	# <retval>, _21
# problem47.c:13: }
	la	a5,__stack_chk_guard		# tmp185,
	ld	a3, -24(s0)	# tmp188, D.2754
	ld	a5, 0(a5)	# tmp186, __stack_chk_guard
	xor	a5, a3, a5	# tmp186, tmp188
	li	a3, 0	# tmp188
	beq	a5,zero,.L5	#, tmp186,,
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
	.string	"problem47.c"
	.align	3
.LC1:
	.string	"func0(5) == 4"
	.align	3
.LC2:
	.string	"func0(8) == 28"
	.align	3
.LC3:
	.string	"func0(10) == 104"
	.align	3
.LC4:
	.string	"func0(12) == 386"
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
# problem47.c:21:     assert(func0(5) == 4);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp140,
# problem47.c:21:     assert(func0(5) == 4);
	mv	a4,a5	# tmp141, _1
	li	a5,4		# tmp142,
	beq	a4,a5,.L7	#, tmp141, tmp142,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem47.c:22:     assert(func0(8) == 28);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem47.c:22:     assert(func0(8) == 28);
	mv	a4,a5	# tmp144, _2
	li	a5,28		# tmp145,
	beq	a4,a5,.L8	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem47.c:23:     assert(func0(10) == 104);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem47.c:23:     assert(func0(10) == 104);
	mv	a4,a5	# tmp147, _3
	li	a5,104		# tmp148,
	beq	a4,a5,.L9	#, tmp147, tmp148,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem47.c:24:     assert(func0(12) == 386);
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem47.c:24:     assert(func0(12) == 386);
	mv	a4,a5	# tmp150, _4
	li	a5,386		# tmp151,
	beq	a4,a5,.L10	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem47.c:26:     return 0;
	li	a5,0		# _14,
# problem47.c:27: }
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
