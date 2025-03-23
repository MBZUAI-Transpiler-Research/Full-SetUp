	.file	"problem35.c"
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
# problem35.c:15:   unsigned i, count = 0;
	sw	zero,-40(s0)	#, count
# problem35.c:17:   for (i = 2; i < N; i++) {
	li	a5,2		# tmp81,
	sw	a5,-44(s0)	# tmp81, i
# problem35.c:17:   for (i = 2; i < N; i++) {
	j	.L2		#
.L9:
# problem35.c:22:     if (!is_prime(i)) {
	lw	a5,-44(s0)		# tmp82, i
	mv	a0,a5	#, tmp82
	call	is_prime		#
	mv	a5,a0	# tmp83,
# problem35.c:22:     if (!is_prime(i)) {
	beq	a5,zero,.L11	#, _1,,
# problem35.c:25:     digits = log10(i);
	lw	a5,-44(s0)		# tmp85, i
	fcvt.d.wu	fa5,a5	# _2, tmp84
	fmv.d	fa0,fa5	#, _2
	call	log10@plt	#
	fmv.d	fa5,fa0	# _3,
# problem35.c:25:     digits = log10(i);
	fcvt.wu.d a5,fa5,rtz	# tmp86, _3
	sw	a5,-28(s0)	# tmp86, digits
# problem35.c:26:     k = i;
	lw	a5,-44(s0)		# tmp87, i
	sw	a5,-36(s0)	# tmp87, k
# problem35.c:27:     for (j = 0; j < digits; j++) {
	sw	zero,-32(s0)	#, j
# problem35.c:27:     for (j = 0; j < digits; j++) {
	j	.L5		#
.L8:
# problem35.c:28:       unsigned l = pow(10, digits);
	lw	a5,-28(s0)		# tmp89, digits
	fcvt.d.wu	fa4,a5	# _4, tmp88
	lla	a5,.LC0	# tmp91,
	fld	fa5,0(a5)	# tmp90,
	fmv.d	fa1,fa4	#, _4
	fmv.d	fa0,fa5	#, tmp90
	call	pow@plt	#
	fmv.d	fa5,fa0	# _5,
# problem35.c:28:       unsigned l = pow(10, digits);
	fcvt.wu.d a5,fa5,rtz	# tmp92, _5
	sw	a5,-24(s0)	# tmp92, l
# problem35.c:29:       unsigned t = k % l;
	lw	a5,-36(s0)		# tmp95, k
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-24(s0)		# tmp98, l
	remuw	a5,a4,a5	# tmp97, tmp96, tmp94
	sw	a5,-20(s0)	# tmp96, t
# problem35.c:30:       k /= l;
	lw	a5,-36(s0)		# tmp102, k
	mv	a4,a5	# tmp101, tmp102
	lw	a5,-24(s0)		# tmp104, l
	divuw	a5,a4,a5	# tmp103, tmp100, tmp101
	sw	a5,-36(s0)	# tmp100, k
# problem35.c:31:       k += t*10;
	lw	a5,-20(s0)		# tmp106, t
	mv	a4,a5	# tmp105, tmp106
	mv	a5,a4	# tmp107, tmp105
	slliw	a5,a5,2	#, tmp108, tmp107
	addw	a5,a5,a4	# tmp105, tmp107, tmp107
	slliw	a5,a5,1	#, tmp109, tmp107
	sext.w	a5,a5	# _6, tmp107
# problem35.c:31:       k += t*10;
	lw	a4,-36(s0)		# tmp112, k
	addw	a5,a4,a5	# _6, tmp110, tmp111
	sw	a5,-36(s0)	# tmp110, k
# problem35.c:32:       if (!is_prime(k)) {
	lw	a5,-36(s0)		# tmp113, k
	mv	a0,a5	#, tmp113
	call	is_prime		#
	mv	a5,a0	# tmp114,
# problem35.c:32:       if (!is_prime(k)) {
	beq	a5,zero,.L12	#, _7,,
# problem35.c:27:     for (j = 0; j < digits; j++) {
	lw	a5,-32(s0)		# tmp117, j
	addiw	a5,a5,1	#, tmp115, tmp116
	sw	a5,-32(s0)	# tmp115, j
.L5:
# problem35.c:27:     for (j = 0; j < digits; j++) {
	lw	a5,-32(s0)		# tmp119, j
	mv	a4,a5	# tmp118, tmp119
	lw	a5,-28(s0)		# tmp121, digits
	sext.w	a4,a4	# tmp122, tmp118
	sext.w	a5,a5	# tmp123, tmp120
	bltu	a4,a5,.L8	#, tmp122, tmp123,
# problem35.c:36:     count++;
	lw	a5,-40(s0)		# tmp126, count
	addiw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-40(s0)	# tmp124, count
	j	.L4		#
.L7:
.L11:
# problem35.c:23:       continue;
	nop	
	j	.L4		#
.L12:
# problem35.c:33:         goto NEXT;
	nop	
.L4:
# problem35.c:17:   for (i = 2; i < N; i++) {
	lw	a5,-44(s0)		# tmp129, i
	addiw	a5,a5,1	#, tmp127, tmp128
	sw	a5,-44(s0)	# tmp127, i
.L2:
# problem35.c:17:   for (i = 2; i < N; i++) {
	lw	a5,-44(s0)		# tmp133, i
	sext.w	a4,a5	# tmp134, tmp132
	li	a5,999424		# tmp136,
	addi	a5,a5,575	#, tmp135, tmp136
	bleu	a4,a5,.L9	#, tmp134, tmp135,
# problem35.c:40:   printf("%u\n", count);
	lw	a5,-40(s0)		# tmp137, count
	mv	a1,a5	#, tmp137
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem35.c:42:   return 0;
	li	a5,0		# _22,
# problem35.c:43: }
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
# problem35.c:47:   if (n <= 1) {
	lw	a5,-36(s0)		# tmp79, n
	sext.w	a4,a5	# tmp80, tmp78
	li	a5,1		# tmp81,
	bgtu	a4,a5,.L14	#, tmp80, tmp81,
# problem35.c:48:     return 0;
	li	a5,0		# _4,
	j	.L15		#
.L14:
# problem35.c:50:   else if (n == 2) {
	lw	a5,-36(s0)		# tmp83, n
	sext.w	a4,a5	# tmp84, tmp82
	li	a5,2		# tmp85,
	bne	a4,a5,.L16	#, tmp84, tmp85,
# problem35.c:51:     return 1;
	li	a5,1		# _4,
	j	.L15		#
.L16:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	li	a5,2		# tmp86,
	sw	a5,-20(s0)	# tmp86, i
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	j	.L17		#
.L19:
# problem35.c:56:       if (n % i == 0) {
	lw	a5,-36(s0)		# tmp89, n
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-20(s0)		# tmp92, i
	remuw	a5,a4,a5	# tmp91, tmp90, tmp88
	sext.w	a5,a5	# _1, tmp90
# problem35.c:56:       if (n % i == 0) {
	bne	a5,zero,.L18	#, _1,,
# problem35.c:57:         return 0;
	li	a5,0		# _4,
	j	.L15		#
.L18:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	lw	a5,-20(s0)		# tmp95, i
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-20(s0)	# tmp93, i
.L17:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	lw	a5,-20(s0)		# tmp98, i
	mulw	a5,a5,a5	# tmp96, tmp97, tmp97
	sext.w	a4,a5	# _2, tmp96
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	lw	a5,-36(s0)		# tmp100, n
	sext.w	a5,a5	# tmp101, tmp99
	bgeu	a5,a4,.L19	#, tmp101, tmp102,
# problem35.c:60:     return 1;
	li	a5,1		# _4,
.L15:
# problem35.c:62: }
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
