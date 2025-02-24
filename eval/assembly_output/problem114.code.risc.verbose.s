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
	.section	.rodata
	.align	3
.LC0:
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp177, size
	sw	a5,-76(s0)	# tmp178, size
# code.c:6:     char **out = malloc(size * sizeof(char *));
	lw	a5,-76(s0)		# _1, size
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp179,
	sd	a5,-40(s0)	# tmp179, out
# code.c:7:     for (int i = 0; i < size; i++) {
	sw	zero,-52(s0)	#, i
# code.c:7:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# code.c:8:         int sum = 0;
	sw	zero,-48(s0)	#, sum
# code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	sw	zero,-44(s0)	#, j
# code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	j	.L3		#
.L5:
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _3, i
	slli	a5,a5,3	#, _4, _3
	ld	a4,-72(s0)		# tmp180, lst
	add	a5,a4,a5	# _4, _5, tmp180
	ld	a4,0(a5)		# _6, *_5
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _7, j
	add	a5,a4,a5	# _7, _8, _6
	lbu	a5,0(a5)	# _9, *_8
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp181, _9
	li	a5,47		# tmp182,
	bleu	a4,a5,.L4	#, tmp181, tmp182,
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _10, i
	slli	a5,a5,3	#, _11, _10
	ld	a4,-72(s0)		# tmp183, lst
	add	a5,a4,a5	# _11, _12, tmp183
	ld	a4,0(a5)		# _13, *_12
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _14, j
	add	a5,a4,a5	# _14, _15, _13
	lbu	a5,0(a5)	# _16, *_15
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp184, _16
	li	a5,57		# tmp185,
	bgtu	a4,a5,.L4	#, tmp184, tmp185,
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _17, i
	slli	a5,a5,3	#, _18, _17
	ld	a4,-72(s0)		# tmp186, lst
	add	a5,a4,a5	# _18, _19, tmp186
	ld	a4,0(a5)		# _20, *_19
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _21, j
	add	a5,a4,a5	# _21, _22, _20
	lbu	a5,0(a5)	# _23, *_22
	sext.w	a5,a5	# _24, _23
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	addiw	a5,a5,-48	#, tmp187, _24
	sext.w	a5,a5	# _25, tmp187
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp189, _25
	sraiw	a5,a4,31	#, tmp190, tmp189
	srliw	a5,a5,31	#, tmp191, tmp190
	addw	a4,a4,a5	# tmp191, tmp192, tmp189
	andi	a4,a4,1	#, tmp193, tmp192
	subw	a5,a4,a5	# tmp194, tmp193, tmp191
	sext.w	a5,a5	# _26, tmp194
# code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp195, _26
	li	a5,1		# tmp196,
	bne	a4,a5,.L4	#, tmp195, tmp196,
# code.c:11:                 sum += 1;
	lw	a5,-48(s0)		# tmp199, sum
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-48(s0)	# tmp197, sum
.L4:
# code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-44(s0)		# tmp202, j
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-44(s0)	# tmp200, j
.L3:
# code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-52(s0)		# _27, i
	slli	a5,a5,3	#, _28, _27
	ld	a4,-72(s0)		# tmp203, lst
	add	a5,a4,a5	# _28, _29, tmp203
	ld	a4,0(a5)		# _30, *_29
# code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-44(s0)		# _31, j
	add	a5,a4,a5	# _31, _32, _30
	lbu	a5,0(a5)	# _33, *_32
# code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	bne	a5,zero,.L5	#, _33,,
# code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	lw	a5,-52(s0)		# _34, i
	slli	a5,a5,3	#, _35, _34
	ld	a4,-40(s0)		# tmp204, out
	add	s1,a4,a5	# _35, _36, tmp204
# code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	li	a0,100		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp205,
# code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	sd	a5,0(s1)	# _37, *_36
# code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	lw	a5,-52(s0)		# _38, i
	slli	a5,a5,3	#, _39, _38
	ld	a4,-40(s0)		# tmp206, out
	add	a5,a4,a5	# _39, _40, tmp206
# code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	ld	a5,0(a5)		# _41, *_40
	lw	a4,-48(s0)		# tmp207, sum
	lw	a3,-48(s0)		# tmp208, sum
	lw	a2,-48(s0)		# tmp209, sum
	lla	a1,.LC0	#,
	mv	a0,a5	#, _41
	call	sprintf@plt	#
# code.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-52(s0)		# tmp212, i
	addiw	a5,a5,1	#, tmp210, tmp211
	sw	a5,-52(s0)	# tmp210, i
.L2:
# code.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-52(s0)		# tmp214, i
	mv	a4,a5	# tmp213, tmp214
	lw	a5,-76(s0)		# tmp216, size
	sext.w	a4,a4	# tmp217, tmp213
	sext.w	a5,a5	# tmp218, tmp215
	blt	a4,a5,.L6	#, tmp217, tmp218,
# code.c:16:     return out;
	ld	a5,-40(s0)		# _52, out
# code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)		#,
	.cfi_restore 9
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
