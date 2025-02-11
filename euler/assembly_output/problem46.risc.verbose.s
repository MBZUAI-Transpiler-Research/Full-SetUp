	.file	"problem46.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem46.c:17:   char *sieve = prime_sieve(N);
	li	a5,8192		# tmp163,
	addi	a0,a5,1808	#,, tmp163
	call	prime_sieve		#
	sd	a0,-32(s0)	#, sieve
# problem46.c:18:   unsigned *primes = malloc(sizeof(unsigned) * N);
	li	a5,40960		# tmp164,
	addi	a0,a5,-960	#,, tmp164
	call	malloc@plt	#
	mv	a5,a0	# tmp165,
	sd	a5,-24(s0)	# tmp165, primes
# problem46.c:19:   unsigned i, j = 0;
	sw	zero,-40(s0)	#, j
# problem46.c:21:   for (i = 0; i < N; i++) {
	sw	zero,-44(s0)	#, i
# problem46.c:21:   for (i = 0; i < N; i++) {
	j	.L2		#
.L4:
# problem46.c:22:     if (!sieve[i]) {
	lwu	a5,-44(s0)	# _1, i
	ld	a4,-32(s0)		# tmp166, sieve
	add	a5,a4,a5	# _1, _2, tmp166
	lbu	a5,0(a5)	# _3, *_2
# problem46.c:22:     if (!sieve[i]) {
	bne	a5,zero,.L3	#, _3,,
# problem46.c:23:       primes[j++] = i;
	lw	a5,-40(s0)		# j.0_4, j
	addiw	a4,a5,1	#, tmp167, j.0_4
	sw	a4,-40(s0)	# tmp167, j
	slli	a5,a5,32	#, _5, j.0_4
	srli	a5,a5,32	#, _5, _5
# problem46.c:23:       primes[j++] = i;
	slli	a5,a5,2	#, _6, _5
	ld	a4,-24(s0)		# tmp168, primes
	add	a5,a4,a5	# _6, _7, tmp168
# problem46.c:23:       primes[j++] = i;
	lw	a4,-44(s0)		# tmp169, i
	sw	a4,0(a5)	# tmp169, *_7
.L3:
# problem46.c:21:   for (i = 0; i < N; i++) {
	lw	a5,-44(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-44(s0)	# tmp170, i
.L2:
# problem46.c:21:   for (i = 0; i < N; i++) {
	lw	a5,-44(s0)		# tmp176, i
	sext.w	a4,a5	# tmp177, tmp175
	li	a5,8192		# tmp179,
	addi	a5,a5,1807	#, tmp178, tmp179
	bleu	a4,a5,.L4	#, tmp177, tmp178,
# problem46.c:26:   primes[j] = 0;
	lwu	a5,-40(s0)	# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-24(s0)		# tmp180, primes
	add	a5,a4,a5	# _9, _10, tmp180
# problem46.c:26:   primes[j] = 0;
	sw	zero,0(a5)	#, *_10
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	li	a5,3		# tmp181,
	sw	a5,-44(s0)	# tmp181, i
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	j	.L5		#
.L13:
# problem46.c:29:     if (!sieve[i]) {
	lwu	a5,-44(s0)	# _11, i
	ld	a4,-32(s0)		# tmp182, sieve
	add	a5,a4,a5	# _11, _12, tmp182
	lbu	a5,0(a5)	# _13, *_12
# problem46.c:29:     if (!sieve[i]) {
	beq	a5,zero,.L15	#, _13,,
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	sw	zero,-40(s0)	#, j
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	j	.L8		#
.L12:
# problem46.c:36:       if (primes[j] > i) {
	lwu	a5,-40(s0)	# _14, j
	slli	a5,a5,2	#, _15, _14
	ld	a4,-24(s0)		# tmp183, primes
	add	a5,a4,a5	# _15, _16, tmp183
	lw	a4,0(a5)		# _17, *_16
# problem46.c:36:       if (primes[j] > i) {
	lw	a5,-44(s0)		# tmp185, i
	sext.w	a5,a5	# tmp186, tmp184
	bgeu	a5,a4,.L9	#, tmp186, tmp187,
# problem46.c:37:         printf("%u\n", i);
	lw	a5,-44(s0)		# tmp188, i
	mv	a1,a5	#, tmp188
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem46.c:38:         goto FINISH;
	j	.L10		#
.L9:
# problem46.c:41:       s = (i - primes[j])/2;
	lwu	a5,-40(s0)	# _18, j
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp189, primes
	add	a5,a4,a5	# _19, _20, tmp189
	lw	a5,0(a5)		# _21, *_20
# problem46.c:41:       s = (i - primes[j])/2;
	lw	a4,-44(s0)		# tmp192, i
	subw	a5,a4,a5	# tmp190, tmp191, _21
	sext.w	a5,a5	# _22, tmp190
# problem46.c:41:       s = (i - primes[j])/2;
	srliw	a5,a5,1	#, tmp194, tmp193
	sw	a5,-36(s0)	# tmp194, s
# problem46.c:42:       if (is_square(s)) {
	lw	a5,-36(s0)		# tmp195, s
	mv	a0,a5	#, tmp195
	call	is_square		#
	mv	a5,a0	# tmp196,
# problem46.c:42:       if (is_square(s)) {
	bne	a5,zero,.L16	#, _23,,
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	lw	a5,-40(s0)		# tmp199, j
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-40(s0)	# tmp197, j
.L8:
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	lwu	a5,-40(s0)	# _24, j
	slli	a5,a5,2	#, _25, _24
	ld	a4,-24(s0)		# tmp200, primes
	add	a5,a4,a5	# _25, _26, tmp200
	lw	a5,0(a5)		# _27, *_26
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	bne	a5,zero,.L12	#, _27,,
	j	.L7		#
.L15:
# problem46.c:31:       continue;
	nop	
	j	.L7		#
.L16:
# problem46.c:43:         break;
	nop	
.L7:
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	lw	a5,-44(s0)		# tmp203, i
	addiw	a5,a5,2	#, tmp201, tmp202
	sw	a5,-44(s0)	# tmp201, i
.L5:
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	lw	a5,-44(s0)		# tmp207, i
	sext.w	a4,a5	# tmp208, tmp206
	li	a5,8192		# tmp210,
	addi	a5,a5,1807	#, tmp209, tmp210
	bleu	a4,a5,.L13	#, tmp208, tmp209,
# problem46.c:47: FINISH:
	nop	
.L10:
# problem46.c:48:   free(sieve);
	ld	a0,-32(s0)		#, sieve
	call	free@plt	#
# problem46.c:49:   free(primes);
	ld	a0,-24(s0)		#, primes
	call	free@plt	#
# problem46.c:51:   return 0;
	li	a5,0		# _56,
# problem46.c:52: }
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
.LFE6:
	.size	main, .-main
	.align	1
	.type	prime_sieve, @function
prime_sieve:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp144, n
	sw	a5,-36(s0)	# tmp145, n
# problem46.c:56:   char *sieve = calloc(n, sizeof *sieve);
	lwu	a5,-36(s0)	# _1, n
	li	a1,1		#,
	mv	a0,a5	#, _1
	call	calloc@plt	#
	mv	a5,a0	# tmp146,
	sd	a5,-24(s0)	# tmp146, sieve
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	ld	a5,-24(s0)		# tmp147, sieve
	addi	a5,a5,1	#, _2, tmp147
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	li	a4,1		# tmp148,
	sb	a4,0(a5)	# tmp148, *_2
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	lbu	a4,0(a5)	# _3, *_2
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	ld	a5,-24(s0)		# tmp149, sieve
	sb	a4,0(a5)	# _3, *sieve_17
# problem46.c:59:   for (i = 2; i < n; i++) {
	li	a5,2		# tmp150,
	sw	a5,-32(s0)	# tmp150, i
# problem46.c:59:   for (i = 2; i < n; i++) {
	j	.L18		#
.L22:
# problem46.c:60:     if (!sieve[i]) {
	lwu	a5,-32(s0)	# _4, i
	ld	a4,-24(s0)		# tmp151, sieve
	add	a5,a4,a5	# _4, _5, tmp151
	lbu	a5,0(a5)	# _6, *_5
# problem46.c:60:     if (!sieve[i]) {
	bne	a5,zero,.L19	#, _6,,
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	lw	a5,-32(s0)		# tmp154, i
	slliw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-28(s0)	# tmp152, j
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	j	.L20		#
.L21:
# problem46.c:63:         sieve[j] = 1;
	lwu	a5,-28(s0)	# _7, j
	ld	a4,-24(s0)		# tmp155, sieve
	add	a5,a4,a5	# _7, _8, tmp155
# problem46.c:63:         sieve[j] = 1;
	li	a4,1		# tmp156,
	sb	a4,0(a5)	# tmp156, *_8
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	lw	a5,-28(s0)		# tmp159, j
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-32(s0)		# tmp161, i
	addw	a5,a4,a5	# tmp160, tmp157, tmp158
	sw	a5,-28(s0)	# tmp157, j
.L20:
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	lw	a5,-28(s0)		# tmp163, j
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-36(s0)		# tmp165, n
	sext.w	a4,a4	# tmp166, tmp162
	sext.w	a5,a5	# tmp167, tmp164
	bltu	a4,a5,.L21	#, tmp166, tmp167,
.L19:
# problem46.c:59:   for (i = 2; i < n; i++) {
	lw	a5,-32(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-32(s0)	# tmp168, i
.L18:
# problem46.c:59:   for (i = 2; i < n; i++) {
	lw	a5,-32(s0)		# tmp172, i
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-36(s0)		# tmp174, n
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	bltu	a4,a5,.L22	#, tmp175, tmp176,
# problem46.c:67:   return sieve;
	ld	a5,-24(s0)		# _21, sieve
# problem46.c:68: }
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
.LFE7:
	.size	prime_sieve, .-prime_sieve
	.align	1
	.type	is_square, @function
is_square:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp140, n
	sw	a5,-36(s0)	# tmp141, n
# problem46.c:72:   unsigned sq = sqrt(n);
	lw	a5,-36(s0)		# tmp143, n
	fcvt.d.wu	fa5,a5	# _1, tmp142
	fmv.d	fa0,fa5	#, _1
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _2,
# problem46.c:72:   unsigned sq = sqrt(n);
	fcvt.wu.d a5,fa5,rtz	# tmp144, _2
	sw	a5,-20(s0)	# tmp144, sq
# problem46.c:73:   return sq*sq == n;
	lw	a5,-20(s0)		# tmp147, sq
	mulw	a5,a5,a5	# tmp145, tmp146, tmp146
	sext.w	a4,a5	# _3, tmp145
# problem46.c:73:   return sq*sq == n;
	lw	a5,-36(s0)		# tmp150, n
	sext.w	a5,a5	# tmp152, tmp149
	sub	a5,a5,a4	# tmp153, tmp152, tmp154
	seqz	a5,a5	# tmp151, tmp153
	andi	a5,a5,0xff	# _4, tmp148
	sext.w	a5,a5	# _9, _4
# problem46.c:74: }
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
.LFE8:
	.size	is_square, .-is_square
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
