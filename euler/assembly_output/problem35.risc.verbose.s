	.file	"problem35.c"
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
# problem35.c:15:   unsigned i, count = 0;
	sw	zero,-40(s0)	#, count
# problem35.c:17:   for (i = 2; i < N; i++) {
	li	a5,2		# tmp143,
	sw	a5,-44(s0)	# tmp143, i
# problem35.c:17:   for (i = 2; i < N; i++) {
	j	.L2		#
.L9:
# problem35.c:22:     if (!is_prime(i)) {
	lw	a5,-44(s0)		# tmp144, i
	mv	a0,a5	#, tmp144
	call	is_prime		#
	mv	a5,a0	# tmp145,
# problem35.c:22:     if (!is_prime(i)) {
	beq	a5,zero,.L11	#, _1,,
# problem35.c:25:     digits = log10(i);
	lw	a5,-44(s0)		# tmp147, i
	fcvt.d.wu	fa5,a5	# _2, tmp146
	fmv.d	fa0,fa5	#, _2
	call	log10@plt	#
	fmv.d	fa5,fa0	# _3,
# problem35.c:25:     digits = log10(i);
	fcvt.wu.d a5,fa5,rtz	# tmp148, _3
	sw	a5,-28(s0)	# tmp148, digits
# problem35.c:26:     k = i;
	lw	a5,-44(s0)		# tmp149, i
	sw	a5,-36(s0)	# tmp149, k
# problem35.c:27:     for (j = 0; j < digits; j++) {
	sw	zero,-32(s0)	#, j
# problem35.c:27:     for (j = 0; j < digits; j++) {
	j	.L5		#
.L8:
# problem35.c:28:       unsigned l = pow(10, digits);
	lw	a5,-28(s0)		# tmp151, digits
	fcvt.d.wu	fa4,a5	# _4, tmp150
	lla	a5,.LC0	# tmp153,
	fld	fa5,0(a5)	# tmp152,
	fmv.d	fa1,fa4	#, _4
	fmv.d	fa0,fa5	#, tmp152
	call	pow@plt	#
	fmv.d	fa5,fa0	# _5,
# problem35.c:28:       unsigned l = pow(10, digits);
	fcvt.wu.d a5,fa5,rtz	# tmp154, _5
	sw	a5,-24(s0)	# tmp154, l
# problem35.c:29:       unsigned t = k % l;
	lw	a5,-36(s0)		# tmp157, k
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-24(s0)		# tmp160, l
	remuw	a5,a4,a5	# tmp159, tmp158, tmp156
	sw	a5,-20(s0)	# tmp158, t
# problem35.c:30:       k /= l;
	lw	a5,-36(s0)		# tmp164, k
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-24(s0)		# tmp166, l
	divuw	a5,a4,a5	# tmp165, tmp162, tmp163
	sw	a5,-36(s0)	# tmp162, k
# problem35.c:31:       k += t*10;
	lw	a5,-20(s0)		# tmp168, t
	mv	a4,a5	# tmp167, tmp168
	mv	a5,a4	# tmp169, tmp167
	slliw	a5,a5,2	#, tmp170, tmp169
	addw	a5,a5,a4	# tmp167, tmp169, tmp169
	slliw	a5,a5,1	#, tmp171, tmp169
	sext.w	a5,a5	# _6, tmp169
# problem35.c:31:       k += t*10;
	lw	a4,-36(s0)		# tmp174, k
	addw	a5,a4,a5	# _6, tmp172, tmp173
	sw	a5,-36(s0)	# tmp172, k
# problem35.c:32:       if (!is_prime(k)) {
	lw	a5,-36(s0)		# tmp175, k
	mv	a0,a5	#, tmp175
	call	is_prime		#
	mv	a5,a0	# tmp176,
# problem35.c:32:       if (!is_prime(k)) {
	beq	a5,zero,.L12	#, _7,,
# problem35.c:27:     for (j = 0; j < digits; j++) {
	lw	a5,-32(s0)		# tmp179, j
	addiw	a5,a5,1	#, tmp177, tmp178
	sw	a5,-32(s0)	# tmp177, j
.L5:
# problem35.c:27:     for (j = 0; j < digits; j++) {
	lw	a5,-32(s0)		# tmp181, j
	mv	a4,a5	# tmp180, tmp181
	lw	a5,-28(s0)		# tmp183, digits
	sext.w	a4,a4	# tmp184, tmp180
	sext.w	a5,a5	# tmp185, tmp182
	bltu	a4,a5,.L8	#, tmp184, tmp185,
# problem35.c:36:     count++;
	lw	a5,-40(s0)		# tmp188, count
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-40(s0)	# tmp186, count
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
	lw	a5,-44(s0)		# tmp191, i
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-44(s0)	# tmp189, i
.L2:
# problem35.c:17:   for (i = 2; i < N; i++) {
	lw	a5,-44(s0)		# tmp195, i
	sext.w	a4,a5	# tmp196, tmp194
	li	a5,999424		# tmp198,
	addi	a5,a5,575	#, tmp197, tmp198
	bleu	a4,a5,.L9	#, tmp196, tmp197,
# problem35.c:40:   printf("%u\n", count);
	lw	a5,-40(s0)		# tmp199, count
	mv	a1,a5	#, tmp199
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem35.c:42:   return 0;
	li	a5,0		# _22,
# problem35.c:43: }
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
# problem35.c:47:   if (n <= 1) {
	lw	a5,-36(s0)		# tmp141, n
	sext.w	a4,a5	# tmp142, tmp140
	li	a5,1		# tmp143,
	bgtu	a4,a5,.L14	#, tmp142, tmp143,
# problem35.c:48:     return 0;
	li	a5,0		# _4,
	j	.L15		#
.L14:
# problem35.c:50:   else if (n == 2) {
	lw	a5,-36(s0)		# tmp145, n
	sext.w	a4,a5	# tmp146, tmp144
	li	a5,2		# tmp147,
	bne	a4,a5,.L16	#, tmp146, tmp147,
# problem35.c:51:     return 1;
	li	a5,1		# _4,
	j	.L15		#
.L16:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	li	a5,2		# tmp148,
	sw	a5,-20(s0)	# tmp148, i
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	j	.L17		#
.L19:
# problem35.c:56:       if (n % i == 0) {
	lw	a5,-36(s0)		# tmp151, n
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-20(s0)		# tmp154, i
	remuw	a5,a4,a5	# tmp153, tmp152, tmp150
	sext.w	a5,a5	# _1, tmp152
# problem35.c:56:       if (n % i == 0) {
	bne	a5,zero,.L18	#, _1,,
# problem35.c:57:         return 0;
	li	a5,0		# _4,
	j	.L15		#
.L18:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	lw	a5,-20(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-20(s0)	# tmp155, i
.L17:
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	lw	a5,-20(s0)		# tmp160, i
	mulw	a5,a5,a5	# tmp158, tmp159, tmp159
	sext.w	a4,a5	# _2, tmp158
# problem35.c:55:     for (i = 2; i*i <= n; i++) {
	lw	a5,-36(s0)		# tmp162, n
	sext.w	a5,a5	# tmp163, tmp161
	bgeu	a5,a4,.L19	#, tmp163, tmp164,
# problem35.c:60:     return 1;
	li	a5,1		# _4,
.L15:
# problem35.c:62: }
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
