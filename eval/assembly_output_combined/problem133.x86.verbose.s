	.file	"problem133.c"
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
# problem133.c:5:     int count = 0, maxcount = 0;
	movl	$0, -28(%rbp)	#, count
# problem133.c:5:     int count = 0, maxcount = 0;
	movl	$0, -24(%rbp)	#, maxcount
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	movl	$0, -20(%rbp)	#, i
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	jmp	.L2	#
.L9:
# problem133.c:7:         if (str[i] == '[') count += 1;
	movl	-20(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, _1
	movq	-40(%rbp), %rax	# str, tmp94
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem133.c:7:         if (str[i] == '[') count += 1;
	cmpb	$91, %al	#, _3
	jne	.L3	#,
# problem133.c:7:         if (str[i] == '[') count += 1;
	addl	$1, -28(%rbp)	#, count
.L3:
# problem133.c:8:         if (str[i] == ']') count -= 1;
	movl	-20(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, _4
	movq	-40(%rbp), %rax	# str, tmp96
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# problem133.c:8:         if (str[i] == ']') count -= 1;
	cmpb	$93, %al	#, _6
	jne	.L4	#,
# problem133.c:8:         if (str[i] == ']') count -= 1;
	subl	$1, -28(%rbp)	#, count
.L4:
# problem133.c:9:         if (count < 0) count = 0;
	cmpl	$0, -28(%rbp)	#, count
	jns	.L5	#,
# problem133.c:9:         if (count < 0) count = 0;
	movl	$0, -28(%rbp)	#, count
.L5:
# problem133.c:10:         if (count > maxcount) maxcount = count;
	movl	-28(%rbp), %eax	# count, tmp97
	cmpl	-24(%rbp), %eax	# maxcount, tmp97
	jle	.L6	#,
# problem133.c:10:         if (count > maxcount) maxcount = count;
	movl	-28(%rbp), %eax	# count, tmp98
	movl	%eax, -24(%rbp)	# tmp98, maxcount
.L6:
# problem133.c:11:         if (count <= maxcount - 2) return 1;
	movl	-24(%rbp), %eax	# maxcount, tmp99
	subl	$1, %eax	#, _7
# problem133.c:11:         if (count <= maxcount - 2) return 1;
	cmpl	%eax, -28(%rbp)	# _7, count
	jge	.L7	#,
# problem133.c:11:         if (count <= maxcount - 2) return 1;
	movl	$1, %eax	#, _17
	jmp	.L8	#
.L7:
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	movl	-20(%rbp), %eax	# i, tmp100
	movslq	%eax, %rbx	# tmp100, _8
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	movq	-40(%rbp), %rax	# str, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	cmpq	%rax, %rbx	# _9, _8
	jb	.L9	#,
# problem133.c:13:     return 0;
	movl	$0, %eax	#, _17
.L8:
# problem133.c:14: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"[[]]"
.LC1:
	.string	"problem133.c"
.LC2:
	.string	"func0(\"[[]]\") == 1"
.LC3:
	.string	"[]]]]]]][[[[[]"
.LC4:
	.string	"func0(\"[]]]]]]][[[[[]\") == 0"
.LC5:
	.string	"[][]"
.LC6:
	.string	"func0(\"[][]\") == 0"
.LC7:
	.string	"[]"
.LC8:
	.string	"func0(\"[]\") == 0"
.LC9:
	.string	"[[[[]]]]"
.LC10:
	.string	"func0(\"[[[[]]]]\") == 1"
.LC11:
	.string	"[]]]]]]]]]]"
.LC12:
	.string	"func0(\"[]]]]]]]]]]\") == 0"
.LC13:
	.string	"[][][[]]"
.LC14:
	.string	"func0(\"[][][[]]\") == 1"
.LC15:
	.string	"[[]"
.LC16:
	.string	"func0(\"[[]\") == 0"
.LC17:
	.string	"[]]"
.LC18:
	.string	"func0(\"[]]\") == 0"
.LC19:
	.string	"[[]][["
.LC20:
	.string	"func0(\"[[]][[\") == 1"
.LC21:
	.string	"[[][]]"
.LC22:
	.string	"func0(\"[[][]]\") == 1"
.LC23:
	.string	""
.LC24:
	.string	"func0(\"\") == 0"
.LC25:
	.string	"[[[[[[[["
.LC26:
	.string	"func0(\"[[[[[[[[\") == 0"
.LC27:
	.string	"]]]]]]]]"
.LC28:
	.string	"func0(\"]]]]]]]]\") == 0"
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
# problem133.c:22:     assert(func0("[[]]") == 1);
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L11	#,
# problem133.c:22:     assert(func0("[[]]") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$22, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC2(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L11:
# problem133.c:23:     assert(func0("[]]]]]]][[[[[]") == 0);
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	func0	#
	testl	%eax, %eax	# _2
	je	.L12	#,
# problem133.c:23:     assert(func0("[]]]]]]][[[[[]") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$23, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC4(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L12:
# problem133.c:24:     assert(func0("[][]") == 0);
	leaq	.LC5(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	func0	#
	testl	%eax, %eax	# _3
	je	.L13	#,
# problem133.c:24:     assert(func0("[][]") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$24, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC6(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L13:
# problem133.c:25:     assert(func0("[]") == 0);
	leaq	.LC7(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	testl	%eax, %eax	# _4
	je	.L14	#,
# problem133.c:25:     assert(func0("[]") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$25, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC8(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L14:
# problem133.c:26:     assert(func0("[[[[]]]]") == 1);
	leaq	.LC9(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
	cmpl	$1, %eax	#, _5
	je	.L15	#,
# problem133.c:26:     assert(func0("[[[[]]]]") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$26, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC10(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L15:
# problem133.c:27:     assert(func0("[]]]]]]]]]]") == 0);
	leaq	.LC11(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	func0	#
	testl	%eax, %eax	# _6
	je	.L16	#,
# problem133.c:27:     assert(func0("[]]]]]]]]]]") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$27, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC12(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L16:
# problem133.c:28:     assert(func0("[][][[]]") == 1);
	leaq	.LC13(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	func0	#
	cmpl	$1, %eax	#, _7
	je	.L17	#,
# problem133.c:28:     assert(func0("[][][[]]") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$28, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC14(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L17:
# problem133.c:29:     assert(func0("[[]") == 0);
	leaq	.LC15(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	func0	#
	testl	%eax, %eax	# _8
	je	.L18	#,
# problem133.c:29:     assert(func0("[[]") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$29, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC16(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L18:
# problem133.c:30:     assert(func0("[]]") == 0);
	leaq	.LC17(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	func0	#
	testl	%eax, %eax	# _9
	je	.L19	#,
# problem133.c:30:     assert(func0("[]]") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$30, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC18(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L19:
# problem133.c:31:     assert(func0("[[]][[") == 1);
	leaq	.LC19(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	func0	#
	cmpl	$1, %eax	#, _10
	je	.L20	#,
# problem133.c:31:     assert(func0("[[]][[") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp135
	movq	%rax, %rcx	# tmp135,
	movl	$31, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	.LC20(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	__assert_fail@PLT	#
.L20:
# problem133.c:32:     assert(func0("[[][]]") == 1);
	leaq	.LC21(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	func0	#
	cmpl	$1, %eax	#, _11
	je	.L21	#,
# problem133.c:32:     assert(func0("[[][]]") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp139
	movq	%rax, %rcx	# tmp139,
	movl	$32, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	leaq	.LC22(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	__assert_fail@PLT	#
.L21:
# problem133.c:33:     assert(func0("") == 0);
	leaq	.LC23(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	call	func0	#
	testl	%eax, %eax	# _12
	je	.L22	#,
# problem133.c:33:     assert(func0("") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$33, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC24(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L22:
# problem133.c:34:     assert(func0("[[[[[[[[") == 0);
	leaq	.LC25(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	func0	#
	testl	%eax, %eax	# _13
	je	.L23	#,
# problem133.c:34:     assert(func0("[[[[[[[[") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$34, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC26(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L23:
# problem133.c:35:     assert(func0("]]]]]]]]") == 0);
	leaq	.LC27(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	func0	#
	testl	%eax, %eax	# _14
	je	.L24	#,
# problem133.c:35:     assert(func0("]]]]]]]]") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp151
	movq	%rax, %rcx	# tmp151,
	movl	$35, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	leaq	.LC28(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	__assert_fail@PLT	#
.L24:
# problem133.c:37:     return 0;
	movl	$0, %eax	#, _44
# problem133.c:38: }
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
