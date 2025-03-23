	.file	"problem37.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC1:
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
# problem37.c:14:   unsigned count = 0, sum = 0;
	sw	zero,-32(s0)	#, count
# problem37.c:14:   unsigned count = 0, sum = 0;
	sw	zero,-28(s0)	#, sum
# problem37.c:16:   for (i = 10; count < 11; i++) {
	li	a5,10		# tmp81,
	sw	a5,-36(s0)	# tmp81, i
# problem37.c:16:   for (i = 10; count < 11; i++) {
	j	.L2		#
.L10:
# problem37.c:20:     k = i;
	lw	a5,-36(s0)		# tmp82, i
	sw	a5,-24(s0)	# tmp82, k
# problem37.c:21:     while (k != 0) {
	j	.L3		#
.L6:
# problem37.c:22:       if (!is_prime(k)) {
	lw	a5,-24(s0)		# tmp83, k
	mv	a0,a5	#, tmp83
	call	is_prime		#
	mv	a5,a0	# tmp84,
# problem37.c:22:       if (!is_prime(k)) {
	beq	a5,zero,.L12	#, _1,,
# problem37.c:25:       k /= 10;
	lw	a5,-24(s0)		# tmp87, k
	mv	a4,a5	# tmp86, tmp87
	li	a5,10		# tmp89,
	divuw	a5,a4,a5	# tmp89, tmp88, tmp86
	sw	a5,-24(s0)	# tmp88, k
.L3:
# problem37.c:21:     while (k != 0) {
	lw	a5,-24(s0)		# tmp91, k
	sext.w	a5,a5	# tmp92, tmp90
	bne	a5,zero,.L6	#, tmp92,,
# problem37.c:29:     k = i;
	lw	a5,-36(s0)		# tmp93, i
	sw	a5,-24(s0)	# tmp93, k
# problem37.c:30:     d = log10(k);
	lw	a5,-24(s0)		# tmp95, k
	fcvt.d.wu	fa5,a5	# _2, tmp94
	fmv.d	fa0,fa5	#, _2
	call	log10@plt	#
	fmv.d	fa5,fa0	# _3,
# problem37.c:30:     d = log10(k);
	fcvt.wu.d a5,fa5,rtz	# tmp96, _3
	sw	a5,-20(s0)	# tmp96, d
# problem37.c:31:     d = pow(10, d);
	lw	a5,-20(s0)		# tmp98, d
	fcvt.d.wu	fa4,a5	# _4, tmp97
	lla	a5,.LC0	# tmp100,
	fld	fa5,0(a5)	# tmp99,
	fmv.d	fa1,fa4	#, _4
	fmv.d	fa0,fa5	#, tmp99
	call	pow@plt	#
	fmv.d	fa5,fa0	# _5,
# problem37.c:31:     d = pow(10, d);
	fcvt.wu.d a5,fa5,rtz	# tmp101, _5
	sw	a5,-20(s0)	# tmp101, d
# problem37.c:32:     while (d != 1) {
	j	.L7		#
.L9:
# problem37.c:33:       if (!is_prime(k % d)) {
	lw	a5,-24(s0)		# tmp104, k
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-20(s0)		# tmp107, d
	remuw	a5,a4,a5	# tmp106, tmp105, tmp103
	sext.w	a5,a5	# _6, tmp105
	mv	a0,a5	#, _6
	call	is_prime		#
	mv	a5,a0	# tmp108,
# problem37.c:33:       if (!is_prime(k % d)) {
	beq	a5,zero,.L13	#, _7,,
# problem37.c:36:       d /= 10;
	lw	a5,-20(s0)		# tmp111, d
	mv	a4,a5	# tmp110, tmp111
	li	a5,10		# tmp113,
	divuw	a5,a4,a5	# tmp113, tmp112, tmp110
	sw	a5,-20(s0)	# tmp112, d
.L7:
# problem37.c:32:     while (d != 1) {
	lw	a5,-20(s0)		# tmp115, d
	sext.w	a4,a5	# tmp116, tmp114
	li	a5,1		# tmp117,
	bne	a4,a5,.L9	#, tmp116, tmp117,
# problem37.c:38:     sum += i;
	lw	a5,-28(s0)		# tmp120, sum
	mv	a4,a5	# tmp119, tmp120
	lw	a5,-36(s0)		# tmp122, i
	addw	a5,a4,a5	# tmp121, tmp118, tmp119
	sw	a5,-28(s0)	# tmp118, sum
# problem37.c:39:     count++;
	lw	a5,-32(s0)		# tmp125, count
	addiw	a5,a5,1	#, tmp123, tmp124
	sw	a5,-32(s0)	# tmp123, count
	j	.L5		#
.L12:
# problem37.c:23:         goto NEXT;
	nop	
	j	.L5		#
.L13:
# problem37.c:34:         goto NEXT;
	nop	
.L5:
# problem37.c:16:   for (i = 10; count < 11; i++) {
	lw	a5,-36(s0)		# tmp128, i
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-36(s0)	# tmp126, i
.L2:
# problem37.c:16:   for (i = 10; count < 11; i++) {
	lw	a5,-32(s0)		# tmp130, count
	sext.w	a4,a5	# tmp131, tmp129
	li	a5,10		# tmp132,
	bleu	a4,a5,.L10	#, tmp131, tmp132,
# problem37.c:44:   printf("%u\n", sum);
	lw	a5,-28(s0)		# tmp133, sum
	mv	a1,a5	#, tmp133
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem37.c:46:   return 0;
	li	a5,0		# _24,
# problem37.c:47: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	is_prime, @function
is_prime:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp76, n
	sw	a5,-36(s0)	# tmp77, n
# problem37.c:51:   if (n <= 1) {
	lw	a5,-36(s0)		# tmp79, n
	sext.w	a4,a5	# tmp80, tmp78
	li	a5,1		# tmp81,
	bgtu	a4,a5,.L15	#, tmp80, tmp81,
# problem37.c:52:     return 0;
	li	a5,0		# _4,
	j	.L16		#
.L15:
# problem37.c:54:   else if (n == 2) {
	lw	a5,-36(s0)		# tmp83, n
	sext.w	a4,a5	# tmp84, tmp82
	li	a5,2		# tmp85,
	bne	a4,a5,.L17	#, tmp84, tmp85,
# problem37.c:55:     return 1;
	li	a5,1		# _4,
	j	.L16		#
.L17:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	li	a5,2		# tmp86,
	sw	a5,-20(s0)	# tmp86, i
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	j	.L18		#
.L20:
# problem37.c:60:       if (n % i == 0) {
	lw	a5,-36(s0)		# tmp89, n
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-20(s0)		# tmp92, i
	remuw	a5,a4,a5	# tmp91, tmp90, tmp88
	sext.w	a5,a5	# _1, tmp90
# problem37.c:60:       if (n % i == 0) {
	bne	a5,zero,.L19	#, _1,,
# problem37.c:61:         return 0;
	li	a5,0		# _4,
	j	.L16		#
.L19:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	lw	a5,-20(s0)		# tmp95, i
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-20(s0)	# tmp93, i
.L18:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	lw	a5,-20(s0)		# tmp98, i
	mulw	a5,a5,a5	# tmp96, tmp97, tmp97
	sext.w	a4,a5	# _2, tmp96
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	lw	a5,-36(s0)		# tmp100, n
	sext.w	a5,a5	# tmp101, tmp99
	bgeu	a5,a4,.L20	#, tmp101, tmp102,
# problem37.c:64:     return 1;
	li	a5,1		# _4,
.L16:
# problem37.c:66: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	is_prime, .-is_prime
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1076101120
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
