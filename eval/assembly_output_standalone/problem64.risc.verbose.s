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
	mv	a5,a0	# tmp82, n
	sw	a5,-436(s0)	# tmp83, n
# eval/problem64//code.c:3: int func0(int n) {
	la	a5,__stack_chk_guard		# tmp84,
	ld	a4, 0(a5)	# tmp120, __stack_chk_guard
	sd	a4, -24(s0)	# tmp120, D.1901
	li	a4, 0	# tmp120
# eval/problem64//code.c:4:     int ff[100] = {0};
	addi	a5,s0,-424	#, tmp85,
	li	a4,400		# tmp86,
	mv	a2,a4	#, tmp86
	li	a1,0		#,
	mv	a0,a5	#, tmp85
	call	memset@plt	#
# eval/problem64//code.c:5:     ff[1] = 0;
	sw	zero,-420(s0)	#, ff[1]
# eval/problem64//code.c:6:     ff[2] = 1;
	li	a5,1		# tmp88,
	sw	a5,-416(s0)	# tmp88, ff[2]
# eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	li	a5,3		# tmp89,
	sw	a5,-428(s0)	# tmp89, i
# eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	j	.L2		#
.L3:
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp92, i
	addiw	a5,a5,-1	#, tmp90, tmp91
	sext.w	a5,a5	# _1, tmp90
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp93, _1
	addi	a5,a5,-16	#, tmp124, tmp93
	add	a5,a5,s0	#, tmp93, tmp124
	lw	a4,-408(a5)		# _2, ff[_1]
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp96, i
	addiw	a5,a5,-2	#, tmp94, tmp95
	sext.w	a5,a5	# _3, tmp94
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp97, _3
	addi	a5,a5,-16	#, tmp125, tmp97
	add	a5,a5,s0	#, tmp97, tmp125
	lw	a5,-408(a5)		# _4, ff[_3]
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addw	a5,a4,a5	# _4, tmp98, _2
	sext.w	a4,a5	# _5, tmp98
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp101, i
	addiw	a5,a5,-3	#, tmp99, tmp100
	sext.w	a5,a5	# _6, tmp99
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	slli	a5,a5,2	#, tmp102, _6
	addi	a5,a5,-16	#, tmp126, tmp102
	add	a5,a5,s0	#, tmp102, tmp126
	lw	a5,-408(a5)		# _7, ff[_6]
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addw	a5,a4,a5	# _7, tmp103, _5
	sext.w	a4,a5	# _8, tmp103
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	lw	a5,-428(s0)		# tmp104, i
	slli	a5,a5,2	#, tmp105, tmp104
	addi	a5,a5,-16	#, tmp127, tmp105
	add	a5,a5,s0	#, tmp105, tmp127
	sw	a4,-408(a5)	# _8, ff[i_9]
# eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	lw	a5,-428(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-428(s0)	# tmp106, i
.L2:
# eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	lw	a5,-428(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	lw	a5,-436(s0)		# tmp112, n
	sext.w	a4,a4	# tmp113, tmp109
	sext.w	a5,a5	# tmp114, tmp111
	ble	a4,a5,.L3	#, tmp113, tmp114,
# eval/problem64//code.c:10:     return ff[n];
	lw	a5,-436(s0)		# tmp115, n
	slli	a5,a5,2	#, tmp116, tmp115
	addi	a5,a5,-16	#, tmp128, tmp116
	add	a5,a5,s0	#, tmp116, tmp128
	lw	a5,-408(a5)		# _17, ff[n_16(D)]
	mv	a4,a5	# <retval>, _17
# eval/problem64//code.c:11: }
	la	a5,__stack_chk_guard		# tmp118,
	ld	a3, -24(s0)	# tmp121, D.1901
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
