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
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-336	#,,
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)	#,
	sd	s0,320(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,336	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-328(s0)	# words, words
	mv	a5,a1	# tmp169, count
	sw	a5,-332(s0)	# tmp170, count
# eval/problem159//code.c:4: char *func0(char *words[], int count) {
	la	a5,__stack_chk_guard		# tmp171,
	ld	a4, 0(a5)	# tmp223, __stack_chk_guard
	sd	a4, -24(s0)	# tmp223, D.2945
	li	a4, 0	# tmp223
# eval/problem159//code.c:5:     char *max = "";
	lla	a5,.LC0	# tmp172,
	sd	a5,-288(s0)	# tmp172, max
# eval/problem159//code.c:6:     int maxu = 0;
	sw	zero,-308(s0)	#, maxu
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	sw	zero,-304(s0)	#, i
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L8:
# eval/problem159//code.c:8:         char unique[256] = {0};
	addi	a5,s0,-280	#, tmp173,
	li	a4,256		# tmp174,
	mv	a2,a4	#, tmp174
	li	a1,0		#,
	mv	a0,a5	#, tmp173
	call	memset@plt	#
# eval/problem159//code.c:9:         int unique_count = 0;
	sw	zero,-300(s0)	#, unique_count
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	sw	zero,-296(s0)	#, j
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	j	.L3		#
.L5:
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	lw	a5,-304(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-328(s0)		# tmp176, words
	add	a5,a4,a5	# _2, _3, tmp176
	ld	a4,0(a5)		# _4, *_3
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	lw	a5,-296(s0)		# _5, j
	add	a5,a4,a5	# _5, _6, _4
	lbu	a5,0(a5)	# _7, *_6
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	sext.w	a4,a5	# _8, _7
	addi	a5,s0,-280	#, tmp177,
	mv	a1,a4	#, _8
	mv	a0,a5	#, tmp177
	call	strchr@plt	#
	mv	a5,a0	# _9,
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	bne	a5,zero,.L4	#, _9,,
# eval/problem159//code.c:12:                 int len = strlen(unique);
	addi	a5,s0,-280	#, tmp178,
	mv	a0,a5	#, tmp178
	call	strlen@plt	#
	mv	a5,a0	# _10,
# eval/problem159//code.c:12:                 int len = strlen(unique);
	sw	a5,-292(s0)	# _10, len
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	lw	a5,-304(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-328(s0)		# tmp179, words
	add	a5,a4,a5	# _12, _13, tmp179
	ld	a4,0(a5)		# _14, *_13
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	lw	a5,-296(s0)		# _15, j
	add	a5,a4,a5	# _15, _16, _14
	lbu	a4,0(a5)	# _17, *_16
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	lw	a5,-292(s0)		# tmp180, len
	addi	a5,a5,-16	#, tmp227, tmp180
	add	a5,a5,s0	#, tmp181, tmp227
	sb	a4,-264(a5)	# _17, unique[len_59]
# eval/problem159//code.c:14:                 unique[len + 1] = '\0';
	lw	a5,-292(s0)		# tmp184, len
	addiw	a5,a5,1	#, tmp182, tmp183
	sext.w	a5,a5	# _18, tmp182
# eval/problem159//code.c:14:                 unique[len + 1] = '\0';
	addi	a5,a5,-16	#, tmp228, _18
	add	a5,a5,s0	#, tmp185, tmp228
	sb	zero,-264(a5)	#, unique[_18]
# eval/problem159//code.c:15:                 unique_count++;
	lw	a5,-300(s0)		# tmp188, unique_count
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-300(s0)	# tmp186, unique_count
.L4:
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-296(s0)		# tmp191, j
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-296(s0)	# tmp189, j
.L3:
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-304(s0)		# _19, i
	slli	a5,a5,3	#, _20, _19
	ld	a4,-328(s0)		# tmp192, words
	add	a5,a4,a5	# _20, _21, tmp192
	ld	a4,0(a5)		# _22, *_21
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-296(s0)		# _23, j
	add	a5,a4,a5	# _23, _24, _22
	lbu	a5,0(a5)	# _25, *_24
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	bne	a5,zero,.L5	#, _25,,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-300(s0)		# tmp194, unique_count
	mv	a4,a5	# tmp193, tmp194
	lw	a5,-308(s0)		# tmp196, maxu
	sext.w	a4,a4	# tmp197, tmp193
	sext.w	a5,a5	# tmp198, tmp195
	bgt	a4,a5,.L6	#, tmp197, tmp198,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-300(s0)		# tmp200, unique_count
	mv	a4,a5	# tmp199, tmp200
	lw	a5,-308(s0)		# tmp202, maxu
	sext.w	a4,a4	# tmp203, tmp199
	sext.w	a5,a5	# tmp204, tmp201
	bne	a4,a5,.L7	#, tmp203, tmp204,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-304(s0)		# _26, i
	slli	a5,a5,3	#, _27, _26
	ld	a4,-328(s0)		# tmp205, words
	add	a5,a4,a5	# _27, _28, tmp205
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ld	a5,0(a5)		# _29, *_28
	ld	a1,-288(s0)		#, max
	mv	a0,a5	#, _29
	call	strcmp@plt	#
	mv	a5,a0	# tmp206,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	bge	a5,zero,.L7	#, tmp207,,
.L6:
# eval/problem159//code.c:19:             max = words[i];
	lw	a5,-304(s0)		# _31, i
	slli	a5,a5,3	#, _32, _31
	ld	a4,-328(s0)		# tmp208, words
	add	a5,a4,a5	# _32, _33, tmp208
# eval/problem159//code.c:19:             max = words[i];
	ld	a5,0(a5)		# tmp209, *_33
	sd	a5,-288(s0)	# tmp209, max
# eval/problem159//code.c:20:             maxu = unique_count;
	lw	a5,-300(s0)		# tmp210, unique_count
	sw	a5,-308(s0)	# tmp210, maxu
.L7:
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-304(s0)		# tmp213, i
	addiw	a5,a5,1	#, tmp211, tmp212
	sw	a5,-304(s0)	# tmp211, i
.L2:
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-304(s0)		# tmp215, i
	mv	a4,a5	# tmp214, tmp215
	lw	a5,-332(s0)		# tmp217, count
	sext.w	a4,a4	# tmp218, tmp214
	sext.w	a5,a5	# tmp219, tmp216
	blt	a4,a5,.L8	#, tmp218, tmp219,
# eval/problem159//code.c:23:     return max;
	ld	a5,-288(s0)		# _50, max
# eval/problem159//code.c:23:     return max;
	mv	a4,a5	# <retval>, _50
# eval/problem159//code.c:24: }
	la	a5,__stack_chk_guard		# tmp221,
	ld	a3, -24(s0)	# tmp224, D.2945
	ld	a5, 0(a5)	# tmp222, __stack_chk_guard
	xor	a5, a3, a5	# tmp222, tmp224
	li	a3, 0	# tmp224
	beq	a5,zero,.L10	#, tmp222,,
	call	__stack_chk_fail@plt	#
.L10:
	mv	a0,a4	#, <retval>
	ld	ra,328(sp)		#,
	.cfi_restore 1
	ld	s0,320(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
