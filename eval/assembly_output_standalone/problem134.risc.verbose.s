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
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp89, size
	sw	a5,-60(s0)	# tmp90, size
# eval/problem134//code.c:5:     int sum = 0;
	sw	zero,-40(s0)	#, sum
# eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L3:
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a5,-36(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp91, lst
	add	a5,a4,a5	# _2, _3, tmp91
	flw	fa5,0(a5)	# _4, *_3
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.d.s	fa5,fa5	# _5, _4
	fmv.d	fa0,fa5	#, _5
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _6,
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.w.d a5,fa5,rtz	# tmp92, _6
	sext.w	s1,a5	# _7, tmp92
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a5,-36(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-56(s0)		# tmp93, lst
	add	a5,a4,a5	# _9, _10, tmp93
	flw	fa5,0(a5)	# _11, *_10
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.d.s	fa5,fa5	# _12, _11
	fmv.d	fa0,fa5	#, _12
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _13,
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.w.d a5,fa5,rtz	# tmp94, _13
	sext.w	a5,a5	# _14, tmp94
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	mulw	a5,s1,a5	# tmp95, _7, _14
	sext.w	a5,a5	# _15, tmp95
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a4,-40(s0)		# tmp98, sum
	addw	a5,a4,a5	# _15, tmp96, tmp97
	sw	a5,-40(s0)	# tmp96, sum
# eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp101, i
	addiw	a5,a5,1	#, tmp99, tmp100
	sw	a5,-36(s0)	# tmp99, i
.L2:
# eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp103, i
	mv	a4,a5	# tmp102, tmp103
	lw	a5,-60(s0)		# tmp105, size
	sext.w	a4,a4	# tmp106, tmp102
	sext.w	a5,a5	# tmp107, tmp104
	blt	a4,a5,.L3	#, tmp106, tmp107,
# eval/problem134//code.c:9:     return sum;
	lw	a5,-40(s0)		# _21, sum
# eval/problem134//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
