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
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp115, size
	sw	a5,-76(s0)	# tmp116, size
# eval/problem114//code.c:6:     char **out = malloc(size * sizeof(char *));
	lw	a5,-76(s0)		# _1, size
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp117,
	sd	a5,-40(s0)	# tmp117, out
# eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	sw	zero,-52(s0)	#, i
# eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# eval/problem114//code.c:8:         int sum = 0;
	sw	zero,-48(s0)	#, sum
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	sw	zero,-44(s0)	#, j
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	j	.L3		#
.L5:
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _3, i
	slli	a5,a5,3	#, _4, _3
	ld	a4,-72(s0)		# tmp118, lst
	add	a5,a4,a5	# _4, _5, tmp118
	ld	a4,0(a5)		# _6, *_5
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _7, j
	add	a5,a4,a5	# _7, _8, _6
	lbu	a5,0(a5)	# _9, *_8
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp119, _9
	li	a5,47		# tmp120,
	bleu	a4,a5,.L4	#, tmp119, tmp120,
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _10, i
	slli	a5,a5,3	#, _11, _10
	ld	a4,-72(s0)		# tmp121, lst
	add	a5,a4,a5	# _11, _12, tmp121
	ld	a4,0(a5)		# _13, *_12
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _14, j
	add	a5,a4,a5	# _14, _15, _13
	lbu	a5,0(a5)	# _16, *_15
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp122, _16
	li	a5,57		# tmp123,
	bgtu	a4,a5,.L4	#, tmp122, tmp123,
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _17, i
	slli	a5,a5,3	#, _18, _17
	ld	a4,-72(s0)		# tmp124, lst
	add	a5,a4,a5	# _18, _19, tmp124
	ld	a4,0(a5)		# _20, *_19
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _21, j
	add	a5,a4,a5	# _21, _22, _20
	lbu	a5,0(a5)	# _23, *_22
	sext.w	a5,a5	# _24, _23
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	addiw	a5,a5,-48	#, tmp125, _24
	sext.w	a5,a5	# _25, tmp125
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp127, _25
	sraiw	a5,a4,31	#, tmp128, tmp127
	srliw	a5,a5,31	#, tmp129, tmp128
	addw	a4,a4,a5	# tmp129, tmp130, tmp127
	andi	a4,a4,1	#, tmp131, tmp130
	subw	a5,a4,a5	# tmp132, tmp131, tmp129
	sext.w	a5,a5	# _26, tmp132
# eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp133, _26
	li	a5,1		# tmp134,
	bne	a4,a5,.L4	#, tmp133, tmp134,
# eval/problem114//code.c:11:                 sum += 1;
	lw	a5,-48(s0)		# tmp137, sum
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-48(s0)	# tmp135, sum
.L4:
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-44(s0)		# tmp140, j
	addiw	a5,a5,1	#, tmp138, tmp139
	sw	a5,-44(s0)	# tmp138, j
.L3:
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-52(s0)		# _27, i
	slli	a5,a5,3	#, _28, _27
	ld	a4,-72(s0)		# tmp141, lst
	add	a5,a4,a5	# _28, _29, tmp141
	ld	a4,0(a5)		# _30, *_29
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-44(s0)		# _31, j
	add	a5,a4,a5	# _31, _32, _30
	lbu	a5,0(a5)	# _33, *_32
# eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	bne	a5,zero,.L5	#, _33,,
# eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	lw	a5,-52(s0)		# _34, i
	slli	a5,a5,3	#, _35, _34
	ld	a4,-40(s0)		# tmp142, out
	add	s1,a4,a5	# _35, _36, tmp142
# eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	li	a0,100		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp143,
# eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	sd	a5,0(s1)	# _37, *_36
# eval/problem114//code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	lw	a5,-52(s0)		# _38, i
	slli	a5,a5,3	#, _39, _38
	ld	a4,-40(s0)		# tmp144, out
	add	a5,a4,a5	# _39, _40, tmp144
# eval/problem114//code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	ld	a5,0(a5)		# _41, *_40
	lw	a4,-48(s0)		# tmp145, sum
	lw	a3,-48(s0)		# tmp146, sum
	lw	a2,-48(s0)		# tmp147, sum
	lla	a1,.LC0	#,
	mv	a0,a5	#, _41
	call	sprintf@plt	#
# eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-52(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-52(s0)	# tmp148, i
.L2:
# eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-52(s0)		# tmp152, i
	mv	a4,a5	# tmp151, tmp152
	lw	a5,-76(s0)		# tmp154, size
	sext.w	a4,a4	# tmp155, tmp151
	sext.w	a5,a5	# tmp156, tmp153
	blt	a4,a5,.L6	#, tmp155, tmp156,
# eval/problem114//code.c:16:     return out;
	ld	a5,-40(s0)		# _52, out
# eval/problem114//code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	ld	s1,56(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
