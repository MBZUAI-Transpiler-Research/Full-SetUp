	.file	"problem38.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u"
	.align	3
.LC1:
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	sd	s1,72(sp)	#,
	addi	s0,sp,96	#,,
# problem38.c:16: {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp127, __stack_chk_guard
	sd	a4, -40(s0)	# tmp127, D.2646
	li	a4, 0	# tmp127
# problem38.c:17:   unsigned max = 0;
	sw	zero,-88(s0)	#, max
# problem38.c:20:   for (i = 1; i < N; i++) {
	li	a5,1		# tmp83,
	sw	a5,-84(s0)	# tmp83, i
# problem38.c:20:   for (i = 1; i < N; i++) {
	j	.L2		#
.L7:
# problem38.c:21:     char s[10] = {0};
	sd	zero,-72(s0)	#, s
	sh	zero,-64(s0)	#, s
# problem38.c:24:     snprintf(s, sizeof s, "%u", i);
	lw	a4,-84(s0)		# tmp84, i
	addi	a5,s0,-72	#, tmp85,
	mv	a3,a4	#, tmp84
	lla	a2,.LC0	#,
	li	a1,10		#,
	mv	a0,a5	#, tmp85
	call	snprintf@plt	#
# problem38.c:25:     for (j = 2; ; j++) {
	li	a5,2		# tmp86,
	sw	a5,-80(s0)	# tmp86, j
.L6:
# problem38.c:26:       char t[10] = {0};
	sd	zero,-56(s0)	#, t
	sh	zero,-48(s0)	#, t
# problem38.c:28:       snprintf(t, sizeof t, "%u", i*j);
	lw	a5,-84(s0)		# tmp89, i
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-80(s0)		# tmp91, j
	mulw	a5,a4,a5	# tmp87, tmp88, tmp90
	sext.w	a4,a5	# _1, tmp87
	addi	a5,s0,-56	#, tmp92,
	mv	a3,a4	#, _1
	lla	a2,.LC0	#,
	li	a1,10		#,
	mv	a0,a5	#, tmp92
	call	snprintf@plt	#
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	addi	a5,s0,-72	#, tmp93,
	mv	a0,a5	#, tmp93
	call	strlen@plt	#
	mv	s1,a0	# _2,
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	addi	a5,s0,-56	#, tmp94,
	mv	a0,a5	#, tmp94
	call	strlen@plt	#
	mv	a5,a0	# _3,
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	add	a4,s1,a5	# _3, _4, _2
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	li	a5,9		# tmp95,
	bleu	a4,a5,.L3	#, _4, tmp95,
# problem38.c:34:     if (is_pandigital(s)) {
	addi	a5,s0,-72	#, tmp96,
	mv	a0,a5	#, tmp96
	call	is_pandigital		#
	mv	a5,a0	# tmp97,
# problem38.c:34:     if (is_pandigital(s)) {
	bne	a5,zero,.L4	#, _7,,
	j	.L5		#
.L3:
# problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	addi	a5,s0,-72	#, tmp98,
	mv	a0,a5	#, tmp98
	call	strlen@plt	#
	mv	a4,a0	# _5,
# problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	li	a5,10		# tmp99,
	sub	a3,a5,a4	# _6, tmp99, _5
	addi	a4,s0,-56	#, tmp100,
	addi	a5,s0,-72	#, tmp101,
	mv	a2,a3	#, _6
	mv	a1,a4	#, tmp100
	mv	a0,a5	#, tmp101
	call	strncat@plt	#
# problem38.c:25:     for (j = 2; ; j++) {
	lw	a5,-80(s0)		# tmp104, j
	addiw	a5,a5,1	#, tmp102, tmp103
	sw	a5,-80(s0)	# tmp102, j
# problem38.c:25:     for (j = 2; ; j++) {
	j	.L6		#
.L4:
# problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	addi	a5,s0,-72	#, tmp105,
	li	a2,10		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp105
	call	strtoul@plt	#
	mv	a5,a0	# _8,
# problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	sw	a5,-76(s0)	# _8, l
# problem38.c:36:       if (l > max) {
	lw	a5,-76(s0)		# tmp107, l
	mv	a4,a5	# tmp106, tmp107
	lw	a5,-88(s0)		# tmp109, max
	sext.w	a4,a4	# tmp110, tmp106
	sext.w	a5,a5	# tmp111, tmp108
	bleu	a4,a5,.L5	#, tmp110, tmp111,
# problem38.c:37:         max = l;
	lw	a5,-76(s0)		# tmp112, l
	sw	a5,-88(s0)	# tmp112, max
.L5:
# problem38.c:20:   for (i = 1; i < N; i++) {
	lw	a5,-84(s0)		# tmp115, i
	addiw	a5,a5,1	#, tmp113, tmp114
	sw	a5,-84(s0)	# tmp113, i
.L2:
# problem38.c:20:   for (i = 1; i < N; i++) {
	lw	a5,-84(s0)		# tmp119, i
	sext.w	a4,a5	# tmp120, tmp118
	li	a5,8192		# tmp122,
	addi	a5,a5,1807	#, tmp121, tmp122
	bleu	a4,a5,.L7	#, tmp120, tmp121,
# problem38.c:41:   printf("%u\n", max);
	lw	a5,-88(s0)		# tmp123, max
	mv	a1,a5	#, tmp123
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem38.c:43:   return 0;
	li	a5,0		# _20,
# problem38.c:44: }
	mv	a4,a5	# <retval>, _20
	la	a5,__stack_chk_guard		# tmp125,
	ld	a3, -40(s0)	# tmp128, D.2646
	ld	a5, 0(a5)	# tmp126, __stack_chk_guard
	xor	a5, a3, a5	# tmp126, tmp128
	li	a3, 0	# tmp128
	beq	a5,zero,.L9	#, tmp126,,
	call	__stack_chk_fail@plt	#
.L9:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	ld	s1,72(sp)		#,
	addi	sp,sp,96	#,,
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
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	ld	a5,-24(s0)		# tmp78, a
	lbu	a5,0(a5)	# _1, MEM[(const char *)a_6(D)]
	sext.w	a4,a5	# _2, _1
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	ld	a5,-32(s0)		# tmp79, b
	lbu	a5,0(a5)	# _3, MEM[(const char *)b_7(D)]
	sext.w	a5,a5	# _4, _3
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	subw	a5,a4,a5	# tmp80, _2, _4
	sext.w	a5,a5	# _8, tmp80
# problem38.c:49: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	compare, .-compare
	.align	1
	.type	is_pandigital, @function
is_pandigital:
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# s, s
# problem38.c:52: {
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp92, __stack_chk_guard
	sd	a4, -24(s0)	# tmp92, D.2651
	li	a4, 0	# tmp92
# problem38.c:57:   l = strlen(s);
	ld	a0,-72(s0)		#, s
	call	strlen@plt	#
	sd	a0,-48(s0)	#, l
# problem38.c:58:   if (l != 9) {
	ld	a4,-48(s0)		# tmp78, l
	li	a5,9		# tmp79,
	beq	a4,a5,.L13	#, tmp78, tmp79,
# problem38.c:59:     return 0;
	li	a5,0		# _5,
	j	.L18		#
.L13:
# problem38.c:61:   strncpy(t, s, sizeof t);
	addi	a5,s0,-40	#, tmp80,
	li	a2,10		#,
	ld	a1,-72(s0)		#, s
	mv	a0,a5	#, tmp80
	call	strncpy@plt	#
# problem38.c:62:   qsort(t, l, sizeof *t, compare);
	addi	a5,s0,-40	#, tmp81,
	lla	a3,compare	#,
	li	a2,1		#,
	ld	a1,-48(s0)		#, l
	mv	a0,a5	#, tmp81
	call	qsort@plt	#
# problem38.c:63:   for (i = 0; i < l; i++) {
	sd	zero,-56(s0)	#, i
# problem38.c:63:   for (i = 0; i < l; i++) {
	j	.L15		#
.L17:
# problem38.c:64:     if (t[i] != i+'1') {
	ld	a5,-56(s0)		# tmp83, i
	addi	a5,a5,-16	#, tmp96, tmp83
	add	a5,a5,s0	#, tmp82, tmp96
	lbu	a5,-24(a5)	# _1, t[i_4]
	mv	a4,a5	# _2, _1
# problem38.c:64:     if (t[i] != i+'1') {
	ld	a5,-56(s0)		# tmp84, i
	addi	a5,a5,49	#, _3, tmp84
# problem38.c:64:     if (t[i] != i+'1') {
	beq	a4,a5,.L16	#, _2, _3,
# problem38.c:65:       return 0;
	li	a5,0		# _5,
	j	.L18		#
.L16:
# problem38.c:63:   for (i = 0; i < l; i++) {
	ld	a5,-56(s0)		# tmp86, i
	addi	a5,a5,1	#, tmp85, tmp86
	sd	a5,-56(s0)	# tmp85, i
.L15:
# problem38.c:63:   for (i = 0; i < l; i++) {
	ld	a4,-56(s0)		# tmp87, i
	ld	a5,-48(s0)		# tmp88, l
	bltu	a4,a5,.L17	#, tmp87, tmp88,
# problem38.c:68:   return 1;
	li	a5,1		# _5,
.L18:
# problem38.c:69: }
	mv	a4,a5	# <retval>, _5
	la	a5,__stack_chk_guard		# tmp90,
	ld	a3, -24(s0)	# tmp93, D.2651
	ld	a5, 0(a5)	# tmp91, __stack_chk_guard
	xor	a5, a3, a5	# tmp91, tmp93
	li	a3, 0	# tmp93
	beq	a5,zero,.L19	#, tmp91,,
# problem38.c:69: }
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	is_pandigital, .-is_pandigital
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
