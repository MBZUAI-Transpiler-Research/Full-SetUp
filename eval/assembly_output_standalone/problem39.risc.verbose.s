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
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# s, s
	mv	a5,a1	# tmp90, encode
	sw	a5,-76(s0)	# tmp91, encode
# eval/problem39//code.c:4: void func0(char *s, int encode) {
	la	a5,__stack_chk_guard		# tmp92,
	ld	a4, 0(a5)	# tmp152, __stack_chk_guard
	sd	a4, -24(s0)	# tmp152, D.2097
	li	a4, 0	# tmp152
# eval/problem39//code.c:5:     int l = strlen(s);
	ld	a0,-72(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem39//code.c:5:     int l = strlen(s);
	sw	a5,-44(s0)	# _1, l
# eval/problem39//code.c:6:     int num = (l + 2) / 3;
	lw	a5,-44(s0)		# tmp95, l
	addiw	a5,a5,2	#, tmp93, tmp94
	sext.w	a5,a5	# _2, tmp93
# eval/problem39//code.c:6:     int num = (l + 2) / 3;
	mv	a4,a5	# tmp96, _2
	li	a5,3		# tmp98,
	divw	a5,a4,a5	# tmp98, tmp97, tmp96
	sw	a5,-40(s0)	# tmp97, num
# eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	sw	zero,-48(s0)	#, i
# eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	j	.L2		#
.L7:
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-48(s0)		# tmp101, i
	addiw	a5,a5,1	#, tmp99, tmp100
	sext.w	a5,a5	# _3, tmp99
	mv	a4,a5	# tmp102, _3
	mv	a5,a4	# tmp103, tmp102
	slliw	a5,a5,1	#, tmp104, tmp103
	addw	a5,a5,a4	# tmp102, tmp103, tmp103
	sext.w	a4,a5	# _4, tmp103
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-44(s0)		# tmp106, l
	sext.w	a5,a5	# tmp107, tmp105
	bge	a5,a4,.L3	#, tmp107, tmp108,
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-48(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	mv	a5,a4	# tmp111, tmp109
	slliw	a4,a4,2	#, tmp112, tmp109
	subw	a5,a5,a4	# tmp111, tmp111, tmp112
	sext.w	a5,a5	# _5, tmp111
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a4,-44(s0)		# tmp115, l
	addw	a5,a4,a5	# _5, tmp113, tmp114
	sext.w	a5,a5	# iftmp.0_19, tmp113
	j	.L4		#
.L3:
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	li	a5,3		# iftmp.0_19,
.L4:
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	sw	a5,-36(s0)	# iftmp.0_19, len
# eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	lw	a5,-48(s0)		# tmp117, i
	mv	a4,a5	# tmp116, tmp117
	mv	a5,a4	# tmp118, tmp116
	slliw	a5,a5,1	#, tmp119, tmp118
	addw	a5,a5,a4	# tmp116, tmp118, tmp118
	sext.w	a5,a5	# _6, tmp118
	mv	a4,a5	# _7, _6
# eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	ld	a5,-72(s0)		# tmp120, s
	add	a4,a5,a4	# _7, _8, tmp120
# eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	lw	a3,-36(s0)		# _9, len
	addi	a5,s0,-32	#, tmp121,
	mv	a2,a3	#, _9
	mv	a1,a4	#, _8
	mv	a0,a5	#, tmp121
	call	strncpy@plt	#
# eval/problem39//code.c:12:         x[len] = '\0';
	lw	a5,-36(s0)		# tmp122, len
	addi	a5,a5,-16	#, tmp156, tmp122
	add	a5,a5,s0	#, tmp123, tmp156
	sb	zero,-16(a5)	#, x[len_30]
# eval/problem39//code.c:14:         if (len == 3) {
	lw	a5,-36(s0)		# tmp125, len
	sext.w	a4,a5	# tmp126, tmp124
	li	a5,3		# tmp127,
	bne	a4,a5,.L5	#, tmp126, tmp127,
# eval/problem39//code.c:15:             if (encode) {
	lw	a5,-76(s0)		# tmp129, encode
	sext.w	a5,a5	# tmp130, tmp128
	beq	a5,zero,.L6	#, tmp130,,
# eval/problem39//code.c:16:                 char temp = x[2];
	lbu	a5,-30(s0)	# tmp131, x[2]
	sb	a5,-49(s0)	# tmp131, temp
# eval/problem39//code.c:17:                 x[2] = x[1];
	lbu	a5,-31(s0)	# _10, x[1]
# eval/problem39//code.c:17:                 x[2] = x[1];
	sb	a5,-30(s0)	# _10, x[2]
# eval/problem39//code.c:18:                 x[1] = x[0];
	lbu	a5,-32(s0)	# _11, x[0]
# eval/problem39//code.c:18:                 x[1] = x[0];
	sb	a5,-31(s0)	# _11, x[1]
# eval/problem39//code.c:19:                 x[0] = temp;
	lbu	a5,-49(s0)	# tmp132, temp
	sb	a5,-32(s0)	# tmp132, x[0]
	j	.L5		#
.L6:
# eval/problem39//code.c:21:                 char temp = x[0];
	lbu	a5,-32(s0)	# tmp133, x[0]
	sb	a5,-50(s0)	# tmp133, temp
# eval/problem39//code.c:22:                 x[0] = x[1];
	lbu	a5,-31(s0)	# _12, x[1]
# eval/problem39//code.c:22:                 x[0] = x[1];
	sb	a5,-32(s0)	# _12, x[0]
# eval/problem39//code.c:23:                 x[1] = x[2];
	lbu	a5,-30(s0)	# _13, x[2]
# eval/problem39//code.c:23:                 x[1] = x[2];
	sb	a5,-31(s0)	# _13, x[1]
# eval/problem39//code.c:24:                 x[2] = temp;
	lbu	a5,-50(s0)	# tmp134, temp
	sb	a5,-30(s0)	# tmp134, x[2]
.L5:
# eval/problem39//code.c:27:         strncpy(s + i * 3, x, len);
	lw	a5,-48(s0)		# tmp136, i
	mv	a4,a5	# tmp135, tmp136
	mv	a5,a4	# tmp137, tmp135
	slliw	a5,a5,1	#, tmp138, tmp137
	addw	a5,a5,a4	# tmp135, tmp137, tmp137
	sext.w	a5,a5	# _14, tmp137
	mv	a4,a5	# _15, _14
# eval/problem39//code.c:27:         strncpy(s + i * 3, x, len);
	ld	a5,-72(s0)		# tmp139, s
	add	a5,a5,a4	# _15, _16, tmp139
	lw	a3,-36(s0)		# _17, len
	addi	a4,s0,-32	#, tmp140,
	mv	a2,a3	#, _17
	mv	a1,a4	#, tmp140
	mv	a0,a5	#, _16
	call	strncpy@plt	#
# eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	lw	a5,-48(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-48(s0)	# tmp141, i
.L2:
# eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	lw	a5,-48(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-40(s0)		# tmp147, num
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	blt	a4,a5,.L7	#, tmp148, tmp149,
# eval/problem39//code.c:29: }
	nop	
	la	a5,__stack_chk_guard		# tmp150,
	ld	a4, -24(s0)	# tmp153, D.2097
	ld	a5, 0(a5)	# tmp151, __stack_chk_guard
	xor	a5, a4, a5	# tmp151, tmp153
	li	a4, 0	# tmp153
	beq	a5,zero,.L8	#, tmp151,,
	call	__stack_chk_fail@plt	#
.L8:
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
