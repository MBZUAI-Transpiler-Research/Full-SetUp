	.file	"problem42.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"r"
	.align	3
.LC1:
	.string	"words.txt"
	.align	3
.LC2:
	.string	"\"%[^\"]\","
	.align	3
.LC3:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
# problem42.c:12: {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp107, __stack_chk_guard
	sd	a4, -24(s0)	# tmp107, D.2962
	li	a4, 0	# tmp107
# problem42.c:14:   int cnt = 0;
	sw	zero,-76(s0)	#, cnt
# problem42.c:17:   fp = fopen("words.txt", "r");
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	fopen@plt	#
	mv	a5,a0	# tmp81,
	sd	a5,-64(s0)	# tmp81, fp
# problem42.c:18:   if (!fp) {
	ld	a5,-64(s0)		# tmp82, fp
	bne	a5,zero,.L4	#, tmp82,,
# problem42.c:19:     perror("words.txt");
	lla	a0,.LC1	#,
	call	perror@plt	#
# problem42.c:20:     return 1;
	li	a5,1		# _9,
	j	.L8		#
.L7:
# problem42.c:24:     int i, sum = 0;
	sw	zero,-68(s0)	#, sum
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	sw	zero,-72(s0)	#, i
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	j	.L5		#
.L6:
# problem42.c:26:       sum += buf[i]-'A'+1;
	lw	a5,-72(s0)		# tmp83, i
	addi	a5,a5,-16	#, tmp111, tmp83
	add	a5,a5,s0	#, tmp84, tmp111
	lbu	a5,-40(a5)	# _1, buf[i_7]
	sext.w	a5,a5	# _2, _1
# problem42.c:26:       sum += buf[i]-'A'+1;
	addiw	a5,a5,-64	#, tmp85, _2
	sext.w	a5,a5	# _3, tmp85
# problem42.c:26:       sum += buf[i]-'A'+1;
	lw	a4,-68(s0)		# tmp88, sum
	addw	a5,a4,a5	# _3, tmp86, tmp87
	sw	a5,-68(s0)	# tmp86, sum
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	lw	a5,-72(s0)		# tmp91, i
	addiw	a5,a5,1	#, tmp89, tmp90
	sw	a5,-72(s0)	# tmp89, i
.L5:
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	lw	a5,-72(s0)		# tmp92, i
	addi	a5,a5,-16	#, tmp112, tmp92
	add	a5,a5,s0	#, tmp93, tmp112
	lbu	a5,-40(a5)	# _4, buf[i_7]
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	bne	a5,zero,.L6	#, _4,,
# problem42.c:28:     cnt += is_triangle(sum);
	lw	a5,-68(s0)		# tmp94, sum
	mv	a0,a5	#, tmp94
	call	is_triangle		#
	mv	a5,a0	# tmp95,
# problem42.c:28:     cnt += is_triangle(sum);
	lw	a4,-76(s0)		# tmp98, cnt
	addw	a5,a4,a5	# _23, tmp96, tmp97
	sw	a5,-76(s0)	# tmp96, cnt
.L4:
# problem42.c:23:   while (fscanf(fp, "\"%[^\"]\",", buf) != EOF) {
	addi	a5,s0,-56	#, tmp99,
	mv	a2,a5	#, tmp99
	lla	a1,.LC2	#,
	ld	a0,-64(s0)		#, fp
	call	__isoc99_fscanf@plt	#
	mv	a5,a0	# tmp100,
# problem42.c:23:   while (fscanf(fp, "\"%[^\"]\",", buf) != EOF) {
	mv	a4,a5	# tmp101, _5
	li	a5,-1		# tmp102,
	bne	a4,a5,.L7	#, tmp101, tmp102,
# problem42.c:30:   fclose(fp);
	ld	a0,-64(s0)		#, fp
	call	fclose@plt	#
# problem42.c:32:   printf("%d\n", cnt);
	lw	a5,-76(s0)		# tmp103, cnt
	mv	a1,a5	#, tmp103
	lla	a0,.LC3	#,
	call	printf@plt	#
# problem42.c:34:   return 0;
	li	a5,0		# _9,
.L8:
# problem42.c:35: }
	mv	a4,a5	# <retval>, _9
	la	a5,__stack_chk_guard		# tmp105,
	ld	a3, -24(s0)	# tmp108, D.2962
	ld	a5, 0(a5)	# tmp106, __stack_chk_guard
	xor	a5, a3, a5	# tmp106, tmp108
	li	a3, 0	# tmp108
	beq	a5,zero,.L9	#, tmp106,,
# problem42.c:35: }
	call	__stack_chk_fail@plt	#
.L9:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	is_triangle, @function
is_triangle:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp82, c
	sw	a5,-36(s0)	# tmp83, c
# problem42.c:43:   int sq = sqrt(1+8*c);
	lw	a5,-36(s0)		# tmp86, c
	slliw	a5,a5,3	#, tmp84, tmp85
	sext.w	a5,a5	# _1, tmp84
# problem42.c:43:   int sq = sqrt(1+8*c);
	addiw	a5,a5,1	#, tmp87, _1
	sext.w	a5,a5	# _2, tmp87
# problem42.c:43:   int sq = sqrt(1+8*c);
	fcvt.d.w	fa5,a5	# _3, _2
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem42.c:43:   int sq = sqrt(1+8*c);
	fcvt.w.d a5,fa5,rtz	# tmp88, _4
	sw	a5,-20(s0)	# tmp88, sq
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	lw	a5,-20(s0)		# tmp91, sq
	mulw	a5,a5,a5	# tmp89, tmp90, tmp90
	sext.w	a4,a5	# _5, tmp89
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	lw	a5,-36(s0)		# tmp94, c
	slliw	a5,a5,3	#, tmp92, tmp93
	sext.w	a5,a5	# _6, tmp92
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	addiw	a5,a5,1	#, tmp95, _6
	sext.w	a5,a5	# _7, tmp95
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	bne	a4,a5,.L11	#, tmp96, tmp97,
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	lw	a5,-20(s0)		# tmp99, sq
	andi	a5,a5,1	#, tmp100, tmp98
	sext.w	a5,a5	# _8, tmp100
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	beq	a5,zero,.L11	#, _8,,
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	li	a5,1		# iftmp.0_9,
	j	.L12		#
.L11:
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	li	a5,0		# iftmp.0_9,
.L12:
# problem42.c:45: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	is_triangle, .-is_triangle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
