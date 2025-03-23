	.file	"problem27.c"
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	sw	zero,-28(s0)	#, nmax
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	sw	zero,-24(s0)	#, amax
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	sw	zero,-20(s0)	#, bmax
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	li	a5,-999		# tmp80,
	sw	a5,-40(s0)	# tmp80, a
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	j	.L2		#
.L8:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	li	a5,-999		# tmp81,
	sw	a5,-36(s0)	# tmp81, b
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	j	.L3		#
.L7:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	sw	zero,-32(s0)	#, n
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	j	.L4		#
.L5:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	lw	a5,-32(s0)		# tmp84, n
	addiw	a5,a5,1	#, tmp82, tmp83
	sw	a5,-32(s0)	# tmp82, n
.L4:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	lw	a5,-32(s0)		# tmp87, n
	mulw	a5,a5,a5	# tmp85, tmp86, tmp86
	sext.w	a4,a5	# _1, tmp85
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	lw	a5,-40(s0)		# tmp90, a
	mv	a3,a5	# tmp89, tmp90
	lw	a5,-32(s0)		# tmp92, n
	mulw	a5,a3,a5	# tmp88, tmp89, tmp91
	sext.w	a5,a5	# _2, tmp88
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	addw	a5,a4,a5	# _2, tmp93, _1
	sext.w	a5,a5	# _3, tmp93
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	lw	a4,-36(s0)		# tmp96, b
	addw	a5,a4,a5	# _3, tmp94, tmp95
	sext.w	a5,a5	# _4, tmp94
	mv	a0,a5	#, _4
	call	is_prime		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L5	#, _5,,
# problem27.c:19:       if (n > nmax) {
	lw	a5,-32(s0)		# tmp99, n
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-28(s0)		# tmp101, nmax
	sext.w	a4,a4	# tmp102, tmp98
	sext.w	a5,a5	# tmp103, tmp100
	ble	a4,a5,.L6	#, tmp102, tmp103,
# problem27.c:20:         nmax = n;
	lw	a5,-32(s0)		# tmp104, n
	sw	a5,-28(s0)	# tmp104, nmax
# problem27.c:21:         amax = a;
	lw	a5,-40(s0)		# tmp105, a
	sw	a5,-24(s0)	# tmp105, amax
# problem27.c:22:         bmax = b;
	lw	a5,-36(s0)		# tmp106, b
	sw	a5,-20(s0)	# tmp106, bmax
.L6:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	lw	a5,-36(s0)		# tmp109, b
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-36(s0)	# tmp107, b
.L3:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	lw	a5,-36(s0)		# tmp111, b
	sext.w	a4,a5	# tmp112, tmp110
	li	a5,999		# tmp113,
	ble	a4,a5,.L7	#, tmp112, tmp113,
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	lw	a5,-40(s0)		# tmp116, a
	addiw	a5,a5,1	#, tmp114, tmp115
	sw	a5,-40(s0)	# tmp114, a
.L2:
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	lw	a5,-40(s0)		# tmp118, a
	sext.w	a4,a5	# tmp119, tmp117
	li	a5,999		# tmp120,
	ble	a4,a5,.L8	#, tmp119, tmp120,
# problem27.c:26:   printf("%d\n", amax * bmax);
	lw	a5,-24(s0)		# tmp123, amax
	mv	a4,a5	# tmp122, tmp123
	lw	a5,-20(s0)		# tmp125, bmax
	mulw	a5,a4,a5	# tmp121, tmp122, tmp124
	sext.w	a5,a5	# _6, tmp121
	mv	a1,a5	#, _6
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem27.c:28:   return 0;
	li	a5,0		# _28,
# problem27.c:29: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	is_prime, @function
is_prime:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	fsd	fs0,40(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp78, n
	sw	a5,-52(s0)	# tmp79, n
# problem27.c:35:   if (n <= 1) {
	lw	a5,-52(s0)		# tmp81, n
	sext.w	a4,a5	# tmp82, tmp80
	li	a5,1		# tmp83,
	bgt	a4,a5,.L11	#, tmp82, tmp83,
# problem27.c:36:     return 0;
	li	a5,0		# _6,
	j	.L12		#
.L11:
# problem27.c:38:   if (n == 2) {
	lw	a5,-52(s0)		# tmp85, n
	sext.w	a4,a5	# tmp86, tmp84
	li	a5,2		# tmp87,
	bne	a4,a5,.L13	#, tmp86, tmp87,
# problem27.c:39:     return 1;
	li	a5,1		# _6,
	j	.L12		#
.L13:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	li	a5,2		# tmp88,
	sw	a5,-36(s0)	# tmp88, i
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	j	.L14		#
.L16:
# problem27.c:43:     if (n % i == 0) {
	lw	a5,-52(s0)		# tmp91, n
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-36(s0)		# tmp94, i
	remw	a5,a4,a5	# tmp93, tmp92, tmp90
	sext.w	a5,a5	# _1, tmp92
# problem27.c:43:     if (n % i == 0) {
	bne	a5,zero,.L15	#, _1,,
# problem27.c:44:       return 0;
	li	a5,0		# _6,
	j	.L12		#
.L15:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	lw	a5,-36(s0)		# tmp97, i
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-36(s0)	# tmp95, i
.L14:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	lw	a5,-36(s0)		# tmp99, i
	fcvt.d.w	fs0,a5	# _2, tmp98
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	lw	a5,-52(s0)		# tmp101, n
	fcvt.d.w	fa5,a5	# _3, tmp100
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	flt.d	a5,fs0,fa5	#, tmp102, _2, _4
	bne	a5,zero,.L16	#, tmp102,,
# problem27.c:47:   return 1;
	li	a5,1		# _6,
.L12:
# problem27.c:48: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	fld	fs0,40(sp)	#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	is_prime, .-is_prime
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
