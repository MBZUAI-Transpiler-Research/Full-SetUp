	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# s1, s1
	sd	a1,-64(s0)	# s2, s2
# eval/problem120//code.c:5:     int count = 0;
	sw	zero,-36(s0)	#, count
# eval/problem120//code.c:6:     int len1 = strlen(s1);
	ld	a0,-56(s0)		#, s1
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem120//code.c:6:     int len1 = strlen(s1);
	sw	a5,-24(s0)	# _1, len1
# eval/problem120//code.c:7:     int len2 = strlen(s2);
	ld	a0,-64(s0)		#, s2
	call	strlen@plt	#
	mv	a5,a0	# _2,
# eval/problem120//code.c:7:     int len2 = strlen(s2);
	sw	a5,-20(s0)	# _2, len2
# eval/problem120//code.c:9:     int can = 1;
	li	a5,1		# tmp100,
	sw	a5,-28(s0)	# tmp100, can
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	j	.L2		#
.L6:
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	lw	a5,-32(s0)		# _3, i
	ld	a4,-56(s0)		# tmp101, s1
	add	a5,a4,a5	# _3, _4, tmp101
	lbu	a5,0(a5)	# _5, *_4
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	mv	a4,a5	# tmp102, _5
	li	a5,40		# tmp103,
	bne	a4,a5,.L3	#, tmp102, tmp103,
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	lw	a5,-36(s0)		# tmp106, count
	addiw	a5,a5,1	#, tmp104, tmp105
	sw	a5,-36(s0)	# tmp104, count
.L3:
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	lw	a5,-32(s0)		# _6, i
	ld	a4,-56(s0)		# tmp107, s1
	add	a5,a4,a5	# _6, _7, tmp107
	lbu	a5,0(a5)	# _8, *_7
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	mv	a4,a5	# tmp108, _8
	li	a5,41		# tmp109,
	bne	a4,a5,.L4	#, tmp108, tmp109,
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	lw	a5,-36(s0)		# tmp112, count
	addiw	a5,a5,-1	#, tmp110, tmp111
	sw	a5,-36(s0)	# tmp110, count
.L4:
# eval/problem120//code.c:14:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp114, count
	sext.w	a5,a5	# tmp115, tmp113
	bge	a5,zero,.L5	#, tmp115,,
# eval/problem120//code.c:14:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L5:
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp118, i
	addiw	a5,a5,1	#, tmp116, tmp117
	sw	a5,-32(s0)	# tmp116, i
.L2:
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp120, i
	mv	a4,a5	# tmp119, tmp120
	lw	a5,-24(s0)		# tmp122, len1
	sext.w	a4,a4	# tmp123, tmp119
	sext.w	a5,a5	# tmp124, tmp121
	blt	a4,a5,.L6	#, tmp123, tmp124,
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	j	.L7		#
.L11:
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	lw	a5,-32(s0)		# _9, i
	ld	a4,-64(s0)		# tmp125, s2
	add	a5,a4,a5	# _9, _10, tmp125
	lbu	a5,0(a5)	# _11, *_10
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	mv	a4,a5	# tmp126, _11
	li	a5,40		# tmp127,
	bne	a4,a5,.L8	#, tmp126, tmp127,
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	lw	a5,-36(s0)		# tmp130, count
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-36(s0)	# tmp128, count
.L8:
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	lw	a5,-32(s0)		# _12, i
	ld	a4,-64(s0)		# tmp131, s2
	add	a5,a4,a5	# _12, _13, tmp131
	lbu	a5,0(a5)	# _14, *_13
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	mv	a4,a5	# tmp132, _14
	li	a5,41		# tmp133,
	bne	a4,a5,.L9	#, tmp132, tmp133,
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	lw	a5,-36(s0)		# tmp136, count
	addiw	a5,a5,-1	#, tmp134, tmp135
	sw	a5,-36(s0)	# tmp134, count
.L9:
# eval/problem120//code.c:19:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp138, count
	sext.w	a5,a5	# tmp139, tmp137
	bge	a5,zero,.L10	#, tmp139,,
# eval/problem120//code.c:19:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L10:
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp142, i
	addiw	a5,a5,1	#, tmp140, tmp141
	sw	a5,-32(s0)	# tmp140, i
.L7:
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp144, i
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-20(s0)		# tmp146, len2
	sext.w	a4,a4	# tmp147, tmp143
	sext.w	a5,a5	# tmp148, tmp145
	blt	a4,a5,.L11	#, tmp147, tmp148,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	lw	a5,-36(s0)		# tmp150, count
	sext.w	a5,a5	# tmp151, tmp149
	bne	a5,zero,.L12	#, tmp151,,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	lw	a5,-28(s0)		# tmp153, can
	sext.w	a5,a5	# tmp154, tmp152
	beq	a5,zero,.L12	#, tmp154,,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	lla	a5,.LC0	# _51,
	j	.L13		#
.L12:
# eval/problem120//code.c:23:     count = 0;
	sw	zero,-36(s0)	#, count
# eval/problem120//code.c:24:     can = 1;
	li	a5,1		# tmp155,
	sw	a5,-28(s0)	# tmp155, can
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	j	.L14		#
.L18:
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	lw	a5,-32(s0)		# _15, i
	ld	a4,-64(s0)		# tmp156, s2
	add	a5,a4,a5	# _15, _16, tmp156
	lbu	a5,0(a5)	# _17, *_16
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	mv	a4,a5	# tmp157, _17
	li	a5,40		# tmp158,
	bne	a4,a5,.L15	#, tmp157, tmp158,
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	lw	a5,-36(s0)		# tmp161, count
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-36(s0)	# tmp159, count
.L15:
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	lw	a5,-32(s0)		# _18, i
	ld	a4,-64(s0)		# tmp162, s2
	add	a5,a4,a5	# _18, _19, tmp162
	lbu	a5,0(a5)	# _20, *_19
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	mv	a4,a5	# tmp163, _20
	li	a5,41		# tmp164,
	bne	a4,a5,.L16	#, tmp163, tmp164,
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	lw	a5,-36(s0)		# tmp167, count
	addiw	a5,a5,-1	#, tmp165, tmp166
	sw	a5,-36(s0)	# tmp165, count
.L16:
# eval/problem120//code.c:29:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp169, count
	sext.w	a5,a5	# tmp170, tmp168
	bge	a5,zero,.L17	#, tmp170,,
# eval/problem120//code.c:29:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L17:
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp173, i
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-32(s0)	# tmp171, i
.L14:
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp175, i
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-20(s0)		# tmp177, len2
	sext.w	a4,a4	# tmp178, tmp174
	sext.w	a5,a5	# tmp179, tmp176
	blt	a4,a5,.L18	#, tmp178, tmp179,
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	j	.L19		#
.L23:
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	lw	a5,-32(s0)		# _21, i
	ld	a4,-56(s0)		# tmp180, s1
	add	a5,a4,a5	# _21, _22, tmp180
	lbu	a5,0(a5)	# _23, *_22
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	mv	a4,a5	# tmp181, _23
	li	a5,40		# tmp182,
	bne	a4,a5,.L20	#, tmp181, tmp182,
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	lw	a5,-36(s0)		# tmp185, count
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-36(s0)	# tmp183, count
.L20:
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	lw	a5,-32(s0)		# _24, i
	ld	a4,-56(s0)		# tmp186, s1
	add	a5,a4,a5	# _24, _25, tmp186
	lbu	a5,0(a5)	# _26, *_25
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	mv	a4,a5	# tmp187, _26
	li	a5,41		# tmp188,
	bne	a4,a5,.L21	#, tmp187, tmp188,
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	lw	a5,-36(s0)		# tmp191, count
	addiw	a5,a5,-1	#, tmp189, tmp190
	sw	a5,-36(s0)	# tmp189, count
.L21:
# eval/problem120//code.c:34:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp193, count
	sext.w	a5,a5	# tmp194, tmp192
	bge	a5,zero,.L22	#, tmp194,,
# eval/problem120//code.c:34:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L22:
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp197, i
	addiw	a5,a5,1	#, tmp195, tmp196
	sw	a5,-32(s0)	# tmp195, i
.L19:
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp199, i
	mv	a4,a5	# tmp198, tmp199
	lw	a5,-24(s0)		# tmp201, len1
	sext.w	a4,a4	# tmp202, tmp198
	sext.w	a5,a5	# tmp203, tmp200
	blt	a4,a5,.L23	#, tmp202, tmp203,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	lw	a5,-36(s0)		# tmp205, count
	sext.w	a5,a5	# tmp206, tmp204
	bne	a5,zero,.L24	#, tmp206,,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	lw	a5,-28(s0)		# tmp208, can
	sext.w	a5,a5	# tmp209, tmp207
	beq	a5,zero,.L24	#, tmp209,,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	lla	a5,.LC0	# _51,
	j	.L13		#
.L24:
# eval/problem120//code.c:38:     return "No";
	lla	a5,.LC1	# _51,
.L13:
# eval/problem120//code.c:39: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
