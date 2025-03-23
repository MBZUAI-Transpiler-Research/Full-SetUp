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
	addi	sp,sp,-272	#,,
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	addi	s0,sp,272	#,,
	sd	a0,-264(s0)	# x, x
	sd	a1,-272(s0)	# n, n
# eval/problem145//code.c:4: int func0(const char* x, const char* n){
	la	a5,__stack_chk_guard		# tmp101,
	ld	a4, 0(a5)	# tmp178, __stack_chk_guard
	sd	a4, -24(s0)	# tmp178, D.2439
	li	a4, 0	# tmp178
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	sw	zero,-256(s0)	#, i
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	j	.L2		#
.L3:
# eval/problem145//code.c:9:         num[i] = x[i];
	lw	a5,-256(s0)		# _1, i
	ld	a4,-264(s0)		# tmp102, x
	add	a5,a4,a5	# _1, _2, tmp102
	lbu	a4,0(a5)	# _3, *_2
# eval/problem145//code.c:9:         num[i] = x[i];
	lw	a5,-256(s0)		# tmp103, i
	addi	a5,a5,-16	#, tmp182, tmp103
	add	a5,a5,s0	#, tmp104, tmp182
	sb	a4,-216(a5)	# _3, num[i_28]
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	lw	a5,-256(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-256(s0)	# tmp105, i
.L2:
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	lw	a5,-256(s0)		# _4, i
	ld	a4,-264(s0)		# tmp108, x
	add	a5,a4,a5	# _4, _5, tmp108
	lbu	a5,0(a5)	# _6, *_5
# eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	mv	a4,a5	# tmp109, _6
	li	a5,47		# tmp110,
	bne	a4,a5,.L3	#, tmp109, tmp110,
# eval/problem145//code.c:11:     num[i] = '\0';
	lw	a5,-256(s0)		# tmp111, i
	addi	a5,a5,-16	#, tmp183, tmp111
	add	a5,a5,s0	#, tmp112, tmp183
	sb	zero,-216(a5)	#, num[i_28]
# eval/problem145//code.c:12:     a = atoi(num);
	addi	a5,s0,-232	#, tmp113,
	mv	a0,a5	#, tmp113
	call	atoi@plt	#
	mv	a5,a0	# tmp114,
	sw	a5,-248(s0)	# tmp114, a
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	sw	zero,-252(s0)	#, j
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp117, i
	addiw	a5,a5,1	#, tmp115, tmp116
	sw	a5,-256(s0)	# tmp115, i
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	j	.L4		#
.L5:
# eval/problem145//code.c:15:         den[j] = x[i];
	lw	a5,-256(s0)		# _7, i
	ld	a4,-264(s0)		# tmp118, x
	add	a5,a4,a5	# _7, _8, tmp118
	lbu	a4,0(a5)	# _9, *_8
# eval/problem145//code.c:15:         den[j] = x[i];
	lw	a5,-252(s0)		# tmp119, j
	addi	a5,a5,-16	#, tmp184, tmp119
	add	a5,a5,s0	#, tmp120, tmp184
	sb	a4,-112(a5)	# _9, den[j_32]
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp123, i
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-256(s0)	# tmp121, i
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-252(s0)		# tmp126, j
	addiw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-252(s0)	# tmp124, j
.L4:
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# _10, i
	ld	a4,-264(s0)		# tmp127, x
	add	a5,a4,a5	# _10, _11, tmp127
	lbu	a5,0(a5)	# _12, *_11
# eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	bne	a5,zero,.L5	#, _12,,
# eval/problem145//code.c:17:     den[j] = '\0';
	lw	a5,-252(s0)		# tmp128, j
	addi	a5,a5,-16	#, tmp185, tmp128
	add	a5,a5,s0	#, tmp129, tmp185
	sb	zero,-112(a5)	#, den[j_32]
# eval/problem145//code.c:18:     b = atoi(den);
	addi	a5,s0,-128	#, tmp130,
	mv	a0,a5	#, tmp130
	call	atoi@plt	#
	mv	a5,a0	# tmp131,
	sw	a5,-244(s0)	# tmp131, b
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	sw	zero,-256(s0)	#, i
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	j	.L6		#
.L7:
# eval/problem145//code.c:21:         num[i] = n[i];
	lw	a5,-256(s0)		# _13, i
	ld	a4,-272(s0)		# tmp132, n
	add	a5,a4,a5	# _13, _14, tmp132
	lbu	a4,0(a5)	# _15, *_14
# eval/problem145//code.c:21:         num[i] = n[i];
	lw	a5,-256(s0)		# tmp133, i
	addi	a5,a5,-16	#, tmp186, tmp133
	add	a5,a5,s0	#, tmp134, tmp186
	sb	a4,-216(a5)	# _15, num[i_30]
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	lw	a5,-256(s0)		# tmp137, i
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-256(s0)	# tmp135, i
.L6:
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	lw	a5,-256(s0)		# _16, i
	ld	a4,-272(s0)		# tmp138, n
	add	a5,a4,a5	# _16, _17, tmp138
	lbu	a5,0(a5)	# _18, *_17
# eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	mv	a4,a5	# tmp139, _18
	li	a5,47		# tmp140,
	bne	a4,a5,.L7	#, tmp139, tmp140,
# eval/problem145//code.c:23:     num[i] = '\0';
	lw	a5,-256(s0)		# tmp141, i
	addi	a5,a5,-16	#, tmp187, tmp141
	add	a5,a5,s0	#, tmp142, tmp187
	sb	zero,-216(a5)	#, num[i_30]
# eval/problem145//code.c:24:     c = atoi(num);
	addi	a5,s0,-232	#, tmp143,
	mv	a0,a5	#, tmp143
	call	atoi@plt	#
	mv	a5,a0	# tmp144,
	sw	a5,-240(s0)	# tmp144, c
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	sw	zero,-252(s0)	#, j
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp147, i
	addiw	a5,a5,1	#, tmp145, tmp146
	sw	a5,-256(s0)	# tmp145, i
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	j	.L8		#
.L9:
# eval/problem145//code.c:27:         den[j] = n[i];
	lw	a5,-256(s0)		# _19, i
	ld	a4,-272(s0)		# tmp148, n
	add	a5,a4,a5	# _19, _20, tmp148
	lbu	a4,0(a5)	# _21, *_20
# eval/problem145//code.c:27:         den[j] = n[i];
	lw	a5,-252(s0)		# tmp149, j
	addi	a5,a5,-16	#, tmp188, tmp149
	add	a5,a5,s0	#, tmp150, tmp188
	sb	a4,-112(a5)	# _21, den[j_33]
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp153, i
	addiw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-256(s0)	# tmp151, i
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-252(s0)		# tmp156, j
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-252(s0)	# tmp154, j
.L8:
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# _22, i
	ld	a4,-272(s0)		# tmp157, n
	add	a5,a4,a5	# _22, _23, tmp157
	lbu	a5,0(a5)	# _24, *_23
# eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	bne	a5,zero,.L9	#, _24,,
# eval/problem145//code.c:29:     den[j] = '\0';
	lw	a5,-252(s0)		# tmp158, j
	addi	a5,a5,-16	#, tmp189, tmp158
	add	a5,a5,s0	#, tmp159, tmp189
	sb	zero,-112(a5)	#, den[j_33]
# eval/problem145//code.c:30:     d = atoi(den);
	addi	a5,s0,-128	#, tmp160,
	mv	a0,a5	#, tmp160
	call	atoi@plt	#
	mv	a5,a0	# tmp161,
	sw	a5,-236(s0)	# tmp161, d
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	lw	a5,-248(s0)		# tmp164, a
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-240(s0)		# tmp166, c
	mulw	a5,a4,a5	# tmp162, tmp163, tmp165
	sext.w	a4,a5	# _25, tmp162
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	lw	a5,-244(s0)		# tmp169, b
	mv	a3,a5	# tmp168, tmp169
	lw	a5,-236(s0)		# tmp171, d
	mulw	a5,a3,a5	# tmp167, tmp168, tmp170
	sext.w	a5,a5	# _26, tmp167
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	remw	a5,a4,a5	# _26, tmp174, tmp173
	sext.w	a5,a5	# _27, tmp174
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	bne	a5,zero,.L10	#, _27,,
# eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	li	a5,1		# _34,
	j	.L12		#
.L10:
# eval/problem145//code.c:33:     return 0;
	li	a5,0		# _34,
.L12:
# eval/problem145//code.c:34: }
	mv	a4,a5	# <retval>, _34
	la	a5,__stack_chk_guard		# tmp176,
	ld	a3, -24(s0)	# tmp179, D.2439
	ld	a5, 0(a5)	# tmp177, __stack_chk_guard
	xor	a5, a3, a5	# tmp177, tmp179
	li	a3, 0	# tmp179
	beq	a5,zero,.L13	#, tmp177,,
# eval/problem145//code.c:34: }
	call	__stack_chk_fail@plt	#
.L13:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	ld	s0,256(sp)		#,
	addi	sp,sp,272	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
