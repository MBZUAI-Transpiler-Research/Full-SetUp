	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# grid, grid
	mv	a5,a1	# tmp147, rows
	mv	a4,a3	# tmp151, capacity
	sw	a5,-44(s0)	# tmp148, rows
	mv	a5,a2	# tmp150, tmp149
	sw	a5,-48(s0)	# tmp150, cols
	mv	a5,a4	# tmp152, tmp151
	sw	a5,-52(s0)	# tmp152, capacity
# code.c:3:     int out = 0;
	sw	zero,-32(s0)	#, out
# code.c:4:     for (int i = 0; i < rows; i++) {
	sw	zero,-28(s0)	#, i
# code.c:4:     for (int i = 0; i < rows; i++) {
	j	.L2		#
.L6:
# code.c:5:         int sum = 0;
	sw	zero,-24(s0)	#, sum
# code.c:6:         for (int j = 0; j < cols; j++)
	sw	zero,-20(s0)	#, j
# code.c:6:         for (int j = 0; j < cols; j++)
	j	.L3		#
.L4:
# code.c:7:             sum += grid[i][j];
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp153, grid
	add	a5,a4,a5	# _2, _3, tmp153
	ld	a4,0(a5)		# _4, *_3
# code.c:7:             sum += grid[i][j];
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lw	a5,0(a5)		# _8, *_7
# code.c:7:             sum += grid[i][j];
	lw	a4,-24(s0)		# tmp156, sum
	addw	a5,a4,a5	# _8, tmp154, tmp155
	sw	a5,-24(s0)	# tmp154, sum
# code.c:6:         for (int j = 0; j < cols; j++)
	lw	a5,-20(s0)		# tmp159, j
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-20(s0)	# tmp157, j
.L3:
# code.c:6:         for (int j = 0; j < cols; j++)
	lw	a5,-20(s0)		# tmp161, j
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-48(s0)		# tmp163, cols
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L4	#, tmp164, tmp165,
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a5,-24(s0)		# tmp167, sum
	sext.w	a5,a5	# tmp168, tmp166
	ble	a5,zero,.L5	#, tmp168,,
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a5,-24(s0)		# tmp171, sum
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-52(s0)		# tmp173, capacity
	addw	a5,a4,a5	# tmp172, tmp169, tmp170
	sext.w	a5,a5	# _9, tmp169
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	addiw	a5,a5,-1	#, tmp174, _9
	sext.w	a5,a5	# _10, tmp174
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a4,-52(s0)		# tmp178, capacity
	divw	a5,a5,a4	# tmp177, tmp176, _10
	sext.w	a5,a5	# _11, tmp176
# code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	lw	a4,-32(s0)		# tmp181, out
	addw	a5,a4,a5	# _11, tmp179, tmp180
	sw	a5,-32(s0)	# tmp179, out
.L5:
# code.c:4:     for (int i = 0; i < rows; i++) {
	lw	a5,-28(s0)		# tmp184, i
	addiw	a5,a5,1	#, tmp182, tmp183
	sw	a5,-28(s0)	# tmp182, i
.L2:
# code.c:4:     for (int i = 0; i < rows; i++) {
	lw	a5,-28(s0)		# tmp186, i
	mv	a4,a5	# tmp185, tmp186
	lw	a5,-44(s0)		# tmp188, rows
	sext.w	a4,a4	# tmp189, tmp185
	sext.w	a5,a5	# tmp190, tmp187
	blt	a4,a5,.L6	#, tmp189, tmp190,
# code.c:10:     return out;
	lw	a5,-32(s0)		# _20, out
# code.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
