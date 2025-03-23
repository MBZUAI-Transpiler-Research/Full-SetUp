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
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp96, size
	sw	a5,-44(s0)	# tmp97, size
# eval/problem22//code.c:5:     float min = numbers[0], max = numbers[0];
	ld	a5,-40(s0)		# tmp98, numbers
	flw	fa5,0(a5)	# tmp99, *numbers_33(D)
	fsw	fa5,-32(s0)	# tmp99, min
# eval/problem22//code.c:5:     float min = numbers[0], max = numbers[0];
	ld	a5,-40(s0)		# tmp100, numbers
	flw	fa5,0(a5)	# tmp101, *numbers_33(D)
	fsw	fa5,-28(s0)	# tmp101, max
# eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp102,
	sw	a5,-24(s0)	# tmp102, i
# eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp103, numbers
	add	a5,a4,a5	# _2, _3, tmp103
	flw	fa5,0(a5)	# _4, *_3
# eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	flw	fa4,-32(s0)	# tmp104, min
	fgt.s	a5,fa4,fa5	#, tmp105, tmp104, _4
	beq	a5,zero,.L3	#, tmp105,,
# eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp106, numbers
	add	a5,a4,a5	# _6, _7, tmp106
# eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	flw	fa5,0(a5)	# tmp107, *_7
	fsw	fa5,-32(s0)	# tmp107, min
.L3:
# eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-24(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp108, numbers
	add	a5,a4,a5	# _9, _10, tmp108
	flw	fa5,0(a5)	# _11, *_10
# eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	flw	fa4,-28(s0)	# tmp109, max
	flt.s	a5,fa4,fa5	#, tmp110, tmp109, _11
	beq	a5,zero,.L5	#, tmp110,,
# eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-24(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp111, numbers
	add	a5,a4,a5	# _13, _14, tmp111
# eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	flw	fa5,0(a5)	# tmp112, *_14
	fsw	fa5,-28(s0)	# tmp112, max
.L5:
# eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-24(s0)		# tmp115, i
	addiw	a5,a5,1	#, tmp113, tmp114
	sw	a5,-24(s0)	# tmp113, i
.L2:
# eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-24(s0)		# tmp117, i
	mv	a4,a5	# tmp116, tmp117
	lw	a5,-44(s0)		# tmp119, size
	sext.w	a4,a4	# tmp120, tmp116
	sext.w	a5,a5	# tmp121, tmp118
	blt	a4,a5,.L7	#, tmp120, tmp121,
# eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	j	.L8		#
.L9:
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	lw	a5,-20(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a4,-40(s0)		# tmp122, numbers
	add	a5,a4,a5	# _16, _17, tmp122
	flw	fa4,0(a5)	# _18, *_17
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	flw	fa5,-32(s0)	# tmp123, min
	fsub.s	fa4,fa4,fa5	# _19, _18, tmp123
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	flw	fa3,-28(s0)	# tmp124, max
	flw	fa5,-32(s0)	# tmp125, min
	fsub.s	fa5,fa3,fa5	# _20, tmp124, tmp125
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	lw	a5,-20(s0)		# _21, i
	slli	a5,a5,2	#, _22, _21
	ld	a4,-40(s0)		# tmp126, numbers
	add	a5,a4,a5	# _22, _23, tmp126
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fdiv.s	fa5,fa4,fa5	# _24, _19, _20
# eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fsw	fa5,0(a5)	# _24, *_23
# eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp129, i
	addiw	a5,a5,1	#, tmp127, tmp128
	sw	a5,-20(s0)	# tmp127, i
.L8:
# eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp131, i
	mv	a4,a5	# tmp130, tmp131
	lw	a5,-44(s0)		# tmp133, size
	sext.w	a4,a4	# tmp134, tmp130
	sext.w	a5,a5	# tmp135, tmp132
	blt	a4,a5,.L9	#, tmp134, tmp135,
# eval/problem22//code.c:13: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
