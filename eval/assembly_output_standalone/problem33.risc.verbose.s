	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80	#,,
	sd	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# xs, xs
	mv	a5,a1	# tmp93, size
	sw	a5,-76(s0)	# tmp94, size
# eval/problem33//code.c:5:     double ans = 0.0;
	sd	zero,-48(s0)	#, ans
# eval/problem33//code.c:9:     value = xs[0];
	ld	a5,-72(s0)		# tmp95, xs
	fld	fa5,0(a5)	# tmp96, *xs_36(D)
	fsd	fa5,-40(s0)	# tmp96, value
# eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	li	a5,1		# tmp97,
	sw	a5,-64(s0)	# tmp97, i
# eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	j	.L2		#
.L5:
# eval/problem33//code.c:11:         x_pow = 1.0;
	lla	a5,.LC0	# tmp98,
	fld	fa5,0(a5)	# tmp99,
	fsd	fa5,-24(s0)	# tmp99, x_pow
# eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	sw	zero,-60(s0)	#, j
# eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	j	.L3		#
.L4:
# eval/problem33//code.c:13:             x_pow *= ans;
	fld	fa4,-24(s0)	# tmp101, x_pow
	fld	fa5,-48(s0)	# tmp102, ans
	fmul.d	fa5,fa4,fa5	# tmp100, tmp101, tmp102
	fsd	fa5,-24(s0)	# tmp100, x_pow
# eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	lw	a5,-60(s0)		# tmp105, j
	addiw	a5,a5,1	#, tmp103, tmp104
	sw	a5,-60(s0)	# tmp103, j
.L3:
# eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	lw	a5,-60(s0)		# tmp107, j
	mv	a4,a5	# tmp106, tmp107
	lw	a5,-64(s0)		# tmp109, i
	sext.w	a4,a4	# tmp110, tmp106
	sext.w	a5,a5	# tmp111, tmp108
	blt	a4,a5,.L4	#, tmp110, tmp111,
# eval/problem33//code.c:15:         value += xs[i] * x_pow;
	lw	a5,-64(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-72(s0)		# tmp112, xs
	add	a5,a4,a5	# _2, _3, tmp112
	fld	fa4,0(a5)	# _4, *_3
# eval/problem33//code.c:15:         value += xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp113, x_pow
	fmul.d	fa5,fa4,fa5	# _5, _4, tmp113
# eval/problem33//code.c:15:         value += xs[i] * x_pow;
	fld	fa4,-40(s0)	# tmp115, value
	fadd.d	fa5,fa4,fa5	# tmp114, tmp115, _5
	fsd	fa5,-40(s0)	# tmp114, value
# eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp118, i
	addiw	a5,a5,1	#, tmp116, tmp117
	sw	a5,-64(s0)	# tmp116, i
.L2:
# eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp120, i
	mv	a4,a5	# tmp119, tmp120
	lw	a5,-76(s0)		# tmp122, size
	sext.w	a4,a4	# tmp123, tmp119
	sext.w	a5,a5	# tmp124, tmp121
	blt	a4,a5,.L5	#, tmp123, tmp124,
# eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	j	.L6		#
.L15:
# eval/problem33//code.c:19:         driv = 0.0;
	sd	zero,-32(s0)	#, driv
# eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	li	a5,1		# tmp125,
	sw	a5,-64(s0)	# tmp125, i
# eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	j	.L7		#
.L10:
# eval/problem33//code.c:21:             x_pow = 1.0;
	lla	a5,.LC0	# tmp126,
	fld	fa5,0(a5)	# tmp127,
	fsd	fa5,-24(s0)	# tmp127, x_pow
# eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	li	a5,1		# tmp128,
	sw	a5,-56(s0)	# tmp128, j
# eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	j	.L8		#
.L9:
# eval/problem33//code.c:23:                 x_pow *= ans;
	fld	fa4,-24(s0)	# tmp130, x_pow
	fld	fa5,-48(s0)	# tmp131, ans
	fmul.d	fa5,fa4,fa5	# tmp129, tmp130, tmp131
	fsd	fa5,-24(s0)	# tmp129, x_pow
# eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	lw	a5,-56(s0)		# tmp134, j
	addiw	a5,a5,1	#, tmp132, tmp133
	sw	a5,-56(s0)	# tmp132, j
.L8:
# eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	lw	a5,-56(s0)		# tmp136, j
	mv	a4,a5	# tmp135, tmp136
	lw	a5,-64(s0)		# tmp138, i
	sext.w	a4,a4	# tmp139, tmp135
	sext.w	a5,a5	# tmp140, tmp137
	blt	a4,a5,.L9	#, tmp139, tmp140,
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	lw	a5,-64(s0)		# tmp142, i
	fcvt.d.w	fa4,a5	# _6, tmp141
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	lw	a5,-64(s0)		# _7, i
	slli	a5,a5,3	#, _8, _7
	ld	a4,-72(s0)		# tmp143, xs
	add	a5,a4,a5	# _8, _9, tmp143
	fld	fa5,0(a5)	# _10, *_9
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	fmul.d	fa4,fa4,fa5	# _11, _6, _10
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp144, x_pow
	fmul.d	fa5,fa4,fa5	# _12, _11, tmp144
# eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	fld	fa4,-32(s0)	# tmp146, driv
	fadd.d	fa5,fa4,fa5	# tmp145, tmp146, _12
	fsd	fa5,-32(s0)	# tmp145, driv
# eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp149, i
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-64(s0)	# tmp147, i
.L7:
# eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp151, i
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-76(s0)		# tmp153, size
	sext.w	a4,a4	# tmp154, tmp150
	sext.w	a5,a5	# tmp155, tmp152
	blt	a4,a5,.L10	#, tmp154, tmp155,
# eval/problem33//code.c:27:         ans = ans - value / driv;
	fld	fa4,-40(s0)	# tmp156, value
	fld	fa5,-32(s0)	# tmp157, driv
	fdiv.d	fa5,fa4,fa5	# _13, tmp156, tmp157
# eval/problem33//code.c:27:         ans = ans - value / driv;
	fld	fa4,-48(s0)	# tmp159, ans
	fsub.d	fa5,fa4,fa5	# tmp158, tmp159, _13
	fsd	fa5,-48(s0)	# tmp158, ans
# eval/problem33//code.c:29:         value = xs[0];
	ld	a5,-72(s0)		# tmp160, xs
	fld	fa5,0(a5)	# tmp161, *xs_36(D)
	fsd	fa5,-40(s0)	# tmp161, value
# eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	li	a5,1		# tmp162,
	sw	a5,-64(s0)	# tmp162, i
# eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	j	.L11		#
.L14:
# eval/problem33//code.c:31:             x_pow = 1.0;
	lla	a5,.LC0	# tmp163,
	fld	fa5,0(a5)	# tmp164,
	fsd	fa5,-24(s0)	# tmp164, x_pow
# eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	sw	zero,-52(s0)	#, j
# eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	j	.L12		#
.L13:
# eval/problem33//code.c:33:                 x_pow *= ans;
	fld	fa4,-24(s0)	# tmp166, x_pow
	fld	fa5,-48(s0)	# tmp167, ans
	fmul.d	fa5,fa4,fa5	# tmp165, tmp166, tmp167
	fsd	fa5,-24(s0)	# tmp165, x_pow
# eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	lw	a5,-52(s0)		# tmp170, j
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-52(s0)	# tmp168, j
.L12:
# eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	lw	a5,-52(s0)		# tmp172, j
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-64(s0)		# tmp174, i
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	blt	a4,a5,.L13	#, tmp175, tmp176,
# eval/problem33//code.c:35:             value += xs[i] * x_pow;
	lw	a5,-64(s0)		# _14, i
	slli	a5,a5,3	#, _15, _14
	ld	a4,-72(s0)		# tmp177, xs
	add	a5,a4,a5	# _15, _16, tmp177
	fld	fa4,0(a5)	# _17, *_16
# eval/problem33//code.c:35:             value += xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp178, x_pow
	fmul.d	fa5,fa4,fa5	# _18, _17, tmp178
# eval/problem33//code.c:35:             value += xs[i] * x_pow;
	fld	fa4,-40(s0)	# tmp180, value
	fadd.d	fa5,fa4,fa5	# tmp179, tmp180, _18
	fsd	fa5,-40(s0)	# tmp179, value
# eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp183, i
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-64(s0)	# tmp181, i
.L11:
# eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp185, i
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-76(s0)		# tmp187, size
	sext.w	a4,a4	# tmp188, tmp184
	sext.w	a5,a5	# tmp189, tmp186
	blt	a4,a5,.L14	#, tmp188, tmp189,
.L6:
# eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	fld	fa5,-40(s0)	# tmp190, value
	fabs.d	fa4,fa5	# _19, tmp190
# eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	lla	a5,.LC1	# tmp192,
	fld	fa5,0(a5)	# tmp191,
	fgt.d	a5,fa4,fa5	#, tmp193, _19, tmp191
	bne	a5,zero,.L15	#, tmp193,,
# eval/problem33//code.c:39:     return ans;
	fld	fa5,-48(s0)	# _40, ans
# eval/problem33//code.c:40: }
	fmv.d	fa0,fa5	#, <retval>
	ld	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	-1598689907
	.word	1051772663
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
