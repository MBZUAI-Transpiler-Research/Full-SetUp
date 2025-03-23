	.file	"problem27.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	sw	zero,-28(s0)	#, nmax
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	sw	zero,-24(s0)	#, amax
# problem27.c:14:   int nmax = 0, amax = 0, bmax = 0;
	sw	zero,-20(s0)	#, bmax
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	li	a5,-999		# tmp142,
	sw	a5,-40(s0)	# tmp142, a
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	j	.L2		#
.L8:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	li	a5,-999		# tmp143,
	sw	a5,-36(s0)	# tmp143, b
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	j	.L3		#
.L7:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	sw	zero,-32(s0)	#, n
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	j	.L4		#
.L5:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	lw	a5,-32(s0)		# tmp146, n
	addiw	a5,a5,1	#, tmp144, tmp145
	sw	a5,-32(s0)	# tmp144, n
.L4:
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	lw	a5,-32(s0)		# tmp149, n
	mulw	a5,a5,a5	# tmp147, tmp148, tmp148
	sext.w	a4,a5	# _1, tmp147
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	lw	a5,-40(s0)		# tmp152, a
	mv	a3,a5	# tmp151, tmp152
	lw	a5,-32(s0)		# tmp154, n
	mulw	a5,a3,a5	# tmp150, tmp151, tmp153
	sext.w	a5,a5	# _2, tmp150
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	addw	a5,a4,a5	# _2, tmp155, _1
	sext.w	a5,a5	# _3, tmp155
# problem27.c:18:       for (n = 0; is_prime(n*n + a*n + b); n++);
	lw	a4,-36(s0)		# tmp158, b
	addw	a5,a4,a5	# _3, tmp156, tmp157
	sext.w	a5,a5	# _4, tmp156
	mv	a0,a5	#, _4
	call	is_prime		#
	mv	a5,a0	# tmp159,
	bne	a5,zero,.L5	#, _5,,
# problem27.c:19:       if (n > nmax) {
	lw	a5,-32(s0)		# tmp161, n
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-28(s0)		# tmp163, nmax
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	ble	a4,a5,.L6	#, tmp164, tmp165,
# problem27.c:20:         nmax = n;
	lw	a5,-32(s0)		# tmp166, n
	sw	a5,-28(s0)	# tmp166, nmax
# problem27.c:21:         amax = a;
	lw	a5,-40(s0)		# tmp167, a
	sw	a5,-24(s0)	# tmp167, amax
# problem27.c:22:         bmax = b;
	lw	a5,-36(s0)		# tmp168, b
	sw	a5,-20(s0)	# tmp168, bmax
.L6:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	lw	a5,-36(s0)		# tmp171, b
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-36(s0)	# tmp169, b
.L3:
# problem27.c:17:     for (b = -999; b < 1000; b++) {
	lw	a5,-36(s0)		# tmp173, b
	sext.w	a4,a5	# tmp174, tmp172
	li	a5,999		# tmp175,
	ble	a4,a5,.L7	#, tmp174, tmp175,
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	lw	a5,-40(s0)		# tmp178, a
	addiw	a5,a5,1	#, tmp176, tmp177
	sw	a5,-40(s0)	# tmp176, a
.L2:
# problem27.c:16:   for (a = -999; a < 1000; a++) {
	lw	a5,-40(s0)		# tmp180, a
	sext.w	a4,a5	# tmp181, tmp179
	li	a5,999		# tmp182,
	ble	a4,a5,.L8	#, tmp181, tmp182,
# problem27.c:26:   printf("%d\n", amax * bmax);
	lw	a5,-24(s0)		# tmp185, amax
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-20(s0)		# tmp187, bmax
	mulw	a5,a4,a5	# tmp183, tmp184, tmp186
	sext.w	a5,a5	# _6, tmp183
	mv	a1,a5	#, _6
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem27.c:28:   return 0;
	li	a5,0		# _28,
# problem27.c:29: }
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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	fsd	fs0,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 40, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp140, n
	sw	a5,-52(s0)	# tmp141, n
# problem27.c:35:   if (n <= 1) {
	lw	a5,-52(s0)		# tmp143, n
	sext.w	a4,a5	# tmp144, tmp142
	li	a5,1		# tmp145,
	bgt	a4,a5,.L11	#, tmp144, tmp145,
# problem27.c:36:     return 0;
	li	a5,0		# _6,
	j	.L12		#
.L11:
# problem27.c:38:   if (n == 2) {
	lw	a5,-52(s0)		# tmp147, n
	sext.w	a4,a5	# tmp148, tmp146
	li	a5,2		# tmp149,
	bne	a4,a5,.L13	#, tmp148, tmp149,
# problem27.c:39:     return 1;
	li	a5,1		# _6,
	j	.L12		#
.L13:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	li	a5,2		# tmp150,
	sw	a5,-36(s0)	# tmp150, i
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	j	.L14		#
.L16:
# problem27.c:43:     if (n % i == 0) {
	lw	a5,-52(s0)		# tmp153, n
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-36(s0)		# tmp156, i
	remw	a5,a4,a5	# tmp155, tmp154, tmp152
	sext.w	a5,a5	# _1, tmp154
# problem27.c:43:     if (n % i == 0) {
	bne	a5,zero,.L15	#, _1,,
# problem27.c:44:       return 0;
	li	a5,0		# _6,
	j	.L12		#
.L15:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	lw	a5,-36(s0)		# tmp159, i
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-36(s0)	# tmp157, i
.L14:
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	lw	a5,-36(s0)		# tmp161, i
	fcvt.d.w	fs0,a5	# _2, tmp160
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	lw	a5,-52(s0)		# tmp163, n
	fcvt.d.w	fa5,a5	# _3, tmp162
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem27.c:42:   for (i = 2; i < sqrt((double)n); i++) {
	flt.d	a5,fs0,fa5	#, tmp164, _2, _4
	bne	a5,zero,.L16	#, tmp164,,
# problem27.c:47:   return 1;
	li	a5,1		# _6,
.L12:
# problem27.c:48: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	fld	fs0,40(sp)	#,
	.cfi_restore 40
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
