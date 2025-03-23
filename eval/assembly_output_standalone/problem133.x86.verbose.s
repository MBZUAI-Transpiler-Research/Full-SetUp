	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# str, str
# eval/problem133//code.c:5:     int count = 0, maxcount = 0;
	movl	$0, -28(%rbp)	#, count
# eval/problem133//code.c:5:     int count = 0, maxcount = 0;
	movl	$0, -24(%rbp)	#, maxcount
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	movl	$0, -20(%rbp)	#, i
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	jmp	.L2	#
.L9:
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	movl	-20(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, _1
	movq	-40(%rbp), %rax	# str, tmp94
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	cmpb	$91, %al	#, _3
	jne	.L3	#,
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	addl	$1, -28(%rbp)	#, count
.L3:
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	movl	-20(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, _4
	movq	-40(%rbp), %rax	# str, tmp96
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	cmpb	$93, %al	#, _6
	jne	.L4	#,
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	subl	$1, -28(%rbp)	#, count
.L4:
# eval/problem133//code.c:9:         if (count < 0) count = 0;
	cmpl	$0, -28(%rbp)	#, count
	jns	.L5	#,
# eval/problem133//code.c:9:         if (count < 0) count = 0;
	movl	$0, -28(%rbp)	#, count
.L5:
# eval/problem133//code.c:10:         if (count > maxcount) maxcount = count;
	movl	-28(%rbp), %eax	# count, tmp97
	cmpl	-24(%rbp), %eax	# maxcount, tmp97
	jle	.L6	#,
# eval/problem133//code.c:10:         if (count > maxcount) maxcount = count;
	movl	-28(%rbp), %eax	# count, tmp98
	movl	%eax, -24(%rbp)	# tmp98, maxcount
.L6:
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	movl	-24(%rbp), %eax	# maxcount, tmp99
	subl	$1, %eax	#, _7
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	cmpl	%eax, -28(%rbp)	# _7, count
	jge	.L7	#,
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	movl	$1, %eax	#, _17
	jmp	.L8	#
.L7:
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	movl	-20(%rbp), %eax	# i, tmp100
	movslq	%eax, %rbx	# tmp100, _8
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	movq	-40(%rbp), %rax	# str, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	cmpq	%rax, %rbx	# _9, _8
	jb	.L9	#,
# eval/problem133//code.c:13:     return 0;
	movl	$0, %eax	#, _17
.L8:
# eval/problem133//code.c:14: }
	movq	-8(%rbp), %rbx	#,
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
