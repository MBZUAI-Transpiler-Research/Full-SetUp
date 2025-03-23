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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	sd	s1,88(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)	# s, s
	mv	a5,a1	# tmp161, n
	sw	a5,-108(s0)	# tmp162, n
# eval/problem68//code.c:5: int func0(const char *s, int n) {
	la	a5,__stack_chk_guard		# tmp163,
	ld	a4, 0(a5)	# tmp199, __stack_chk_guard
	sd	a4, -40(s0)	# tmp199, D.3369
	li	a4, 0	# tmp199
# eval/problem68//code.c:6:     char num1[10] = "";
	sd	zero,-72(s0)	#, num1
	sh	zero,-64(s0)	#, num1
# eval/problem68//code.c:7:     char num2[10] = "";
	sd	zero,-56(s0)	#, num2
	sh	zero,-48(s0)	#, num2
# eval/problem68//code.c:8:     int is12 = 0, j = 0;
	sw	zero,-84(s0)	#, is12
# eval/problem68//code.c:8:     int is12 = 0, j = 0;
	sw	zero,-80(s0)	#, j
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	sw	zero,-76(s0)	#, i
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L6:
# eval/problem68//code.c:11:         if (isdigit(s[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _1,
# eval/problem68//code.c:11:         if (isdigit(s[i])) {
	ld	a4,0(a5)		# _2, *_1
	lw	a5,-76(s0)		# _3, i
	ld	a3,-104(s0)		# tmp164, s
	add	a5,a3,a5	# _3, _4, tmp164
	lbu	a5,0(a5)	# _5, *_4
	slli	a5,a5,1	#, _7, _6
	add	a5,a4,a5	# _7, _8, _2
	lhu	a5,0(a5)	# _9, *_8
	sext.w	a4,a5	# _10, _9
	li	a5,4096		# tmp167,
	addi	a5,a5,-2048	#, tmp166, tmp167
	and	a5,a4,a5	# tmp166, tmp165, _10
	sext.w	a5,a5	# _11, tmp165
# eval/problem68//code.c:11:         if (isdigit(s[i])) {
	beq	a5,zero,.L3	#, _11,,
# eval/problem68//code.c:12:             if (is12 == 0) {
	lw	a5,-84(s0)		# tmp169, is12
	sext.w	a5,a5	# tmp170, tmp168
	bne	a5,zero,.L4	#, tmp170,,
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	lw	a5,-76(s0)		# _12, i
	ld	a4,-104(s0)		# tmp171, s
	add	a4,a4,a5	# _12, _13, tmp171
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	lw	a5,-80(s0)		# j.0_14, j
	addiw	a3,a5,1	#, tmp172, j.0_14
	sw	a3,-80(s0)	# tmp172, j
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	lbu	a4,0(a4)	# _15, *_13
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	addi	a5,a5,-32	#, tmp203, j.0_14
	add	a5,a5,s0	#, tmp173, tmp203
	sb	a4,-40(a5)	# _15, num1[j.0_14]
	j	.L5		#
.L4:
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	lw	a5,-76(s0)		# _16, i
	ld	a4,-104(s0)		# tmp174, s
	add	a4,a4,a5	# _16, _17, tmp174
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	lw	a5,-80(s0)		# j.1_18, j
	addiw	a3,a5,1	#, tmp175, j.1_18
	sw	a3,-80(s0)	# tmp175, j
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	lbu	a4,0(a4)	# _19, *_17
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	addi	a5,a5,-32	#, tmp204, j.1_18
	add	a5,a5,s0	#, tmp176, tmp204
	sb	a4,-24(a5)	# _19, num2[j.1_18]
	j	.L5		#
.L3:
# eval/problem68//code.c:18:             if (is12 == 0 && j > 0) {
	lw	a5,-84(s0)		# tmp178, is12
	sext.w	a5,a5	# tmp179, tmp177
	bne	a5,zero,.L5	#, tmp179,,
# eval/problem68//code.c:18:             if (is12 == 0 && j > 0) {
	lw	a5,-80(s0)		# tmp181, j
	sext.w	a5,a5	# tmp182, tmp180
	ble	a5,zero,.L5	#, tmp182,,
# eval/problem68//code.c:19:                 is12 = 1;
	li	a5,1		# tmp183,
	sw	a5,-84(s0)	# tmp183, is12
# eval/problem68//code.c:20:                 j = 0;
	sw	zero,-80(s0)	#, j
.L5:
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-76(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-76(s0)	# tmp184, i
.L2:
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-76(s0)		# _20, i
	ld	a4,-104(s0)		# tmp187, s
	add	a5,a4,a5	# _20, _21, tmp187
	lbu	a5,0(a5)	# _22, *_21
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L6	#, _22,,
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	addi	a5,s0,-72	#, tmp188,
	mv	a0,a5	#, tmp188
	call	atoi@plt	#
	mv	a5,a0	# tmp189,
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	lw	a4,-108(s0)		# tmp192, n
	subw	a5,a4,a5	# tmp190, tmp191, _23
	sext.w	s1,a5	# _24, tmp190
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	addi	a5,s0,-56	#, tmp193,
	mv	a0,a5	#, tmp193
	call	atoi@plt	#
	mv	a5,a0	# tmp194,
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	subw	a5,s1,a5	# tmp195, _24, _25
	sext.w	a5,a5	# _41, tmp195
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	mv	a4,a5	# <retval>, _41
# eval/problem68//code.c:25: }
	la	a5,__stack_chk_guard		# tmp197,
	ld	a3, -40(s0)	# tmp200, D.3369
	ld	a5, 0(a5)	# tmp198, __stack_chk_guard
	xor	a5, a3, a5	# tmp198, tmp200
	li	a3, 0	# tmp200
	beq	a5,zero,.L8	#, tmp198,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	ld	s1,88(sp)		#,
	.cfi_restore 9
	addi	sp,sp,112	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
