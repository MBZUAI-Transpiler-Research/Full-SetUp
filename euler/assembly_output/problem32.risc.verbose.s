	.file	"problem32.c"
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
	.string	"%d%d%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem32.c:16: {
	la	a5,__stack_chk_guard		# tmp152,
	ld	a4, 0(a5)	# tmp212, __stack_chk_guard
	sd	a4, -40(s0)	# tmp212, D.4524
	li	a4, 0	# tmp212
# problem32.c:18:   int sum = 0;
	sw	zero,-68(s0)	#, sum
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	li	a5,1111		# tmp153,
	sw	a5,-76(s0)	# tmp153, product
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	j	.L2		#
.L9:
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	li	a5,2		# tmp154,
	sw	a5,-72(s0)	# tmp154, multiplicand
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	j	.L3		#
.L8:
# problem32.c:23:       remaindar = product % multiplicand;
	lw	a5,-76(s0)		# tmp157, product
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-72(s0)		# tmp160, multiplicand
	remw	a5,a4,a5	# tmp159, tmp158, tmp156
	sw	a5,-64(s0)	# tmp158, remaindar
# problem32.c:24:       if (remaindar != 0) {
	lw	a5,-64(s0)		# tmp162, remaindar
	sext.w	a5,a5	# tmp163, tmp161
	bne	a5,zero,.L12	#, tmp163,,
# problem32.c:27:       multiplier = product / multiplicand;
	lw	a5,-76(s0)		# tmp167, product
	mv	a4,a5	# tmp166, tmp167
	lw	a5,-72(s0)		# tmp169, multiplicand
	divw	a5,a4,a5	# tmp168, tmp165, tmp166
	sw	a5,-60(s0)	# tmp165, multiplier
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	lw	a5,-72(s0)		# tmp171, multiplicand
	fcvt.d.w	fa5,a5	# _1, tmp170
	fmv.d	fa0,fa5	#, _1
	call	log10@plt	#
	fmv.x.d	a5,fa0	# _2,
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	fmv.d.x	fa0,a5	#, _2
	call	floor@plt	#
	fmv.d	fa5,fa0	# _3,
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	fcvt.l.d s1,fa5,rtz	# _4, _3
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	lw	a5,-60(s0)		# tmp173, multiplier
	fcvt.d.w	fa5,a5	# _5, tmp172
	fmv.d	fa0,fa5	#, _5
	call	log10@plt	#
	fmv.x.d	a5,fa0	# _6,
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	fmv.d.x	fa0,a5	#, _6
	call	floor@plt	#
	fmv.d	fa5,fa0	# _7,
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	fcvt.l.d a5,fa5,rtz	# _8, _7
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	add	s1,s1,a5	# _8, _9, _4
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	lw	a5,-76(s0)		# tmp175, product
	fcvt.d.w	fa5,a5	# _10, tmp174
	fmv.d	fa0,fa5	#, _10
	call	log10@plt	#
	fmv.x.d	a5,fa0	# _11,
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	fmv.d.x	fa0,a5	#, _11
	call	floor@plt	#
	fmv.d	fa5,fa0	# _12,
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	fcvt.l.d a5,fa5,rtz	# _13, _12
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	add	a4,s1,a5	# _13, _14, _9
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	li	a5,6		# tmp176,
	bne	a4,a5,.L13	#, _14, tmp176,
# problem32.c:32:       snprintf(buf, sizeof buf, "%d%d%d", multiplicand, multiplier, product);
	lw	a5,-76(s0)		# tmp177, product
	lw	a4,-60(s0)		# tmp178, multiplier
	lw	a3,-72(s0)		# tmp179, multiplicand
	addi	a0,s0,-56	#, tmp180,
	lla	a2,.LC0	#,
	li	a1,10		#,
	call	snprintf@plt	#
# problem32.c:33:       if (is_pandigital(buf)) {
	addi	a5,s0,-56	#, tmp181,
	mv	a0,a5	#, tmp181
	call	is_pandigital		#
	mv	a5,a0	# tmp182,
# problem32.c:33:       if (is_pandigital(buf)) {
	beq	a5,zero,.L5	#, _15,,
# problem32.c:34:         sum += product;
	lw	a5,-68(s0)		# tmp185, sum
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-76(s0)		# tmp187, product
	addw	a5,a4,a5	# tmp186, tmp183, tmp184
	sw	a5,-68(s0)	# tmp183, sum
# problem32.c:35:         break;
	j	.L7		#
.L12:
# problem32.c:25:         continue;
	nop	
	j	.L5		#
.L13:
# problem32.c:29:         continue;
	nop	
.L5:
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	lw	a5,-72(s0)		# tmp190, multiplicand
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-72(s0)	# tmp188, multiplicand
.L3:
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	lw	a5,-72(s0)		# tmp193, multiplicand
	mulw	a5,a5,a5	# tmp191, tmp192, tmp192
	sext.w	a4,a5	# _16, tmp191
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	lw	a5,-76(s0)		# tmp195, product
	sext.w	a5,a5	# tmp196, tmp194
	bgt	a5,a4,.L8	#, tmp196, tmp197,
.L7:
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	lw	a5,-76(s0)		# tmp200, product
	addiw	a5,a5,1	#, tmp198, tmp199
	sw	a5,-76(s0)	# tmp198, product
.L2:
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	lw	a5,-76(s0)		# tmp204, product
	sext.w	a4,a5	# tmp205, tmp203
	li	a5,98304		# tmp207,
	addi	a5,a5,1695	#, tmp206, tmp207
	ble	a4,a5,.L9	#, tmp205, tmp206,
# problem32.c:39:   printf("%d\n", sum);
	lw	a5,-68(s0)		# tmp208, sum
	mv	a1,a5	#, tmp208
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem32.c:41:   return 0;
	li	a5,0		# _29,
# problem32.c:42: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp210,
	ld	a3, -40(s0)	# tmp213, D.4524
	ld	a5, 0(a5)	# tmp211, __stack_chk_guard
	xor	a5, a3, a5	# tmp211, tmp213
	li	a3, 0	# tmp213
	beq	a5,zero,.L11	#, tmp211,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)		#,
	.cfi_restore 9
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	1
	.type	compare, @function
compare:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	ld	a5,-24(s0)		# tmp140, a
	lbu	a5,0(a5)	# _1, MEM[(const char *)a_6(D)]
	sext.w	a4,a5	# _2, _1
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	ld	a5,-32(s0)		# tmp141, b
	lbu	a5,0(a5)	# _3, MEM[(const char *)b_7(D)]
	sext.w	a5,a5	# _4, _3
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	subw	a5,a4,a5	# tmp142, _2, _4
	sext.w	a5,a5	# _8, tmp142
# problem32.c:47: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.section	.rodata
	.align	3
.LC2:
	.string	"123456789"
	.text
	.align	1
	.type	is_pandigital, @function
is_pandigital:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# buf, buf
# problem32.c:51:   qsort(buf, 9, 1, compare);
	lla	a3,compare	#,
	li	a2,1		#,
	li	a1,9		#,
	ld	a0,-24(s0)		#, buf
	call	qsort@plt	#
# problem32.c:52:   return memcmp(buf, "123456789", 9) == 0;
	li	a2,9		#,
	lla	a1,.LC2	#,
	ld	a0,-24(s0)		#, buf
	call	memcmp@plt	#
	mv	a5,a0	# tmp138,
# problem32.c:52:   return memcmp(buf, "123456789", 9) == 0;
	seqz	a5,a5	# tmp140, tmp141
	andi	a5,a5,0xff	# _2, tmp139
	sext.w	a5,a5	# _6, _2
# problem32.c:53: }
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
.LFE8:
	.size	is_pandigital, .-is_pandigital
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
