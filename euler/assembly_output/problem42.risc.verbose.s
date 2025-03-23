	.file	"problem42.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem42.c:12: {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp169, __stack_chk_guard
	sd	a4, -24(s0)	# tmp169, D.3780
	li	a4, 0	# tmp169
# problem42.c:14:   int cnt = 0;
	sw	zero,-76(s0)	#, cnt
# problem42.c:17:   fp = fopen("words.txt", "r");
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	fopen@plt	#
	mv	a5,a0	# tmp143,
	sd	a5,-64(s0)	# tmp143, fp
# problem42.c:18:   if (!fp) {
	ld	a5,-64(s0)		# tmp144, fp
	bne	a5,zero,.L4	#, tmp144,,
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
	lw	a5,-72(s0)		# tmp145, i
	addi	a5,a5,-16	#, tmp173, tmp145
	add	a5,a5,s0	#, tmp146, tmp173
	lbu	a5,-40(a5)	# _1, buf[i_7]
	sext.w	a5,a5	# _2, _1
# problem42.c:26:       sum += buf[i]-'A'+1;
	addiw	a5,a5,-64	#, tmp147, _2
	sext.w	a5,a5	# _3, tmp147
# problem42.c:26:       sum += buf[i]-'A'+1;
	lw	a4,-68(s0)		# tmp150, sum
	addw	a5,a4,a5	# _3, tmp148, tmp149
	sw	a5,-68(s0)	# tmp148, sum
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	lw	a5,-72(s0)		# tmp153, i
	addiw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-72(s0)	# tmp151, i
.L5:
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	lw	a5,-72(s0)		# tmp154, i
	addi	a5,a5,-16	#, tmp174, tmp154
	add	a5,a5,s0	#, tmp155, tmp174
	lbu	a5,-40(a5)	# _4, buf[i_7]
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	bne	a5,zero,.L6	#, _4,,
# problem42.c:28:     cnt += is_triangle(sum);
	lw	a5,-68(s0)		# tmp156, sum
	mv	a0,a5	#, tmp156
	call	is_triangle		#
	mv	a5,a0	# tmp157,
# problem42.c:28:     cnt += is_triangle(sum);
	lw	a4,-76(s0)		# tmp160, cnt
	addw	a5,a4,a5	# _23, tmp158, tmp159
	sw	a5,-76(s0)	# tmp158, cnt
.L4:
# problem42.c:23:   while (fscanf(fp, "\"%[^\"]\",", buf) != EOF) {
	addi	a5,s0,-56	#, tmp161,
	mv	a2,a5	#, tmp161
	lla	a1,.LC2	#,
	ld	a0,-64(s0)		#, fp
	call	__isoc99_fscanf@plt	#
	mv	a5,a0	# tmp162,
# problem42.c:23:   while (fscanf(fp, "\"%[^\"]\",", buf) != EOF) {
	mv	a4,a5	# tmp163, _5
	li	a5,-1		# tmp164,
	bne	a4,a5,.L7	#, tmp163, tmp164,
# problem42.c:30:   fclose(fp);
	ld	a0,-64(s0)		#, fp
	call	fclose@plt	#
# problem42.c:32:   printf("%d\n", cnt);
	lw	a5,-76(s0)		# tmp165, cnt
	mv	a1,a5	#, tmp165
	lla	a0,.LC3	#,
	call	printf@plt	#
# problem42.c:34:   return 0;
	li	a5,0		# _9,
.L8:
# problem42.c:35: }
	mv	a4,a5	# <retval>, _9
	la	a5,__stack_chk_guard		# tmp167,
	ld	a3, -24(s0)	# tmp170, D.3780
	ld	a5, 0(a5)	# tmp168, __stack_chk_guard
	xor	a5, a3, a5	# tmp168, tmp170
	li	a3, 0	# tmp170
	beq	a5,zero,.L9	#, tmp168,,
	call	__stack_chk_fail@plt	#
.L9:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	is_triangle, @function
is_triangle:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp144, c
	sw	a5,-36(s0)	# tmp145, c
# problem42.c:43:   int sq = sqrt(1+8*c);
	lw	a5,-36(s0)		# tmp148, c
	slliw	a5,a5,3	#, tmp146, tmp147
	sext.w	a5,a5	# _1, tmp146
# problem42.c:43:   int sq = sqrt(1+8*c);
	addiw	a5,a5,1	#, tmp149, _1
	sext.w	a5,a5	# _2, tmp149
# problem42.c:43:   int sq = sqrt(1+8*c);
	fcvt.d.w	fa5,a5	# _3, _2
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem42.c:43:   int sq = sqrt(1+8*c);
	fcvt.w.d a5,fa5,rtz	# tmp150, _4
	sw	a5,-20(s0)	# tmp150, sq
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	lw	a5,-20(s0)		# tmp153, sq
	mulw	a5,a5,a5	# tmp151, tmp152, tmp152
	sext.w	a4,a5	# _5, tmp151
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	lw	a5,-36(s0)		# tmp156, c
	slliw	a5,a5,3	#, tmp154, tmp155
	sext.w	a5,a5	# _6, tmp154
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	addiw	a5,a5,1	#, tmp157, _6
	sext.w	a5,a5	# _7, tmp157
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	bne	a4,a5,.L11	#, tmp158, tmp159,
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	lw	a5,-20(s0)		# tmp161, sq
	andi	a5,a5,1	#, tmp162, tmp160
	sext.w	a5,a5	# _8, tmp162
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	beq	a5,zero,.L11	#, _8,,
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	li	a5,1		# iftmp.0_9,
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	j	.L12		#
.L11:
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	li	a5,0		# iftmp.0_9,
.L12:
# problem42.c:45: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	is_triangle, .-is_triangle
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
