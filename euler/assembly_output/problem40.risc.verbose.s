	.file	"problem40.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	fsd	fs0,72(sp)	#,
	addi	s0,sp,96	#,,
# problem40.c:10: {
	la	a5,__stack_chk_guard		# tmp89,
	ld	a4, 0(a5)	# tmp161, __stack_chk_guard
	sd	a4, -40(s0)	# tmp161, D.2954
	li	a4, 0	# tmp161
# problem40.c:11:   int nth = 1;
	li	a5,1		# tmp90,
	sw	a5,-96(s0)	# tmp90, nth
# problem40.c:14:   int p = 1;
	li	a5,1		# tmp91,
	sw	a5,-84(s0)	# tmp91, p
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	li	a5,1		# tmp92,
	sw	a5,-92(s0)	# tmp92, i
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	sw	zero,-88(s0)	#, l
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	j	.L2		#
.L6:
# problem40.c:17:     int digits = log10(i)+1;
	lw	a5,-92(s0)		# tmp94, i
	fcvt.d.w	fa5,a5	# _1, tmp93
	fmv.d	fa0,fa5	#, _1
	call	log10@plt	#
	fmv.d	fa4,fa0	# _2,
# problem40.c:17:     int digits = log10(i)+1;
	lla	a5,.LC0	# tmp96,
	fld	fa5,0(a5)	# tmp95,
	fadd.d	fa5,fa4,fa5	# _3, _2, tmp95
# problem40.c:17:     int digits = log10(i)+1;
	fcvt.w.d a5,fa5,rtz	# tmp97, _3
	sw	a5,-76(s0)	# tmp97, digits
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	sw	zero,-80(s0)	#, j
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	j	.L3		#
.L5:
# problem40.c:20:       if (nth == pow(10, l)) {
	lw	a5,-96(s0)		# tmp99, nth
	fcvt.d.w	fs0,a5	# _4, tmp98
# problem40.c:20:       if (nth == pow(10, l)) {
	lw	a5,-88(s0)		# tmp101, l
	fcvt.d.w	fa4,a5	# _5, tmp100
	lla	a5,.LC1	# tmp103,
	fld	fa5,0(a5)	# tmp102,
	fmv.d	fa1,fa4	#, _5
	fmv.d	fa0,fa5	#, tmp102
	call	pow@plt	#
	fmv.d	fa5,fa0	# _6,
# problem40.c:20:       if (nth == pow(10, l)) {
	feq.d	a5,fs0,fa5	#, tmp104, _4, _6
	beq	a5,zero,.L4	#, tmp104,,
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	lw	a5,-76(s0)		# tmp107, digits
	mv	a4,a5	# tmp106, tmp107
	lw	a5,-80(s0)		# tmp109, j
	subw	a5,a4,a5	# tmp105, tmp106, tmp108
	sext.w	a5,a5	# _7, tmp105
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	addiw	a5,a5,-1	#, tmp110, _7
	sext.w	a5,a5	# _8, tmp110
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	fcvt.d.w	fa4,a5	# _9, _8
	lla	a5,.LC1	# tmp112,
	fld	fa5,0(a5)	# tmp111,
	fmv.d	fa1,fa4	#, _9
	fmv.d	fa0,fa5	#, tmp111
	call	pow@plt	#
	fmv.d	fa5,fa0	# _10,
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	fcvt.w.d a5,fa5,rtz	# tmp113, _10
	sext.w	a5,a5	# _11, tmp113
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	lw	a4,-92(s0)		# tmp117, i
	divw	a5,a4,a5	# _11, tmp115, tmp116
	sext.w	a3,a5	# _12, tmp115
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	lw	a5,-88(s0)		# l.0_13, l
	addiw	a4,a5,1	#, tmp118, l.0_13
	sw	a4,-88(s0)	# tmp118, l
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	li	a4,10		# tmp122,
	remw	a4,a3,a4	# tmp122, tmp121, tmp120
	sext.w	a4,a4	# _14, tmp121
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	slli	a5,a5,2	#, tmp123, l.0_13
	addi	a5,a5,-32	#, tmp165, tmp123
	add	a5,a5,s0	#, tmp123, tmp165
	sw	a4,-40(a5)	# _14, d[l.0_13]
.L4:
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	lw	a5,-80(s0)		# tmp126, j
	addiw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-80(s0)	# tmp124, j
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	lw	a5,-96(s0)		# tmp129, nth
	addiw	a5,a5,1	#, tmp127, tmp128
	sw	a5,-96(s0)	# tmp127, nth
.L3:
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	lw	a5,-80(s0)		# tmp131, j
	mv	a4,a5	# tmp130, tmp131
	lw	a5,-76(s0)		# tmp133, digits
	sext.w	a4,a4	# tmp134, tmp130
	sext.w	a5,a5	# tmp135, tmp132
	blt	a4,a5,.L5	#, tmp134, tmp135,
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	lw	a5,-92(s0)		# tmp138, i
	addiw	a5,a5,1	#, tmp136, tmp137
	sw	a5,-92(s0)	# tmp136, i
.L2:
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	lw	a5,-88(s0)		# tmp140, l
	sext.w	a4,a5	# tmp141, tmp139
	li	a5,6		# tmp142,
	ble	a4,a5,.L6	#, tmp141, tmp142,
# problem40.c:26:   for (i = 0; i < l; i++) {
	sw	zero,-92(s0)	#, i
# problem40.c:26:   for (i = 0; i < l; i++) {
	j	.L7		#
.L8:
# problem40.c:27:     p *= d[i];
	lw	a5,-92(s0)		# tmp143, i
	slli	a5,a5,2	#, tmp144, tmp143
	addi	a5,a5,-32	#, tmp166, tmp144
	add	a5,a5,s0	#, tmp144, tmp166
	lw	a5,-40(a5)		# _15, d[i_19]
# problem40.c:27:     p *= d[i];
	lw	a4,-84(s0)		# tmp147, p
	mulw	a5,a4,a5	# tmp145, tmp146, _15
	sw	a5,-84(s0)	# tmp145, p
# problem40.c:26:   for (i = 0; i < l; i++) {
	lw	a5,-92(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-92(s0)	# tmp148, i
.L7:
# problem40.c:26:   for (i = 0; i < l; i++) {
	lw	a5,-92(s0)		# tmp152, i
	mv	a4,a5	# tmp151, tmp152
	lw	a5,-88(s0)		# tmp154, l
	sext.w	a4,a4	# tmp155, tmp151
	sext.w	a5,a5	# tmp156, tmp153
	blt	a4,a5,.L8	#, tmp155, tmp156,
# problem40.c:29:   printf("%d\n", p);
	lw	a5,-84(s0)		# tmp157, p
	mv	a1,a5	#, tmp157
	lla	a0,.LC2	#,
	call	printf@plt	#
# problem40.c:31:   return 0;
	li	a5,0		# _35,
# problem40.c:32: }
	mv	a4,a5	# <retval>, _35
	la	a5,__stack_chk_guard		# tmp159,
	ld	a3, -40(s0)	# tmp162, D.2954
	ld	a5, 0(a5)	# tmp160, __stack_chk_guard
	xor	a5, a3, a5	# tmp160, tmp162
	li	a3, 0	# tmp162
	beq	a5,zero,.L10	#, tmp160,,
	call	__stack_chk_fail@plt	#
.L10:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	fld	fs0,72(sp)	#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	0
	.word	1076101120
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
