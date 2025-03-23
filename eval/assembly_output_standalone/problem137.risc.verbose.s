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
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp95, size
	sd	a2,-56(s0)	# result, result
	sw	a5,-44(s0)	# tmp96, size
# eval/problem137//code.c:4:     int maxneg = 0;
	sw	zero,-28(s0)	#, maxneg
# eval/problem137//code.c:5:     int minpos = 0;
	sw	zero,-24(s0)	#, minpos
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp97, lst
	add	a5,a4,a5	# _2, _3, tmp97
	lw	a5,0(a5)		# _4, *_3
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	bge	a5,zero,.L3	#, tmp98,,
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-28(s0)		# tmp100, maxneg
	sext.w	a5,a5	# tmp101, tmp99
	beq	a5,zero,.L4	#, tmp101,,
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp102, lst
	add	a5,a4,a5	# _6, _7, tmp102
	lw	a4,0(a5)		# _8, *_7
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-28(s0)		# tmp104, maxneg
	sext.w	a5,a5	# tmp105, tmp103
	bge	a5,a4,.L3	#, tmp105, tmp106,
.L4:
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp107, lst
	add	a5,a4,a5	# _10, _11, tmp107
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,0(a5)		# tmp108, *_11
	sw	a5,-28(s0)	# tmp108, maxneg
.L3:
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp109, lst
	add	a5,a4,a5	# _13, _14, tmp109
	lw	a5,0(a5)		# _15, *_14
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ble	a5,zero,.L5	#, tmp110,,
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-24(s0)		# tmp112, minpos
	sext.w	a5,a5	# tmp113, tmp111
	beq	a5,zero,.L6	#, tmp113,,
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-40(s0)		# tmp114, lst
	add	a5,a4,a5	# _17, _18, tmp114
	lw	a4,0(a5)		# _19, *_18
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-24(s0)		# tmp116, minpos
	sext.w	a5,a5	# tmp117, tmp115
	ble	a5,a4,.L5	#, tmp117, tmp118,
.L6:
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-40(s0)		# tmp119, lst
	add	a5,a4,a5	# _21, _22, tmp119
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,0(a5)		# tmp120, *_22
	sw	a5,-24(s0)	# tmp120, minpos
.L5:
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp123, i
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-20(s0)	# tmp121, i
.L2:
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp125, i
	mv	a4,a5	# tmp124, tmp125
	lw	a5,-44(s0)		# tmp127, size
	sext.w	a4,a4	# tmp128, tmp124
	sext.w	a5,a5	# tmp129, tmp126
	blt	a4,a5,.L7	#, tmp128, tmp129,
# eval/problem137//code.c:10:     result[0] = maxneg;
	ld	a5,-56(s0)		# tmp130, result
	lw	a4,-28(s0)		# tmp131, maxneg
	sw	a4,0(a5)	# tmp131, *result_34(D)
# eval/problem137//code.c:11:     result[1] = minpos;
	ld	a5,-56(s0)		# tmp132, result
	addi	a5,a5,4	#, _23, tmp132
# eval/problem137//code.c:11:     result[1] = minpos;
	lw	a4,-24(s0)		# tmp133, minpos
	sw	a4,0(a5)	# tmp133, *_23
# eval/problem137//code.c:12: }
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
