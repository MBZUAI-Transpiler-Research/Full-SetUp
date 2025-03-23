	.file	"problem47.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-448	#,,
	sd	ra,440(sp)	#,
	sd	s0,432(sp)	#,
	addi	s0,sp,448	#,,
	mv	a5,a0	# tmp85, n
	sw	a5,-436(s0)	# tmp86, n
# problem47.c:3: int func0(int n) {
	la	a5,__stack_chk_guard		# tmp87,
	ld	a4, 0(a5)	# tmp125, __stack_chk_guard
	sd	a4, -24(s0)	# tmp125, D.1936
	li	a4, 0	# tmp125
# problem47.c:5:     f[0] = 0;
	sw	zero,-424(s0)	#, f[0]
# problem47.c:6:     f[1] = 0;
	sw	zero,-420(s0)	#, f[1]
# problem47.c:7:     f[2] = 2;
	li	a5,2		# tmp88,
	sw	a5,-416(s0)	# tmp88, f[2]
# problem47.c:8:     f[3] = 0;
	sw	zero,-412(s0)	#, f[3]
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	li	a5,4		# tmp89,
	sw	a5,-428(s0)	# tmp89, i
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	j	.L2		#
.L3:
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp92, i
	addiw	a5,a5,-1	#, tmp90, tmp91
	sext.w	a5,a5	# _1, tmp90
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp93, _1
	addi	a5,a5,-16	#, tmp129, tmp93
	add	a5,a5,s0	#, tmp93, tmp129
	lw	a4,-408(a5)		# _2, f[_1]
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp96, i
	addiw	a5,a5,-2	#, tmp94, tmp95
	sext.w	a5,a5	# _3, tmp94
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp97, _3
	addi	a5,a5,-16	#, tmp130, tmp97
	add	a5,a5,s0	#, tmp97, tmp130
	lw	a5,-408(a5)		# _4, f[_3]
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _4, tmp98, _2
	sext.w	a4,a5	# _5, tmp98
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp101, i
	addiw	a5,a5,-3	#, tmp99, tmp100
	sext.w	a5,a5	# _6, tmp99
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp102, _6
	addi	a5,a5,-16	#, tmp131, tmp102
	add	a5,a5,s0	#, tmp102, tmp131
	lw	a5,-408(a5)		# _7, f[_6]
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _7, tmp103, _5
	sext.w	a4,a5	# _8, tmp103
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp106, i
	addiw	a5,a5,-4	#, tmp104, tmp105
	sext.w	a5,a5	# _9, tmp104
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp107, _9
	addi	a5,a5,-16	#, tmp132, tmp107
	add	a5,a5,s0	#, tmp107, tmp132
	lw	a5,-408(a5)		# _10, f[_9]
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _10, tmp108, _8
	sext.w	a4,a5	# _11, tmp108
# problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp109, i
	slli	a5,a5,2	#, tmp110, tmp109
	addi	a5,a5,-16	#, tmp133, tmp110
	add	a5,a5,s0	#, tmp110, tmp133
	sw	a4,-408(a5)	# _11, f[i_12]
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	lw	a5,-428(s0)		# tmp113, i
	addiw	a5,a5,1	#, tmp111, tmp112
	sw	a5,-428(s0)	# tmp111, i
.L2:
# problem47.c:9:     for (int i = 4; i <= n; i++) {
	lw	a5,-428(s0)		# tmp115, i
	mv	a4,a5	# tmp114, tmp115
	lw	a5,-436(s0)		# tmp117, n
	sext.w	a4,a4	# tmp118, tmp114
	sext.w	a5,a5	# tmp119, tmp116
	ble	a4,a5,.L3	#, tmp118, tmp119,
# problem47.c:12:     return f[n];
	lw	a5,-436(s0)		# tmp120, n
	slli	a5,a5,2	#, tmp121, tmp120
	addi	a5,a5,-16	#, tmp134, tmp121
	add	a5,a5,s0	#, tmp121, tmp134
	lw	a5,-408(a5)		# _21, f[n_20(D)]
	mv	a4,a5	# <retval>, _21
# problem47.c:13: }
	la	a5,__stack_chk_guard		# tmp123,
	ld	a3, -24(s0)	# tmp126, D.1936
	ld	a5, 0(a5)	# tmp124, __stack_chk_guard
	xor	a5, a3, a5	# tmp124, tmp126
	li	a3, 0	# tmp126
	beq	a5,zero,.L5	#, tmp124,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	ld	ra,440(sp)		#,
	ld	s0,432(sp)		#,
	addi	sp,sp,448	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem47.c:21:     assert(func0(5) == 4);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp78,
	mv	a4,a5	# tmp79, _1
	li	a5,4		# tmp80,
	beq	a4,a5,.L7	#, tmp79, tmp80,
# problem47.c:21:     assert(func0(5) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem47.c:22:     assert(func0(8) == 28);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _2
	li	a5,28		# tmp83,
	beq	a4,a5,.L8	#, tmp82, tmp83,
# problem47.c:22:     assert(func0(8) == 28);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem47.c:23:     assert(func0(10) == 104);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _3
	li	a5,104		# tmp86,
	beq	a4,a5,.L9	#, tmp85, tmp86,
# problem47.c:23:     assert(func0(10) == 104);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem47.c:24:     assert(func0(12) == 386);
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _4
	li	a5,386		# tmp89,
	beq	a4,a5,.L10	#, tmp88, tmp89,
# problem47.c:24:     assert(func0(12) == 386);
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
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
