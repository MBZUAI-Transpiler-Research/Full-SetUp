	.file	"problem64.c"
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
	mv	a5,a0	# tmp82, n
	sw	a5,-436(s0)	# tmp83, n
# problem64.c:3: int func0(int n) {
	la	a5,__stack_chk_guard		# tmp84,
	ld	a4, 0(a5)	# tmp120, __stack_chk_guard
	sd	a4, -24(s0)	# tmp120, D.1945
	li	a4, 0	# tmp120
# problem64.c:4:     int ff[100] = {0};
	addi	a5,s0,-424	#, tmp85,
	li	a4,400		# tmp86,
	mv	a2,a4	#, tmp86
	li	a1,0		#,
	mv	a0,a5	#, tmp85
	call	memset@plt	#
# problem64.c:5:     ff[1] = 0;
	sw	zero,-420(s0)	#, ff[1]
# problem64.c:6:     ff[2] = 1;
	li	a5,1		# tmp88,
	sw	a5,-416(s0)	# tmp88, ff[2]
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	li	a5,3		# tmp89,
	sw	a5,-428(s0)	# tmp89, i
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	j	.L2		#
.L3:
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp92, i
	addiw	a5,a5,-1	#, tmp90, tmp91
	sext.w	a5,a5	# _1, tmp90
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp93, _1
	addi	a5,a5,-16	#, tmp124, tmp93
	add	a5,a5,s0	#, tmp93, tmp124
	lw	a4,-408(a5)		# _2, ff[_1]
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp96, i
	addiw	a5,a5,-2	#, tmp94, tmp95
	sext.w	a5,a5	# _3, tmp94
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp97, _3
	addi	a5,a5,-16	#, tmp125, tmp97
	add	a5,a5,s0	#, tmp97, tmp125
	lw	a5,-408(a5)		# _4, ff[_3]
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addw	a5,a4,a5	# _4, tmp98, _2
	sext.w	a4,a5	# _5, tmp98
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp101, i
	addiw	a5,a5,-3	#, tmp99, tmp100
	sext.w	a5,a5	# _6, tmp99
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp102, _6
	addi	a5,a5,-16	#, tmp126, tmp102
	add	a5,a5,s0	#, tmp102, tmp126
	lw	a5,-408(a5)		# _7, ff[_6]
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addw	a5,a4,a5	# _7, tmp103, _5
	sext.w	a4,a5	# _8, tmp103
# problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp104, i
	slli	a5,a5,2	#, tmp105, tmp104
	addi	a5,a5,-16	#, tmp127, tmp105
	add	a5,a5,s0	#, tmp105, tmp127
	sw	a4,-408(a5)	# _8, ff[i_9]
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	lw	a5,-428(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-428(s0)	# tmp106, i
.L2:
# problem64.c:7:     for (int i = 3; i <= n; ++i) {
	lw	a5,-428(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	lw	a5,-436(s0)		# tmp112, n
	sext.w	a4,a4	# tmp113, tmp109
	sext.w	a5,a5	# tmp114, tmp111
	ble	a4,a5,.L3	#, tmp113, tmp114,
# problem64.c:10:     return ff[n];
	lw	a5,-436(s0)		# tmp115, n
	slli	a5,a5,2	#, tmp116, tmp115
	addi	a5,a5,-16	#, tmp128, tmp116
	add	a5,a5,s0	#, tmp116, tmp128
	lw	a5,-408(a5)		# _17, ff[n_16(D)]
	mv	a4,a5	# <retval>, _17
# problem64.c:11: }
	la	a5,__stack_chk_guard		# tmp118,
	ld	a3, -24(s0)	# tmp121, D.1945
	ld	a5, 0(a5)	# tmp119, __stack_chk_guard
	xor	a5, a3, a5	# tmp119, tmp121
	li	a3, 0	# tmp121
	beq	a5,zero,.L5	#, tmp119,,
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem64.c:18:     assert(func0(2) == 1);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _1
	li	a5,1		# tmp83,
	beq	a4,a5,.L7	#, tmp82, tmp83,
# problem64.c:18:     assert(func0(2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem64.c:19:     assert(func0(1) == 0);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp84,
	beq	a5,zero,.L8	#, _2,,
# problem64.c:19:     assert(func0(1) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem64.c:20:     assert(func0(5) == 4);
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _3
	li	a5,4		# tmp87,
	beq	a4,a5,.L9	#, tmp86, tmp87,
# problem64.c:20:     assert(func0(5) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem64.c:21:     assert(func0(8) == 24);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _4
	li	a5,24		# tmp90,
	beq	a4,a5,.L10	#, tmp89, tmp90,
# problem64.c:21:     assert(func0(8) == 24);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem64.c:22:     assert(func0(10) == 81);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _5
	li	a5,81		# tmp93,
	beq	a4,a5,.L11	#, tmp92, tmp93,
# problem64.c:22:     assert(func0(10) == 81);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L11:
# problem64.c:23:     assert(func0(12) == 274);
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp94,
	mv	a4,a5	# tmp95, _6
	li	a5,274		# tmp96,
	beq	a4,a5,.L12	#, tmp95, tmp96,
# problem64.c:23:     assert(func0(12) == 274);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem64.c:24:     assert(func0(14) == 927);
	li	a0,14		#,
	call	func0		#
	mv	a5,a0	# tmp97,
	mv	a4,a5	# tmp98, _7
	li	a5,927		# tmp99,
	beq	a4,a5,.L13	#, tmp98, tmp99,
# problem64.c:24:     assert(func0(14) == 927);
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
