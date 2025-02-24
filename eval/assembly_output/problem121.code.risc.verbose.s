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
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp170, arr_size
	mv	a4,a2	# tmp172, k
	sd	a3,-56(s0)	# out, out
	sw	a5,-44(s0)	# tmp171, arr_size
	mv	a5,a4	# tmp173, tmp172
	sw	a5,-48(s0)	# tmp173, k
# code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	sw	zero,-32(s0)	#, i
# code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	j	.L2		#
.L6:
# code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	sw	zero,-28(s0)	#, j
# code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	j	.L3		#
.L5:
# code.c:7:             if (arr[j] > arr[j + 1]) {
	lw	a5,-28(s0)		# _1, j
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp174, arr
	add	a5,a4,a5	# _2, _3, tmp174
	lw	a3,0(a5)		# _4, *_3
# code.c:7:             if (arr[j] > arr[j + 1]) {
	lw	a5,-28(s0)		# _5, j
	addi	a5,a5,1	#, _6, _5
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp175, arr
	add	a5,a4,a5	# _7, _8, tmp175
	lw	a5,0(a5)		# _9, *_8
# code.c:7:             if (arr[j] > arr[j + 1]) {
	mv	a4,a3	# tmp176, _4
	ble	a4,a5,.L4	#, tmp176, tmp177,
# code.c:8:                 int temp = arr[j];
	lw	a5,-28(s0)		# _10, j
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp178, arr
	add	a5,a4,a5	# _11, _12, tmp178
# code.c:8:                 int temp = arr[j];
	lw	a5,0(a5)		# tmp179, *_12
	sw	a5,-20(s0)	# tmp179, temp
# code.c:9:                 arr[j] = arr[j + 1];
	lw	a5,-28(s0)		# _13, j
	addi	a5,a5,1	#, _14, _13
	slli	a5,a5,2	#, _15, _14
	ld	a4,-40(s0)		# tmp180, arr
	add	a4,a4,a5	# _15, _16, tmp180
# code.c:9:                 arr[j] = arr[j + 1];
	lw	a5,-28(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp181, arr
	add	a5,a3,a5	# _18, _19, tmp181
# code.c:9:                 arr[j] = arr[j + 1];
	lw	a4,0(a4)		# _20, *_16
# code.c:9:                 arr[j] = arr[j + 1];
	sw	a4,0(a5)	# _20, *_19
# code.c:10:                 arr[j + 1] = temp;
	lw	a5,-28(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,2	#, _23, _22
	ld	a4,-40(s0)		# tmp182, arr
	add	a5,a4,a5	# _23, _24, tmp182
# code.c:10:                 arr[j + 1] = temp;
	lw	a4,-20(s0)		# tmp183, temp
	sw	a4,0(a5)	# tmp183, *_24
.L4:
# code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-28(s0)		# tmp186, j
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-28(s0)	# tmp184, j
.L3:
# code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-44(s0)		# tmp189, arr_size
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-32(s0)		# tmp191, i
	subw	a5,a4,a5	# tmp187, tmp188, tmp190
	sext.w	a5,a5	# _25, tmp187
# code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp192, _25
	sext.w	a4,a5	# _26, tmp192
# code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-28(s0)		# tmp194, j
	sext.w	a5,a5	# tmp195, tmp193
	blt	a5,a4,.L5	#, tmp195, tmp196,
# code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-32(s0)		# tmp199, i
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-32(s0)	# tmp197, i
.L2:
# code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-44(s0)		# tmp202, arr_size
	addiw	a5,a5,-1	#, tmp200, tmp201
	sext.w	a4,a5	# _27, tmp200
# code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-32(s0)		# tmp204, i
	sext.w	a5,a5	# tmp205, tmp203
	blt	a5,a4,.L6	#, tmp205, tmp206,
# code.c:15:     for (int i = 0; i < k; i++) {
	sw	zero,-24(s0)	#, i
# code.c:15:     for (int i = 0; i < k; i++) {
	j	.L7		#
.L8:
# code.c:16:         out[i] = arr[arr_size - k + i];
	lw	a5,-44(s0)		# tmp209, arr_size
	mv	a4,a5	# tmp208, tmp209
	lw	a5,-48(s0)		# tmp211, k
	subw	a5,a4,a5	# tmp207, tmp208, tmp210
	sext.w	a5,a5	# _28, tmp207
# code.c:16:         out[i] = arr[arr_size - k + i];
	lw	a4,-24(s0)		# tmp214, i
	addw	a5,a4,a5	# _28, tmp212, tmp213
	sext.w	a5,a5	# _29, tmp212
# code.c:16:         out[i] = arr[arr_size - k + i];
	slli	a5,a5,2	#, _31, _30
	ld	a4,-40(s0)		# tmp215, arr
	add	a4,a4,a5	# _31, _32, tmp215
# code.c:16:         out[i] = arr[arr_size - k + i];
	lw	a5,-24(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a3,-56(s0)		# tmp216, out
	add	a5,a3,a5	# _34, _35, tmp216
# code.c:16:         out[i] = arr[arr_size - k + i];
	lw	a4,0(a4)		# _36, *_32
# code.c:16:         out[i] = arr[arr_size - k + i];
	sw	a4,0(a5)	# _36, *_35
# code.c:15:     for (int i = 0; i < k; i++) {
	lw	a5,-24(s0)		# tmp219, i
	addiw	a5,a5,1	#, tmp217, tmp218
	sw	a5,-24(s0)	# tmp217, i
.L7:
# code.c:15:     for (int i = 0; i < k; i++) {
	lw	a5,-24(s0)		# tmp221, i
	mv	a4,a5	# tmp220, tmp221
	lw	a5,-48(s0)		# tmp223, k
	sext.w	a4,a4	# tmp224, tmp220
	sext.w	a5,a5	# tmp225, tmp222
	blt	a4,a5,.L8	#, tmp224, tmp225,
# code.c:18: }
	nop	
	nop	
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
