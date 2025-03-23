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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp104, size
	sw	a5,-44(s0)	# tmp105, size
# eval/problem70//code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	lw	a5,-44(s0)		# tmp108, size
	addiw	a5,a5,1	#, tmp106, tmp107
	sext.w	a5,a5	# _1, tmp106
# eval/problem70//code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	li	a1,4		#,
	mv	a0,a5	#, _2
	call	calloc@plt	#
	mv	a5,a0	# tmp109,
	sd	a5,-24(s0)	# tmp109, freq
# eval/problem70//code.c:6:     int max = -1;
	li	a5,-1		# tmp110,
	sw	a5,-32(s0)	# tmp110, max
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L4:
# eval/problem70//code.c:9:         freq[lst[i]]++;
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp111, lst
	add	a5,a4,a5	# _4, _5, tmp111
	lw	a5,0(a5)		# _6, *_5
# eval/problem70//code.c:9:         freq[lst[i]]++;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp112, freq
	add	a5,a4,a5	# _8, _9, tmp112
	lw	a4,0(a5)		# _10, *_9
# eval/problem70//code.c:9:         freq[lst[i]]++;
	addiw	a4,a4,1	#, tmp113, _10
	sext.w	a4,a4	# _11, tmp113
	sw	a4,0(a5)	# _11, *_9
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp114, lst
	add	a5,a4,a5	# _13, _14, tmp114
	lw	a5,0(a5)		# _15, *_14
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	slli	a5,a5,2	#, _17, _16
	ld	a4,-24(s0)		# tmp115, freq
	add	a5,a4,a5	# _17, _18, tmp115
	lw	a3,0(a5)		# _19, *_18
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-40(s0)		# tmp116, lst
	add	a5,a4,a5	# _21, _22, tmp116
	lw	a5,0(a5)		# _23, *_22
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	mv	a4,a3	# tmp117, _19
	blt	a4,a5,.L3	#, tmp117, tmp118,
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _24, i
	slli	a5,a5,2	#, _25, _24
	ld	a4,-40(s0)		# tmp119, lst
	add	a5,a4,a5	# _25, _26, tmp119
	lw	a4,0(a5)		# _27, *_26
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-32(s0)		# tmp121, max
	sext.w	a5,a5	# tmp122, tmp120
	bge	a5,a4,.L3	#, tmp122, tmp123,
# eval/problem70//code.c:11:             max = lst[i];
	lw	a5,-28(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a4,-40(s0)		# tmp124, lst
	add	a5,a4,a5	# _29, _30, tmp124
# eval/problem70//code.c:11:             max = lst[i];
	lw	a5,0(a5)		# tmp125, *_30
	sw	a5,-32(s0)	# tmp125, max
.L3:
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp128, i
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-28(s0)	# tmp126, i
.L2:
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp130, i
	mv	a4,a5	# tmp129, tmp130
	lw	a5,-44(s0)		# tmp132, size
	sext.w	a4,a4	# tmp133, tmp129
	sext.w	a5,a5	# tmp134, tmp131
	blt	a4,a5,.L4	#, tmp133, tmp134,
# eval/problem70//code.c:15:     free(freq);
	ld	a0,-24(s0)		#, freq
	call	free@plt	#
# eval/problem70//code.c:16:     return max;
	lw	a5,-32(s0)		# _42, max
# eval/problem70//code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
