	.file	"code.c"
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
# eval/problem47//code.c:3: int func0(int n) {
	la	a5,__stack_chk_guard		# tmp87,
	ld	a4, 0(a5)	# tmp125, __stack_chk_guard
	sd	a4, -24(s0)	# tmp125, D.1901
	li	a4, 0	# tmp125
# eval/problem47//code.c:5:     f[0] = 0;
	sw	zero,-424(s0)	#, f[0]
# eval/problem47//code.c:6:     f[1] = 0;
	sw	zero,-420(s0)	#, f[1]
# eval/problem47//code.c:7:     f[2] = 2;
	li	a5,2		# tmp88,
	sw	a5,-416(s0)	# tmp88, f[2]
# eval/problem47//code.c:8:     f[3] = 0;
	sw	zero,-412(s0)	#, f[3]
# eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	li	a5,4		# tmp89,
	sw	a5,-428(s0)	# tmp89, i
# eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	j	.L2		#
.L3:
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp92, i
	addiw	a5,a5,-1	#, tmp90, tmp91
	sext.w	a5,a5	# _1, tmp90
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp93, _1
	addi	a5,a5,-16	#, tmp129, tmp93
	add	a5,a5,s0	#, tmp93, tmp129
	lw	a4,-408(a5)		# _2, f[_1]
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp96, i
	addiw	a5,a5,-2	#, tmp94, tmp95
	sext.w	a5,a5	# _3, tmp94
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp97, _3
	addi	a5,a5,-16	#, tmp130, tmp97
	add	a5,a5,s0	#, tmp97, tmp130
	lw	a5,-408(a5)		# _4, f[_3]
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _4, tmp98, _2
	sext.w	a4,a5	# _5, tmp98
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp101, i
	addiw	a5,a5,-3	#, tmp99, tmp100
	sext.w	a5,a5	# _6, tmp99
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp102, _6
	addi	a5,a5,-16	#, tmp131, tmp102
	add	a5,a5,s0	#, tmp102, tmp131
	lw	a5,-408(a5)		# _7, f[_6]
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _7, tmp103, _5
	sext.w	a4,a5	# _8, tmp103
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp106, i
	addiw	a5,a5,-4	#, tmp104, tmp105
	sext.w	a5,a5	# _9, tmp104
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	slli	a5,a5,2	#, tmp107, _9
	addi	a5,a5,-16	#, tmp132, tmp107
	add	a5,a5,s0	#, tmp107, tmp132
	lw	a5,-408(a5)		# _10, f[_9]
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addw	a5,a4,a5	# _10, tmp108, _8
	sext.w	a4,a5	# _11, tmp108
# eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	lw	a5,-428(s0)		# tmp109, i
	slli	a5,a5,2	#, tmp110, tmp109
	addi	a5,a5,-16	#, tmp133, tmp110
	add	a5,a5,s0	#, tmp110, tmp133
	sw	a4,-408(a5)	# _11, f[i_12]
# eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	lw	a5,-428(s0)		# tmp113, i
	addiw	a5,a5,1	#, tmp111, tmp112
	sw	a5,-428(s0)	# tmp111, i
.L2:
# eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	lw	a5,-428(s0)		# tmp115, i
	mv	a4,a5	# tmp114, tmp115
	lw	a5,-436(s0)		# tmp117, n
	sext.w	a4,a4	# tmp118, tmp114
	sext.w	a5,a5	# tmp119, tmp116
	ble	a4,a5,.L3	#, tmp118, tmp119,
# eval/problem47//code.c:12:     return f[n];
	lw	a5,-436(s0)		# tmp120, n
	slli	a5,a5,2	#, tmp121, tmp120
	addi	a5,a5,-16	#, tmp134, tmp121
	add	a5,a5,s0	#, tmp121, tmp134
	lw	a5,-408(a5)		# _21, f[n_20(D)]
	mv	a4,a5	# <retval>, _21
# eval/problem47//code.c:13: }
	la	a5,__stack_chk_guard		# tmp123,
	ld	a3, -24(s0)	# tmp126, D.1901
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
