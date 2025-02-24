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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp163, lst_size
	sw	a5,-44(s0)	# tmp164, lst_size
# code.c:5:     if (lst_size == 0) return true;
	lw	a5,-44(s0)		# tmp166, lst_size
	sext.w	a5,a5	# tmp167, tmp165
	bne	a5,zero,.L2	#, tmp167,,
# code.c:5:     if (lst_size == 0) return true;
	li	a5,1		# _29,
# code.c:5:     if (lst_size == 0) return true;
	j	.L3		#
.L2:
# code.c:7:     for (int i = 1; i < lst_size; i++) {
	li	a5,1		# tmp168,
	sw	a5,-20(s0)	# tmp168, i
# code.c:7:     for (int i = 1; i < lst_size; i++) {
	j	.L4		#
.L7:
# code.c:8:         if (lst[i] < lst[i - 1]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp169, lst
	add	a5,a4,a5	# _2, _3, tmp169
	lw	a3,0(a5)		# _4, *_3
# code.c:8:         if (lst[i] < lst[i - 1]) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp170, lst
	add	a5,a4,a5	# _7, _8, tmp170
	lw	a5,0(a5)		# _9, *_8
# code.c:8:         if (lst[i] < lst[i - 1]) return false;
	mv	a4,a3	# tmp171, _4
	bge	a4,a5,.L5	#, tmp171, tmp172,
# code.c:8:         if (lst[i] < lst[i - 1]) return false;
	li	a5,0		# _29,
# code.c:8:         if (lst[i] < lst[i - 1]) return false;
	j	.L3		#
.L5:
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# tmp174, i
	sext.w	a4,a5	# tmp175, tmp173
	li	a5,1		# tmp176,
	ble	a4,a5,.L6	#, tmp175, tmp176,
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp177, lst
	add	a5,a4,a5	# _11, _12, tmp177
	lw	a3,0(a5)		# _13, *_12
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a4,-40(s0)		# tmp178, lst
	add	a5,a4,a5	# _16, _17, tmp178
	lw	a5,0(a5)		# _18, *_17
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mv	a4,a3	# tmp179, _13
	bne	a4,a5,.L6	#, tmp179, tmp180,
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp181, lst
	add	a5,a4,a5	# _20, _21, tmp181
	lw	a3,0(a5)		# _22, *_21
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	lw	a5,-20(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	addi	a5,a5,-8	#, _25, _24
	ld	a4,-40(s0)		# tmp182, lst
	add	a5,a4,a5	# _25, _26, tmp182
	lw	a5,0(a5)		# _27, *_26
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mv	a4,a3	# tmp183, _22
	bne	a4,a5,.L6	#, tmp183, tmp184,
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	li	a5,0		# _29,
# code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	j	.L3		#
.L6:
# code.c:7:     for (int i = 1; i < lst_size; i++) {
	lw	a5,-20(s0)		# tmp187, i
	addiw	a5,a5,1	#, tmp185, tmp186
	sw	a5,-20(s0)	# tmp185, i
.L4:
# code.c:7:     for (int i = 1; i < lst_size; i++) {
	lw	a5,-20(s0)		# tmp189, i
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-44(s0)		# tmp191, lst_size
	sext.w	a4,a4	# tmp192, tmp188
	sext.w	a5,a5	# tmp193, tmp190
	blt	a4,a5,.L7	#, tmp192, tmp193,
# code.c:11:     return true;
	li	a5,1		# _29,
.L3:
# code.c:12: }
	mv	a0,a5	#, <retval>
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
