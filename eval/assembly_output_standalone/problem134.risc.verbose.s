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
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp151, size
	sw	a5,-60(s0)	# tmp152, size
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
	ld	a4,-56(s0)		# tmp153, lst
	add	a5,a4,a5	# _2, _3, tmp153
	flw	fa5,0(a5)	# _4, *_3
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.d.s	fa5,fa5	# _5, _4
	fmv.d	fa0,fa5	#, _5
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _6,
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.w.d a5,fa5,rtz	# tmp154, _6
	sext.w	s1,a5	# _7, tmp154
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a5,-36(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-56(s0)		# tmp155, lst
	add	a5,a4,a5	# _9, _10, tmp155
	flw	fa5,0(a5)	# _11, *_10
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.d.s	fa5,fa5	# _12, _11
	fmv.d	fa0,fa5	#, _12
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _13,
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.w.d a5,fa5,rtz	# tmp156, _13
	sext.w	a5,a5	# _14, tmp156
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	mulw	a5,s1,a5	# tmp157, _7, _14
	sext.w	a5,a5	# _15, tmp157
# eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a4,-40(s0)		# tmp160, sum
	addw	a5,a4,a5	# _15, tmp158, tmp159
	sw	a5,-40(s0)	# tmp158, sum
# eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-36(s0)	# tmp161, i
.L2:
# eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp165, i
	mv	a4,a5	# tmp164, tmp165
	lw	a5,-60(s0)		# tmp167, size
	sext.w	a4,a4	# tmp168, tmp164
	sext.w	a5,a5	# tmp169, tmp166
	blt	a4,a5,.L3	#, tmp168, tmp169,
# eval/problem134//code.c:9:     return sum;
	lw	a5,-40(s0)		# _21, sum
# eval/problem134//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
