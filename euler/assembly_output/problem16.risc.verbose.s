	.file	"problem16.c"
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
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem16.c:11: {
	la	a5,__stack_chk_guard		# tmp140,
	ld	a4, 0(a5)	# tmp160, __stack_chk_guard
	sd	a4, -24(s0)	# tmp160, D.4823
	li	a4, 0	# tmp160
# problem16.c:15:   unsigned sum = 0;
	sw	zero,-68(s0)	#, sum
# problem16.c:17:   mpz_init(n);
	addi	a5,s0,-40	#, tmp141,
	mv	a0,a5	#, tmp141
	call	__gmpz_init@plt	#
# problem16.c:18:   mpz_ui_pow_ui(n, 2, 1000);
	addi	a5,s0,-40	#, tmp142,
	li	a2,1000		#,
	li	a1,2		#,
	mv	a0,a5	#, tmp142
	call	__gmpz_ui_pow_ui@plt	#
# problem16.c:20:   str = mpz_get_str(NULL, 10, n);
	addi	a5,s0,-40	#, tmp143,
	mv	a2,a5	#, tmp143
	li	a1,10		#,
	li	a0,0		#,
	call	__gmpz_get_str@plt	#
	sd	a0,-56(s0)	#, str
# problem16.c:21:   len = mpz_sizeinbase(n, 10);
	addi	a5,s0,-40	#, tmp144,
	li	a1,10		#,
	mv	a0,a5	#, tmp144
	call	__gmpz_sizeinbase@plt	#
	sd	a0,-48(s0)	#, len
# problem16.c:22:   for (i = 0; i < len; i++) {
	sd	zero,-64(s0)	#, i
# problem16.c:22:   for (i = 0; i < len; i++) {
	j	.L2		#
.L3:
# problem16.c:23:     sum += str[i]-'0';
	ld	a4,-56(s0)		# tmp145, str
	ld	a5,-64(s0)		# tmp146, i
	add	a5,a4,a5	# tmp146, _1, tmp145
	lbu	a5,0(a5)	# _2, *_1
# problem16.c:23:     sum += str[i]-'0';
	sext.w	a5,a5	# _3, _2
	lw	a4,-68(s0)		# tmp149, sum
	addw	a5,a4,a5	# _3, tmp147, tmp148
	sext.w	a5,a5	# _4, tmp147
	addiw	a5,a5,-48	#, tmp150, _4
	sw	a5,-68(s0)	# tmp150, sum
# problem16.c:22:   for (i = 0; i < len; i++) {
	ld	a5,-64(s0)		# tmp152, i
	addi	a5,a5,1	#, tmp151, tmp152
	sd	a5,-64(s0)	# tmp151, i
.L2:
# problem16.c:22:   for (i = 0; i < len; i++) {
	ld	a4,-64(s0)		# tmp153, i
	ld	a5,-48(s0)		# tmp154, len
	bltu	a4,a5,.L3	#, tmp153, tmp154,
# problem16.c:25:   printf("%u\n", sum);
	lw	a5,-68(s0)		# tmp155, sum
	mv	a1,a5	#, tmp155
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem16.c:27:   free(str);
	ld	a0,-56(s0)		#, str
	call	free@plt	#
# problem16.c:28:   mpz_clear(n);
	addi	a5,s0,-40	#, tmp156,
	mv	a0,a5	#, tmp156
	call	__gmpz_clear@plt	#
# problem16.c:30:   return 0;
	li	a5,0		# _18,
# problem16.c:31: }
	mv	a4,a5	# <retval>, _18
	la	a5,__stack_chk_guard		# tmp158,
	ld	a3, -24(s0)	# tmp161, D.4823
	ld	a5, 0(a5)	# tmp159, __stack_chk_guard
	xor	a5, a3, a5	# tmp159, tmp161
	li	a3, 0	# tmp161
	beq	a5,zero,.L5	#, tmp159,,
	call	__stack_chk_fail@plt	#
.L5:
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
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
