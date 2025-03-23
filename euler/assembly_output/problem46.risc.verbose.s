	.file	"problem46.c"
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
# problem46.c:17:   char *sieve = prime_sieve(N);
	li	a5,8192		# tmp101,
	addi	a0,a5,1808	#,, tmp101
	call	prime_sieve		#
	sd	a0,-32(s0)	#, sieve
# problem46.c:18:   unsigned *primes = malloc(sizeof(unsigned) * N);
	li	a5,40960		# tmp102,
	addi	a0,a5,-960	#,, tmp102
	call	malloc@plt	#
	mv	a5,a0	# tmp103,
	sd	a5,-24(s0)	# tmp103, primes
# problem46.c:19:   unsigned i, j = 0;
	sw	zero,-40(s0)	#, j
# problem46.c:21:   for (i = 0; i < N; i++) {
	sw	zero,-44(s0)	#, i
# problem46.c:21:   for (i = 0; i < N; i++) {
	j	.L2		#
.L4:
# problem46.c:22:     if (!sieve[i]) {
	lwu	a5,-44(s0)	# _1, i
	ld	a4,-32(s0)		# tmp104, sieve
	add	a5,a4,a5	# _1, _2, tmp104
	lbu	a5,0(a5)	# _3, *_2
# problem46.c:22:     if (!sieve[i]) {
	bne	a5,zero,.L3	#, _3,,
# problem46.c:23:       primes[j++] = i;
	lw	a5,-40(s0)		# j.0_4, j
	addiw	a4,a5,1	#, tmp105, j.0_4
	sw	a4,-40(s0)	# tmp105, j
	slli	a5,a5,32	#, _5, j.0_4
	srli	a5,a5,32	#, _5, _5
# problem46.c:23:       primes[j++] = i;
	slli	a5,a5,2	#, _6, _5
	ld	a4,-24(s0)		# tmp106, primes
	add	a5,a4,a5	# _6, _7, tmp106
# problem46.c:23:       primes[j++] = i;
	lw	a4,-44(s0)		# tmp107, i
	sw	a4,0(a5)	# tmp107, *_7
.L3:
# problem46.c:21:   for (i = 0; i < N; i++) {
	lw	a5,-44(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-44(s0)	# tmp108, i
.L2:
# problem46.c:21:   for (i = 0; i < N; i++) {
	lw	a5,-44(s0)		# tmp114, i
	sext.w	a4,a5	# tmp115, tmp113
	li	a5,8192		# tmp117,
	addi	a5,a5,1807	#, tmp116, tmp117
	bleu	a4,a5,.L4	#, tmp115, tmp116,
# problem46.c:26:   primes[j] = 0;
	lwu	a5,-40(s0)	# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-24(s0)		# tmp118, primes
	add	a5,a4,a5	# _9, _10, tmp118
# problem46.c:26:   primes[j] = 0;
	sw	zero,0(a5)	#, *_10
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	li	a5,3		# tmp119,
	sw	a5,-44(s0)	# tmp119, i
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	j	.L5		#
.L13:
# problem46.c:29:     if (!sieve[i]) {
	lwu	a5,-44(s0)	# _11, i
	ld	a4,-32(s0)		# tmp120, sieve
	add	a5,a4,a5	# _11, _12, tmp120
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
	ld	a4,-24(s0)		# tmp121, primes
	add	a5,a4,a5	# _15, _16, tmp121
	lw	a4,0(a5)		# _17, *_16
# problem46.c:36:       if (primes[j] > i) {
	lw	a5,-44(s0)		# tmp123, i
	sext.w	a5,a5	# tmp124, tmp122
	bgeu	a5,a4,.L9	#, tmp124, tmp125,
# problem46.c:37:         printf("%u\n", i);
	lw	a5,-44(s0)		# tmp126, i
	mv	a1,a5	#, tmp126
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem46.c:38:         goto FINISH;
	j	.L10		#
.L9:
# problem46.c:41:       s = (i - primes[j])/2;
	lwu	a5,-40(s0)	# _18, j
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp127, primes
	add	a5,a4,a5	# _19, _20, tmp127
	lw	a5,0(a5)		# _21, *_20
# problem46.c:41:       s = (i - primes[j])/2;
	lw	a4,-44(s0)		# tmp130, i
	subw	a5,a4,a5	# tmp128, tmp129, _21
	sext.w	a5,a5	# _22, tmp128
# problem46.c:41:       s = (i - primes[j])/2;
	srliw	a5,a5,1	#, tmp132, tmp131
	sw	a5,-36(s0)	# tmp132, s
# problem46.c:42:       if (is_square(s)) {
	lw	a5,-36(s0)		# tmp133, s
	mv	a0,a5	#, tmp133
	call	is_square		#
	mv	a5,a0	# tmp134,
# problem46.c:42:       if (is_square(s)) {
	bne	a5,zero,.L16	#, _23,,
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	lw	a5,-40(s0)		# tmp137, j
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-40(s0)	# tmp135, j
.L8:
# problem46.c:33:     for (j = 0; primes[j]; j++) {
	lwu	a5,-40(s0)	# _24, j
	slli	a5,a5,2	#, _25, _24
	ld	a4,-24(s0)		# tmp138, primes
	add	a5,a4,a5	# _25, _26, tmp138
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
	lw	a5,-44(s0)		# tmp141, i
	addiw	a5,a5,2	#, tmp139, tmp140
	sw	a5,-44(s0)	# tmp139, i
.L5:
# problem46.c:28:   for (i = 3; i < N; i += 2) {
	lw	a5,-44(s0)		# tmp145, i
	sext.w	a4,a5	# tmp146, tmp144
	li	a5,8192		# tmp148,
	addi	a5,a5,1807	#, tmp147, tmp148
	bleu	a4,a5,.L13	#, tmp146, tmp147,
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
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	prime_sieve, @function
prime_sieve:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp82, n
	sw	a5,-36(s0)	# tmp83, n
# problem46.c:56:   char *sieve = calloc(n, sizeof *sieve);
	lwu	a5,-36(s0)	# _1, n
	li	a1,1		#,
	mv	a0,a5	#, _1
	call	calloc@plt	#
	mv	a5,a0	# tmp84,
	sd	a5,-24(s0)	# tmp84, sieve
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	ld	a5,-24(s0)		# tmp85, sieve
	addi	a5,a5,1	#, _2, tmp85
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	li	a4,1		# tmp86,
	sb	a4,0(a5)	# tmp86, *_2
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	lbu	a4,0(a5)	# _3, *_2
# problem46.c:58:   sieve[0] = sieve[1] = 1;
	ld	a5,-24(s0)		# tmp87, sieve
	sb	a4,0(a5)	# _3, *sieve_17
# problem46.c:59:   for (i = 2; i < n; i++) {
	li	a5,2		# tmp88,
	sw	a5,-32(s0)	# tmp88, i
# problem46.c:59:   for (i = 2; i < n; i++) {
	j	.L18		#
.L22:
# problem46.c:60:     if (!sieve[i]) {
	lwu	a5,-32(s0)	# _4, i
	ld	a4,-24(s0)		# tmp89, sieve
	add	a5,a4,a5	# _4, _5, tmp89
	lbu	a5,0(a5)	# _6, *_5
# problem46.c:60:     if (!sieve[i]) {
	bne	a5,zero,.L19	#, _6,,
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	lw	a5,-32(s0)		# tmp92, i
	slliw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-28(s0)	# tmp90, j
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	j	.L20		#
.L21:
# problem46.c:63:         sieve[j] = 1;
	lwu	a5,-28(s0)	# _7, j
	ld	a4,-24(s0)		# tmp93, sieve
	add	a5,a4,a5	# _7, _8, tmp93
# problem46.c:63:         sieve[j] = 1;
	li	a4,1		# tmp94,
	sb	a4,0(a5)	# tmp94, *_8
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	lw	a5,-28(s0)		# tmp97, j
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-32(s0)		# tmp99, i
	addw	a5,a4,a5	# tmp98, tmp95, tmp96
	sw	a5,-28(s0)	# tmp95, j
.L20:
# problem46.c:62:       for (j = i*2; j < n; j += i) {
	lw	a5,-28(s0)		# tmp101, j
	mv	a4,a5	# tmp100, tmp101
	lw	a5,-36(s0)		# tmp103, n
	sext.w	a4,a4	# tmp104, tmp100
	sext.w	a5,a5	# tmp105, tmp102
	bltu	a4,a5,.L21	#, tmp104, tmp105,
.L19:
# problem46.c:59:   for (i = 2; i < n; i++) {
	lw	a5,-32(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-32(s0)	# tmp106, i
.L18:
# problem46.c:59:   for (i = 2; i < n; i++) {
	lw	a5,-32(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	lw	a5,-36(s0)		# tmp112, n
	sext.w	a4,a4	# tmp113, tmp109
	sext.w	a5,a5	# tmp114, tmp111
	bltu	a4,a5,.L22	#, tmp113, tmp114,
# problem46.c:67:   return sieve;
	ld	a5,-24(s0)		# _21, sieve
# problem46.c:68: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	prime_sieve, .-prime_sieve
	.align	1
	.type	is_square, @function
is_square:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp78, n
	sw	a5,-36(s0)	# tmp79, n
# problem46.c:72:   unsigned sq = sqrt(n);
	lw	a5,-36(s0)		# tmp81, n
	fcvt.d.wu	fa5,a5	# _1, tmp80
	fmv.d	fa0,fa5	#, _1
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _2,
# problem46.c:72:   unsigned sq = sqrt(n);
	fcvt.wu.d a5,fa5,rtz	# tmp82, _2
	sw	a5,-20(s0)	# tmp82, sq
# problem46.c:73:   return sq*sq == n;
	lw	a5,-20(s0)		# tmp85, sq
	mulw	a5,a5,a5	# tmp83, tmp84, tmp84
	sext.w	a4,a5	# _3, tmp83
# problem46.c:73:   return sq*sq == n;
	lw	a5,-36(s0)		# tmp88, n
	sext.w	a5,a5	# tmp90, tmp87
	sub	a5,a5,a4	# tmp91, tmp90, tmp92
	seqz	a5,a5	# tmp89, tmp91
	andi	a5,a5,0xff	# _4, tmp86
	sext.w	a5,a5	# _9, _4
# problem46.c:74: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	is_square, .-is_square
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
