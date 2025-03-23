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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp88, n
	sd	a1,-64(s0)	# count, count
	sw	a5,-52(s0)	# tmp89, n
# eval/problem97//code.c:5:     int *out = malloc(n * sizeof(int));
	lw	a5,-52(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp90,
	sd	a5,-24(s0)	# tmp90, out
# eval/problem97//code.c:6:     *count = 0;
	ld	a5,-64(s0)		# tmp91, count
	sw	zero,0(a5)	#, *count_24(D)
# eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	li	a5,2		# tmp92,
	sw	a5,-40(s0)	# tmp92, i
# eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	j	.L2		#
.L9:
# eval/problem97//code.c:10:         isp = 1;
	li	a5,1		# tmp93,
	sw	a5,-32(s0)	# tmp93, isp
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	sw	zero,-36(s0)	#, j
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	j	.L3		#
.L7:
# eval/problem97//code.c:12:             k = out[j];
	lw	a5,-36(s0)		# _3, j
	slli	a5,a5,2	#, _4, _3
	ld	a4,-24(s0)		# tmp94, out
	add	a5,a4,a5	# _4, _5, tmp94
# eval/problem97//code.c:12:             k = out[j];
	lw	a5,0(a5)		# tmp95, *_5
	sw	a5,-28(s0)	# tmp95, k
# eval/problem97//code.c:13:             if (k * k > i) break;
	lw	a5,-28(s0)		# tmp98, k
	mulw	a5,a5,a5	# tmp96, tmp97, tmp97
	sext.w	a4,a5	# _6, tmp96
# eval/problem97//code.c:13:             if (k * k > i) break;
	lw	a5,-40(s0)		# tmp100, i
	sext.w	a5,a5	# tmp101, tmp99
	blt	a5,a4,.L11	#, tmp101, tmp102,
# eval/problem97//code.c:14:             if (i % k == 0) {
	lw	a5,-40(s0)		# tmp105, i
	mv	a4,a5	# tmp104, tmp105
	lw	a5,-28(s0)		# tmp108, k
	remw	a5,a4,a5	# tmp107, tmp106, tmp104
	sext.w	a5,a5	# _7, tmp106
# eval/problem97//code.c:14:             if (i % k == 0) {
	bne	a5,zero,.L6	#, _7,,
# eval/problem97//code.c:15:                 isp = 0;
	sw	zero,-32(s0)	#, isp
# eval/problem97//code.c:16:                 break;
	j	.L5		#
.L6:
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	lw	a5,-36(s0)		# tmp111, j
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-36(s0)	# tmp109, j
.L3:
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	ld	a5,-64(s0)		# tmp112, count
	lw	a4,0(a5)		# _8, *count_24(D)
# eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	lw	a5,-36(s0)		# tmp114, j
	sext.w	a5,a5	# tmp115, tmp113
	blt	a5,a4,.L7	#, tmp115, tmp116,
	j	.L5		#
.L11:
# eval/problem97//code.c:13:             if (k * k > i) break;
	nop	
.L5:
# eval/problem97//code.c:19:         if (isp) {
	lw	a5,-32(s0)		# tmp118, isp
	sext.w	a5,a5	# tmp119, tmp117
	beq	a5,zero,.L8	#, tmp119,,
# eval/problem97//code.c:20:             out[*count] = i;
	ld	a5,-64(s0)		# tmp120, count
	lw	a5,0(a5)		# _9, *count_24(D)
# eval/problem97//code.c:20:             out[*count] = i;
	slli	a5,a5,2	#, _11, _10
	ld	a4,-24(s0)		# tmp121, out
	add	a5,a4,a5	# _11, _12, tmp121
# eval/problem97//code.c:20:             out[*count] = i;
	lw	a4,-40(s0)		# tmp122, i
	sw	a4,0(a5)	# tmp122, *_12
# eval/problem97//code.c:21:             (*count)++;
	ld	a5,-64(s0)		# tmp123, count
	lw	a5,0(a5)		# _13, *count_24(D)
# eval/problem97//code.c:21:             (*count)++;
	addiw	a5,a5,1	#, tmp124, _13
	sext.w	a4,a5	# _14, tmp124
	ld	a5,-64(s0)		# tmp125, count
	sw	a4,0(a5)	# _14, *count_24(D)
.L8:
# eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	lw	a5,-40(s0)		# tmp128, i
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-40(s0)	# tmp126, i
.L2:
# eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	lw	a5,-40(s0)		# tmp130, i
	mv	a4,a5	# tmp129, tmp130
	lw	a5,-52(s0)		# tmp132, n
	sext.w	a4,a4	# tmp133, tmp129
	sext.w	a5,a5	# tmp134, tmp131
	blt	a4,a5,.L9	#, tmp133, tmp134,
# eval/problem97//code.c:24:     return out;
	ld	a5,-24(s0)		# _27, out
# eval/problem97//code.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
