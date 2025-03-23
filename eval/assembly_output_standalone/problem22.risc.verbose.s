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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp158, size
	sw	a5,-44(s0)	# tmp159, size
# eval/problem22//code.c:5:     float min = numbers[0], max = numbers[0];
	ld	a5,-40(s0)		# tmp160, numbers
	flw	fa5,0(a5)	# tmp161, *numbers_33(D)
	fsw	fa5,-32(s0)	# tmp161, min
# eval/problem22//code.c:5:     float min = numbers[0], max = numbers[0];
	ld	a5,-40(s0)		# tmp162, numbers
	flw	fa5,0(a5)	# tmp163, *numbers_33(D)
	fsw	fa5,-28(s0)	# tmp163, max
# eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp164,
	sw	a5,-24(s0)	# tmp164, i
# eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp165, numbers
	add	a5,a4,a5	# _2, _3, tmp165
	flw	fa5,0(a5)	# _4, *_3
# eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	flw	fa4,-32(s0)	# tmp166, min
	fgt.s	a5,fa4,fa5	#, tmp167, tmp166, _4
	beq	a5,zero,.L3	#, tmp167,,
# eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp168, numbers
	add	a5,a4,a5	# _6, _7, tmp168
# eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	flw	fa5,0(a5)	# tmp169, *_7
	fsw	fa5,-32(s0)	# tmp169, min
.L3:
# eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-24(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp170, numbers
	add	a5,a4,a5	# _9, _10, tmp170
	flw	fa5,0(a5)	# _11, *_10
# eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	flw	fa4,-28(s0)	# tmp171, max
	flt.s	a5,fa4,fa5	#, tmp172, tmp171, _11
	beq	a5,zero,.L5	#, tmp172,,
# eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-24(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp173, numbers
	add	a5,a4,a5	# _13, _14, tmp173
# eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	flw	fa5,0(a5)	# tmp174, *_14
	fsw	fa5,-28(s0)	# tmp174, max
.L5:
# eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-24(s0)		# tmp177, i
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-24(s0)	# tmp175, i
.L2:
# eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-24(s0)		# tmp179, i
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-44(s0)		# tmp181, size
	sext.w	a4,a4	# tmp182, tmp178
	sext.w	a5,a5	# tmp183, tmp180
	blt	a4,a5,.L7	#, tmp182, tmp183,
# eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	j	.L8		#
.L9:
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	lw	a5,-20(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a4,-40(s0)		# tmp184, numbers
	add	a5,a4,a5	# _16, _17, tmp184
	flw	fa4,0(a5)	# _18, *_17
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	flw	fa5,-32(s0)	# tmp185, min
	fsub.s	fa4,fa4,fa5	# _19, _18, tmp185
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	flw	fa3,-28(s0)	# tmp186, max
	flw	fa5,-32(s0)	# tmp187, min
	fsub.s	fa5,fa3,fa5	# _20, tmp186, tmp187
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	lw	a5,-20(s0)		# _21, i
	slli	a5,a5,2	#, _22, _21
	ld	a4,-40(s0)		# tmp188, numbers
	add	a5,a4,a5	# _22, _23, tmp188
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fdiv.s	fa5,fa4,fa5	# _24, _19, _20
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fsw	fa5,0(a5)	# _24, *_23
# eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp191, i
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-20(s0)	# tmp189, i
.L8:
# eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp193, i
	mv	a4,a5	# tmp192, tmp193
	lw	a5,-44(s0)		# tmp195, size
	sext.w	a4,a4	# tmp196, tmp192
	sext.w	a5,a5	# tmp197, tmp194
	blt	a4,a5,.L9	#, tmp196, tmp197,
# eval/problem22//code.c:13: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
