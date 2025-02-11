	.file	"problem1.c"
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
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
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
	lw	a5,-20(s0)		# tmp143, i
	mv	a4,a5	# tmp142, tmp143
	li	a5,3		# tmp145,
	remw	a5,a4,a5	# tmp145, tmp144, tmp142
	sext.w	a5,a5	# _1, tmp144
# problem1.c:14:     if (i % 3 == 0) {
	bne	a5,zero,.L3	#, _1,,
# problem1.c:15:       s3 += i;
	lw	a5,-32(s0)		# tmp148, s3
	mv	a4,a5	# tmp147, tmp148
	lw	a5,-20(s0)		# tmp150, i
	addw	a5,a4,a5	# tmp149, tmp146, tmp147
	sw	a5,-32(s0)	# tmp146, s3
.L3:
# problem1.c:17:     if (i % 5 == 0) {
	lw	a5,-20(s0)		# tmp153, i
	mv	a4,a5	# tmp152, tmp153
	li	a5,5		# tmp155,
	remw	a5,a4,a5	# tmp155, tmp154, tmp152
	sext.w	a5,a5	# _2, tmp154
# problem1.c:17:     if (i % 5 == 0) {
	bne	a5,zero,.L4	#, _2,,
# problem1.c:18:       s5 += i;
	lw	a5,-28(s0)		# tmp158, s5
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-20(s0)		# tmp160, i
	addw	a5,a4,a5	# tmp159, tmp156, tmp157
	sw	a5,-28(s0)	# tmp156, s5
.L4:
# problem1.c:20:     if (i % 15 == 0) {
	lw	a5,-20(s0)		# tmp163, i
	mv	a4,a5	# tmp162, tmp163
	li	a5,15		# tmp165,
	remw	a5,a4,a5	# tmp165, tmp164, tmp162
	sext.w	a5,a5	# _3, tmp164
# problem1.c:20:     if (i % 15 == 0) {
	bne	a5,zero,.L5	#, _3,,
# problem1.c:21:       s15 += i;
	lw	a5,-24(s0)		# tmp168, s15
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-20(s0)		# tmp170, i
	addw	a5,a4,a5	# tmp169, tmp166, tmp167
	sw	a5,-24(s0)	# tmp166, s15
.L5:
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	lw	a5,-20(s0)		# tmp173, i
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-20(s0)	# tmp171, i
.L2:
# problem1.c:13:   for (i = 0; i < 1000; i++) {
	lw	a5,-20(s0)		# tmp175, i
	sext.w	a4,a5	# tmp176, tmp174
	li	a5,999		# tmp177,
	ble	a4,a5,.L6	#, tmp176, tmp177,
# problem1.c:24:   printf("%d\n", s3 + s5 - s15);
	lw	a5,-32(s0)		# tmp180, s3
	mv	a4,a5	# tmp179, tmp180
	lw	a5,-28(s0)		# tmp182, s5
	addw	a5,a4,a5	# tmp181, tmp178, tmp179
	sext.w	a5,a5	# _4, tmp178
# problem1.c:24:   printf("%d\n", s3 + s5 - s15);
	lw	a4,-24(s0)		# tmp185, s15
	subw	a5,a5,a4	# tmp183, _4, tmp184
	sext.w	a5,a5	# _5, tmp183
	mv	a1,a5	#, _5
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem1.c:26:   return 0;
	li	a5,0		# _19,
# problem1.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
