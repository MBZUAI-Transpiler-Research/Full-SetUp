	.file	"problem1.c"
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
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	sw	zero,-32(s0)	#, s3
# problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	sw	zero,-28(s0)	#, s5
# problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	sw	zero,-24(s0)	#, s15
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	sw	zero,-20(s0)	#, i
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	j	.L2		#
.L6:
# problem1.c:14:     if (i % 3 == 0) {
	lw	a5,-20(s0)		# tmp81, i
	mv	a4,a5	# tmp80, tmp81
	li	a5,3		# tmp83,
	remw	a5,a4,a5	# tmp83, tmp82, tmp80
	sext.w	a5,a5	# _1, tmp82
# problem1.c:14:     if (i % 3 == 0) {
	bne	a5,zero,.L3	#, _1,,
# problem1.c:15:       s3 += i;
	lw	a5,-32(s0)		# tmp86, s3
	mv	a4,a5	# tmp85, tmp86
	lw	a5,-20(s0)		# tmp88, i
	addw	a5,a4,a5	# tmp87, tmp84, tmp85
	sw	a5,-32(s0)	# tmp84, s3
.L3:
# problem1.c:17:     if (i % 5 == 0) {
	lw	a5,-20(s0)		# tmp91, i
	mv	a4,a5	# tmp90, tmp91
	li	a5,5		# tmp93,
	remw	a5,a4,a5	# tmp93, tmp92, tmp90
	sext.w	a5,a5	# _2, tmp92
# problem1.c:17:     if (i % 5 == 0) {
	bne	a5,zero,.L4	#, _2,,
# problem1.c:18:       s5 += i;
	lw	a5,-28(s0)		# tmp96, s5
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-20(s0)		# tmp98, i
	addw	a5,a4,a5	# tmp97, tmp94, tmp95
	sw	a5,-28(s0)	# tmp94, s5
.L4:
# problem1.c:20:     if (i % 15 == 0) {
	lw	a5,-20(s0)		# tmp101, i
	mv	a4,a5	# tmp100, tmp101
	li	a5,15		# tmp103,
	remw	a5,a4,a5	# tmp103, tmp102, tmp100
	sext.w	a5,a5	# _3, tmp102
# problem1.c:20:     if (i % 15 == 0) {
	bne	a5,zero,.L5	#, _3,,
# problem1.c:21:       s15 += i;
	lw	a5,-24(s0)		# tmp106, s15
	mv	a4,a5	# tmp105, tmp106
	lw	a5,-20(s0)		# tmp108, i
	addw	a5,a4,a5	# tmp107, tmp104, tmp105
	sw	a5,-24(s0)	# tmp104, s15
.L5:
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	lw	a5,-20(s0)		# tmp111, i
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-20(s0)	# tmp109, i
.L2:
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	lw	a5,-20(s0)		# tmp113, i
	sext.w	a4,a5	# tmp114, tmp112
	li	a5,999		# tmp115,
	ble	a4,a5,.L6	#, tmp114, tmp115,
# problem1.c:24:   printf("%d\n", s3 + s5 - s15);
	lw	a5,-32(s0)		# tmp118, s3
	mv	a4,a5	# tmp117, tmp118
	lw	a5,-28(s0)		# tmp120, s5
	addw	a5,a4,a5	# tmp119, tmp116, tmp117
	sext.w	a5,a5	# _4, tmp116
# problem1.c:24:   printf("%d\n", s3 + s5 - s15);
	lw	a4,-24(s0)		# tmp123, s15
	subw	a5,a5,a4	# tmp121, _4, tmp122
	sext.w	a5,a5	# _5, tmp121
	mv	a1,a5	#, _5
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem1.c:26:   return 0;
	li	a5,0		# _19,
# problem1.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
