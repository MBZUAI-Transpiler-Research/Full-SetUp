	.file	"problem20.c"
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
# problem20.c:11: {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp162, __stack_chk_guard
	sd	a4, -24(s0)	# tmp162, D.4822
	li	a4, 0	# tmp162
# problem20.c:15:   int sum = 0;
	sw	zero,-52(s0)	#, sum
# problem20.c:17:   mpz_init(n);
	addi	a5,s0,-40	#, tmp145,
	mv	a0,a5	#, tmp145
	call	__gmpz_init@plt	#
# problem20.c:18:   mpz_fac_ui(n, 100);
	addi	a5,s0,-40	#, tmp146,
	li	a1,100		#,
	mv	a0,a5	#, tmp146
	call	__gmpz_fac_ui@plt	#
# problem20.c:19:   str = mpz_get_str(NULL, 10, n);
	addi	a5,s0,-40	#, tmp147,
	mv	a2,a5	#, tmp147
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
	ld	a4,-48(s0)		# tmp148, str
	add	a5,a4,a5	# _1, _2, tmp148
	lbu	a5,0(a5)	# _3, *_2
	sext.w	a5,a5	# _4, _3
# problem20.c:21:     sum += str[i]-'0';
	addiw	a5,a5,-48	#, tmp149, _4
	sext.w	a5,a5	# _5, tmp149
# problem20.c:21:     sum += str[i]-'0';
	lw	a4,-52(s0)		# tmp152, sum
	addw	a5,a4,a5	# _5, tmp150, tmp151
	sw	a5,-52(s0)	# tmp150, sum
# problem20.c:20:   for (i = 0; str[i]; i++) {
	lw	a5,-56(s0)		# tmp155, i
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-56(s0)	# tmp153, i
.L2:
# problem20.c:20:   for (i = 0; str[i]; i++) {
	lw	a5,-56(s0)		# _6, i
	ld	a4,-48(s0)		# tmp156, str
	add	a5,a4,a5	# _6, _7, tmp156
	lbu	a5,0(a5)	# _8, *_7
# problem20.c:20:   for (i = 0; str[i]; i++) {
	bne	a5,zero,.L3	#, _8,,
# problem20.c:23:   printf("%d\n", sum);
	lw	a5,-52(s0)		# tmp157, sum
	mv	a1,a5	#, tmp157
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem20.c:25:   free(str);
	ld	a0,-48(s0)		#, str
	call	free@plt	#
# problem20.c:26:   mpz_clear(n);
	addi	a5,s0,-40	#, tmp158,
	mv	a0,a5	#, tmp158
	call	__gmpz_clear@plt	#
# problem20.c:28:   return 0;
	li	a5,0		# _21,
# problem20.c:29: }
	mv	a4,a5	# <retval>, _21
	la	a5,__stack_chk_guard		# tmp160,
	ld	a3, -24(s0)	# tmp163, D.4822
	ld	a5, 0(a5)	# tmp161, __stack_chk_guard
	xor	a5, a3, a5	# tmp161, tmp163
	li	a3, 0	# tmp163
	beq	a5,zero,.L5	#, tmp161,,
	call	__stack_chk_fail@plt	#
.L5:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
