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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp151, count
	sd	a2,-56(s0)	# out_count, out_count
	sw	a5,-44(s0)	# tmp152, count
# code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	lw	a5,-44(s0)		# _1, count
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp153,
	sd	a5,-24(s0)	# tmp153, out
# code.c:6:     *out_count = 0;
	ld	a5,-56(s0)		# tmp154, out_count
	sw	zero,0(a5)	#, *out_count_24(D)
# code.c:8:     for (int i = 0; i < count; i++) {
	sw	zero,-28(s0)	#, i
# code.c:8:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L5:
# code.c:9:         if (l[i] > 0) {
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp155, l
	add	a5,a4,a5	# _4, _5, tmp155
	flw	fa5,0(a5)	# _6, *_5
# code.c:9:         if (l[i] > 0) {
	fmv.s.x	fa4,zero	# tmp156,
	fgt.s	a5,fa5,fa4	#, tmp157, _6, tmp156
	beq	a5,zero,.L3	#, tmp157,,
# code.c:10:             out[(*out_count)++] = l[i];
	lw	a5,-28(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp158, l
	add	a4,a4,a5	# _8, _9, tmp158
# code.c:10:             out[(*out_count)++] = l[i];
	ld	a5,-56(s0)		# tmp159, out_count
	lw	a5,0(a5)		# _10, *out_count_24(D)
# code.c:10:             out[(*out_count)++] = l[i];
	addiw	a3,a5,1	#, tmp160, _10
	sext.w	a2,a3	# _12, tmp160
	ld	a3,-56(s0)		# tmp161, out_count
	sw	a2,0(a3)	# _12, *out_count_24(D)
# code.c:10:             out[(*out_count)++] = l[i];
	slli	a5,a5,2	#, _14, _13
	ld	a3,-24(s0)		# tmp162, out
	add	a5,a3,a5	# _14, _15, tmp162
# code.c:10:             out[(*out_count)++] = l[i];
	flw	fa5,0(a4)	# _16, *_9
# code.c:10:             out[(*out_count)++] = l[i];
	fsw	fa5,0(a5)	# _16, *_15
.L3:
# code.c:8:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp165, i
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-28(s0)	# tmp163, i
.L2:
# code.c:8:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp167, i
	mv	a4,a5	# tmp166, tmp167
	lw	a5,-44(s0)		# tmp169, count
	sext.w	a4,a4	# tmp170, tmp166
	sext.w	a5,a5	# tmp171, tmp168
	blt	a4,a5,.L5	#, tmp170, tmp171,
# code.c:14:     return out;
	ld	a5,-24(s0)		# _27, out
# code.c:15: }
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
