	.file	"problem26.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
# problem26.c:12: {
	la	a5,__stack_chk_guard		# tmp78,
	ld	a4, 0(a5)	# tmp122, __stack_chk_guard
	sd	a4, -24(s0)	# tmp122, D.3491
	li	a4, 0	# tmp122
# problem26.c:14:   unsigned maxlen = 0, imax = 0;
	sw	zero,-72(s0)	#, maxlen
# problem26.c:14:   unsigned maxlen = 0, imax = 0;
	sw	zero,-68(s0)	#, imax
# problem26.c:17:   mpz_init(p); mpz_init(r);
	addi	a5,s0,-56	#, tmp79,
	mv	a0,a5	#, tmp79
	call	__gmpz_init@plt	#
# problem26.c:17:   mpz_init(p); mpz_init(r);
	addi	a5,s0,-40	#, tmp80,
	mv	a0,a5	#, tmp80
	call	__gmpz_init@plt	#
# problem26.c:19:   for (i = 2; i < M; i++) {
	li	a5,2		# tmp81,
	sw	a5,-64(s0)	# tmp81, i
# problem26.c:19:   for (i = 2; i < M; i++) {
	j	.L2		#
.L8:
# problem26.c:20:     unsigned len = 1;
	li	a5,1		# tmp82,
	sw	a5,-60(s0)	# tmp82, len
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	lw	a5,-64(s0)		# tmp84, i
	andi	a5,a5,1	#, tmp85, tmp83
	sext.w	a5,a5	# _1, tmp85
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	beq	a5,zero,.L11	#, _1,,
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	lw	a5,-64(s0)		# tmp88, i
	mv	a4,a5	# tmp87, tmp88
	li	a5,5		# tmp90,
	remuw	a5,a4,a5	# tmp90, tmp89, tmp87
	sext.w	a5,a5	# _2, tmp89
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	beq	a5,zero,.L11	#, _2,,
# problem26.c:26:     mpz_set_ui(p, 10);
	addi	a5,s0,-56	#, tmp91,
	li	a1,10		#,
	mv	a0,a5	#, tmp91
	call	__gmpz_set_ui@plt	#
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	j	.L6		#
.L7:
# problem26.c:28:       len++;
	lw	a5,-60(s0)		# tmp94, len
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-60(s0)	# tmp92, len
# problem26.c:29:       mpz_mul_ui(p, p, 10);
	addi	a4,s0,-56	#, tmp95,
	addi	a5,s0,-56	#, tmp96,
	li	a2,10		#,
	mv	a1,a4	#, tmp95
	mv	a0,a5	#, tmp96
	call	__gmpz_mul_ui@plt	#
.L6:
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	lwu	a3,-64(s0)	# _3, i
	addi	a4,s0,-56	#, tmp97,
	addi	a5,s0,-40	#, tmp98,
	mv	a2,a3	#, _3
	mv	a1,a4	#, tmp97
	mv	a0,a5	#, tmp98
	call	__gmpz_fdiv_r_ui@plt	#
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	addi	a5,s0,-40	#, tmp99,
	li	a1,1		#,
	mv	a0,a5	#, tmp99
	call	__gmpz_cmp_ui@plt	#
	mv	a5,a0	# tmp100,
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	bne	a5,zero,.L7	#, _4,,
# problem26.c:31:     if (len > maxlen) {
	lw	a5,-60(s0)		# tmp102, len
	mv	a4,a5	# tmp101, tmp102
	lw	a5,-72(s0)		# tmp104, maxlen
	sext.w	a4,a4	# tmp105, tmp101
	sext.w	a5,a5	# tmp106, tmp103
	bleu	a4,a5,.L5	#, tmp105, tmp106,
# problem26.c:32:       maxlen = len;
	lw	a5,-60(s0)		# tmp107, len
	sw	a5,-72(s0)	# tmp107, maxlen
# problem26.c:33:       imax = i;
	lw	a5,-64(s0)		# tmp108, i
	sw	a5,-68(s0)	# tmp108, imax
	j	.L5		#
.L11:
# problem26.c:23:       continue;
	nop	
.L5:
# problem26.c:19:   for (i = 2; i < M; i++) {
	lw	a5,-64(s0)		# tmp111, i
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-64(s0)	# tmp109, i
.L2:
# problem26.c:19:   for (i = 2; i < M; i++) {
	lw	a5,-64(s0)		# tmp113, i
	sext.w	a4,a5	# tmp114, tmp112
	li	a5,999		# tmp115,
	bleu	a4,a5,.L8	#, tmp114, tmp115,
# problem26.c:36:   printf("%u\n", imax);
	lw	a5,-68(s0)		# tmp116, imax
	mv	a1,a5	#, tmp116
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem26.c:38:   mpz_clear(p);
	addi	a5,s0,-56	#, tmp117,
	mv	a0,a5	#, tmp117
	call	__gmpz_clear@plt	#
# problem26.c:39:   mpz_clear(r);
	addi	a5,s0,-40	#, tmp118,
	mv	a0,a5	#, tmp118
	call	__gmpz_clear@plt	#
# problem26.c:41:   return 0;
	li	a5,0		# _23,
# problem26.c:42: }
	mv	a4,a5	# <retval>, _23
	la	a5,__stack_chk_guard		# tmp120,
	ld	a3, -24(s0)	# tmp123, D.3491
	ld	a5, 0(a5)	# tmp121, __stack_chk_guard
	xor	a5, a3, a5	# tmp121, tmp123
	li	a3, 0	# tmp123
	beq	a5,zero,.L10	#, tmp121,,
	call	__stack_chk_fail@plt	#
.L10:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
