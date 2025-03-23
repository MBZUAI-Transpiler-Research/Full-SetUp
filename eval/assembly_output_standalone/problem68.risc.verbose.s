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
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	sd	s1,88(sp)	#,
	addi	s0,sp,112	#,,
	sd	a0,-104(s0)	# s, s
	mv	a5,a1	# tmp99, n
	sw	a5,-108(s0)	# tmp100, n
# eval/problem68//code.c:5: int func0(const char *s, int n) {
	la	a5,__stack_chk_guard		# tmp101,
	ld	a4, 0(a5)	# tmp137, __stack_chk_guard
	sd	a4, -40(s0)	# tmp137, D.2544
	li	a4, 0	# tmp137
# eval/problem68//code.c:6:     char num1[10] = "";
	sd	zero,-72(s0)	#, num1
	sh	zero,-64(s0)	#, num1
# eval/problem68//code.c:7:     char num2[10] = "";
	sd	zero,-56(s0)	#, num2
	sh	zero,-48(s0)	#, num2
# eval/problem68//code.c:8:     int is12 = 0, j = 0;
	sw	zero,-84(s0)	#, is12
# eval/problem68//code.c:8:     int is12 = 0, j = 0;
	sw	zero,-80(s0)	#, j
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	sw	zero,-76(s0)	#, i
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L6:
# eval/problem68//code.c:11:         if (isdigit(s[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _1,
	ld	a4,0(a5)		# _2, *_1
	lw	a5,-76(s0)		# _3, i
	ld	a3,-104(s0)		# tmp102, s
	add	a5,a3,a5	# _3, _4, tmp102
	lbu	a5,0(a5)	# _5, *_4
	slli	a5,a5,1	#, _7, _6
	add	a5,a4,a5	# _7, _8, _2
	lhu	a5,0(a5)	# _9, *_8
	sext.w	a4,a5	# _10, _9
	li	a5,4096		# tmp105,
	addi	a5,a5,-2048	#, tmp104, tmp105
	and	a5,a4,a5	# tmp104, tmp103, _10
	sext.w	a5,a5	# _11, tmp103
# eval/problem68//code.c:11:         if (isdigit(s[i])) {
	beq	a5,zero,.L3	#, _11,,
# eval/problem68//code.c:12:             if (is12 == 0) {
	lw	a5,-84(s0)		# tmp107, is12
	sext.w	a5,a5	# tmp108, tmp106
	bne	a5,zero,.L4	#, tmp108,,
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	lw	a5,-76(s0)		# _12, i
	ld	a4,-104(s0)		# tmp109, s
	add	a4,a4,a5	# _12, _13, tmp109
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	lw	a5,-80(s0)		# j.0_14, j
	addiw	a3,a5,1	#, tmp110, j.0_14
	sw	a3,-80(s0)	# tmp110, j
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	lbu	a4,0(a4)	# _15, *_13
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	addi	a5,a5,-32	#, tmp141, j.0_14
	add	a5,a5,s0	#, tmp111, tmp141
	sb	a4,-40(a5)	# _15, num1[j.0_14]
	j	.L5		#
.L4:
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	lw	a5,-76(s0)		# _16, i
	ld	a4,-104(s0)		# tmp112, s
	add	a4,a4,a5	# _16, _17, tmp112
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	lw	a5,-80(s0)		# j.1_18, j
	addiw	a3,a5,1	#, tmp113, j.1_18
	sw	a3,-80(s0)	# tmp113, j
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	lbu	a4,0(a4)	# _19, *_17
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	addi	a5,a5,-32	#, tmp142, j.1_18
	add	a5,a5,s0	#, tmp114, tmp142
	sb	a4,-24(a5)	# _19, num2[j.1_18]
	j	.L5		#
.L3:
# eval/problem68//code.c:18:             if (is12 == 0 && j > 0) {
	lw	a5,-84(s0)		# tmp116, is12
	sext.w	a5,a5	# tmp117, tmp115
	bne	a5,zero,.L5	#, tmp117,,
# eval/problem68//code.c:18:             if (is12 == 0 && j > 0) {
	lw	a5,-80(s0)		# tmp119, j
	sext.w	a5,a5	# tmp120, tmp118
	ble	a5,zero,.L5	#, tmp120,,
# eval/problem68//code.c:19:                 is12 = 1;
	li	a5,1		# tmp121,
	sw	a5,-84(s0)	# tmp121, is12
# eval/problem68//code.c:20:                 j = 0;
	sw	zero,-80(s0)	#, j
.L5:
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-76(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-76(s0)	# tmp122, i
.L2:
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-76(s0)		# _20, i
	ld	a4,-104(s0)		# tmp125, s
	add	a5,a4,a5	# _20, _21, tmp125
	lbu	a5,0(a5)	# _22, *_21
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L6	#, _22,,
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	addi	a5,s0,-72	#, tmp126,
	mv	a0,a5	#, tmp126
	call	atoi@plt	#
	mv	a5,a0	# tmp127,
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	lw	a4,-108(s0)		# tmp130, n
	subw	a5,a4,a5	# tmp128, tmp129, _23
	sext.w	s1,a5	# _24, tmp128
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	addi	a5,s0,-56	#, tmp131,
	mv	a0,a5	#, tmp131
	call	atoi@plt	#
	mv	a5,a0	# tmp132,
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	subw	a5,s1,a5	# tmp133, _24, _25
	sext.w	a5,a5	# _41, tmp133
	mv	a4,a5	# <retval>, _41
# eval/problem68//code.c:25: }
	la	a5,__stack_chk_guard		# tmp135,
	ld	a3, -40(s0)	# tmp138, D.2544
	ld	a5, 0(a5)	# tmp136, __stack_chk_guard
	xor	a5, a3, a5	# tmp136, tmp138
	li	a3, 0	# tmp138
	beq	a5,zero,.L8	#, tmp136,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	ld	s1,88(sp)		#,
	addi	sp,sp,112	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
