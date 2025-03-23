	.file	"problem22.c"
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
.LC1:
	.string	"r"
	.align	3
.LC2:
	.string	"\"%[^\"]\","
	.align	3
.LC3:
	.string	"%d\n"
	.align	3
.LC0:
	.string	"names.txt"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	sd	s1,72(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem22.c:14: {
	la	a5,__stack_chk_guard		# tmp176,
	ld	a4, 0(a5)	# tmp229, __stack_chk_guard
	sd	a4, -40(s0)	# tmp229, D.3493
	li	a4, 0	# tmp229
# problem22.c:15:   int count = 0;
	sw	zero,-92(s0)	#, count
# problem22.c:17:   char path[] = "names.txt";
	lla	a5,.LC0	# tmp177,
	ld	a4,0(a5)		# tmp178,
	sd	a4,-56(s0)	# tmp178, path
	lhu	a5,8(a5)	# tmp179,
	sh	a5,-48(s0)	# tmp179, path
# problem22.c:20:   int sum = 0;
	sw	zero,-84(s0)	#, sum
# problem22.c:22:   fp = fopen(path, "r");
	addi	a5,s0,-56	#, tmp180,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp180
	call	fopen@plt	#
	mv	a5,a0	# tmp181,
	sd	a5,-72(s0)	# tmp181, fp
# problem22.c:23:   if (!fp) {
	ld	a5,-72(s0)		# tmp182, fp
	bne	a5,zero,.L2	#, tmp182,,
# problem22.c:24:     perror(path);
	addi	a5,s0,-56	#, tmp183,
	mv	a0,a5	#, tmp183
	call	perror@plt	#
# problem22.c:25:     return 1;
	li	a5,1		# _46,
	j	.L10		#
.L2:
# problem22.c:29:   names = malloc(8192 * sizeof *names);
	li	a0,65536		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp184,
	sd	a5,-64(s0)	# tmp184, names
# problem22.c:30:   names[count] = malloc(16);
	lw	a5,-92(s0)		# _1, count
	slli	a5,a5,3	#, _2, _1
	ld	a4,-64(s0)		# tmp185, names
	add	s1,a4,a5	# _2, _3, tmp185
# problem22.c:30:   names[count] = malloc(16);
	li	a0,16		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp186,
# problem22.c:30:   names[count] = malloc(16);
	sd	a5,0(s1)	# _4, *_3
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	j	.L4		#
.L5:
# problem22.c:32:     names[++count] = malloc(16);
	lw	a5,-92(s0)		# tmp189, count
	addiw	a5,a5,1	#, tmp187, tmp188
	sw	a5,-92(s0)	# tmp187, count
# problem22.c:32:     names[++count] = malloc(16);
	lw	a5,-92(s0)		# _5, count
# problem22.c:32:     names[++count] = malloc(16);
	slli	a5,a5,3	#, _6, _5
	ld	a4,-64(s0)		# tmp190, names
	add	s1,a4,a5	# _6, _7, tmp190
# problem22.c:32:     names[++count] = malloc(16);
	li	a0,16		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp191,
# problem22.c:32:     names[++count] = malloc(16);
	sd	a5,0(s1)	# _8, *_7
.L4:
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	lw	a5,-92(s0)		# _9, count
	slli	a5,a5,3	#, _10, _9
	ld	a4,-64(s0)		# tmp192, names
	add	a5,a4,a5	# _10, _11, tmp192
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	ld	a5,0(a5)		# _12, *_11
	mv	a2,a5	#, _12
	lla	a1,.LC2	#,
	ld	a0,-72(s0)		#, fp
	call	__isoc99_fscanf@plt	#
	mv	a5,a0	# tmp193,
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	mv	a4,a5	# tmp194, _13
	li	a5,-1		# tmp195,
	bne	a4,a5,.L5	#, tmp194, tmp195,
# problem22.c:34:   free(names[count]);
	lw	a5,-92(s0)		# _14, count
	slli	a5,a5,3	#, _15, _14
	ld	a4,-64(s0)		# tmp196, names
	add	a5,a4,a5	# _15, _16, tmp196
# problem22.c:34:   free(names[count]);
	ld	a5,0(a5)		# _17, *_16
	mv	a0,a5	#, _17
	call	free@plt	#
# problem22.c:35:   fclose(fp);
	ld	a0,-72(s0)		#, fp
	call	fclose@plt	#
# problem22.c:37:   qsort(names, count, sizeof *names, compare);
	lw	a5,-92(s0)		# _18, count
	lla	a3,compare	#,
	li	a2,8		#,
	mv	a1,a5	#, _18
	ld	a0,-64(s0)		#, names
	call	qsort@plt	#
# problem22.c:39:   for (i = 0; i < count; i++) {
	sw	zero,-88(s0)	#, i
# problem22.c:39:   for (i = 0; i < count; i++) {
	j	.L6		#
.L9:
# problem22.c:40:     int j, s = 0;
	sw	zero,-76(s0)	#, s
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	sw	zero,-80(s0)	#, j
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	j	.L7		#
.L8:
# problem22.c:42:       s += names[i][j]-'A'+1;
	lw	a5,-88(s0)		# _19, i
	slli	a5,a5,3	#, _20, _19
	ld	a4,-64(s0)		# tmp197, names
	add	a5,a4,a5	# _20, _21, tmp197
	ld	a4,0(a5)		# _22, *_21
# problem22.c:42:       s += names[i][j]-'A'+1;
	lw	a5,-80(s0)		# _23, j
	add	a5,a4,a5	# _23, _24, _22
	lbu	a5,0(a5)	# _25, *_24
	sext.w	a5,a5	# _26, _25
# problem22.c:42:       s += names[i][j]-'A'+1;
	addiw	a5,a5,-64	#, tmp198, _26
	sext.w	a5,a5	# _27, tmp198
# problem22.c:42:       s += names[i][j]-'A'+1;
	lw	a4,-76(s0)		# tmp201, s
	addw	a5,a4,a5	# _27, tmp199, tmp200
	sw	a5,-76(s0)	# tmp199, s
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	lw	a5,-80(s0)		# tmp204, j
	addiw	a5,a5,1	#, tmp202, tmp203
	sw	a5,-80(s0)	# tmp202, j
.L7:
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	lw	a5,-88(s0)		# _28, i
	slli	a5,a5,3	#, _29, _28
	ld	a4,-64(s0)		# tmp205, names
	add	a5,a4,a5	# _29, _30, tmp205
	ld	a4,0(a5)		# _31, *_30
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	lw	a5,-80(s0)		# _32, j
	add	a5,a4,a5	# _32, _33, _31
	lbu	a5,0(a5)	# _34, *_33
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	bne	a5,zero,.L8	#, _34,,
# problem22.c:44:     sum += s * (i+1);
	lw	a5,-88(s0)		# tmp208, i
	addiw	a5,a5,1	#, tmp206, tmp207
	sext.w	a5,a5	# _35, tmp206
# problem22.c:44:     sum += s * (i+1);
	lw	a4,-76(s0)		# tmp211, s
	mulw	a5,a4,a5	# tmp209, tmp210, _35
	sext.w	a5,a5	# _36, tmp209
# problem22.c:44:     sum += s * (i+1);
	lw	a4,-84(s0)		# tmp214, sum
	addw	a5,a4,a5	# _36, tmp212, tmp213
	sw	a5,-84(s0)	# tmp212, sum
# problem22.c:46:     free(names[i]);
	lw	a5,-88(s0)		# _37, i
	slli	a5,a5,3	#, _38, _37
	ld	a4,-64(s0)		# tmp215, names
	add	a5,a4,a5	# _38, _39, tmp215
# problem22.c:46:     free(names[i]);
	ld	a5,0(a5)		# _40, *_39
	mv	a0,a5	#, _40
	call	free@plt	#
# problem22.c:39:   for (i = 0; i < count; i++) {
	lw	a5,-88(s0)		# tmp218, i
	addiw	a5,a5,1	#, tmp216, tmp217
	sw	a5,-88(s0)	# tmp216, i
.L6:
# problem22.c:39:   for (i = 0; i < count; i++) {
	lw	a5,-88(s0)		# tmp220, i
	mv	a4,a5	# tmp219, tmp220
	lw	a5,-92(s0)		# tmp222, count
	sext.w	a4,a4	# tmp223, tmp219
	sext.w	a5,a5	# tmp224, tmp221
	blt	a4,a5,.L9	#, tmp223, tmp224,
# problem22.c:48:   free(names);
	ld	a0,-64(s0)		#, names
	call	free@plt	#
# problem22.c:50:   printf("%d\n", sum);
	lw	a5,-84(s0)		# tmp225, sum
	mv	a1,a5	#, tmp225
	lla	a0,.LC3	#,
	call	printf@plt	#
# problem22.c:52:   return 0;
	li	a5,0		# _46,
.L10:
# problem22.c:53: }
	mv	a4,a5	# <retval>, _46
	la	a5,__stack_chk_guard		# tmp227,
	ld	a3, -40(s0)	# tmp230, D.3493
	ld	a5, 0(a5)	# tmp228, __stack_chk_guard
	xor	a5, a3, a5	# tmp228, tmp230
	li	a3, 0	# tmp230
	beq	a5,zero,.L11	#, tmp228,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)		#,
	.cfi_restore 9
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	1
	.type	compare, @function
compare:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# x, x
	sd	a1,-32(s0)	# y, y
# problem22.c:57:   return strcmp(*(char * const *)x, *(char * const *)y);
	ld	a5,-24(s0)		# tmp138, x
	ld	a4,0(a5)		# _1, MEM[(char * const *)x_4(D)]
	ld	a5,-32(s0)		# tmp139, y
	ld	a5,0(a5)		# _2, MEM[(char * const *)y_5(D)]
	mv	a1,a5	#, _2
	mv	a0,a4	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp140,
# problem22.c:58: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
