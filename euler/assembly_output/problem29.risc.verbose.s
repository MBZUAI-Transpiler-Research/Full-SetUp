	.file	"problem29.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem29.c:15: {
	la	a5,__stack_chk_guard		# tmp92,
	ld	a4, 0(a5)	# tmp147, __stack_chk_guard
	sd	a4, -24(s0)	# tmp147, D.4019
	li	a4, 0	# tmp147
# problem29.c:17:   int i = 0;
	sw	zero,-56(s0)	#, i
# problem29.c:18:   int count = 0;
	sw	zero,-52(s0)	#, count
# problem29.c:22:   mpz_init(t);
	addi	a5,s0,-40	#, tmp93,
	mv	a0,a5	#, tmp93
	call	__gmpz_init@plt	#
# problem29.c:24:   nums = malloc((N-1)*(N-1) * sizeof *nums);
	li	a5,155648		# tmp94,
	addi	a0,a5,1168	#,, tmp94
	call	malloc@plt	#
	mv	a5,a0	# tmp95,
	sd	a5,-48(s0)	# tmp95, nums
# problem29.c:25:   for (a = 2; a <= N; a++) {
	li	a5,2		# tmp96,
	sw	a5,-64(s0)	# tmp96, a
# problem29.c:25:   for (a = 2; a <= N; a++) {
	j	.L2		#
.L5:
# problem29.c:26:     mpz_set_ui(t, a);
	lw	a4,-64(s0)		# _1, a
	addi	a5,s0,-40	#, tmp97,
	mv	a1,a4	#, _1
	mv	a0,a5	#, tmp97
	call	__gmpz_set_ui@plt	#
# problem29.c:27:     for (b = 2; b <= N; b++) {
	li	a5,2		# tmp98,
	sw	a5,-60(s0)	# tmp98, b
# problem29.c:27:     for (b = 2; b <= N; b++) {
	j	.L3		#
.L4:
# problem29.c:28:       mpz_mul_ui(t, t, a);
	lw	a3,-64(s0)		# _2, a
	addi	a4,s0,-40	#, tmp99,
	addi	a5,s0,-40	#, tmp100,
	mv	a2,a3	#, _2
	mv	a1,a4	#, tmp99
	mv	a0,a5	#, tmp100
	call	__gmpz_mul_ui@plt	#
# problem29.c:29:       mpz_init(nums[i]);
	lw	a5,-56(s0)		# _3, i
	slli	a5,a5,4	#, _4, _3
	ld	a4,-48(s0)		# tmp101, nums
	add	a5,a4,a5	# _4, _5, tmp101
# problem29.c:29:       mpz_init(nums[i]);
	mv	a0,a5	#, _5
	call	__gmpz_init@plt	#
# problem29.c:30:       mpz_set(nums[i], t);
	lw	a5,-56(s0)		# _6, i
	slli	a5,a5,4	#, _7, _6
	ld	a4,-48(s0)		# tmp102, nums
	add	a5,a4,a5	# _7, _8, tmp102
# problem29.c:30:       mpz_set(nums[i], t);
	addi	a4,s0,-40	#, tmp103,
	mv	a1,a4	#, tmp103
	mv	a0,a5	#, _8
	call	__gmpz_set@plt	#
# problem29.c:31:       i++;
	lw	a5,-56(s0)		# tmp106, i
	addiw	a5,a5,1	#, tmp104, tmp105
	sw	a5,-56(s0)	# tmp104, i
# problem29.c:27:     for (b = 2; b <= N; b++) {
	lw	a5,-60(s0)		# tmp109, b
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-60(s0)	# tmp107, b
.L3:
# problem29.c:27:     for (b = 2; b <= N; b++) {
	lw	a5,-60(s0)		# tmp111, b
	sext.w	a4,a5	# tmp112, tmp110
	li	a5,100		# tmp113,
	ble	a4,a5,.L4	#, tmp112, tmp113,
# problem29.c:25:   for (a = 2; a <= N; a++) {
	lw	a5,-64(s0)		# tmp116, a
	addiw	a5,a5,1	#, tmp114, tmp115
	sw	a5,-64(s0)	# tmp114, a
.L2:
# problem29.c:25:   for (a = 2; a <= N; a++) {
	lw	a5,-64(s0)		# tmp118, a
	sext.w	a4,a5	# tmp119, tmp117
	li	a5,100		# tmp120,
	ble	a4,a5,.L5	#, tmp119, tmp120,
# problem29.c:35:   qsort(nums, (N-1)*(N-1), sizeof *nums, compare);
	lla	a3,compare	#,
	li	a2,16		#,
	li	a5,8192		# tmp121,
	addi	a1,a5,1609	#,, tmp121
	ld	a0,-48(s0)		#, nums
	call	qsort@plt	#
# problem29.c:37:   mpz_set_ui(t, 0);
	addi	a5,s0,-40	#, tmp122,
	li	a1,0		#,
	mv	a0,a5	#, tmp122
	call	__gmpz_set_ui@plt	#
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	sw	zero,-56(s0)	#, i
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	j	.L6		#
.L8:
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	lw	a5,-56(s0)		# _9, i
	slli	a5,a5,4	#, _10, _9
	ld	a4,-48(s0)		# tmp123, nums
	add	a4,a4,a5	# _10, _11, tmp123
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	addi	a5,s0,-40	#, tmp124,
	mv	a1,a4	#, _11
	mv	a0,a5	#, tmp124
	call	__gmpz_cmp@plt	#
	mv	a5,a0	# tmp125,
# problem29.c:39:     if (mpz_cmp(t, nums[i]) != 0) {
	beq	a5,zero,.L7	#, _12,,
# problem29.c:40:       count++;
	lw	a5,-52(s0)		# tmp128, count
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-52(s0)	# tmp126, count
.L7:
# problem29.c:42:     mpz_set(t, nums[i]);
	lw	a5,-56(s0)		# _13, i
	slli	a5,a5,4	#, _14, _13
	ld	a4,-48(s0)		# tmp129, nums
	add	a4,a4,a5	# _14, _15, tmp129
# problem29.c:42:     mpz_set(t, nums[i]);
	addi	a5,s0,-40	#, tmp130,
	mv	a1,a4	#, _15
	mv	a0,a5	#, tmp130
	call	__gmpz_set@plt	#
# problem29.c:43:     mpz_clear(nums[i]);
	lw	a5,-56(s0)		# _16, i
	slli	a5,a5,4	#, _17, _16
	ld	a4,-48(s0)		# tmp131, nums
	add	a5,a4,a5	# _17, _18, tmp131
# problem29.c:43:     mpz_clear(nums[i]);
	mv	a0,a5	#, _18
	call	__gmpz_clear@plt	#
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	lw	a5,-56(s0)		# tmp134, i
	addiw	a5,a5,1	#, tmp132, tmp133
	sw	a5,-56(s0)	# tmp132, i
.L6:
# problem29.c:38:   for (i = 0; i < (N-1)*(N-1); i++) {
	lw	a5,-56(s0)		# tmp138, i
	sext.w	a4,a5	# tmp139, tmp137
	li	a5,8192		# tmp141,
	addi	a5,a5,1608	#, tmp140, tmp141
	ble	a4,a5,.L8	#, tmp139, tmp140,
# problem29.c:45:   printf("%d\n", count);
	lw	a5,-52(s0)		# tmp142, count
	mv	a1,a5	#, tmp142
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem29.c:47:   free(nums);
	ld	a0,-48(s0)		#, nums
	call	free@plt	#
# problem29.c:48:   mpz_clear(t);
	addi	a5,s0,-40	#, tmp143,
	mv	a0,a5	#, tmp143
	call	__gmpz_clear@plt	#
# problem29.c:50:   return 0;
	li	a5,0		# _42,
# problem29.c:51: }
	mv	a4,a5	# <retval>, _42
	la	a5,__stack_chk_guard		# tmp145,
	ld	a3, -24(s0)	# tmp148, D.4019
	ld	a5, 0(a5)	# tmp146, __stack_chk_guard
	xor	a5, a3, a5	# tmp146, tmp148
	li	a3, 0	# tmp148
	beq	a5,zero,.L10	#, tmp146,,
	call	__stack_chk_fail@plt	#
.L10:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	compare, @function
compare:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
# problem29.c:55:   return mpz_cmp(*(const mpz_t *)a, *(mpz_t const *)b);
	ld	a1,-32(s0)		#, b
	ld	a0,-24(s0)		#, a
	call	__gmpz_cmp@plt	#
	mv	a5,a0	# tmp74,
# problem29.c:56: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
