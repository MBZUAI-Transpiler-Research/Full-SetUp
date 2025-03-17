	.file	"problem9.c"
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
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	li	a5,1		# tmp143,
	sw	a5,-28(s0)	# tmp143, a
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	j	.L2		#
.L6:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	lw	a5,-28(s0)		# tmp144, a
	sw	a5,-24(s0)	# tmp144, b
# problem9.c:13:     for (b = a; b <= 666; b++) {
	j	.L3		#
.L5:
# problem9.c:14:       int c = (1000 - a - b);
	li	a5,1000		# tmp146,
	lw	a4,-28(s0)		# tmp148, a
	subw	a5,a5,a4	# tmp145, tmp146, tmp147
	sext.w	a5,a5	# _1, tmp145
# problem9.c:14:       int c = (1000 - a - b);
	lw	a4,-24(s0)		# tmp151, b
	subw	a5,a5,a4	# tmp149, _1, tmp150
	sw	a5,-20(s0)	# tmp149, c
# problem9.c:15:       if (a*a + b*b == c*c) {
	lw	a5,-28(s0)		# tmp154, a
	mulw	a5,a5,a5	# tmp152, tmp153, tmp153
	sext.w	a4,a5	# _2, tmp152
# problem9.c:15:       if (a*a + b*b == c*c) {
	lw	a5,-24(s0)		# tmp157, b
	mulw	a5,a5,a5	# tmp155, tmp156, tmp156
	sext.w	a5,a5	# _3, tmp155
# problem9.c:15:       if (a*a + b*b == c*c) {
	addw	a5,a4,a5	# _3, tmp158, _2
	sext.w	a4,a5	# _4, tmp158
# problem9.c:15:       if (a*a + b*b == c*c) {
	lw	a5,-20(s0)		# tmp161, c
	mulw	a5,a5,a5	# tmp159, tmp160, tmp160
	sext.w	a5,a5	# _5, tmp159
# problem9.c:15:       if (a*a + b*b == c*c) {
	bne	a4,a5,.L4	#, tmp162, tmp163,
# problem9.c:16:         printf("%d\n", a * b * c);
	lw	a5,-28(s0)		# tmp166, a
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-24(s0)		# tmp168, b
	mulw	a5,a4,a5	# tmp164, tmp165, tmp167
	sext.w	a5,a5	# _6, tmp164
# problem9.c:16:         printf("%d\n", a * b * c);
	lw	a4,-20(s0)		# tmp171, c
	mulw	a5,a4,a5	# tmp169, tmp170, _6
	sext.w	a5,a5	# _7, tmp169
	mv	a1,a5	#, _7
	lla	a0,.LC0	#,
	call	printf@plt	#
.L4:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	lw	a5,-24(s0)		# tmp174, b
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-24(s0)	# tmp172, b
.L3:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	lw	a5,-24(s0)		# tmp176, b
	sext.w	a4,a5	# tmp177, tmp175
	li	a5,666		# tmp178,
	ble	a4,a5,.L5	#, tmp177, tmp178,
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	lw	a5,-28(s0)		# tmp181, a
	addiw	a5,a5,1	#, tmp179, tmp180
	sw	a5,-28(s0)	# tmp179, a
.L2:
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	lw	a5,-28(s0)		# tmp183, a
	sext.w	a4,a5	# tmp184, tmp182
	li	a5,333		# tmp185,
	ble	a4,a5,.L6	#, tmp184, tmp185,
# problem9.c:20:   return 0;
	li	a5,0		# _15,
# problem9.c:21: }
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
