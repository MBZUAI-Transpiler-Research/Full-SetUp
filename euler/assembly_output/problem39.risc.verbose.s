	.file	"problem39.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem39.c:11:   unsigned cnt, max = 0, maxp = 0;
	sw	zero,-28(s0)	#, max
# problem39.c:11:   unsigned cnt, max = 0, maxp = 0;
	sw	zero,-24(s0)	#, maxp
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	li	a5,1		# tmp143,
	sw	a5,-36(s0)	# tmp143, p
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	j	.L2		#
.L9:
# problem39.c:14:     cnt = 0;
	sw	zero,-32(s0)	#, cnt
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	li	a5,1		# tmp144,
	sw	a5,-44(s0)	# tmp144, a
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	j	.L3		#
.L7:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	lw	a5,-44(s0)		# tmp145, a
	sw	a5,-40(s0)	# tmp145, b
# problem39.c:16:       for (b = a; b < p/2; b++) {
	j	.L4		#
.L6:
# problem39.c:17:         c = p - a - b;
	lw	a5,-36(s0)		# tmp148, p
	mv	a4,a5	# tmp147, tmp148
	lw	a5,-44(s0)		# tmp150, a
	subw	a5,a4,a5	# tmp146, tmp147, tmp149
	sext.w	a5,a5	# _1, tmp146
# problem39.c:17:         c = p - a - b;
	lw	a4,-40(s0)		# tmp153, b
	subw	a5,a5,a4	# tmp151, _1, tmp152
	sw	a5,-20(s0)	# tmp151, c
# problem39.c:18:         if (a*a + b*b == c*c) {
	lw	a5,-44(s0)		# tmp156, a
	mulw	a5,a5,a5	# tmp154, tmp155, tmp155
	sext.w	a4,a5	# _2, tmp154
# problem39.c:18:         if (a*a + b*b == c*c) {
	lw	a5,-40(s0)		# tmp159, b
	mulw	a5,a5,a5	# tmp157, tmp158, tmp158
	sext.w	a5,a5	# _3, tmp157
# problem39.c:18:         if (a*a + b*b == c*c) {
	addw	a5,a4,a5	# _3, tmp160, _2
	sext.w	a4,a5	# _4, tmp160
# problem39.c:18:         if (a*a + b*b == c*c) {
	lw	a5,-20(s0)		# tmp163, c
	mulw	a5,a5,a5	# tmp161, tmp162, tmp162
	sext.w	a5,a5	# _5, tmp161
# problem39.c:18:         if (a*a + b*b == c*c) {
	bne	a4,a5,.L5	#, tmp164, tmp165,
# problem39.c:19:           cnt++;
	lw	a5,-32(s0)		# tmp168, cnt
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-32(s0)	# tmp166, cnt
.L5:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	lw	a5,-40(s0)		# tmp171, b
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-40(s0)	# tmp169, b
.L4:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	lw	a5,-36(s0)		# tmp174, p
	srliw	a5,a5,1	#, tmp172, tmp173
	sext.w	a4,a5	# _6, tmp172
# problem39.c:16:       for (b = a; b < p/2; b++) {
	lw	a5,-40(s0)		# tmp176, b
	sext.w	a5,a5	# tmp177, tmp175
	bltu	a5,a4,.L6	#, tmp177, tmp178,
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	lw	a5,-44(s0)		# tmp181, a
	addiw	a5,a5,1	#, tmp179, tmp180
	sw	a5,-44(s0)	# tmp179, a
.L3:
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	lw	a5,-36(s0)		# tmp184, p
	srliw	a5,a5,1	#, tmp182, tmp183
	sext.w	a4,a5	# _7, tmp182
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	lw	a5,-44(s0)		# tmp186, a
	sext.w	a5,a5	# tmp187, tmp185
	bltu	a5,a4,.L7	#, tmp187, tmp188,
# problem39.c:23:     if (cnt > max) {
	lw	a5,-32(s0)		# tmp190, cnt
	mv	a4,a5	# tmp189, tmp190
	lw	a5,-28(s0)		# tmp192, max
	sext.w	a4,a4	# tmp193, tmp189
	sext.w	a5,a5	# tmp194, tmp191
	bleu	a4,a5,.L8	#, tmp193, tmp194,
# problem39.c:24:       max = cnt;
	lw	a5,-32(s0)		# tmp195, cnt
	sw	a5,-28(s0)	# tmp195, max
# problem39.c:25:       maxp = p;
	lw	a5,-36(s0)		# tmp196, p
	sw	a5,-24(s0)	# tmp196, maxp
.L8:
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	lw	a5,-36(s0)		# tmp199, p
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-36(s0)	# tmp197, p
.L2:
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	lw	a5,-36(s0)		# tmp201, p
	sext.w	a4,a5	# tmp202, tmp200
	li	a5,1000		# tmp203,
	bleu	a4,a5,.L9	#, tmp202, tmp203,
# problem39.c:28:   printf("%u\n", maxp);
	lw	a5,-24(s0)		# tmp204, maxp
	mv	a1,a5	#, tmp204
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem39.c:30:   return 0;
	li	a5,0		# _23,
# problem39.c:31: }
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
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
