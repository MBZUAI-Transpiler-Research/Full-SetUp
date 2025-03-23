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
	addi	sp,sp,-80	#,,
	sd	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# numbers, numbers
	mv	a5,a1	# tmp98, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp99, size
# eval/problem21//code.c:6:     float min_diff = FLT_MAX;
	lla	a5,.LC0	# tmp100,
	flw	fa5,0(a5)	# tmp101,
	fsw	fa5,-36(s0)	# tmp101, min_diff
# eval/problem21//code.c:9:     out[0] = numbers[0];
	ld	a5,-56(s0)		# tmp102, numbers
	flw	fa5,0(a5)	# _1, *numbers_38(D)
# eval/problem21//code.c:9:     out[0] = numbers[0];
	ld	a5,-72(s0)		# tmp103, out
	fsw	fa5,0(a5)	# _1, *out_39(D)
# eval/problem21//code.c:10:     out[1] = numbers[1];
	ld	a5,-72(s0)		# tmp104, out
	addi	a5,a5,4	#, _2, tmp104
# eval/problem21//code.c:10:     out[1] = numbers[1];
	ld	a4,-56(s0)		# tmp105, numbers
	flw	fa5,4(a4)	# _3, MEM[(float *)numbers_38(D) + 4B]
	fsw	fa5,0(a5)	# _3, *_2
# eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-28(s0)	# tmp106, j
# eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	j	.L3		#
.L6:
# eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	lw	a5,-32(s0)		# _4, i
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp109, numbers
	add	a5,a4,a5	# _5, _6, tmp109
	flw	fa4,0(a5)	# _7, *_6
# eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	lw	a5,-28(s0)		# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-56(s0)		# tmp110, numbers
	add	a5,a4,a5	# _9, _10, tmp110
	flw	fa5,0(a5)	# _11, *_10
# eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fsub.s	fa5,fa4,fa5	# _12, _7, _11
# eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fabs.s	fa5,fa5	# tmp111, _12
	fsw	fa5,-20(s0)	# tmp111, diff
# eval/problem21//code.c:15:             if (diff < min_diff) {
	flw	fa4,-20(s0)	# tmp112, diff
	flw	fa5,-36(s0)	# tmp113, min_diff
	flt.s	a5,fa4,fa5	#, tmp114, tmp112, tmp113
	beq	a5,zero,.L4	#, tmp114,,
# eval/problem21//code.c:16:                 min_diff = diff;
	flw	fa5,-20(s0)	# tmp115, diff
	fsw	fa5,-36(s0)	# tmp115, min_diff
# eval/problem21//code.c:17:                 out[0] = numbers[i];
	lw	a5,-32(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp116, numbers
	add	a5,a4,a5	# _14, _15, tmp116
	flw	fa5,0(a5)	# _16, *_15
# eval/problem21//code.c:17:                 out[0] = numbers[i];
	ld	a5,-72(s0)		# tmp117, out
	fsw	fa5,0(a5)	# _16, *out_39(D)
# eval/problem21//code.c:18:                 out[1] = numbers[j];
	lw	a5,-28(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a4,-56(s0)		# tmp118, numbers
	add	a4,a4,a5	# _18, _19, tmp118
# eval/problem21//code.c:18:                 out[1] = numbers[j];
	ld	a5,-72(s0)		# tmp119, out
	addi	a5,a5,4	#, _20, tmp119
# eval/problem21//code.c:18:                 out[1] = numbers[j];
	flw	fa5,0(a4)	# _21, *_19
# eval/problem21//code.c:18:                 out[1] = numbers[j];
	fsw	fa5,0(a5)	# _21, *_20
.L4:
# eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp122, j
	addiw	a5,a5,1	#, tmp120, tmp121
	sw	a5,-28(s0)	# tmp120, j
.L3:
# eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp124, j
	mv	a4,a5	# tmp123, tmp124
	lw	a5,-60(s0)		# tmp126, size
	sext.w	a4,a4	# tmp127, tmp123
	sext.w	a5,a5	# tmp128, tmp125
	blt	a4,a5,.L6	#, tmp127, tmp128,
# eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp131, i
	addiw	a5,a5,1	#, tmp129, tmp130
	sw	a5,-32(s0)	# tmp129, i
.L2:
# eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp133, i
	mv	a4,a5	# tmp132, tmp133
	lw	a5,-60(s0)		# tmp135, size
	sext.w	a4,a4	# tmp136, tmp132
	sext.w	a5,a5	# tmp137, tmp134
	blt	a4,a5,.L7	#, tmp136, tmp137,
# eval/problem21//code.c:23:     if (out[0] > out[1]) {
	ld	a5,-72(s0)		# tmp138, out
	flw	fa4,0(a5)	# _22, *out_39(D)
# eval/problem21//code.c:23:     if (out[0] > out[1]) {
	ld	a5,-72(s0)		# tmp139, out
	addi	a5,a5,4	#, _23, tmp139
	flw	fa5,0(a5)	# _24, *_23
# eval/problem21//code.c:23:     if (out[0] > out[1]) {
	fgt.s	a5,fa4,fa5	#, tmp140, _22, _24
	bne	a5,zero,.L11	#, tmp140,,
# eval/problem21//code.c:28: }
	j	.L12		#
.L11:
# eval/problem21//code.c:24:         float temp = out[0];
	ld	a5,-72(s0)		# tmp141, out
	flw	fa5,0(a5)	# tmp142, *out_39(D)
	fsw	fa5,-24(s0)	# tmp142, temp
# eval/problem21//code.c:25:         out[0] = out[1];
	ld	a5,-72(s0)		# tmp143, out
	flw	fa5,4(a5)	# _25, MEM[(float *)out_39(D) + 4B]
	ld	a5,-72(s0)		# tmp144, out
	fsw	fa5,0(a5)	# _25, *out_39(D)
# eval/problem21//code.c:26:         out[1] = temp;
	ld	a5,-72(s0)		# tmp145, out
	addi	a5,a5,4	#, _26, tmp145
# eval/problem21//code.c:26:         out[1] = temp;
	flw	fa5,-24(s0)	# tmp146, temp
	fsw	fa5,0(a5)	# tmp146, *_26
.L12:
# eval/problem21//code.c:28: }
	nop	
	ld	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	2139095039
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
