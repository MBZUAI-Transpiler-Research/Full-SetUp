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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp146, n
	sw	a5,-52(s0)	# tmp147, n
# code.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	li	a0,8		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp148,
	sd	a5,-24(s0)	# tmp148, counts
# code.c:6:     counts[0] = 0;
	ld	a5,-24(s0)		# tmp149, counts
	sw	zero,0(a5)	#, *counts_18
# code.c:7:     counts[1] = 0;
	ld	a5,-24(s0)		# tmp150, counts
	addi	a5,a5,4	#, _1, tmp150
# code.c:7:     counts[1] = 0;
	sw	zero,0(a5)	#, *_1
# code.c:9:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp151,
	sw	a5,-40(s0)	# tmp151, i
# code.c:9:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L7:
# code.c:10:         int reversed = 0, original = i;
	sw	zero,-36(s0)	#, reversed
# code.c:10:         int reversed = 0, original = i;
	lw	a5,-40(s0)		# tmp152, i
	sw	a5,-28(s0)	# tmp152, original
# code.c:12:         int number = i;
	lw	a5,-40(s0)		# tmp153, i
	sw	a5,-32(s0)	# tmp153, number
# code.c:13:         while (number != 0) {
	j	.L3		#
.L4:
# code.c:14:             reversed = reversed * 10 + number % 10;
	lw	a5,-36(s0)		# tmp155, reversed
	mv	a4,a5	# tmp154, tmp155
	mv	a5,a4	# tmp156, tmp154
	slliw	a5,a5,2	#, tmp157, tmp156
	addw	a5,a5,a4	# tmp154, tmp156, tmp156
	slliw	a5,a5,1	#, tmp158, tmp156
	sext.w	a4,a5	# _2, tmp156
# code.c:14:             reversed = reversed * 10 + number % 10;
	lw	a5,-32(s0)		# tmp161, number
	mv	a3,a5	# tmp160, tmp161
	li	a5,10		# tmp163,
	remw	a5,a3,a5	# tmp163, tmp162, tmp160
	sext.w	a5,a5	# _3, tmp162
# code.c:14:             reversed = reversed * 10 + number % 10;
	addw	a5,a4,a5	# _3, tmp164, _2
	sw	a5,-36(s0)	# tmp164, reversed
# code.c:15:             number /= 10;
	lw	a5,-32(s0)		# tmp167, number
	mv	a4,a5	# tmp166, tmp167
	li	a5,10		# tmp169,
	divw	a5,a4,a5	# tmp169, tmp168, tmp166
	sw	a5,-32(s0)	# tmp168, number
.L3:
# code.c:13:         while (number != 0) {
	lw	a5,-32(s0)		# tmp171, number
	sext.w	a5,a5	# tmp172, tmp170
	bne	a5,zero,.L4	#, tmp172,,
# code.c:18:         if (original == reversed) {
	lw	a5,-28(s0)		# tmp174, original
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-36(s0)		# tmp176, reversed
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	bne	a4,a5,.L5	#, tmp177, tmp178,
# code.c:19:             if (original % 2 == 0) counts[0]++;
	lw	a5,-28(s0)		# original.0_4, original
	andi	a5,a5,1	#, tmp180, tmp179
	sext.w	a5,a5	# _5, tmp180
# code.c:19:             if (original % 2 == 0) counts[0]++;
	bne	a5,zero,.L6	#, _5,,
# code.c:19:             if (original % 2 == 0) counts[0]++;
	ld	a5,-24(s0)		# tmp181, counts
	lw	a5,0(a5)		# _6, *counts_18
# code.c:19:             if (original % 2 == 0) counts[0]++;
	addiw	a5,a5,1	#, tmp182, _6
	sext.w	a4,a5	# _7, tmp182
	ld	a5,-24(s0)		# tmp183, counts
	sw	a4,0(a5)	# _7, *counts_18
	j	.L5		#
.L6:
# code.c:20:             else counts[1]++;
	ld	a5,-24(s0)		# tmp184, counts
	addi	a5,a5,4	#, _8, tmp184
	lw	a4,0(a5)		# _9, *_8
# code.c:20:             else counts[1]++;
	addiw	a4,a4,1	#, tmp185, _9
	sext.w	a4,a4	# _10, tmp185
	sw	a4,0(a5)	# _10, *_8
.L5:
# code.c:9:     for (int i = 1; i <= n; i++) {
	lw	a5,-40(s0)		# tmp188, i
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-40(s0)	# tmp186, i
.L2:
# code.c:9:     for (int i = 1; i <= n; i++) {
	lw	a5,-40(s0)		# tmp190, i
	mv	a4,a5	# tmp189, tmp190
	lw	a5,-52(s0)		# tmp192, n
	sext.w	a4,a4	# tmp193, tmp189
	sext.w	a5,a5	# tmp194, tmp191
	ble	a4,a5,.L7	#, tmp193, tmp194,
# code.c:24:     return counts;
	ld	a5,-24(s0)		# _23, counts
# code.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
