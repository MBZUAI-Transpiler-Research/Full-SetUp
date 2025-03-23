	.file	"problem32.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	addi	s0,sp,80	#,,
# problem32.c:16: {
	la	a5,__stack_chk_guard		# tmp90,
	ld	a4, 0(a5)	# tmp150, __stack_chk_guard
	sd	a4, -40(s0)	# tmp150, D.3672
	li	a4, 0	# tmp150
# problem32.c:18:   int sum = 0;
	sw	zero,-68(s0)	#, sum
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	li	a5,1111		# tmp91,
	sw	a5,-76(s0)	# tmp91, product
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	j	.L2		#
.L9:
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	li	a5,2		# tmp92,
	sw	a5,-72(s0)	# tmp92, multiplicand
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	j	.L3		#
.L8:
# problem32.c:23:       remaindar = product % multiplicand;
	lw	a5,-76(s0)		# tmp95, product
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-72(s0)		# tmp98, multiplicand
	remw	a5,a4,a5	# tmp97, tmp96, tmp94
	sw	a5,-64(s0)	# tmp96, remaindar
# problem32.c:24:       if (remaindar != 0) {
	lw	a5,-64(s0)		# tmp100, remaindar
	sext.w	a5,a5	# tmp101, tmp99
	bne	a5,zero,.L12	#, tmp101,,
# problem32.c:27:       multiplier = product / multiplicand;
	lw	a5,-76(s0)		# tmp105, product
	mv	a4,a5	# tmp104, tmp105
	lw	a5,-72(s0)		# tmp107, multiplicand
	divw	a5,a4,a5	# tmp106, tmp103, tmp104
	sw	a5,-60(s0)	# tmp103, multiplier
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	lw	a5,-72(s0)		# tmp109, multiplicand
	fcvt.d.w	fa5,a5	# _1, tmp108
	fmv.d	fa0,fa5	#, _1
	call	log10@plt	#
	fmv.x.d	a5,fa0	# _2,
	fmv.d.x	fa0,a5	#, _2
	call	floor@plt	#
	fmv.d	fa5,fa0	# _3,
	fcvt.l.d s1,fa5,rtz	# _4, _3
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	lw	a5,-60(s0)		# tmp111, multiplier
	fcvt.d.w	fa5,a5	# _5, tmp110
	fmv.d	fa0,fa5	#, _5
	call	log10@plt	#
	fmv.x.d	a5,fa0	# _6,
	fmv.d.x	fa0,a5	#, _6
	call	floor@plt	#
	fmv.d	fa5,fa0	# _7,
	fcvt.l.d a5,fa5,rtz	# _8, _7
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	add	s1,s1,a5	# _8, _9, _4
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	lw	a5,-76(s0)		# tmp113, product
	fcvt.d.w	fa5,a5	# _10, tmp112
	fmv.d	fa0,fa5	#, _10
	call	log10@plt	#
	fmv.x.d	a5,fa0	# _11,
	fmv.d.x	fa0,a5	#, _11
	call	floor@plt	#
	fmv.d	fa5,fa0	# _12,
	fcvt.l.d a5,fa5,rtz	# _13, _12
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	add	a4,s1,a5	# _13, _14, _9
# problem32.c:28:       if (DIGITS(multiplicand) + DIGITS(multiplier) + DIGITS(product) != 6) {
	li	a5,6		# tmp114,
	bne	a4,a5,.L13	#, _14, tmp114,
# problem32.c:32:       snprintf(buf, sizeof buf, "%d%d%d", multiplicand, multiplier, product);
	lw	a5,-76(s0)		# tmp115, product
	lw	a4,-60(s0)		# tmp116, multiplier
	lw	a3,-72(s0)		# tmp117, multiplicand
	addi	a0,s0,-56	#, tmp118,
	lla	a2,.LC0	#,
	li	a1,10		#,
	call	snprintf@plt	#
# problem32.c:33:       if (is_pandigital(buf)) {
	addi	a5,s0,-56	#, tmp119,
	mv	a0,a5	#, tmp119
	call	is_pandigital		#
	mv	a5,a0	# tmp120,
# problem32.c:33:       if (is_pandigital(buf)) {
	beq	a5,zero,.L5	#, _15,,
# problem32.c:34:         sum += product;
	lw	a5,-68(s0)		# tmp123, sum
	mv	a4,a5	# tmp122, tmp123
	lw	a5,-76(s0)		# tmp125, product
	addw	a5,a4,a5	# tmp124, tmp121, tmp122
	sw	a5,-68(s0)	# tmp121, sum
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
	lw	a5,-72(s0)		# tmp128, multiplicand
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-72(s0)	# tmp126, multiplicand
.L3:
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	lw	a5,-72(s0)		# tmp131, multiplicand
	mulw	a5,a5,a5	# tmp129, tmp130, tmp130
	sext.w	a4,a5	# _16, tmp129
# problem32.c:22:     for (multiplicand = 2; multiplicand*multiplicand < product; multiplicand++) {
	lw	a5,-76(s0)		# tmp133, product
	sext.w	a5,a5	# tmp134, tmp132
	bgt	a5,a4,.L8	#, tmp134, tmp135,
.L7:
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	lw	a5,-76(s0)		# tmp138, product
	addiw	a5,a5,1	#, tmp136, tmp137
	sw	a5,-76(s0)	# tmp136, product
.L2:
# problem32.c:21:   for (product = 1111; product < 100000; product++) {
	lw	a5,-76(s0)		# tmp142, product
	sext.w	a4,a5	# tmp143, tmp141
	li	a5,98304		# tmp145,
	addi	a5,a5,1695	#, tmp144, tmp145
	ble	a4,a5,.L9	#, tmp143, tmp144,
# problem32.c:39:   printf("%d\n", sum);
	lw	a5,-68(s0)		# tmp146, sum
	mv	a1,a5	#, tmp146
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem32.c:41:   return 0;
	li	a5,0		# _29,
# problem32.c:42: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp148,
	ld	a3, -40(s0)	# tmp151, D.3672
	ld	a5, 0(a5)	# tmp149, __stack_chk_guard
	xor	a5, a3, a5	# tmp149, tmp151
	li	a3, 0	# tmp151
	beq	a5,zero,.L11	#, tmp149,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	ld	s1,56(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	compare, @function
compare:
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	ld	a5,-24(s0)		# tmp78, a
	lbu	a5,0(a5)	# _1, MEM[(const char *)a_6(D)]
	sext.w	a4,a5	# _2, _1
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	ld	a5,-32(s0)		# tmp79, b
	lbu	a5,0(a5)	# _3, MEM[(const char *)b_7(D)]
	sext.w	a5,a5	# _4, _3
# problem32.c:46:   return *(const char *)a - *(const char *)b;
	subw	a5,a4,a5	# tmp80, _2, _4
	sext.w	a5,a5	# _8, tmp80
# problem32.c:47: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	compare, .-compare
	.section	.rodata
	.align	3
.LC2:
	.string	"123456789"
	.text
	.align	1
	.type	is_pandigital, @function
is_pandigital:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
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
	mv	a5,a0	# tmp76,
# problem32.c:52:   return memcmp(buf, "123456789", 9) == 0;
	seqz	a5,a5	# tmp78, tmp79
	andi	a5,a5,0xff	# _2, tmp77
	sext.w	a5,a5	# _6, _2
# problem32.c:53: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	is_pandigital, .-is_pandigital
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
