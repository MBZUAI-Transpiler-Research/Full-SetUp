	.file	"problem38.c"
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
	.string	"%u"
	.align	3
.LC1:
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	sd	s1,72(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem38.c:16: {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp189, __stack_chk_guard
	sd	a4, -40(s0)	# tmp189, D.3498
	li	a4, 0	# tmp189
# problem38.c:17:   unsigned max = 0;
	sw	zero,-88(s0)	#, max
# problem38.c:20:   for (i = 1; i < N; i++) {
	li	a5,1		# tmp145,
	sw	a5,-84(s0)	# tmp145, i
# problem38.c:20:   for (i = 1; i < N; i++) {
	j	.L2		#
.L7:
# problem38.c:21:     char s[10] = {0};
	sd	zero,-72(s0)	#, s
	sh	zero,-64(s0)	#, s
# problem38.c:24:     snprintf(s, sizeof s, "%u", i);
	lw	a4,-84(s0)		# tmp146, i
	addi	a5,s0,-72	#, tmp147,
	mv	a3,a4	#, tmp146
	lla	a2,.LC0	#,
	li	a1,10		#,
	mv	a0,a5	#, tmp147
	call	snprintf@plt	#
# problem38.c:25:     for (j = 2; ; j++) {
	li	a5,2		# tmp148,
	sw	a5,-80(s0)	# tmp148, j
.L6:
# problem38.c:26:       char t[10] = {0};
	sd	zero,-56(s0)	#, t
	sh	zero,-48(s0)	#, t
# problem38.c:28:       snprintf(t, sizeof t, "%u", i*j);
	lw	a5,-84(s0)		# tmp151, i
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-80(s0)		# tmp153, j
	mulw	a5,a4,a5	# tmp149, tmp150, tmp152
	sext.w	a4,a5	# _1, tmp149
	addi	a5,s0,-56	#, tmp154,
	mv	a3,a4	#, _1
	lla	a2,.LC0	#,
	li	a1,10		#,
	mv	a0,a5	#, tmp154
	call	snprintf@plt	#
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	addi	a5,s0,-72	#, tmp155,
	mv	a0,a5	#, tmp155
	call	strlen@plt	#
	mv	s1,a0	# _2,
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	addi	a5,s0,-56	#, tmp156,
	mv	a0,a5	#, tmp156
	call	strlen@plt	#
	mv	a5,a0	# _3,
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	add	a4,s1,a5	# _3, _4, _2
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	li	a5,9		# tmp157,
	bleu	a4,a5,.L3	#, _4, tmp157,
# problem38.c:34:     if (is_pandigital(s)) {
	addi	a5,s0,-72	#, tmp158,
	mv	a0,a5	#, tmp158
	call	is_pandigital		#
	mv	a5,a0	# tmp159,
# problem38.c:34:     if (is_pandigital(s)) {
	bne	a5,zero,.L4	#, _7,,
	j	.L5		#
.L3:
# problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	addi	a5,s0,-72	#, tmp160,
	mv	a0,a5	#, tmp160
	call	strlen@plt	#
	mv	a4,a0	# _5,
# problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	li	a5,10		# tmp161,
	sub	a3,a5,a4	# _6, tmp161, _5
	addi	a4,s0,-56	#, tmp162,
	addi	a5,s0,-72	#, tmp163,
	mv	a2,a3	#, _6
	mv	a1,a4	#, tmp162
	mv	a0,a5	#, tmp163
	call	strncat@plt	#
# problem38.c:25:     for (j = 2; ; j++) {
	lw	a5,-80(s0)		# tmp166, j
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-80(s0)	# tmp164, j
# problem38.c:25:     for (j = 2; ; j++) {
	j	.L6		#
.L4:
# problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	addi	a5,s0,-72	#, tmp167,
	li	a2,10		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp167
	call	strtoul@plt	#
	mv	a5,a0	# _8,
# problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	sw	a5,-76(s0)	# _8, l
# problem38.c:36:       if (l > max) {
	lw	a5,-76(s0)		# tmp169, l
	mv	a4,a5	# tmp168, tmp169
	lw	a5,-88(s0)		# tmp171, max
	sext.w	a4,a4	# tmp172, tmp168
	sext.w	a5,a5	# tmp173, tmp170
	bleu	a4,a5,.L5	#, tmp172, tmp173,
# problem38.c:37:         max = l;
	lw	a5,-76(s0)		# tmp174, l
	sw	a5,-88(s0)	# tmp174, max
.L5:
# problem38.c:20:   for (i = 1; i < N; i++) {
	lw	a5,-84(s0)		# tmp177, i
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-84(s0)	# tmp175, i
.L2:
# problem38.c:20:   for (i = 1; i < N; i++) {
	lw	a5,-84(s0)		# tmp181, i
	sext.w	a4,a5	# tmp182, tmp180
	li	a5,8192		# tmp184,
	addi	a5,a5,1807	#, tmp183, tmp184
	bleu	a4,a5,.L7	#, tmp182, tmp183,
# problem38.c:41:   printf("%u\n", max);
	lw	a5,-88(s0)		# tmp185, max
	mv	a1,a5	#, tmp185
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem38.c:43:   return 0;
	li	a5,0		# _20,
# problem38.c:44: }
	mv	a4,a5	# <retval>, _20
	la	a5,__stack_chk_guard		# tmp187,
	ld	a3, -40(s0)	# tmp190, D.3498
	ld	a5, 0(a5)	# tmp188, __stack_chk_guard
	xor	a5, a3, a5	# tmp188, tmp190
	li	a3, 0	# tmp190
	beq	a5,zero,.L9	#, tmp188,,
	call	__stack_chk_fail@plt	#
.L9:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)		#,
	.cfi_restore 9
	addi	sp,sp,96	#,,
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
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	ld	a5,-24(s0)		# tmp140, a
	lbu	a5,0(a5)	# _1, MEM[(const char *)a_6(D)]
	sext.w	a4,a5	# _2, _1
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	ld	a5,-32(s0)		# tmp141, b
	lbu	a5,0(a5)	# _3, MEM[(const char *)b_7(D)]
	sext.w	a5,a5	# _4, _3
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	subw	a5,a4,a5	# tmp142, _2, _4
	sext.w	a5,a5	# _8, tmp142
# problem38.c:49: }
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
	.align	1
	.type	is_pandigital, @function
is_pandigital:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# s, s
# problem38.c:52: {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp154, __stack_chk_guard
	sd	a4, -24(s0)	# tmp154, D.3503
	li	a4, 0	# tmp154
# problem38.c:57:   l = strlen(s);
	ld	a0,-72(s0)		#, s
	call	strlen@plt	#
	sd	a0,-48(s0)	#, l
# problem38.c:58:   if (l != 9) {
	ld	a4,-48(s0)		# tmp140, l
	li	a5,9		# tmp141,
	beq	a4,a5,.L13	#, tmp140, tmp141,
# problem38.c:59:     return 0;
	li	a5,0		# _5,
	j	.L18		#
.L13:
# problem38.c:61:   strncpy(t, s, sizeof t);
	addi	a5,s0,-40	#, tmp142,
	li	a2,10		#,
	ld	a1,-72(s0)		#, s
	mv	a0,a5	#, tmp142
	call	strncpy@plt	#
# problem38.c:62:   qsort(t, l, sizeof *t, compare);
	addi	a5,s0,-40	#, tmp143,
	lla	a3,compare	#,
	li	a2,1		#,
	ld	a1,-48(s0)		#, l
	mv	a0,a5	#, tmp143
	call	qsort@plt	#
# problem38.c:63:   for (i = 0; i < l; i++) {
	sd	zero,-56(s0)	#, i
# problem38.c:63:   for (i = 0; i < l; i++) {
	j	.L15		#
.L17:
# problem38.c:64:     if (t[i] != i+'1') {
	ld	a5,-56(s0)		# tmp145, i
	addi	a5,a5,-16	#, tmp158, tmp145
	add	a5,a5,s0	#, tmp144, tmp158
	lbu	a5,-24(a5)	# _1, t[i_4]
	mv	a4,a5	# _2, _1
# problem38.c:64:     if (t[i] != i+'1') {
	ld	a5,-56(s0)		# tmp146, i
	addi	a5,a5,49	#, _3, tmp146
# problem38.c:64:     if (t[i] != i+'1') {
	beq	a4,a5,.L16	#, _2, _3,
# problem38.c:65:       return 0;
	li	a5,0		# _5,
	j	.L18		#
.L16:
# problem38.c:63:   for (i = 0; i < l; i++) {
	ld	a5,-56(s0)		# tmp148, i
	addi	a5,a5,1	#, tmp147, tmp148
	sd	a5,-56(s0)	# tmp147, i
.L15:
# problem38.c:63:   for (i = 0; i < l; i++) {
	ld	a4,-56(s0)		# tmp149, i
	ld	a5,-48(s0)		# tmp150, l
	bltu	a4,a5,.L17	#, tmp149, tmp150,
# problem38.c:68:   return 1;
	li	a5,1		# _5,
.L18:
# problem38.c:69: }
	mv	a4,a5	# <retval>, _5
	la	a5,__stack_chk_guard		# tmp152,
	ld	a3, -24(s0)	# tmp155, D.3503
	ld	a5, 0(a5)	# tmp153, __stack_chk_guard
	xor	a5, a3, a5	# tmp153, tmp155
	li	a3, 0	# tmp155
	beq	a5,zero,.L19	#, tmp153,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	is_pandigital, .-is_pandigital
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
