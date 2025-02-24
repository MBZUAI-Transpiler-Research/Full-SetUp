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
	mv	a5,a0	# tmp150, n
	sd	a1,-64(s0)	# count, count
	sw	a5,-52(s0)	# tmp151, n
# code.c:5:     int *out = malloc(n * sizeof(int));
	lw	a5,-52(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp152,
	sd	a5,-24(s0)	# tmp152, out
# code.c:6:     *count = 0;
	ld	a5,-64(s0)		# tmp153, count
	sw	zero,0(a5)	#, *count_24(D)
# code.c:9:     for (i = 2; i < n; i++) {
	li	a5,2		# tmp154,
	sw	a5,-40(s0)	# tmp154, i
# code.c:9:     for (i = 2; i < n; i++) {
	j	.L2		#
.L9:
# code.c:10:         isp = 1;
	li	a5,1		# tmp155,
	sw	a5,-32(s0)	# tmp155, isp
# code.c:11:         for (j = 0; j < *count; j++) {
	sw	zero,-36(s0)	#, j
# code.c:11:         for (j = 0; j < *count; j++) {
	j	.L3		#
.L7:
# code.c:12:             k = out[j];
	lw	a5,-36(s0)		# _3, j
	slli	a5,a5,2	#, _4, _3
	ld	a4,-24(s0)		# tmp156, out
	add	a5,a4,a5	# _4, _5, tmp156
# code.c:12:             k = out[j];
	lw	a5,0(a5)		# tmp157, *_5
	sw	a5,-28(s0)	# tmp157, k
# code.c:13:             if (k * k > i) break;
	lw	a5,-28(s0)		# tmp160, k
	mulw	a5,a5,a5	# tmp158, tmp159, tmp159
	sext.w	a4,a5	# _6, tmp158
# code.c:13:             if (k * k > i) break;
	lw	a5,-40(s0)		# tmp162, i
	sext.w	a5,a5	# tmp163, tmp161
	blt	a5,a4,.L11	#, tmp163, tmp164,
# code.c:14:             if (i % k == 0) {
	lw	a5,-40(s0)		# tmp167, i
	mv	a4,a5	# tmp166, tmp167
	lw	a5,-28(s0)		# tmp170, k
	remw	a5,a4,a5	# tmp169, tmp168, tmp166
	sext.w	a5,a5	# _7, tmp168
# code.c:14:             if (i % k == 0) {
	bne	a5,zero,.L6	#, _7,,
# code.c:15:                 isp = 0;
	sw	zero,-32(s0)	#, isp
# code.c:16:                 break;
	j	.L5		#
.L6:
# code.c:11:         for (j = 0; j < *count; j++) {
	lw	a5,-36(s0)		# tmp173, j
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-36(s0)	# tmp171, j
.L3:
# code.c:11:         for (j = 0; j < *count; j++) {
	ld	a5,-64(s0)		# tmp174, count
	lw	a4,0(a5)		# _8, *count_24(D)
# code.c:11:         for (j = 0; j < *count; j++) {
	lw	a5,-36(s0)		# tmp176, j
	sext.w	a5,a5	# tmp177, tmp175
	blt	a5,a4,.L7	#, tmp177, tmp178,
	j	.L5		#
.L11:
# code.c:13:             if (k * k > i) break;
	nop	
.L5:
# code.c:19:         if (isp) {
	lw	a5,-32(s0)		# tmp180, isp
	sext.w	a5,a5	# tmp181, tmp179
	beq	a5,zero,.L8	#, tmp181,,
# code.c:20:             out[*count] = i;
	ld	a5,-64(s0)		# tmp182, count
	lw	a5,0(a5)		# _9, *count_24(D)
# code.c:20:             out[*count] = i;
	slli	a5,a5,2	#, _11, _10
	ld	a4,-24(s0)		# tmp183, out
	add	a5,a4,a5	# _11, _12, tmp183
# code.c:20:             out[*count] = i;
	lw	a4,-40(s0)		# tmp184, i
	sw	a4,0(a5)	# tmp184, *_12
# code.c:21:             (*count)++;
	ld	a5,-64(s0)		# tmp185, count
	lw	a5,0(a5)		# _13, *count_24(D)
# code.c:21:             (*count)++;
	addiw	a5,a5,1	#, tmp186, _13
	sext.w	a4,a5	# _14, tmp186
	ld	a5,-64(s0)		# tmp187, count
	sw	a4,0(a5)	# _14, *count_24(D)
.L8:
# code.c:9:     for (i = 2; i < n; i++) {
	lw	a5,-40(s0)		# tmp190, i
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-40(s0)	# tmp188, i
.L2:
# code.c:9:     for (i = 2; i < n; i++) {
	lw	a5,-40(s0)		# tmp192, i
	mv	a4,a5	# tmp191, tmp192
	lw	a5,-52(s0)		# tmp194, n
	sext.w	a4,a4	# tmp195, tmp191
	sext.w	a5,a5	# tmp196, tmp193
	blt	a4,a5,.L9	#, tmp195, tmp196,
# code.c:24:     return out;
	ld	a5,-24(s0)		# _27, out
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
