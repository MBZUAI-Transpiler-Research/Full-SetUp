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
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp112, size
	sw	a5,-44(s0)	# tmp113, size
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp116, i
	addiw	a5,a5,1	#, tmp114, tmp115
	sw	a5,-24(s0)	# tmp114, j
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L6:
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp117, l
	add	a5,a4,a5	# _2, _3, tmp117
	flw	fa4,0(a5)	# _4, *_3
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	lw	a5,-24(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp118, l
	add	a5,a4,a5	# _6, _7, tmp118
	flw	fa5,0(a5)	# _8, *_7
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	fgt.s	a5,fa4,fa5	#, tmp119, _4, _8
	beq	a5,zero,.L4	#, tmp119,,
# eval/problem48//code.c:9:                 float temp = l[i];
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp120, l
	add	a5,a4,a5	# _10, _11, tmp120
# eval/problem48//code.c:9:                 float temp = l[i];
	flw	fa5,0(a5)	# tmp121, *_11
	fsw	fa5,-20(s0)	# tmp121, temp
# eval/problem48//code.c:10:                 l[i] = l[j];
	lw	a5,-24(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp122, l
	add	a4,a4,a5	# _13, _14, tmp122
# eval/problem48//code.c:10:                 l[i] = l[j];
	lw	a5,-28(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a3,-40(s0)		# tmp123, l
	add	a5,a3,a5	# _16, _17, tmp123
# eval/problem48//code.c:10:                 l[i] = l[j];
	flw	fa5,0(a4)	# _18, *_14
# eval/problem48//code.c:10:                 l[i] = l[j];
	fsw	fa5,0(a5)	# _18, *_17
# eval/problem48//code.c:11:                 l[j] = temp;
	lw	a5,-24(s0)		# _19, j
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp124, l
	add	a5,a4,a5	# _20, _21, tmp124
# eval/problem48//code.c:11:                 l[j] = temp;
	flw	fa5,-20(s0)	# tmp125, temp
	fsw	fa5,0(a5)	# tmp125, *_21
.L4:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp128, j
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-24(s0)	# tmp126, j
.L3:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp130, j
	mv	a4,a5	# tmp129, tmp130
	lw	a5,-44(s0)		# tmp132, size
	sext.w	a4,a4	# tmp133, tmp129
	sext.w	a5,a5	# tmp134, tmp131
	blt	a4,a5,.L6	#, tmp133, tmp134,
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp137, i
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-28(s0)	# tmp135, i
.L2:
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp139, i
	mv	a4,a5	# tmp138, tmp139
	lw	a5,-44(s0)		# tmp141, size
	sext.w	a4,a4	# tmp142, tmp138
	sext.w	a5,a5	# tmp143, tmp140
	blt	a4,a5,.L7	#, tmp142, tmp143,
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	lw	a5,-44(s0)		# tmp146, size
	mv	a4,a5	# tmp145, tmp146
	sraiw	a5,a4,31	#, tmp147, tmp145
	srliw	a5,a5,31	#, tmp148, tmp147
	addw	a4,a4,a5	# tmp148, tmp149, tmp145
	andi	a4,a4,1	#, tmp150, tmp149
	subw	a5,a4,a5	# tmp151, tmp150, tmp148
	sext.w	a5,a5	# _22, tmp151
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	mv	a4,a5	# tmp152, _22
	li	a5,1		# tmp153,
	bne	a4,a5,.L8	#, tmp152, tmp153,
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	lw	a5,-44(s0)		# tmp156, size
	srliw	a4,a5,31	#, tmp157, tmp155
	addw	a5,a4,a5	# tmp155, tmp158, tmp157
	sraiw	a5,a5,1	#, tmp159, tmp158
	sext.w	a5,a5	# _23, tmp159
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-40(s0)		# tmp160, l
	add	a5,a4,a5	# _25, _26, tmp160
	flw	fa5,0(a5)	# _41, *_26
	j	.L9		#
.L8:
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lw	a5,-44(s0)		# tmp163, size
	srliw	a4,a5,31	#, tmp164, tmp162
	addw	a5,a4,a5	# tmp162, tmp165, tmp164
	sraiw	a5,a5,1	#, tmp166, tmp165
	sext.w	a5,a5	# _27, tmp166
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	slli	a5,a5,2	#, _29, _28
	ld	a4,-40(s0)		# tmp167, l
	add	a5,a4,a5	# _29, _30, tmp167
	flw	fa4,0(a5)	# _31, *_30
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lw	a5,-44(s0)		# tmp170, size
	srliw	a4,a5,31	#, tmp171, tmp169
	addw	a5,a4,a5	# tmp169, tmp172, tmp171
	sraiw	a5,a5,1	#, tmp173, tmp172
	sext.w	a5,a5	# _32, tmp173
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	slli	a5,a5,2	#, _34, _33
	addi	a5,a5,-4	#, _35, _34
	ld	a4,-40(s0)		# tmp174, l
	add	a5,a4,a5	# _35, _36, tmp174
	flw	fa5,0(a5)	# _37, *_36
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fadd.s	fa4,fa4,fa5	# _38, _31, _37
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lla	a5,.LC0	# tmp176,
	flw	fa5,0(a5)	# tmp175,
	fmul.s	fa5,fa4,fa5	# _41, _38, tmp175
.L9:
# eval/problem48//code.c:17: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	1056964608
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
