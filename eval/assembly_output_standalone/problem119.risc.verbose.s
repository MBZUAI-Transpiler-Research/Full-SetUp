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
	.string	"AEIOUaeiou"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# word, word
# eval/problem119//code.c:6:     const char *vowels = "AEIOUaeiou";
	lla	a5,.LC0	# tmp96,
	sd	a5,-32(s0)	# tmp96, vowels
# eval/problem119//code.c:7:     size_t len = strlen(word);
	ld	a0,-56(s0)		#, word
	call	strlen@plt	#
	sd	a0,-24(s0)	#, len
# eval/problem119//code.c:9:     for (int i = len - 2; i >= 1; i--) {
	ld	a5,-24(s0)		# tmp97, len
	sext.w	a5,a5	# _1, tmp97
	addiw	a5,a5,-2	#, tmp98, _1
	sext.w	a5,a5	# _2, tmp98
# eval/problem119//code.c:9:     for (int i = len - 2; i >= 1; i--) {
	sw	a5,-36(s0)	# _2, i
# eval/problem119//code.c:9:     for (int i = len - 2; i >= 1; i--) {
	j	.L2		#
.L5:
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _3, i
	ld	a4,-56(s0)		# tmp99, word
	add	a5,a4,a5	# _3, _4, tmp99
	lbu	a5,0(a5)	# _5, *_4
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _6, _5
	mv	a1,a5	#, _6
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _7,
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	beq	a5,zero,.L3	#, _7,,
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _8, i
	addi	a5,a5,1	#, _9, _8
	ld	a4,-56(s0)		# tmp100, word
	add	a5,a4,a5	# _9, _10, tmp100
	lbu	a5,0(a5)	# _11, *_10
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _12, _11
	mv	a1,a5	#, _12
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _13,
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	bne	a5,zero,.L3	#, _13,,
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _14, i
	addi	a5,a5,-1	#, _15, _14
	ld	a4,-56(s0)		# tmp101, word
	add	a5,a4,a5	# _15, _16, tmp101
	lbu	a5,0(a5)	# _17, *_16
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _18, _17
	mv	a1,a5	#, _18
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _19,
# eval/problem119//code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	bne	a5,zero,.L3	#, _19,,
# eval/problem119//code.c:11:             out[0] = word[i];
	lw	a5,-36(s0)		# _20, i
	ld	a4,-56(s0)		# tmp102, word
	add	a5,a4,a5	# _20, _21, tmp102
	lbu	a4,0(a5)	# _22, *_21
# eval/problem119//code.c:11:             out[0] = word[i];
	lla	a5,out.0	# tmp103,
	sb	a4,0(a5)	# _22, out[0]
# eval/problem119//code.c:12:             return out;
	lla	a5,out.0	# _24,
	j	.L4		#
.L3:
# eval/problem119//code.c:9:     for (int i = len - 2; i >= 1; i--) {
	lw	a5,-36(s0)		# tmp106, i
	addiw	a5,a5,-1	#, tmp104, tmp105
	sw	a5,-36(s0)	# tmp104, i
.L2:
# eval/problem119//code.c:9:     for (int i = len - 2; i >= 1; i--) {
	lw	a5,-36(s0)		# tmp108, i
	sext.w	a5,a5	# tmp109, tmp107
	bgt	a5,zero,.L5	#, tmp109,,
# eval/problem119//code.c:15:     out[0] = '\0';
	lla	a5,out.0	# tmp110,
	sb	zero,0(a5)	#, out[0]
# eval/problem119//code.c:16:     return out;
	lla	a5,out.0	# _24,
.L4:
# eval/problem119//code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,2,8
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
