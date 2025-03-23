	.file	"problem26.c"
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
.LFB20:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem26.c:12: {
	la	a5,__stack_chk_guard		# tmp140,
	ld	a4, 0(a5)	# tmp184, __stack_chk_guard
	sd	a4, -24(s0)	# tmp184, D.4309
	li	a4, 0	# tmp184
# problem26.c:14:   unsigned maxlen = 0, imax = 0;
	sw	zero,-72(s0)	#, maxlen
# problem26.c:14:   unsigned maxlen = 0, imax = 0;
	sw	zero,-68(s0)	#, imax
# problem26.c:17:   mpz_init(p); mpz_init(r);
	addi	a5,s0,-56	#, tmp141,
	mv	a0,a5	#, tmp141
	call	__gmpz_init@plt	#
# problem26.c:17:   mpz_init(p); mpz_init(r);
	addi	a5,s0,-40	#, tmp142,
	mv	a0,a5	#, tmp142
	call	__gmpz_init@plt	#
# problem26.c:19:   for (i = 2; i < M; i++) {
	li	a5,2		# tmp143,
	sw	a5,-64(s0)	# tmp143, i
# problem26.c:19:   for (i = 2; i < M; i++) {
	j	.L2		#
.L8:
# problem26.c:20:     unsigned len = 1;
	li	a5,1		# tmp144,
	sw	a5,-60(s0)	# tmp144, len
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	lw	a5,-64(s0)		# tmp146, i
	andi	a5,a5,1	#, tmp147, tmp145
	sext.w	a5,a5	# _1, tmp147
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	beq	a5,zero,.L11	#, _1,,
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	lw	a5,-64(s0)		# tmp150, i
	mv	a4,a5	# tmp149, tmp150
	li	a5,5		# tmp152,
	remuw	a5,a4,a5	# tmp152, tmp151, tmp149
	sext.w	a5,a5	# _2, tmp151
# problem26.c:22:     if (i % 2 == 0 || i % 5 == 0) {
	beq	a5,zero,.L11	#, _2,,
# problem26.c:26:     mpz_set_ui(p, 10);
	addi	a5,s0,-56	#, tmp153,
	li	a1,10		#,
	mv	a0,a5	#, tmp153
	call	__gmpz_set_ui@plt	#
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	j	.L6		#
.L7:
# problem26.c:28:       len++;
	lw	a5,-60(s0)		# tmp156, len
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-60(s0)	# tmp154, len
# problem26.c:29:       mpz_mul_ui(p, p, 10);
	addi	a4,s0,-56	#, tmp157,
	addi	a5,s0,-56	#, tmp158,
	li	a2,10		#,
	mv	a1,a4	#, tmp157
	mv	a0,a5	#, tmp158
	call	__gmpz_mul_ui@plt	#
.L6:
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	lwu	a3,-64(s0)	# _3, i
	addi	a4,s0,-56	#, tmp159,
	addi	a5,s0,-40	#, tmp160,
	mv	a2,a3	#, _3
	mv	a1,a4	#, tmp159
	mv	a0,a5	#, tmp160
	call	__gmpz_fdiv_r_ui@plt	#
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	addi	a5,s0,-40	#, tmp161,
	li	a1,1		#,
	mv	a0,a5	#, tmp161
	call	__gmpz_cmp_ui@plt	#
	mv	a5,a0	# tmp162,
# problem26.c:27:     while (mpz_mod_ui(r, p, i), mpz_cmp_ui(r, 1) != 0) {
	bne	a5,zero,.L7	#, _4,,
# problem26.c:31:     if (len > maxlen) {
	lw	a5,-60(s0)		# tmp164, len
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-72(s0)		# tmp166, maxlen
	sext.w	a4,a4	# tmp167, tmp163
	sext.w	a5,a5	# tmp168, tmp165
	bleu	a4,a5,.L5	#, tmp167, tmp168,
# problem26.c:32:       maxlen = len;
	lw	a5,-60(s0)		# tmp169, len
	sw	a5,-72(s0)	# tmp169, maxlen
# problem26.c:33:       imax = i;
	lw	a5,-64(s0)		# tmp170, i
	sw	a5,-68(s0)	# tmp170, imax
	j	.L5		#
.L11:
# problem26.c:23:       continue;
	nop	
.L5:
# problem26.c:19:   for (i = 2; i < M; i++) {
	lw	a5,-64(s0)		# tmp173, i
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-64(s0)	# tmp171, i
.L2:
# problem26.c:19:   for (i = 2; i < M; i++) {
	lw	a5,-64(s0)		# tmp175, i
	sext.w	a4,a5	# tmp176, tmp174
	li	a5,999		# tmp177,
	bleu	a4,a5,.L8	#, tmp176, tmp177,
# problem26.c:36:   printf("%u\n", imax);
	lw	a5,-68(s0)		# tmp178, imax
	mv	a1,a5	#, tmp178
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem26.c:38:   mpz_clear(p);
	addi	a5,s0,-56	#, tmp179,
	mv	a0,a5	#, tmp179
	call	__gmpz_clear@plt	#
# problem26.c:39:   mpz_clear(r);
	addi	a5,s0,-40	#, tmp180,
	mv	a0,a5	#, tmp180
	call	__gmpz_clear@plt	#
# problem26.c:41:   return 0;
	li	a5,0		# _23,
# problem26.c:42: }
	mv	a4,a5	# <retval>, _23
	la	a5,__stack_chk_guard		# tmp182,
	ld	a3, -24(s0)	# tmp185, D.4309
	ld	a5, 0(a5)	# tmp183, __stack_chk_guard
	xor	a5, a3, a5	# tmp183, tmp185
	li	a3, 0	# tmp185
	beq	a5,zero,.L10	#, tmp183,,
	call	__stack_chk_fail@plt	#
.L10:
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
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
