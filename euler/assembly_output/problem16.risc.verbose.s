	.file	"problem16.c"
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
# problem16.c:11: {
	la	a5,__stack_chk_guard		# tmp78,
	ld	a4, 0(a5)	# tmp98, __stack_chk_guard
	sd	a4, -24(s0)	# tmp98, D.3998
	li	a4, 0	# tmp98
# problem16.c:15:   unsigned sum = 0;
	sw	zero,-68(s0)	#, sum
# problem16.c:17:   mpz_init(n);
	addi	a5,s0,-40	#, tmp79,
	mv	a0,a5	#, tmp79
	call	__gmpz_init@plt	#
# problem16.c:18:   mpz_ui_pow_ui(n, 2, 1000);
	addi	a5,s0,-40	#, tmp80,
	li	a2,1000		#,
	li	a1,2		#,
	mv	a0,a5	#, tmp80
	call	__gmpz_ui_pow_ui@plt	#
# problem16.c:20:   str = mpz_get_str(NULL, 10, n);
	addi	a5,s0,-40	#, tmp81,
	mv	a2,a5	#, tmp81
	li	a1,10		#,
	li	a0,0		#,
	call	__gmpz_get_str@plt	#
	sd	a0,-56(s0)	#, str
# problem16.c:21:   len = mpz_sizeinbase(n, 10);
	addi	a5,s0,-40	#, tmp82,
	li	a1,10		#,
	mv	a0,a5	#, tmp82
	call	__gmpz_sizeinbase@plt	#
	sd	a0,-48(s0)	#, len
# problem16.c:22:   for (i = 0; i < len; i++) {
	sd	zero,-64(s0)	#, i
# problem16.c:22:   for (i = 0; i < len; i++) {
	j	.L2		#
.L3:
# problem16.c:23:     sum += str[i]-'0';
	ld	a4,-56(s0)		# tmp83, str
	ld	a5,-64(s0)		# tmp84, i
	add	a5,a4,a5	# tmp84, _1, tmp83
	lbu	a5,0(a5)	# _2, *_1
# problem16.c:23:     sum += str[i]-'0';
	sext.w	a5,a5	# _3, _2
	lw	a4,-68(s0)		# tmp87, sum
	addw	a5,a4,a5	# _3, tmp85, tmp86
	sext.w	a5,a5	# _4, tmp85
	addiw	a5,a5,-48	#, tmp88, _4
	sw	a5,-68(s0)	# tmp88, sum
# problem16.c:22:   for (i = 0; i < len; i++) {
	ld	a5,-64(s0)		# tmp90, i
	addi	a5,a5,1	#, tmp89, tmp90
	sd	a5,-64(s0)	# tmp89, i
.L2:
# problem16.c:22:   for (i = 0; i < len; i++) {
	ld	a4,-64(s0)		# tmp91, i
	ld	a5,-48(s0)		# tmp92, len
	bltu	a4,a5,.L3	#, tmp91, tmp92,
# problem16.c:25:   printf("%u\n", sum);
	lw	a5,-68(s0)		# tmp93, sum
	mv	a1,a5	#, tmp93
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem16.c:27:   free(str);
	ld	a0,-56(s0)		#, str
	call	free@plt	#
# problem16.c:28:   mpz_clear(n);
	addi	a5,s0,-40	#, tmp94,
	mv	a0,a5	#, tmp94
	call	__gmpz_clear@plt	#
# problem16.c:30:   return 0;
	li	a5,0		# _18,
# problem16.c:31: }
	mv	a4,a5	# <retval>, _18
	la	a5,__stack_chk_guard		# tmp96,
	ld	a3, -24(s0)	# tmp99, D.3998
	ld	a5, 0(a5)	# tmp97, __stack_chk_guard
	xor	a5, a3, a5	# tmp97, tmp99
	li	a3, 0	# tmp99
	beq	a5,zero,.L5	#, tmp97,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
