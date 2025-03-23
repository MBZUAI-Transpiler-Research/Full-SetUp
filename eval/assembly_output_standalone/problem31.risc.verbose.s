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
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp89, count
	sd	a2,-56(s0)	# out_count, out_count
	sw	a5,-44(s0)	# tmp90, count
# eval/problem31//code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	lw	a5,-44(s0)		# _1, count
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp91,
	sd	a5,-24(s0)	# tmp91, out
# eval/problem31//code.c:6:     *out_count = 0;
	ld	a5,-56(s0)		# tmp92, out_count
	sw	zero,0(a5)	#, *out_count_24(D)
# eval/problem31//code.c:8:     for (int i = 0; i < count; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem31//code.c:8:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L5:
# eval/problem31//code.c:9:         if (l[i] > 0) {
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp93, l
	add	a5,a4,a5	# _4, _5, tmp93
	flw	fa5,0(a5)	# _6, *_5
# eval/problem31//code.c:9:         if (l[i] > 0) {
	fmv.w.x	fa4,zero	# tmp94,
	fgt.s	a5,fa5,fa4	#, tmp95, _6, tmp94
	beq	a5,zero,.L3	#, tmp95,,
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	lw	a5,-28(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp96, l
	add	a4,a4,a5	# _8, _9, tmp96
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	ld	a5,-56(s0)		# tmp97, out_count
	lw	a5,0(a5)		# _10, *out_count_24(D)
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	addiw	a3,a5,1	#, tmp98, _10
	sext.w	a2,a3	# _12, tmp98
	ld	a3,-56(s0)		# tmp99, out_count
	sw	a2,0(a3)	# _12, *out_count_24(D)
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	slli	a5,a5,2	#, _14, _13
	ld	a3,-24(s0)		# tmp100, out
	add	a5,a3,a5	# _14, _15, tmp100
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	flw	fa5,0(a4)	# _16, *_9
# eval/problem31//code.c:10:             out[(*out_count)++] = l[i];
	fsw	fa5,0(a5)	# _16, *_15
.L3:
# eval/problem31//code.c:8:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp103, i
	addiw	a5,a5,1	#, tmp101, tmp102
	sw	a5,-28(s0)	# tmp101, i
.L2:
# eval/problem31//code.c:8:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp105, i
	mv	a4,a5	# tmp104, tmp105
	lw	a5,-44(s0)		# tmp107, count
	sext.w	a4,a4	# tmp108, tmp104
	sext.w	a5,a5	# tmp109, tmp106
	blt	a4,a5,.L5	#, tmp108, tmp109,
# eval/problem31//code.c:14:     return out;
	ld	a5,-24(s0)		# _27, out
# eval/problem31//code.c:15: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
