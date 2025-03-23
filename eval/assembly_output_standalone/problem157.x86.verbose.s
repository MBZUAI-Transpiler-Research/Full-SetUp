	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"m"
.LC1:
	.string	"cm"
.LC2:
	.string	"d"
.LC3:
	.string	"cd"
.LC4:
	.string	"c"
.LC5:
	.string	"xc"
.LC6:
	.string	"l"
.LC7:
	.string	"xl"
.LC8:
	.string	"x"
.LC9:
	.string	"ix"
.LC10:
	.string	"v"
.LC11:
	.string	"iv"
.LC12:
	.string	"i"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movl	%edi, -196(%rbp)	# number, number
	movq	%rsi, -208(%rbp)	# result, result
# eval/problem157//code.c:4: void func0(int number, char *result) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -8(%rbp)	# tmp106, D.2545
	xorl	%eax, %eax	# tmp106
# eval/problem157//code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	leaq	.LC0(%rip), %rax	#, tmp85
	movq	%rax, -112(%rbp)	# tmp85, rep[0]
	leaq	.LC1(%rip), %rax	#, tmp86
	movq	%rax, -104(%rbp)	# tmp86, rep[1]
	leaq	.LC2(%rip), %rax	#, tmp87
	movq	%rax, -96(%rbp)	# tmp87, rep[2]
	leaq	.LC3(%rip), %rax	#, tmp88
	movq	%rax, -88(%rbp)	# tmp88, rep[3]
	leaq	.LC4(%rip), %rax	#, tmp89
	movq	%rax, -80(%rbp)	# tmp89, rep[4]
	leaq	.LC5(%rip), %rax	#, tmp90
	movq	%rax, -72(%rbp)	# tmp90, rep[5]
	leaq	.LC6(%rip), %rax	#, tmp91
	movq	%rax, -64(%rbp)	# tmp91, rep[6]
	leaq	.LC7(%rip), %rax	#, tmp92
	movq	%rax, -56(%rbp)	# tmp92, rep[7]
	leaq	.LC8(%rip), %rax	#, tmp93
	movq	%rax, -48(%rbp)	# tmp93, rep[8]
	leaq	.LC9(%rip), %rax	#, tmp94
	movq	%rax, -40(%rbp)	# tmp94, rep[9]
	leaq	.LC10(%rip), %rax	#, tmp95
	movq	%rax, -32(%rbp)	# tmp95, rep[10]
	leaq	.LC11(%rip), %rax	#, tmp96
	movq	%rax, -24(%rbp)	# tmp96, rep[11]
	leaq	.LC12(%rip), %rax	#, tmp97
	movq	%rax, -16(%rbp)	# tmp97, rep[12]
# eval/problem157//code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	movl	$1000, -176(%rbp)	#, num[0]
	movl	$900, -172(%rbp)	#, num[1]
	movl	$500, -168(%rbp)	#, num[2]
	movl	$400, -164(%rbp)	#, num[3]
	movl	$100, -160(%rbp)	#, num[4]
	movl	$90, -156(%rbp)	#, num[5]
	movl	$50, -152(%rbp)	#, num[6]
	movl	$40, -148(%rbp)	#, num[7]
	movl	$10, -144(%rbp)	#, num[8]
	movl	$9, -140(%rbp)	#, num[9]
	movl	$5, -136(%rbp)	#, num[10]
	movl	$4, -132(%rbp)	#, num[11]
	movl	$1, -128(%rbp)	#, num[12]
# eval/problem157//code.c:7:     int pos = 0;
	movl	$0, -180(%rbp)	#, pos
# eval/problem157//code.c:8:     result[0] = '\0';
	movq	-208(%rbp), %rax	# result, tmp98
	movb	$0, (%rax)	#, *result_37(D)
# eval/problem157//code.c:10:     while(number > 0) {
	jmp	.L2	#
.L4:
# eval/problem157//code.c:12:             strcat(result, rep[pos]);
	movl	-180(%rbp), %eax	# pos, tmp100
	cltq
	movq	-112(%rbp,%rax,8), %rdx	# rep[pos_6], _1
	movq	-208(%rbp), %rax	# result, tmp101
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp101,
	call	strcat@PLT	#
# eval/problem157//code.c:13:             number -= num[pos];
	movl	-180(%rbp), %eax	# pos, tmp103
	cltq
	movl	-176(%rbp,%rax,4), %eax	# num[pos_6], _2
# eval/problem157//code.c:13:             number -= num[pos];
	subl	%eax, -196(%rbp)	# _2, number
.L3:
# eval/problem157//code.c:11:         while (number >= num[pos]) {
	movl	-180(%rbp), %eax	# pos, tmp105
	cltq
	movl	-176(%rbp,%rax,4), %eax	# num[pos_6], _3
# eval/problem157//code.c:11:         while (number >= num[pos]) {
	cmpl	%eax, -196(%rbp)	# _3, number
	jge	.L4	#,
# eval/problem157//code.c:15:         if (number > 0) pos++;
	cmpl	$0, -196(%rbp)	#, number
	jle	.L2	#,
# eval/problem157//code.c:15:         if (number > 0) pos++;
	addl	$1, -180(%rbp)	#, pos
.L2:
# eval/problem157//code.c:10:     while(number > 0) {
	cmpl	$0, -196(%rbp)	#, number
	jg	.L3	#,
# eval/problem157//code.c:17: }
	nop	
	movq	-8(%rbp), %rax	# D.2545, tmp107
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
