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
	.string	""
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-336	#,,
	sd	ra,328(sp)	#,
	sd	s0,320(sp)	#,
	addi	s0,sp,336	#,,
	sd	a0,-328(s0)	# words, words
	mv	a5,a1	# tmp107, count
	sw	a5,-332(s0)	# tmp108, count
# eval/problem159//code.c:4: char *func0(char *words[], int count) {
	la	a5,__stack_chk_guard		# tmp109,
	ld	a4, 0(a5)	# tmp161, __stack_chk_guard
	sd	a4, -24(s0)	# tmp161, D.2100
	li	a4, 0	# tmp161
# eval/problem159//code.c:5:     char *max = "";
	lla	a5,.LC0	# tmp110,
	sd	a5,-288(s0)	# tmp110, max
# eval/problem159//code.c:6:     int maxu = 0;
	sw	zero,-308(s0)	#, maxu
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	sw	zero,-304(s0)	#, i
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L8:
# eval/problem159//code.c:8:         char unique[256] = {0};
	sd	zero,-280(s0)	#, unique
	addi	a5,s0,-272	#, tmp111,
	li	a4,248		# tmp112,
	mv	a2,a4	#, tmp112
	li	a1,0		#,
	mv	a0,a5	#, tmp111
	call	memset@plt	#
# eval/problem159//code.c:9:         int unique_count = 0;
	sw	zero,-300(s0)	#, unique_count
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	sw	zero,-296(s0)	#, j
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	j	.L3		#
.L5:
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	lw	a5,-304(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-328(s0)		# tmp114, words
	add	a5,a4,a5	# _2, _3, tmp114
	ld	a4,0(a5)		# _4, *_3
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	lw	a5,-296(s0)		# _5, j
	add	a5,a4,a5	# _5, _6, _4
	lbu	a5,0(a5)	# _7, *_6
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	sext.w	a4,a5	# _8, _7
	addi	a5,s0,-280	#, tmp115,
	mv	a1,a4	#, _8
	mv	a0,a5	#, tmp115
	call	strchr@plt	#
	mv	a5,a0	# _9,
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	bne	a5,zero,.L4	#, _9,,
# eval/problem159//code.c:12:                 int len = strlen(unique);
	addi	a5,s0,-280	#, tmp116,
	mv	a0,a5	#, tmp116
	call	strlen@plt	#
	mv	a5,a0	# _10,
# eval/problem159//code.c:12:                 int len = strlen(unique);
	sw	a5,-292(s0)	# _10, len
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	lw	a5,-304(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-328(s0)		# tmp117, words
	add	a5,a4,a5	# _12, _13, tmp117
	ld	a4,0(a5)		# _14, *_13
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	lw	a5,-296(s0)		# _15, j
	add	a5,a4,a5	# _15, _16, _14
	lbu	a4,0(a5)	# _17, *_16
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	lw	a5,-292(s0)		# tmp118, len
	addi	a5,a5,-16	#, tmp165, tmp118
	add	a5,a5,s0	#, tmp119, tmp165
	sb	a4,-264(a5)	# _17, unique[len_59]
# eval/problem159//code.c:14:                 unique[len + 1] = '\0';
	lw	a5,-292(s0)		# tmp122, len
	addiw	a5,a5,1	#, tmp120, tmp121
	sext.w	a5,a5	# _18, tmp120
# eval/problem159//code.c:14:                 unique[len + 1] = '\0';
	addi	a5,a5,-16	#, tmp166, _18
	add	a5,a5,s0	#, tmp123, tmp166
	sb	zero,-264(a5)	#, unique[_18]
# eval/problem159//code.c:15:                 unique_count++;
	lw	a5,-300(s0)		# tmp126, unique_count
	addiw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-300(s0)	# tmp124, unique_count
.L4:
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-296(s0)		# tmp129, j
	addiw	a5,a5,1	#, tmp127, tmp128
	sw	a5,-296(s0)	# tmp127, j
.L3:
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-304(s0)		# _19, i
	slli	a5,a5,3	#, _20, _19
	ld	a4,-328(s0)		# tmp130, words
	add	a5,a4,a5	# _20, _21, tmp130
	ld	a4,0(a5)		# _22, *_21
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-296(s0)		# _23, j
	add	a5,a4,a5	# _23, _24, _22
	lbu	a5,0(a5)	# _25, *_24
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	bne	a5,zero,.L5	#, _25,,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-300(s0)		# tmp132, unique_count
	mv	a4,a5	# tmp131, tmp132
	lw	a5,-308(s0)		# tmp134, maxu
	sext.w	a4,a4	# tmp135, tmp131
	sext.w	a5,a5	# tmp136, tmp133
	bgt	a4,a5,.L6	#, tmp135, tmp136,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-300(s0)		# tmp138, unique_count
	mv	a4,a5	# tmp137, tmp138
	lw	a5,-308(s0)		# tmp140, maxu
	sext.w	a4,a4	# tmp141, tmp137
	sext.w	a5,a5	# tmp142, tmp139
	bne	a4,a5,.L7	#, tmp141, tmp142,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-304(s0)		# _26, i
	slli	a5,a5,3	#, _27, _26
	ld	a4,-328(s0)		# tmp143, words
	add	a5,a4,a5	# _27, _28, tmp143
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ld	a5,0(a5)		# _29, *_28
	ld	a1,-288(s0)		#, max
	mv	a0,a5	#, _29
	call	strcmp@plt	#
	mv	a5,a0	# tmp144,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	bge	a5,zero,.L7	#, tmp145,,
.L6:
# eval/problem159//code.c:19:             max = words[i];
	lw	a5,-304(s0)		# _31, i
	slli	a5,a5,3	#, _32, _31
	ld	a4,-328(s0)		# tmp146, words
	add	a5,a4,a5	# _32, _33, tmp146
# eval/problem159//code.c:19:             max = words[i];
	ld	a5,0(a5)		# tmp147, *_33
	sd	a5,-288(s0)	# tmp147, max
# eval/problem159//code.c:20:             maxu = unique_count;
	lw	a5,-300(s0)		# tmp148, unique_count
	sw	a5,-308(s0)	# tmp148, maxu
.L7:
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-304(s0)		# tmp151, i
	addiw	a5,a5,1	#, tmp149, tmp150
	sw	a5,-304(s0)	# tmp149, i
.L2:
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-304(s0)		# tmp153, i
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-332(s0)		# tmp155, count
	sext.w	a4,a4	# tmp156, tmp152
	sext.w	a5,a5	# tmp157, tmp154
	blt	a4,a5,.L8	#, tmp156, tmp157,
# eval/problem159//code.c:23:     return max;
	ld	a5,-288(s0)		# _50, max
	mv	a4,a5	# <retval>, _50
# eval/problem159//code.c:24: }
	la	a5,__stack_chk_guard		# tmp159,
	ld	a3, -24(s0)	# tmp162, D.2100
	ld	a5, 0(a5)	# tmp160, __stack_chk_guard
	xor	a5, a3, a5	# tmp160, tmp162
	li	a3, 0	# tmp162
	beq	a5,zero,.L10	#, tmp160,,
	call	__stack_chk_fail@plt	#
.L10:
	mv	a0,a4	#, <retval>
	ld	ra,328(sp)		#,
	ld	s0,320(sp)		#,
	addi	sp,sp,336	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
