	.file	"problem19.c"
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
	movq	%rsi, -32(%rbp)	# substring, substring
# problem19.c:5:     int out = 0;
	movl	$0, -16(%rbp)	#, out
# problem19.c:6:     int str_len = strlen(str);
	movq	-24(%rbp), %rax	# str, tmp91
	movq	%rax, %rdi	# tmp91,
	call	strlen@PLT	#
# problem19.c:6:     int str_len = strlen(str);
	movl	%eax, -8(%rbp)	# _1, str_len
# problem19.c:7:     int sub_len = strlen(substring);
	movq	-32(%rbp), %rax	# substring, tmp92
	movq	%rax, %rdi	# tmp92,
	call	strlen@PLT	#
# problem19.c:7:     int sub_len = strlen(substring);
	movl	%eax, -4(%rbp)	# _2, sub_len
# problem19.c:8:     if (str_len == 0) return 0;
	cmpl	$0, -8(%rbp)	#, str_len
	jne	.L2	#,
# problem19.c:8:     if (str_len == 0) return 0;
	movl	$0, %eax	#, _11
	jmp	.L3	#
.L2:
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	movl	$0, -12(%rbp)	#, i
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	jmp	.L4	#
.L6:
# problem19.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
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
# problem19.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	testl	%eax, %eax	# _6
	jne	.L5	#,
# problem19.c:11:             out++;
	addl	$1, -16(%rbp)	#, out
.L5:
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	addl	$1, -12(%rbp)	#, i
.L4:
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	movl	-8(%rbp), %eax	# str_len, tmp97
	subl	-4(%rbp), %eax	# sub_len, _7
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	cmpl	%eax, -12(%rbp)	# _7, i
	jle	.L6	#,
# problem19.c:13:     return out;
	movl	-16(%rbp), %eax	# out, _11
.L3:
# problem19.c:14: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"x"
.LC1:
	.string	""
.LC2:
	.string	"problem19.c"
.LC3:
	.string	"func0(\"\", \"x\") == 0"
.LC4:
	.string	"xyxyxyx"
.LC5:
	.string	"func0(\"xyxyxyx\", \"x\") == 4"
.LC6:
	.string	"cac"
.LC7:
	.string	"cacacacac"
	.align 8
.LC8:
	.string	"func0(\"cacacacac\", \"cac\") == 4"
.LC9:
	.string	"john"
.LC10:
	.string	"john doe"
	.align 8
.LC11:
	.string	"func0(\"john doe\", \"john\") == 1"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# problem19.c:21:     assert(func0("", "x") == 0);
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, %rsi	# tmp88,
	leaq	.LC1(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	func0	#
	testl	%eax, %eax	# _1
	je	.L8	#,
# problem19.c:21:     assert(func0("", "x") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$21, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	leaq	.LC3(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__assert_fail@PLT	#
.L8:
# problem19.c:22:     assert(func0("xyxyxyx", "x") == 4);
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC4(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	func0	#
	cmpl	$4, %eax	#, _2
	je	.L9	#,
# problem19.c:22:     assert(func0("xyxyxyx", "x") == 4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$22, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC5(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L9:
# problem19.c:23:     assert(func0("cacacacac", "cac") == 4);
	leaq	.LC6(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC7(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	cmpl	$4, %eax	#, _3
	je	.L10	#,
# problem19.c:23:     assert(func0("cacacacac", "cac") == 4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$23, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC8(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L10:
# problem19.c:24:     assert(func0("john doe", "john") == 1);
	leaq	.LC9(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC10(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
	cmpl	$1, %eax	#, _4
	je	.L11	#,
# problem19.c:24:     assert(func0("john doe", "john") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$24, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC11(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L11:
# problem19.c:26:     return 0;
	movl	$0, %eax	#, _14
# problem19.c:27: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
