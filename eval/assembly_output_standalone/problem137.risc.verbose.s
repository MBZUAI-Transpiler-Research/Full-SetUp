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
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp157, size
	sd	a2,-56(s0)	# result, result
	sw	a5,-44(s0)	# tmp158, size
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
	ld	a4,-40(s0)		# tmp159, lst
	add	a5,a4,a5	# _2, _3, tmp159
	lw	a5,0(a5)		# _4, *_3
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	bge	a5,zero,.L3	#, tmp160,,
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-28(s0)		# tmp162, maxneg
	sext.w	a5,a5	# tmp163, tmp161
	beq	a5,zero,.L4	#, tmp163,,
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp164, lst
	add	a5,a4,a5	# _6, _7, tmp164
	lw	a4,0(a5)		# _8, *_7
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-28(s0)		# tmp166, maxneg
	sext.w	a5,a5	# tmp167, tmp165
	bge	a5,a4,.L3	#, tmp167, tmp168,
.L4:
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,-20(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp169, lst
	add	a5,a4,a5	# _10, _11, tmp169
# eval/problem137//code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	lw	a5,0(a5)		# tmp170, *_11
	sw	a5,-28(s0)	# tmp170, maxneg
.L3:
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp171, lst
	add	a5,a4,a5	# _13, _14, tmp171
	lw	a5,0(a5)		# _15, *_14
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ble	a5,zero,.L5	#, tmp172,,
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-24(s0)		# tmp174, minpos
	sext.w	a5,a5	# tmp175, tmp173
	beq	a5,zero,.L6	#, tmp175,,
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-40(s0)		# tmp176, lst
	add	a5,a4,a5	# _17, _18, tmp176
	lw	a4,0(a5)		# _19, *_18
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-24(s0)		# tmp178, minpos
	sext.w	a5,a5	# tmp179, tmp177
	ble	a5,a4,.L5	#, tmp179, tmp180,
.L6:
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,-20(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-40(s0)		# tmp181, lst
	add	a5,a4,a5	# _21, _22, tmp181
# eval/problem137//code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	lw	a5,0(a5)		# tmp182, *_22
	sw	a5,-24(s0)	# tmp182, minpos
.L5:
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp185, i
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-20(s0)	# tmp183, i
.L2:
# eval/problem137//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp187, i
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-44(s0)		# tmp189, size
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L7	#, tmp190, tmp191,
# eval/problem137//code.c:10:     result[0] = maxneg;
	ld	a5,-56(s0)		# tmp192, result
	lw	a4,-28(s0)		# tmp193, maxneg
	sw	a4,0(a5)	# tmp193, *result_34(D)
# eval/problem137//code.c:11:     result[1] = minpos;
	ld	a5,-56(s0)		# tmp194, result
	addi	a5,a5,4	#, _23, tmp194
# eval/problem137//code.c:11:     result[1] = minpos;
	lw	a4,-24(s0)		# tmp195, minpos
	sw	a4,0(a5)	# tmp195, *_23
# eval/problem137//code.c:12: }
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
