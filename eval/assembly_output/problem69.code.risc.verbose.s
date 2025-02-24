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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp150, length
	sd	a2,-56(s0)	# output, output
	sw	a5,-44(s0)	# tmp151, length
# code.c:5:     int smallestEven = INT_MAX;
	li	a5,-2147483648		# tmp153,
	addi	a5,a5,-1	#, tmp152, tmp153
	sw	a5,-28(s0)	# tmp152, smallestEven
# code.c:6:     int index = -1;
	li	a5,-1		# tmp154,
	sw	a5,-24(s0)	# tmp154, index
# code.c:8:     for (int i = 0; i < length; ++i) {
	sw	zero,-20(s0)	#, i
# code.c:8:     for (int i = 0; i < length; ++i) {
	j	.L2		#
.L5:
# code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp155, arr
	add	a5,a4,a5	# _2, _3, tmp155
	lw	a5,0(a5)		# _4, *_3
# code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	sext.w	a5,a5	# _5, _4
	andi	a5,a5,1	#, tmp157, tmp156
	sext.w	a5,a5	# _6, tmp157
# code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	bne	a5,zero,.L3	#, _6,,
# code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-20(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp158, arr
	add	a5,a4,a5	# _8, _9, tmp158
	lw	a4,0(a5)		# _10, *_9
# code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-28(s0)		# tmp160, smallestEven
	sext.w	a5,a5	# tmp161, tmp159
	bgt	a5,a4,.L4	#, tmp161, tmp162,
# code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-24(s0)		# tmp164, index
	sext.w	a4,a5	# tmp165, tmp163
	li	a5,-1		# tmp166,
	bne	a4,a5,.L3	#, tmp165, tmp166,
.L4:
# code.c:10:             smallestEven = arr[i];
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp167, arr
	add	a5,a4,a5	# _12, _13, tmp167
# code.c:10:             smallestEven = arr[i];
	lw	a5,0(a5)		# tmp168, *_13
	sw	a5,-28(s0)	# tmp168, smallestEven
# code.c:11:             index = i;
	lw	a5,-20(s0)		# tmp169, i
	sw	a5,-24(s0)	# tmp169, index
.L3:
# code.c:8:     for (int i = 0; i < length; ++i) {
	lw	a5,-20(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-20(s0)	# tmp170, i
.L2:
# code.c:8:     for (int i = 0; i < length; ++i) {
	lw	a5,-20(s0)		# tmp174, i
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-44(s0)		# tmp176, length
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	blt	a4,a5,.L5	#, tmp177, tmp178,
# code.c:15:     if (index == -1) {
	lw	a5,-24(s0)		# tmp180, index
	sext.w	a4,a5	# tmp181, tmp179
	li	a5,-1		# tmp182,
	bne	a4,a5,.L6	#, tmp181, tmp182,
# code.c:16:         return NULL;
	li	a5,0		# _20,
	j	.L7		#
.L6:
# code.c:19:     output[0] = smallestEven;
	ld	a5,-56(s0)		# tmp183, output
	lw	a4,-28(s0)		# tmp184, smallestEven
	sw	a4,0(a5)	# tmp184, *output_27(D)
# code.c:20:     output[1] = index;
	ld	a5,-56(s0)		# tmp185, output
	addi	a5,a5,4	#, _14, tmp185
# code.c:20:     output[1] = index;
	lw	a4,-24(s0)		# tmp186, index
	sw	a4,0(a5)	# tmp186, *_14
# code.c:21:     return output;
	ld	a5,-56(s0)		# _20, output
.L7:
# code.c:22: }
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
