	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
	movq	%rsi, -32(%rbp)	# substring, substring
# code.c:5:     int out = 0;
	movl	$0, -16(%rbp)	#, out
# code.c:6:     int str_len = strlen(str);
	movq	-24(%rbp), %rax	# str, tmp91
	movq	%rax, %rdi	# tmp91,
	call	strlen@PLT	#
# code.c:6:     int str_len = strlen(str);
	movl	%eax, -8(%rbp)	# _1, str_len
# code.c:7:     int sub_len = strlen(substring);
	movq	-32(%rbp), %rax	# substring, tmp92
	movq	%rax, %rdi	# tmp92,
	call	strlen@PLT	#
# code.c:7:     int sub_len = strlen(substring);
	movl	%eax, -4(%rbp)	# _2, sub_len
# code.c:8:     if (str_len == 0) return 0;
	cmpl	$0, -8(%rbp)	#, str_len
	jne	.L2	#,
# code.c:8:     if (str_len == 0) return 0;
	movl	$0, %eax	#, _11
# code.c:8:     if (str_len == 0) return 0;
	jmp	.L3	#
.L2:
# code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	movl	$0, -12(%rbp)	#, i
# code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	jmp	.L4	#
.L6:
# code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	movl	-4(%rbp), %eax	# sub_len, tmp93
	movslq	%eax, %rdx	# tmp93, _3
	movl	-12(%rbp), %eax	# i, tmp94
	movslq	%eax, %rcx	# tmp94, _4
	movq	-24(%rbp), %rax	# str, tmp95
	addq	%rax, %rcx	# tmp95, _5
	movq	-32(%rbp), %rax	# substring, tmp96
	movq	%rax, %rsi	# tmp96,
	movq	%rcx, %rdi	# _5,
	call	strncmp@PLT	#
# code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	testl	%eax, %eax	# _6
	jne	.L5	#,
# code.c:11:             out++;
	addl	$1, -16(%rbp)	#, out
.L5:
# code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	addl	$1, -12(%rbp)	#, i
.L4:
# code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	movl	-8(%rbp), %eax	# str_len, tmp97
	subl	-4(%rbp), %eax	# sub_len, _7
# code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	cmpl	%eax, -12(%rbp)	# _7, i
	jle	.L6	#,
# code.c:13:     return out;
	movl	-16(%rbp), %eax	# out, _11
.L3:
# code.c:14: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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
