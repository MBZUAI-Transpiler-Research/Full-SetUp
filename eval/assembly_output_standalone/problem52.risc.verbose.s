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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# text, text
# eval/problem52//code.c:6:     const char *vowels = "AEIOUaeiou";
	lla	a5,.LC0	# tmp78,
	sd	a5,-24(s0)	# tmp78, vowels
# eval/problem52//code.c:7:     char *out = text;
	ld	a5,-40(s0)		# tmp79, text
	sd	a5,-32(s0)	# tmp79, out
# eval/problem52//code.c:8:     while (*text != '\0') {
	j	.L2		#
.L4:
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	ld	a5,-40(s0)		# tmp80, text
	lbu	a5,0(a5)	# _1, *text_7
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	sext.w	a5,a5	# _2, _1
	mv	a1,a5	#, _2
	ld	a0,-24(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _3,
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	bne	a5,zero,.L3	#, _3,,
# eval/problem52//code.c:10:             *out++ = *text;
	ld	a5,-32(s0)		# out.0_4, out
	addi	a4,a5,1	#, tmp81, out.0_4
	sd	a4,-32(s0)	# tmp81, out
# eval/problem52//code.c:10:             *out++ = *text;
	ld	a4,-40(s0)		# tmp82, text
	lbu	a4,0(a4)	# _5, *text_7
# eval/problem52//code.c:10:             *out++ = *text;
	sb	a4,0(a5)	# _5, *out.0_4
.L3:
# eval/problem52//code.c:12:         text++;
	ld	a5,-40(s0)		# tmp84, text
	addi	a5,a5,1	#, tmp83, tmp84
	sd	a5,-40(s0)	# tmp83, text
.L2:
# eval/problem52//code.c:8:     while (*text != '\0') {
	ld	a5,-40(s0)		# tmp85, text
	lbu	a5,0(a5)	# _6, *text_7
# eval/problem52//code.c:8:     while (*text != '\0') {
	bne	a5,zero,.L4	#, _6,,
# eval/problem52//code.c:14:     *out = '\0';
	ld	a5,-32(s0)		# tmp86, out
	sb	zero,0(a5)	#, *out_9
# eval/problem52//code.c:15: }
	nop	
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
