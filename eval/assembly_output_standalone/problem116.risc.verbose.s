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
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# grid, grid
	mv	a5,a1	# tmp85, rows
	mv	a4,a3	# tmp89, capacity
	sw	a5,-44(s0)	# tmp86, rows
	mv	a5,a2	# tmp88, tmp87
	sw	a5,-48(s0)	# tmp88, cols
	mv	a5,a4	# tmp90, tmp89
	sw	a5,-52(s0)	# tmp90, capacity
# eval/problem116//code.c:3:     int out = 0;
	sw	zero,-32(s0)	#, out
# eval/problem116//code.c:4:     for (int i = 0; i < rows; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem116//code.c:4:     for (int i = 0; i < rows; i++) {
	j	.L2		#
.L6:
# eval/problem116//code.c:5:         int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem116//code.c:6:         for (int j = 0; j < cols; j++)
	sw	zero,-20(s0)	#, j
# eval/problem116//code.c:6:         for (int j = 0; j < cols; j++)
	j	.L3		#
.L4:
# eval/problem116//code.c:7:             sum += grid[i][j];
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp91, grid
	add	a5,a4,a5	# _2, _3, tmp91
	ld	a4,0(a5)		# _4, *_3
# eval/problem116//code.c:7:             sum += grid[i][j];
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lw	a5,0(a5)		# _8, *_7
# eval/problem116//code.c:7:             sum += grid[i][j];
	lw	a4,-24(s0)		# tmp94, sum
	addw	a5,a4,a5	# _8, tmp92, tmp93
	sw	a5,-24(s0)	# tmp92, sum
# eval/problem116//code.c:6:         for (int j = 0; j < cols; j++)
	lw	a5,-20(s0)		# tmp97, j
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-20(s0)	# tmp95, j
.L3:
# eval/problem116//code.c:6:         for (int j = 0; j < cols; j++)
	lw	a5,-20(s0)		# tmp99, j
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-48(s0)		# tmp101, cols
	sext.w	a4,a4	# tmp102, tmp98
	sext.w	a5,a5	# tmp103, tmp100
	blt	a4,a5,.L4	#, tmp102, tmp103,
# eval/problem116//code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a5,-24(s0)		# tmp105, sum
	sext.w	a5,a5	# tmp106, tmp104
	ble	a5,zero,.L5	#, tmp106,,
# eval/problem116//code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a5,-24(s0)		# tmp109, sum
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-52(s0)		# tmp111, capacity
	addw	a5,a4,a5	# tmp110, tmp107, tmp108
	sext.w	a5,a5	# _9, tmp107
# eval/problem116//code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	addiw	a5,a5,-1	#, tmp112, _9
	sext.w	a5,a5	# _10, tmp112
# eval/problem116//code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a4,-52(s0)		# tmp116, capacity
	divw	a5,a5,a4	# tmp115, tmp114, _10
	sext.w	a5,a5	# _11, tmp114
# eval/problem116//code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a4,-32(s0)		# tmp119, out
	addw	a5,a4,a5	# _11, tmp117, tmp118
	sw	a5,-32(s0)	# tmp117, out
.L5:
# eval/problem116//code.c:4:     for (int i = 0; i < rows; i++) {
	lw	a5,-28(s0)		# tmp122, i
	addiw	a5,a5,1	#, tmp120, tmp121
	sw	a5,-28(s0)	# tmp120, i
.L2:
# eval/problem116//code.c:4:     for (int i = 0; i < rows; i++) {
	lw	a5,-28(s0)		# tmp124, i
	mv	a4,a5	# tmp123, tmp124
	lw	a5,-44(s0)		# tmp126, rows
	sext.w	a4,a4	# tmp127, tmp123
	sext.w	a5,a5	# tmp128, tmp125
	blt	a4,a5,.L6	#, tmp127, tmp128,
# eval/problem116//code.c:10:     return out;
	lw	a5,-32(s0)		# _20, out
# eval/problem116//code.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
