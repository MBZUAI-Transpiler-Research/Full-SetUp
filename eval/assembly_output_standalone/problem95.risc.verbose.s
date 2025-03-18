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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp142, size
	sw	a5,-60(s0)	# tmp143, size
# eval/problem95//code.c:4:     int largest = 0, sum = 0, num, temp;
	sw	zero,-40(s0)	#, largest
# eval/problem95//code.c:4:     int largest = 0, sum = 0, num, temp;
	sw	zero,-36(s0)	#, sum
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	sw	zero,-32(s0)	#, i
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	j	.L2		#
.L9:
# eval/problem95//code.c:7:         num = lst[i];
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp144, lst
	add	a5,a4,a5	# _2, _3, tmp144
# eval/problem95//code.c:7:         num = lst[i];
	lw	a5,0(a5)		# tmp145, *_3
	sw	a5,-20(s0)	# tmp145, num
# eval/problem95//code.c:8:         if (num > 1) {
	lw	a5,-20(s0)		# tmp147, num
	sext.w	a4,a5	# tmp148, tmp146
	li	a5,1		# tmp149,
	ble	a4,a5,.L3	#, tmp148, tmp149,
# eval/problem95//code.c:9:             int prime = 1;
	li	a5,1		# tmp150,
	sw	a5,-28(s0)	# tmp150, prime
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	li	a5,2		# tmp151,
	sw	a5,-24(s0)	# tmp151, j
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	j	.L4		#
.L7:
# eval/problem95//code.c:11:                 if (num % j == 0) {
	lw	a5,-20(s0)		# tmp154, num
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-24(s0)		# tmp157, j
	remw	a5,a4,a5	# tmp156, tmp155, tmp153
	sext.w	a5,a5	# _4, tmp155
# eval/problem95//code.c:11:                 if (num % j == 0) {
	bne	a5,zero,.L5	#, _4,,
# eval/problem95//code.c:12:                     prime = 0;
	sw	zero,-28(s0)	#, prime
# eval/problem95//code.c:13:                     break;
	j	.L6		#
.L5:
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-24(s0)		# tmp160, j
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, j
.L4:
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-24(s0)		# tmp163, j
	mulw	a5,a5,a5	# tmp161, tmp162, tmp162
	sext.w	a4,a5	# _5, tmp161
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	lw	a5,-20(s0)		# tmp165, num
	sext.w	a5,a5	# tmp166, tmp164
	bge	a5,a4,.L7	#, tmp166, tmp167,
.L6:
# eval/problem95//code.c:16:             if (prime) {
	lw	a5,-28(s0)		# tmp169, prime
	sext.w	a5,a5	# tmp170, tmp168
	beq	a5,zero,.L3	#, tmp170,,
# eval/problem95//code.c:17:                 largest = num > largest ? num : largest;
	lw	a5,-20(s0)		# tmp173, num
	mv	a2,a5	# tmp172, tmp173
	lw	a5,-40(s0)		# tmp174, largest
	sext.w	a3,a5	# tmp175, tmp171
	sext.w	a4,a2	# tmp176, tmp172
	bge	a3,a4,.L8	#, tmp175, tmp176,
	mv	a5,a2	# tmp171, tmp172
.L8:
	sw	a5,-40(s0)	# tmp171, largest
.L3:
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp179, i
	addiw	a5,a5,1	#, tmp177, tmp178
	sw	a5,-32(s0)	# tmp177, i
.L2:
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp181, i
	mv	a4,a5	# tmp180, tmp181
	lw	a5,-60(s0)		# tmp183, size
	sext.w	a4,a4	# tmp184, tmp180
	sext.w	a5,a5	# tmp185, tmp182
	blt	a4,a5,.L9	#, tmp184, tmp185,
# eval/problem95//code.c:22:     while (largest > 0) {
	j	.L10		#
.L11:
# eval/problem95//code.c:23:         sum += largest % 10;
	lw	a5,-40(s0)		# tmp188, largest
	mv	a4,a5	# tmp187, tmp188
	li	a5,10		# tmp190,
	remw	a5,a4,a5	# tmp190, tmp189, tmp187
	sext.w	a5,a5	# _6, tmp189
# eval/problem95//code.c:23:         sum += largest % 10;
	lw	a4,-36(s0)		# tmp193, sum
	addw	a5,a4,a5	# _6, tmp191, tmp192
	sw	a5,-36(s0)	# tmp191, sum
# eval/problem95//code.c:24:         largest /= 10;
	lw	a5,-40(s0)		# tmp196, largest
	mv	a4,a5	# tmp195, tmp196
	li	a5,10		# tmp198,
	divw	a5,a4,a5	# tmp198, tmp197, tmp195
	sw	a5,-40(s0)	# tmp197, largest
.L10:
# eval/problem95//code.c:22:     while (largest > 0) {
	lw	a5,-40(s0)		# tmp200, largest
	sext.w	a5,a5	# tmp201, tmp199
	bgt	a5,zero,.L11	#, tmp201,,
# eval/problem95//code.c:27:     return sum;
	lw	a5,-36(s0)		# _18, sum
# eval/problem95//code.c:28: }
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
