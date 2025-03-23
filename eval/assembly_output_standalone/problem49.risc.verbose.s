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
	sd	a0,-40(s0)	# text, text
# eval/problem49//code.c:6:     int len = strlen(text);
	ld	a0,-40(s0)		#, text
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem49//code.c:6:     int len = strlen(text);
	sw	a5,-20(s0)	# _1, len
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	j	.L2		#
.L5:
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a5,-24(s0)		# _2, i
	ld	a4,-40(s0)		# tmp84, text
	add	a5,a4,a5	# _2, _3, tmp84
	lbu	a4,0(a5)	# _4, *_3
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a5,-20(s0)		# tmp87, len
	addiw	a5,a5,-1	#, tmp85, tmp86
	sext.w	a5,a5	# _5, tmp85
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a3,-24(s0)		# tmp90, i
	subw	a5,a5,a3	# tmp88, _5, tmp89
	sext.w	a5,a5	# _6, tmp88
	mv	a3,a5	# _7, _6
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	ld	a5,-40(s0)		# tmp91, text
	add	a5,a5,a3	# _7, _8, tmp91
	lbu	a5,0(a5)	# _9, *_8
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	beq	a4,a5,.L3	#, tmp92, tmp93,
# eval/problem49//code.c:9:             return false;
	li	a5,0		# _12,
	j	.L4		#
.L3:
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-24(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-24(s0)	# tmp94, i
.L2:
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-20(s0)		# tmp99, len
	srliw	a4,a5,31	#, tmp100, tmp98
	addw	a5,a4,a5	# tmp98, tmp101, tmp100
	sraiw	a5,a5,1	#, tmp102, tmp101
	sext.w	a4,a5	# _10, tmp102
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-24(s0)		# tmp104, i
	sext.w	a5,a5	# tmp105, tmp103
	blt	a5,a4,.L5	#, tmp105, tmp106,
# eval/problem49//code.c:12:     return true;
	li	a5,1		# _12,
.L4:
# eval/problem49//code.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
