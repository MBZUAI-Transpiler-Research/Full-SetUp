	.file	"problem20.c"
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
# problem20.c:11: {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp100, __stack_chk_guard
	sd	a4, -24(s0)	# tmp100, D.3997
	li	a4, 0	# tmp100
# problem20.c:15:   int sum = 0;
	sw	zero,-52(s0)	#, sum
# problem20.c:17:   mpz_init(n);
	addi	a5,s0,-40	#, tmp83,
	mv	a0,a5	#, tmp83
	call	__gmpz_init@plt	#
# problem20.c:18:   mpz_fac_ui(n, 100);
	addi	a5,s0,-40	#, tmp84,
	li	a1,100		#,
	mv	a0,a5	#, tmp84
	call	__gmpz_fac_ui@plt	#
# problem20.c:19:   str = mpz_get_str(NULL, 10, n);
	addi	a5,s0,-40	#, tmp85,
	mv	a2,a5	#, tmp85
	li	a1,10		#,
	li	a0,0		#,
	call	__gmpz_get_str@plt	#
	sd	a0,-48(s0)	#, str
# problem20.c:20:   for (i = 0; str[i]; i++) {
	sw	zero,-56(s0)	#, i
# problem20.c:20:   for (i = 0; str[i]; i++) {
	j	.L2		#
.L3:
# problem20.c:21:     sum += str[i]-'0';
	lw	a5,-56(s0)		# _1, i
	ld	a4,-48(s0)		# tmp86, str
	add	a5,a4,a5	# _1, _2, tmp86
	lbu	a5,0(a5)	# _3, *_2
	sext.w	a5,a5	# _4, _3
# problem20.c:21:     sum += str[i]-'0';
	addiw	a5,a5,-48	#, tmp87, _4
	sext.w	a5,a5	# _5, tmp87
# problem20.c:21:     sum += str[i]-'0';
	lw	a4,-52(s0)		# tmp90, sum
	addw	a5,a4,a5	# _5, tmp88, tmp89
	sw	a5,-52(s0)	# tmp88, sum
# problem20.c:20:   for (i = 0; str[i]; i++) {
	lw	a5,-56(s0)		# tmp93, i
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-56(s0)	# tmp91, i
.L2:
# problem20.c:20:   for (i = 0; str[i]; i++) {
	lw	a5,-56(s0)		# _6, i
	ld	a4,-48(s0)		# tmp94, str
	add	a5,a4,a5	# _6, _7, tmp94
	lbu	a5,0(a5)	# _8, *_7
# problem20.c:20:   for (i = 0; str[i]; i++) {
	bne	a5,zero,.L3	#, _8,,
# problem20.c:23:   printf("%d\n", sum);
	lw	a5,-52(s0)		# tmp95, sum
	mv	a1,a5	#, tmp95
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem20.c:25:   free(str);
	ld	a0,-48(s0)		#, str
	call	free@plt	#
# problem20.c:26:   mpz_clear(n);
	addi	a5,s0,-40	#, tmp96,
	mv	a0,a5	#, tmp96
	call	__gmpz_clear@plt	#
# problem20.c:28:   return 0;
	li	a5,0		# _21,
# problem20.c:29: }
	mv	a4,a5	# <retval>, _21
	la	a5,__stack_chk_guard		# tmp98,
	ld	a3, -24(s0)	# tmp101, D.3997
	ld	a5, 0(a5)	# tmp99, __stack_chk_guard
	xor	a5, a3, a5	# tmp99, tmp101
	li	a3, 0	# tmp101
	beq	a5,zero,.L5	#, tmp99,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
