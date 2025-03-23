	.file	"problem37.c"
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
.LC1:
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
# problem37.c:14:   unsigned count = 0, sum = 0;
	sw	zero,-32(s0)	#, count
# problem37.c:14:   unsigned count = 0, sum = 0;
	sw	zero,-28(s0)	#, sum
# problem37.c:16:   for (i = 10; count < 11; i++) {
	li	a5,10		# tmp143,
	sw	a5,-36(s0)	# tmp143, i
# problem37.c:16:   for (i = 10; count < 11; i++) {
	j	.L2		#
.L10:
# problem37.c:20:     k = i;
	lw	a5,-36(s0)		# tmp144, i
	sw	a5,-24(s0)	# tmp144, k
# problem37.c:21:     while (k != 0) {
	j	.L3		#
.L6:
# problem37.c:22:       if (!is_prime(k)) {
	lw	a5,-24(s0)		# tmp145, k
	mv	a0,a5	#, tmp145
	call	is_prime		#
	mv	a5,a0	# tmp146,
# problem37.c:22:       if (!is_prime(k)) {
	beq	a5,zero,.L12	#, _1,,
# problem37.c:25:       k /= 10;
	lw	a5,-24(s0)		# tmp149, k
	mv	a4,a5	# tmp148, tmp149
	li	a5,10		# tmp151,
	divuw	a5,a4,a5	# tmp151, tmp150, tmp148
	sw	a5,-24(s0)	# tmp150, k
.L3:
# problem37.c:21:     while (k != 0) {
	lw	a5,-24(s0)		# tmp153, k
	sext.w	a5,a5	# tmp154, tmp152
	bne	a5,zero,.L6	#, tmp154,,
# problem37.c:29:     k = i;
	lw	a5,-36(s0)		# tmp155, i
	sw	a5,-24(s0)	# tmp155, k
# problem37.c:30:     d = log10(k);
	lw	a5,-24(s0)		# tmp157, k
	fcvt.d.wu	fa5,a5	# _2, tmp156
	fmv.d	fa0,fa5	#, _2
	call	log10@plt	#
	fmv.d	fa5,fa0	# _3,
# problem37.c:30:     d = log10(k);
	fcvt.wu.d a5,fa5,rtz	# tmp158, _3
	sw	a5,-20(s0)	# tmp158, d
# problem37.c:31:     d = pow(10, d);
	lw	a5,-20(s0)		# tmp160, d
	fcvt.d.wu	fa4,a5	# _4, tmp159
	lla	a5,.LC0	# tmp162,
	fld	fa5,0(a5)	# tmp161,
	fmv.d	fa1,fa4	#, _4
	fmv.d	fa0,fa5	#, tmp161
	call	pow@plt	#
	fmv.d	fa5,fa0	# _5,
# problem37.c:31:     d = pow(10, d);
	fcvt.wu.d a5,fa5,rtz	# tmp163, _5
	sw	a5,-20(s0)	# tmp163, d
# problem37.c:32:     while (d != 1) {
	j	.L7		#
.L9:
# problem37.c:33:       if (!is_prime(k % d)) {
	lw	a5,-24(s0)		# tmp166, k
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-20(s0)		# tmp169, d
	remuw	a5,a4,a5	# tmp168, tmp167, tmp165
	sext.w	a5,a5	# _6, tmp167
	mv	a0,a5	#, _6
	call	is_prime		#
	mv	a5,a0	# tmp170,
# problem37.c:33:       if (!is_prime(k % d)) {
	beq	a5,zero,.L13	#, _7,,
# problem37.c:36:       d /= 10;
	lw	a5,-20(s0)		# tmp173, d
	mv	a4,a5	# tmp172, tmp173
	li	a5,10		# tmp175,
	divuw	a5,a4,a5	# tmp175, tmp174, tmp172
	sw	a5,-20(s0)	# tmp174, d
.L7:
# problem37.c:32:     while (d != 1) {
	lw	a5,-20(s0)		# tmp177, d
	sext.w	a4,a5	# tmp178, tmp176
	li	a5,1		# tmp179,
	bne	a4,a5,.L9	#, tmp178, tmp179,
# problem37.c:38:     sum += i;
	lw	a5,-28(s0)		# tmp182, sum
	mv	a4,a5	# tmp181, tmp182
	lw	a5,-36(s0)		# tmp184, i
	addw	a5,a4,a5	# tmp183, tmp180, tmp181
	sw	a5,-28(s0)	# tmp180, sum
# problem37.c:39:     count++;
	lw	a5,-32(s0)		# tmp187, count
	addiw	a5,a5,1	#, tmp185, tmp186
	sw	a5,-32(s0)	# tmp185, count
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
	lw	a5,-36(s0)		# tmp190, i
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-36(s0)	# tmp188, i
.L2:
# problem37.c:16:   for (i = 10; count < 11; i++) {
	lw	a5,-32(s0)		# tmp192, count
	sext.w	a4,a5	# tmp193, tmp191
	li	a5,10		# tmp194,
	bleu	a4,a5,.L10	#, tmp193, tmp194,
# problem37.c:44:   printf("%u\n", sum);
	lw	a5,-28(s0)		# tmp195, sum
	mv	a1,a5	#, tmp195
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem37.c:46:   return 0;
	li	a5,0		# _24,
# problem37.c:47: }
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
	.align	1
	.type	is_prime, @function
is_prime:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, n
	sw	a5,-36(s0)	# tmp139, n
# problem37.c:51:   if (n <= 1) {
	lw	a5,-36(s0)		# tmp141, n
	sext.w	a4,a5	# tmp142, tmp140
	li	a5,1		# tmp143,
	bgtu	a4,a5,.L15	#, tmp142, tmp143,
# problem37.c:52:     return 0;
	li	a5,0		# _4,
	j	.L16		#
.L15:
# problem37.c:54:   else if (n == 2) {
	lw	a5,-36(s0)		# tmp145, n
	sext.w	a4,a5	# tmp146, tmp144
	li	a5,2		# tmp147,
	bne	a4,a5,.L17	#, tmp146, tmp147,
# problem37.c:55:     return 1;
	li	a5,1		# _4,
	j	.L16		#
.L17:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	li	a5,2		# tmp148,
	sw	a5,-20(s0)	# tmp148, i
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	j	.L18		#
.L20:
# problem37.c:60:       if (n % i == 0) {
	lw	a5,-36(s0)		# tmp151, n
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-20(s0)		# tmp154, i
	remuw	a5,a4,a5	# tmp153, tmp152, tmp150
	sext.w	a5,a5	# _1, tmp152
# problem37.c:60:       if (n % i == 0) {
	bne	a5,zero,.L19	#, _1,,
# problem37.c:61:         return 0;
	li	a5,0		# _4,
	j	.L16		#
.L19:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	lw	a5,-20(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-20(s0)	# tmp155, i
.L18:
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	lw	a5,-20(s0)		# tmp160, i
	mulw	a5,a5,a5	# tmp158, tmp159, tmp159
	sext.w	a4,a5	# _2, tmp158
# problem37.c:59:     for (i = 2; i*i <= n; i++) {
	lw	a5,-36(s0)		# tmp162, n
	sext.w	a5,a5	# tmp163, tmp161
	bgeu	a5,a4,.L20	#, tmp163, tmp164,
# problem37.c:64:     return 1;
	li	a5,1		# _4,
.L16:
# problem37.c:66: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1076101120
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
