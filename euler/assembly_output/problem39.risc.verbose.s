	.file	"problem39.c"
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
# problem39.c:11:   unsigned cnt, max = 0, maxp = 0;
	sw	zero,-28(s0)	#, max
# problem39.c:11:   unsigned cnt, max = 0, maxp = 0;
	sw	zero,-24(s0)	#, maxp
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	li	a5,1		# tmp81,
	sw	a5,-36(s0)	# tmp81, p
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	j	.L2		#
.L9:
# problem39.c:14:     cnt = 0;
	sw	zero,-32(s0)	#, cnt
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	li	a5,1		# tmp82,
	sw	a5,-44(s0)	# tmp82, a
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	j	.L3		#
.L7:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	lw	a5,-44(s0)		# tmp83, a
	sw	a5,-40(s0)	# tmp83, b
# problem39.c:16:       for (b = a; b < p/2; b++) {
	j	.L4		#
.L6:
# problem39.c:17:         c = p - a - b;
	lw	a5,-36(s0)		# tmp86, p
	mv	a4,a5	# tmp85, tmp86
	lw	a5,-44(s0)		# tmp88, a
	subw	a5,a4,a5	# tmp84, tmp85, tmp87
	sext.w	a5,a5	# _1, tmp84
# problem39.c:17:         c = p - a - b;
	lw	a4,-40(s0)		# tmp91, b
	subw	a5,a5,a4	# tmp89, _1, tmp90
	sw	a5,-20(s0)	# tmp89, c
# problem39.c:18:         if (a*a + b*b == c*c) {
	lw	a5,-44(s0)		# tmp94, a
	mulw	a5,a5,a5	# tmp92, tmp93, tmp93
	sext.w	a4,a5	# _2, tmp92
# problem39.c:18:         if (a*a + b*b == c*c) {
	lw	a5,-40(s0)		# tmp97, b
	mulw	a5,a5,a5	# tmp95, tmp96, tmp96
	sext.w	a5,a5	# _3, tmp95
# problem39.c:18:         if (a*a + b*b == c*c) {
	addw	a5,a4,a5	# _3, tmp98, _2
	sext.w	a4,a5	# _4, tmp98
# problem39.c:18:         if (a*a + b*b == c*c) {
	lw	a5,-20(s0)		# tmp101, c
	mulw	a5,a5,a5	# tmp99, tmp100, tmp100
	sext.w	a5,a5	# _5, tmp99
# problem39.c:18:         if (a*a + b*b == c*c) {
	bne	a4,a5,.L5	#, tmp102, tmp103,
# problem39.c:19:           cnt++;
	lw	a5,-32(s0)		# tmp106, cnt
	addiw	a5,a5,1	#, tmp104, tmp105
	sw	a5,-32(s0)	# tmp104, cnt
.L5:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	lw	a5,-40(s0)		# tmp109, b
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-40(s0)	# tmp107, b
.L4:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	lw	a5,-36(s0)		# tmp112, p
	srliw	a5,a5,1	#, tmp110, tmp111
	sext.w	a4,a5	# _6, tmp110
# problem39.c:16:       for (b = a; b < p/2; b++) {
	lw	a5,-40(s0)		# tmp114, b
	sext.w	a5,a5	# tmp115, tmp113
	bltu	a5,a4,.L6	#, tmp115, tmp116,
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	lw	a5,-44(s0)		# tmp119, a
	addiw	a5,a5,1	#, tmp117, tmp118
	sw	a5,-44(s0)	# tmp117, a
.L3:
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	lw	a5,-36(s0)		# tmp122, p
	srliw	a5,a5,1	#, tmp120, tmp121
	sext.w	a4,a5	# _7, tmp120
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	lw	a5,-44(s0)		# tmp124, a
	sext.w	a5,a5	# tmp125, tmp123
	bltu	a5,a4,.L7	#, tmp125, tmp126,
# problem39.c:23:     if (cnt > max) {
	lw	a5,-32(s0)		# tmp128, cnt
	mv	a4,a5	# tmp127, tmp128
	lw	a5,-28(s0)		# tmp130, max
	sext.w	a4,a4	# tmp131, tmp127
	sext.w	a5,a5	# tmp132, tmp129
	bleu	a4,a5,.L8	#, tmp131, tmp132,
# problem39.c:24:       max = cnt;
	lw	a5,-32(s0)		# tmp133, cnt
	sw	a5,-28(s0)	# tmp133, max
# problem39.c:25:       maxp = p;
	lw	a5,-36(s0)		# tmp134, p
	sw	a5,-24(s0)	# tmp134, maxp
.L8:
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	lw	a5,-36(s0)		# tmp137, p
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-36(s0)	# tmp135, p
.L2:
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	lw	a5,-36(s0)		# tmp139, p
	sext.w	a4,a5	# tmp140, tmp138
	li	a5,1000		# tmp141,
	bleu	a4,a5,.L9	#, tmp140, tmp141,
# problem39.c:28:   printf("%u\n", maxp);
	lw	a5,-24(s0)		# tmp142, maxp
	mv	a1,a5	#, tmp142
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem39.c:30:   return 0;
	li	a5,0		# _23,
# problem39.c:31: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
