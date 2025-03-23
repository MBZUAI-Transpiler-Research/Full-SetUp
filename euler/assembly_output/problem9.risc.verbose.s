	.file	"problem9.c"
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
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	li	a5,1		# tmp81,
	sw	a5,-28(s0)	# tmp81, a
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	j	.L2		#
.L6:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	lw	a5,-28(s0)		# tmp82, a
	sw	a5,-24(s0)	# tmp82, b
# problem9.c:13:     for (b = a; b <= 666; b++) {
	j	.L3		#
.L5:
# problem9.c:14:       int c = (1000 - a - b);
	li	a5,1000		# tmp84,
	lw	a4,-28(s0)		# tmp86, a
	subw	a5,a5,a4	# tmp83, tmp84, tmp85
	sext.w	a5,a5	# _1, tmp83
# problem9.c:14:       int c = (1000 - a - b);
	lw	a4,-24(s0)		# tmp89, b
	subw	a5,a5,a4	# tmp87, _1, tmp88
	sw	a5,-20(s0)	# tmp87, c
# problem9.c:15:       if (a*a + b*b == c*c) {
	lw	a5,-28(s0)		# tmp92, a
	mulw	a5,a5,a5	# tmp90, tmp91, tmp91
	sext.w	a4,a5	# _2, tmp90
# problem9.c:15:       if (a*a + b*b == c*c) {
	lw	a5,-24(s0)		# tmp95, b
	mulw	a5,a5,a5	# tmp93, tmp94, tmp94
	sext.w	a5,a5	# _3, tmp93
# problem9.c:15:       if (a*a + b*b == c*c) {
	addw	a5,a4,a5	# _3, tmp96, _2
	sext.w	a4,a5	# _4, tmp96
# problem9.c:15:       if (a*a + b*b == c*c) {
	lw	a5,-20(s0)		# tmp99, c
	mulw	a5,a5,a5	# tmp97, tmp98, tmp98
	sext.w	a5,a5	# _5, tmp97
# problem9.c:15:       if (a*a + b*b == c*c) {
	bne	a4,a5,.L4	#, tmp100, tmp101,
# problem9.c:16:         printf("%d\n", a * b * c);
	lw	a5,-28(s0)		# tmp104, a
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-24(s0)		# tmp106, b
	mulw	a5,a4,a5	# tmp102, tmp103, tmp105
	sext.w	a5,a5	# _6, tmp102
# problem9.c:16:         printf("%d\n", a * b * c);
	lw	a4,-20(s0)		# tmp109, c
	mulw	a5,a4,a5	# tmp107, tmp108, _6
	sext.w	a5,a5	# _7, tmp107
	mv	a1,a5	#, _7
	lla	a0,.LC0	#,
	call	printf@plt	#
.L4:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	lw	a5,-24(s0)		# tmp112, b
	addiw	a5,a5,1	#, tmp110, tmp111
	sw	a5,-24(s0)	# tmp110, b
.L3:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	lw	a5,-24(s0)		# tmp114, b
	sext.w	a4,a5	# tmp115, tmp113
	li	a5,666		# tmp116,
	ble	a4,a5,.L5	#, tmp115, tmp116,
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	lw	a5,-28(s0)		# tmp119, a
	addiw	a5,a5,1	#, tmp117, tmp118
	sw	a5,-28(s0)	# tmp117, a
.L2:
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	lw	a5,-28(s0)		# tmp121, a
	sext.w	a4,a5	# tmp122, tmp120
	li	a5,333		# tmp123,
	ble	a4,a5,.L6	#, tmp122, tmp123,
# problem9.c:20:   return 0;
	li	a5,0		# _15,
# problem9.c:21: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
