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
	addi	sp,sp,-272	#,,
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,272	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-264(s0)	# x, x
	sd	a1,-272(s0)	# n, n
# eval/problem145//code.c:4: int func0(const char* x, const char* n){
	la	a5,__stack_chk_guard		# tmp163,
	ld	a4, 0(a5)	# tmp240, __stack_chk_guard
	sd	a4, -24(s0)	# tmp240, D.3264
	li	a4, 0	# tmp240
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	sw	zero,-256(s0)	#, i
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	j	.L2		#
.L3:
# eval/problem145//code.c:9:         num[i] = x[i];
	lw	a5,-256(s0)		# _1, i
	ld	a4,-264(s0)		# tmp164, x
	add	a5,a4,a5	# _1, _2, tmp164
	lbu	a4,0(a5)	# _3, *_2
# eval/problem145//code.c:9:         num[i] = x[i];
	lw	a5,-256(s0)		# tmp165, i
	addi	a5,a5,-16	#, tmp244, tmp165
	add	a5,a5,s0	#, tmp166, tmp244
	sb	a4,-216(a5)	# _3, num[i_28]
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	lw	a5,-256(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-256(s0)	# tmp167, i
.L2:
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	lw	a5,-256(s0)		# _4, i
	ld	a4,-264(s0)		# tmp170, x
	add	a5,a4,a5	# _4, _5, tmp170
	lbu	a5,0(a5)	# _6, *_5
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	mv	a4,a5	# tmp171, _6
	li	a5,47		# tmp172,
	bne	a4,a5,.L3	#, tmp171, tmp172,
# eval/problem145//code.c:11:     num[i] = '\0';
	lw	a5,-256(s0)		# tmp173, i
	addi	a5,a5,-16	#, tmp245, tmp173
	add	a5,a5,s0	#, tmp174, tmp245
	sb	zero,-216(a5)	#, num[i_28]
# eval/problem145//code.c:12:     a = atoi(num);
	addi	a5,s0,-232	#, tmp175,
	mv	a0,a5	#, tmp175
	call	atoi@plt	#
	mv	a5,a0	# tmp176,
	sw	a5,-248(s0)	# tmp176, a
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	sw	zero,-252(s0)	#, j
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp179, i
	addiw	a5,a5,1	#, tmp177, tmp178
	sw	a5,-256(s0)	# tmp177, i
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	j	.L4		#
.L5:
# eval/problem145//code.c:15:         den[j] = x[i];
	lw	a5,-256(s0)		# _7, i
	ld	a4,-264(s0)		# tmp180, x
	add	a5,a4,a5	# _7, _8, tmp180
	lbu	a4,0(a5)	# _9, *_8
# eval/problem145//code.c:15:         den[j] = x[i];
	lw	a5,-252(s0)		# tmp181, j
	addi	a5,a5,-16	#, tmp246, tmp181
	add	a5,a5,s0	#, tmp182, tmp246
	sb	a4,-112(a5)	# _9, den[j_32]
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp185, i
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-256(s0)	# tmp183, i
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-252(s0)		# tmp188, j
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-252(s0)	# tmp186, j
.L4:
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# _10, i
	ld	a4,-264(s0)		# tmp189, x
	add	a5,a4,a5	# _10, _11, tmp189
	lbu	a5,0(a5)	# _12, *_11
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	bne	a5,zero,.L5	#, _12,,
# eval/problem145//code.c:17:     den[j] = '\0';
	lw	a5,-252(s0)		# tmp190, j
	addi	a5,a5,-16	#, tmp247, tmp190
	add	a5,a5,s0	#, tmp191, tmp247
	sb	zero,-112(a5)	#, den[j_32]
# eval/problem145//code.c:18:     b = atoi(den);
	addi	a5,s0,-128	#, tmp192,
	mv	a0,a5	#, tmp192
	call	atoi@plt	#
	mv	a5,a0	# tmp193,
	sw	a5,-244(s0)	# tmp193, b
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	sw	zero,-256(s0)	#, i
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	j	.L6		#
.L7:
# eval/problem145//code.c:21:         num[i] = n[i];
	lw	a5,-256(s0)		# _13, i
	ld	a4,-272(s0)		# tmp194, n
	add	a5,a4,a5	# _13, _14, tmp194
	lbu	a4,0(a5)	# _15, *_14
# eval/problem145//code.c:21:         num[i] = n[i];
	lw	a5,-256(s0)		# tmp195, i
	addi	a5,a5,-16	#, tmp248, tmp195
	add	a5,a5,s0	#, tmp196, tmp248
	sb	a4,-216(a5)	# _15, num[i_30]
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	lw	a5,-256(s0)		# tmp199, i
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-256(s0)	# tmp197, i
.L6:
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	lw	a5,-256(s0)		# _16, i
	ld	a4,-272(s0)		# tmp200, n
	add	a5,a4,a5	# _16, _17, tmp200
	lbu	a5,0(a5)	# _18, *_17
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	mv	a4,a5	# tmp201, _18
	li	a5,47		# tmp202,
	bne	a4,a5,.L7	#, tmp201, tmp202,
# eval/problem145//code.c:23:     num[i] = '\0';
	lw	a5,-256(s0)		# tmp203, i
	addi	a5,a5,-16	#, tmp249, tmp203
	add	a5,a5,s0	#, tmp204, tmp249
	sb	zero,-216(a5)	#, num[i_30]
# eval/problem145//code.c:24:     c = atoi(num);
	addi	a5,s0,-232	#, tmp205,
	mv	a0,a5	#, tmp205
	call	atoi@plt	#
	mv	a5,a0	# tmp206,
	sw	a5,-240(s0)	# tmp206, c
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	sw	zero,-252(s0)	#, j
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp209, i
	addiw	a5,a5,1	#, tmp207, tmp208
	sw	a5,-256(s0)	# tmp207, i
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	j	.L8		#
.L9:
# eval/problem145//code.c:27:         den[j] = n[i];
	lw	a5,-256(s0)		# _19, i
	ld	a4,-272(s0)		# tmp210, n
	add	a5,a4,a5	# _19, _20, tmp210
	lbu	a4,0(a5)	# _21, *_20
# eval/problem145//code.c:27:         den[j] = n[i];
	lw	a5,-252(s0)		# tmp211, j
	addi	a5,a5,-16	#, tmp250, tmp211
	add	a5,a5,s0	#, tmp212, tmp250
	sb	a4,-112(a5)	# _21, den[j_33]
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp215, i
	addiw	a5,a5,1	#, tmp213, tmp214
	sw	a5,-256(s0)	# tmp213, i
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-252(s0)		# tmp218, j
	addiw	a5,a5,1	#, tmp216, tmp217
	sw	a5,-252(s0)	# tmp216, j
.L8:
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# _22, i
	ld	a4,-272(s0)		# tmp219, n
	add	a5,a4,a5	# _22, _23, tmp219
	lbu	a5,0(a5)	# _24, *_23
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	bne	a5,zero,.L9	#, _24,,
# eval/problem145//code.c:29:     den[j] = '\0';
	lw	a5,-252(s0)		# tmp220, j
	addi	a5,a5,-16	#, tmp251, tmp220
	add	a5,a5,s0	#, tmp221, tmp251
	sb	zero,-112(a5)	#, den[j_33]
# eval/problem145//code.c:30:     d = atoi(den);
	addi	a5,s0,-128	#, tmp222,
	mv	a0,a5	#, tmp222
	call	atoi@plt	#
	mv	a5,a0	# tmp223,
	sw	a5,-236(s0)	# tmp223, d
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	lw	a5,-248(s0)		# tmp226, a
	mv	a4,a5	# tmp225, tmp226
	lw	a5,-240(s0)		# tmp228, c
	mulw	a5,a4,a5	# tmp224, tmp225, tmp227
	sext.w	a4,a5	# _25, tmp224
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	lw	a5,-244(s0)		# tmp231, b
	mv	a3,a5	# tmp230, tmp231
	lw	a5,-236(s0)		# tmp233, d
	mulw	a5,a3,a5	# tmp229, tmp230, tmp232
	sext.w	a5,a5	# _26, tmp229
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	remw	a5,a4,a5	# _26, tmp236, tmp235
	sext.w	a5,a5	# _27, tmp236
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	bne	a5,zero,.L10	#, _27,,
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	li	a5,1		# _34,
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	j	.L12		#
.L10:
# eval/problem145//code.c:33:     return 0;
	li	a5,0		# _34,
.L12:
# eval/problem145//code.c:34: }
	mv	a4,a5	# <retval>, _34
	la	a5,__stack_chk_guard		# tmp238,
	ld	a3, -24(s0)	# tmp241, D.3264
	ld	a5, 0(a5)	# tmp239, __stack_chk_guard
	xor	a5, a3, a5	# tmp239, tmp241
	li	a3, 0	# tmp241
	beq	a5,zero,.L13	#, tmp239,,
	call	__stack_chk_fail@plt	#
.L13:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	.cfi_restore 1
	ld	s0,256(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
