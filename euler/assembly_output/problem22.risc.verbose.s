	.file	"problem22.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	sd	s1,72(sp)	#,
	addi	s0,sp,96	#,,
# problem22.c:14: {
	la	a5,__stack_chk_guard		# tmp114,
	ld	a4, 0(a5)	# tmp167, __stack_chk_guard
	sd	a4, -40(s0)	# tmp167, D.2641
	li	a4, 0	# tmp167
# problem22.c:15:   int count = 0;
	sw	zero,-92(s0)	#, count
# problem22.c:17:   char path[] = "names.txt";
	lla	a5,.LC0	# tmp115,
	ld	a4,0(a5)		# tmp116,
	sd	a4,-56(s0)	# tmp116, path
	lhu	a5,8(a5)	# tmp117,
	sh	a5,-48(s0)	# tmp117, path
# problem22.c:20:   int sum = 0;
	sw	zero,-84(s0)	#, sum
# problem22.c:22:   fp = fopen(path, "r");
	addi	a5,s0,-56	#, tmp118,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp118
	call	fopen@plt	#
	mv	a5,a0	# tmp119,
	sd	a5,-72(s0)	# tmp119, fp
# problem22.c:23:   if (!fp) {
	ld	a5,-72(s0)		# tmp120, fp
	bne	a5,zero,.L2	#, tmp120,,
# problem22.c:24:     perror(path);
	addi	a5,s0,-56	#, tmp121,
	mv	a0,a5	#, tmp121
	call	perror@plt	#
# problem22.c:25:     return 1;
	li	a5,1		# _46,
	j	.L10		#
.L2:
# problem22.c:29:   names = malloc(8192 * sizeof *names);
	li	a0,65536		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp122,
	sd	a5,-64(s0)	# tmp122, names
# problem22.c:30:   names[count] = malloc(16);
	lw	a5,-92(s0)		# _1, count
	slli	a5,a5,3	#, _2, _1
	ld	a4,-64(s0)		# tmp123, names
	add	s1,a4,a5	# _2, _3, tmp123
# problem22.c:30:   names[count] = malloc(16);
	li	a0,16		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp124,
# problem22.c:30:   names[count] = malloc(16);
	sd	a5,0(s1)	# _4, *_3
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	j	.L4		#
.L5:
# problem22.c:32:     names[++count] = malloc(16);
	lw	a5,-92(s0)		# tmp127, count
	addiw	a5,a5,1	#, tmp125, tmp126
	sw	a5,-92(s0)	# tmp125, count
# problem22.c:32:     names[++count] = malloc(16);
	lw	a5,-92(s0)		# _5, count
# problem22.c:32:     names[++count] = malloc(16);
	slli	a5,a5,3	#, _6, _5
	ld	a4,-64(s0)		# tmp128, names
	add	s1,a4,a5	# _6, _7, tmp128
# problem22.c:32:     names[++count] = malloc(16);
	li	a0,16		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp129,
# problem22.c:32:     names[++count] = malloc(16);
	sd	a5,0(s1)	# _8, *_7
.L4:
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	lw	a5,-92(s0)		# _9, count
	slli	a5,a5,3	#, _10, _9
	ld	a4,-64(s0)		# tmp130, names
	add	a5,a4,a5	# _10, _11, tmp130
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	ld	a5,0(a5)		# _12, *_11
	mv	a2,a5	#, _12
	lla	a1,.LC2	#,
	ld	a0,-72(s0)		#, fp
	call	__isoc99_fscanf@plt	#
	mv	a5,a0	# tmp131,
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	mv	a4,a5	# tmp132, _13
	li	a5,-1		# tmp133,
	bne	a4,a5,.L5	#, tmp132, tmp133,
# problem22.c:34:   free(names[count]);
	lw	a5,-92(s0)		# _14, count
	slli	a5,a5,3	#, _15, _14
	ld	a4,-64(s0)		# tmp134, names
	add	a5,a4,a5	# _15, _16, tmp134
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
	ld	a4,-64(s0)		# tmp135, names
	add	a5,a4,a5	# _20, _21, tmp135
	ld	a4,0(a5)		# _22, *_21
# problem22.c:42:       s += names[i][j]-'A'+1;
	lw	a5,-80(s0)		# _23, j
	add	a5,a4,a5	# _23, _24, _22
	lbu	a5,0(a5)	# _25, *_24
	sext.w	a5,a5	# _26, _25
# problem22.c:42:       s += names[i][j]-'A'+1;
	addiw	a5,a5,-64	#, tmp136, _26
	sext.w	a5,a5	# _27, tmp136
# problem22.c:42:       s += names[i][j]-'A'+1;
	lw	a4,-76(s0)		# tmp139, s
	addw	a5,a4,a5	# _27, tmp137, tmp138
	sw	a5,-76(s0)	# tmp137, s
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	lw	a5,-80(s0)		# tmp142, j
	addiw	a5,a5,1	#, tmp140, tmp141
	sw	a5,-80(s0)	# tmp140, j
.L7:
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	lw	a5,-88(s0)		# _28, i
	slli	a5,a5,3	#, _29, _28
	ld	a4,-64(s0)		# tmp143, names
	add	a5,a4,a5	# _29, _30, tmp143
	ld	a4,0(a5)		# _31, *_30
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	lw	a5,-80(s0)		# _32, j
	add	a5,a4,a5	# _32, _33, _31
	lbu	a5,0(a5)	# _34, *_33
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	bne	a5,zero,.L8	#, _34,,
# problem22.c:44:     sum += s * (i+1);
	lw	a5,-88(s0)		# tmp146, i
	addiw	a5,a5,1	#, tmp144, tmp145
	sext.w	a5,a5	# _35, tmp144
# problem22.c:44:     sum += s * (i+1);
	lw	a4,-76(s0)		# tmp149, s
	mulw	a5,a4,a5	# tmp147, tmp148, _35
	sext.w	a5,a5	# _36, tmp147
# problem22.c:44:     sum += s * (i+1);
	lw	a4,-84(s0)		# tmp152, sum
	addw	a5,a4,a5	# _36, tmp150, tmp151
	sw	a5,-84(s0)	# tmp150, sum
# problem22.c:46:     free(names[i]);
	lw	a5,-88(s0)		# _37, i
	slli	a5,a5,3	#, _38, _37
	ld	a4,-64(s0)		# tmp153, names
	add	a5,a4,a5	# _38, _39, tmp153
# problem22.c:46:     free(names[i]);
	ld	a5,0(a5)		# _40, *_39
	mv	a0,a5	#, _40
	call	free@plt	#
# problem22.c:39:   for (i = 0; i < count; i++) {
	lw	a5,-88(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-88(s0)	# tmp154, i
.L6:
# problem22.c:39:   for (i = 0; i < count; i++) {
	lw	a5,-88(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-92(s0)		# tmp160, count
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L9	#, tmp161, tmp162,
# problem22.c:48:   free(names);
	ld	a0,-64(s0)		#, names
	call	free@plt	#
# problem22.c:50:   printf("%d\n", sum);
	lw	a5,-84(s0)		# tmp163, sum
	mv	a1,a5	#, tmp163
	lla	a0,.LC3	#,
	call	printf@plt	#
# problem22.c:52:   return 0;
	li	a5,0		# _46,
.L10:
# problem22.c:53: }
	mv	a4,a5	# <retval>, _46
	la	a5,__stack_chk_guard		# tmp165,
	ld	a3, -40(s0)	# tmp168, D.2641
	ld	a5, 0(a5)	# tmp166, __stack_chk_guard
	xor	a5, a3, a5	# tmp166, tmp168
	li	a3, 0	# tmp168
	beq	a5,zero,.L11	#, tmp166,,
# problem22.c:53: }
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	ld	s1,72(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	compare, @function
compare:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
	sd	a0,-24(s0)	# x, x
	sd	a1,-32(s0)	# y, y
# problem22.c:57:   return strcmp(*(char * const *)x, *(char * const *)y);
	ld	a5,-24(s0)		# tmp76, x
	ld	a4,0(a5)		# _1, MEM[(char * const *)x_4(D)]
	ld	a5,-32(s0)		# tmp77, y
	ld	a5,0(a5)		# _2, MEM[(char * const *)y_5(D)]
	mv	a1,a5	#, _2
	mv	a0,a4	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp78,
# problem22.c:58: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
