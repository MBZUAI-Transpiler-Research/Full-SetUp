	.file	"problem29.c"
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
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem29.c:15: {
	la	a5,__stack_chk_guard		# tmp154,
	ld	a4, 0(a5)	# tmp209, __stack_chk_guard
	sd	a4, -24(s0)	# tmp209, D.4844
	li	a4, 0	# tmp209
# problem29.c:17:   int i = 0;
	sw	zero,-56(s0)	#, i
# problem29.c:18:   int count = 0;
	sw	zero,-52(s0)	#, count
# problem29.c:22:   mpz_init(t);
	addi	a5,s0,-40	#, tmp155,
	mv	a0,a5	#, tmp155
	call	__gmpz_init@plt	#
# problem29.c:24:   nums = malloc((N-1)*(N-1) * sizeof *nums);
	li	a5,155648		# tmp156,
	addi	a0,a5,1168	#,, tmp156
	call	malloc@plt	#
	mv	a5,a0	# tmp157,
	sd	a5,-48(s0)	# tmp157, nums
# problem29.c:25:   for (a = 2; a <= N; a++) {
	li	a5,2		# tmp158,
	sw	a5,-64(s0)	# tmp158, a
# problem29.c:25:   for (a = 2; a <= N; a++) {
	j	.L2		#
.L5:
# problem29.c:26:     mpz_set_ui(t, a);
	lw	a4,-64(s0)		# _1, a
	addi	a5,s0,-40	#, tmp159,
	mv	a1,a4	#, _1
	mv	a0,a5	#, tmp159
	call	__gmpz_set_ui@plt	#
# problem29.c:27:     for (b = 2; b <= N; b++) {
	li	a5,2		# tmp160,
	sw	a5,-60(s0)	# tmp160, b
# problem29.c:27:     for (b = 2; b <= N; b++) {
	j	.L3		#
.L4:
# problem29.c:28:       mpz_mul_ui(t, t, a);
	lw	a3,-64(s0)		# _2, a
	addi	a4,s0,-40	#, tmp161,
	addi	a5,s0,-40	#, tmp162,
	mv	a2,a3	#, _2
	mv	a1,a4	#, tmp161
	mv	a0,a5	#, tmp162
	call	__gmpz_mul_ui@plt	#
# problem29.c:29:       mpz_init(nums[i]);
	lw	a5,-56(s0)		# _3, i
	slli	a5,a5,4	#, _4, _3
	ld	a4,-48(s0)		# tmp163, nums
	add	a5,a4,a5	# _4, _5, tmp163
# problem29.c:29:       mpz_init(nums[i]);
	mv	a0,a5	#, _5
	call	__gmpz_init@plt	#
# problem29.c:30:       mpz_set(nums[i], t);
	lw	a5,-56(s0)		# _6, i
	slli	a5,a5,4	#, _7, _6
	ld	a4,-48(s0)		# tmp164, nums
	add	a5,a4,a5	# _7, _8, tmp164
# problem29.c:30:       mpz_set(nums[i], t);
	addi	a4,s0,-40	#, tmp165,
	mv	a1,a4	#, tmp165
	mv	a0,a5	#, _8
	call	__gmpz_set@plt	#
# problem29.c:31:       i++;
	lw	a5,-56(s0)		# tmp168, i
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-56(s0)	# tmp166, i
# problem29.c:27:     for (b = 2; b <= N; b++) {
	lw	a5,-60(s0)		# tmp171, b
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-60(s0)	# tmp169, b
.L3:
# problem29.c:27:     for (b = 2; b <= N; b++) {
	lw	a5,-60(s0)		# tmp173, b
	sext.w	a4,a5	# tmp174, tmp172
	li	a5,100		# tmp175,
	ble	a4,a5,.L4	#, tmp174, tmp175,
# problem29.c:25:   for (a = 2; a <= N; a++) {
	lw	a5,-64(s0)		# tmp178, a
	addiw	a5,a5,1	#, tmp176, tmp177
	sw	a5,-64(s0)	# tmp176, a
.L2:
# problem29.c:25:   for (a = 2; a <= N; a++) {
	lw	a5,-64(s0)		# tmp180, a
	sext.w	a4,a5	# tmp181, tmp179
	li	a5,100		# tmp182,
	ble	a4,a5,.L5	#, tmp181, tmp182,
# problem29.c:35:   qsort(nums, (N-1)*(N-1), sizeof *nums, compare);
	lla	a3,compare	#,
	li	a2,16		#,
	li	a5,8192		# tmp183,
	addi	a1,a5,1609	#,, tmp183
	ld	a0,-48(s0)		#, nums
	call	qsort@plt	#
# problem29.c:37:   mpz_set_ui(t, 0);
	addi	a5,s0,-40	#, tmp184,
	li	a1,0		#,
	mv	a0,a5	#, tmp184
	call	__gmpz_set_ui@plt	#
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	sw	zero,-56(s0)	#, i
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	j	.L6		#
.L8:
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	lw	a5,-56(s0)		# _9, i
	slli	a5,a5,4	#, _10, _9
	ld	a4,-48(s0)		# tmp185, nums
	add	a4,a4,a5	# _10, _11, tmp185
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	addi	a5,s0,-40	#, tmp186,
	mv	a1,a4	#, _11
	mv	a0,a5	#, tmp186
	call	__gmpz_cmp@plt	#
	mv	a5,a0	# tmp187,
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	beq	a5,zero,.L7	#, _12,,
# problem29.c:40:       count++;
	lw	a5,-52(s0)		# tmp190, count
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-52(s0)	# tmp188, count
.L7:
# problem29.c:42:     mpz_set(t, nums[i]);
	lw	a5,-56(s0)		# _13, i
	slli	a5,a5,4	#, _14, _13
	ld	a4,-48(s0)		# tmp191, nums
	add	a4,a4,a5	# _14, _15, tmp191
# problem29.c:42:     mpz_set(t, nums[i]);
	addi	a5,s0,-40	#, tmp192,
	mv	a1,a4	#, _15
	mv	a0,a5	#, tmp192
	call	__gmpz_set@plt	#
# problem29.c:43:     mpz_clear(nums[i]);
	lw	a5,-56(s0)		# _16, i
	slli	a5,a5,4	#, _17, _16
	ld	a4,-48(s0)		# tmp193, nums
	add	a5,a4,a5	# _17, _18, tmp193
# problem29.c:43:     mpz_clear(nums[i]);
	mv	a0,a5	#, _18
	call	__gmpz_clear@plt	#
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	lw	a5,-56(s0)		# tmp196, i
	addiw	a5,a5,1	#, tmp194, tmp195
	sw	a5,-56(s0)	# tmp194, i
.L6:
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	lw	a5,-56(s0)		# tmp200, i
	sext.w	a4,a5	# tmp201, tmp199
	li	a5,8192		# tmp203,
	addi	a5,a5,1608	#, tmp202, tmp203
	ble	a4,a5,.L8	#, tmp201, tmp202,
# problem29.c:45:   printf("%d\n", count);
	lw	a5,-52(s0)		# tmp204, count
	mv	a1,a5	#, tmp204
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem29.c:47:   free(nums);
	ld	a0,-48(s0)		#, nums
	call	free@plt	#
# problem29.c:48:   mpz_clear(t);
	addi	a5,s0,-40	#, tmp205,
	mv	a0,a5	#, tmp205
	call	__gmpz_clear@plt	#
# problem29.c:50:   return 0;
	li	a5,0		# _42,
# problem29.c:51: }
	mv	a4,a5	# <retval>, _42
	la	a5,__stack_chk_guard		# tmp207,
	ld	a3, -24(s0)	# tmp210, D.4844
	ld	a5, 0(a5)	# tmp208, __stack_chk_guard
	xor	a5, a3, a5	# tmp208, tmp210
	li	a3, 0	# tmp210
	beq	a5,zero,.L10	#, tmp208,,
	call	__stack_chk_fail@plt	#
.L10:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.align	1
	.type	compare, @function
compare:
.LFB27:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
# problem29.c:55:   return mpz_cmp(*(const mpz_t *)a, *(mpz_t const *)b);
	ld	a1,-32(s0)		#, b
	ld	a0,-24(s0)		#, a
	call	__gmpz_cmp@plt	#
	mv	a5,a0	# tmp136,
# problem29.c:56: }
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
.LFE27:
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
