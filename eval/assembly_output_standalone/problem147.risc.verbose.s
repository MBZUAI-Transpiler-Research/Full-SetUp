	.file	"code.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# nums, nums
	mv	a5,a1	# tmp149, size
	sw	a5,-60(s0)	# tmp150, size
# eval/problem147//code.c:5:     int num = 0;
	sw	zero,-36(s0)	#, num
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# eval/problem147//code.c:7:         if (nums[i] > 10) {
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp151, nums
	add	a5,a4,a5	# _2, _3, tmp151
	lw	a5,0(a5)		# _4, *_3
# eval/problem147//code.c:7:         if (nums[i] > 10) {
	mv	a4,a5	# tmp152, _4
	li	a5,10		# tmp153,
	ble	a4,a5,.L3	#, tmp152, tmp153,
# eval/problem147//code.c:9:             last = nums[i] % 10;
	lw	a5,-32(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp154, nums
	add	a5,a4,a5	# _6, _7, tmp154
	lw	a5,0(a5)		# _8, *_7
# eval/problem147//code.c:9:             last = nums[i] % 10;
	mv	a4,a5	# tmp155, _8
	li	a5,10		# tmp157,
	remw	a5,a4,a5	# tmp157, tmp156, tmp155
	sw	a5,-24(s0)	# tmp156, last
# eval/problem147//code.c:10:             int n = nums[i];
	lw	a5,-32(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp158, nums
	add	a5,a4,a5	# _10, _11, tmp158
# eval/problem147//code.c:10:             int n = nums[i];
	lw	a5,0(a5)		# tmp159, *_11
	sw	a5,-28(s0)	# tmp159, n
# eval/problem147//code.c:11:             while (n >= 10) {
	j	.L4		#
.L5:
# eval/problem147//code.c:12:                 n /= 10;
	lw	a5,-28(s0)		# tmp162, n
	mv	a4,a5	# tmp161, tmp162
	li	a5,10		# tmp164,
	divw	a5,a4,a5	# tmp164, tmp163, tmp161
	sw	a5,-28(s0)	# tmp163, n
.L4:
# eval/problem147//code.c:11:             while (n >= 10) {
	lw	a5,-28(s0)		# tmp166, n
	sext.w	a4,a5	# tmp167, tmp165
	li	a5,9		# tmp168,
	bgt	a4,a5,.L5	#, tmp167, tmp168,
# eval/problem147//code.c:14:             first = n;
	lw	a5,-28(s0)		# tmp169, n
	sw	a5,-20(s0)	# tmp169, first
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	lw	a5,-20(s0)		# tmp172, first
	mv	a4,a5	# tmp171, tmp172
	sraiw	a5,a4,31	#, tmp173, tmp171
	srliw	a5,a5,31	#, tmp174, tmp173
	addw	a4,a4,a5	# tmp174, tmp175, tmp171
	andi	a4,a4,1	#, tmp176, tmp175
	subw	a5,a4,a5	# tmp177, tmp176, tmp174
	sext.w	a5,a5	# _12, tmp177
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	mv	a4,a5	# tmp178, _12
	li	a5,1		# tmp179,
	bne	a4,a5,.L3	#, tmp178, tmp179,
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	lw	a5,-24(s0)		# tmp182, last
	mv	a4,a5	# tmp181, tmp182
	sraiw	a5,a4,31	#, tmp183, tmp181
	srliw	a5,a5,31	#, tmp184, tmp183
	addw	a4,a4,a5	# tmp184, tmp185, tmp181
	andi	a4,a4,1	#, tmp186, tmp185
	subw	a5,a4,a5	# tmp187, tmp186, tmp184
	sext.w	a5,a5	# _13, tmp187
# eval/problem147//code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	mv	a4,a5	# tmp188, _13
	li	a5,1		# tmp189,
	bne	a4,a5,.L3	#, tmp188, tmp189,
# eval/problem147//code.c:16:                 num += 1;
	lw	a5,-36(s0)		# tmp192, num
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-36(s0)	# tmp190, num
.L3:
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp195, i
	addiw	a5,a5,1	#, tmp193, tmp194
	sw	a5,-32(s0)	# tmp193, i
.L2:
# eval/problem147//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp197, i
	mv	a4,a5	# tmp196, tmp197
	lw	a5,-60(s0)		# tmp199, size
	sext.w	a4,a4	# tmp200, tmp196
	sext.w	a5,a5	# tmp201, tmp198
	blt	a4,a5,.L6	#, tmp200, tmp201,
# eval/problem147//code.c:20:     return num;
	lw	a5,-36(s0)		# _21, num
# eval/problem147//code.c:21: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
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
