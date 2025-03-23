	.file	"problem79.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"2357BD"
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
	movq	%rdi, -40(%rbp)	# num, num
# problem79.c:5:     const char* key = "2357BD";
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, -24(%rbp)	# tmp91, key
# problem79.c:6:     int out = 0;
	movl	$0, -32(%rbp)	#, out
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	movl	$0, -28(%rbp)	#, i
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	jmp	.L2	#
.L4:
# problem79.c:8:         if (strchr(key, num[i])) out += 1;
	movl	-28(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, _1
	movq	-40(%rbp), %rax	# num, tmp93
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem79.c:8:         if (strchr(key, num[i])) out += 1;
	movsbl	%al, %edx	# _3, _4
	movq	-24(%rbp), %rax	# key, tmp94
	movl	%edx, %esi	# _4,
	movq	%rax, %rdi	# tmp94,
	call	strchr@PLT	#
# problem79.c:8:         if (strchr(key, num[i])) out += 1;
	testq	%rax, %rax	# _5
	je	.L3	#,
# problem79.c:8:         if (strchr(key, num[i])) out += 1;
	addl	$1, -32(%rbp)	#, out
.L3:
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	movl	-28(%rbp), %eax	# i, tmp95
	movslq	%eax, %rbx	# tmp95, _6
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	movq	-40(%rbp), %rax	# num, tmp96
	movq	%rax, %rdi	# tmp96,
	call	strlen@PLT	#
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	cmpq	%rax, %rbx	# _7, _6
	jb	.L4	#,
# problem79.c:10:     return out;
	movl	-32(%rbp), %eax	# out, _16
# problem79.c:11: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"AB"
.LC2:
	.string	"problem79.c"
.LC3:
	.string	"func0(\"AB\") == 1"
.LC4:
	.string	"1077E"
.LC5:
	.string	"func0(\"1077E\") == 2"
.LC6:
	.string	"ABED1A33"
.LC7:
	.string	"func0(\"ABED1A33\") == 4"
.LC8:
	.string	"2020"
.LC9:
	.string	"func0(\"2020\") == 2"
.LC10:
	.string	"123456789ABCDEF0"
	.align 8
.LC11:
	.string	"func0(\"123456789ABCDEF0\") == 6"
	.align 8
.LC12:
	.string	"112233445566778899AABBCCDDEEFF00"
	.align 8
.LC13:
	.string	"func0(\"112233445566778899AABBCCDDEEFF00\") == 12"
.LC14:
	.string	""
.LC15:
	.string	"func0(\"\") == 0"
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
# problem79.c:18:     assert(func0("AB") == 1);
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L7	#,
# problem79.c:18:     assert(func0("AB") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$18, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L7:
# problem79.c:19:     assert(func0("1077E") == 2);
	leaq	.LC4(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	func0	#
	cmpl	$2, %eax	#, _2
	je	.L8	#,
# problem79.c:19:     assert(func0("1077E") == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$19, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC5(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L8:
# problem79.c:20:     assert(func0("ABED1A33") == 4);
	leaq	.LC6(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	cmpl	$4, %eax	#, _3
	je	.L9	#,
# problem79.c:20:     assert(func0("ABED1A33") == 4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$20, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC7(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L9:
# problem79.c:21:     assert(func0("2020") == 2);
	leaq	.LC8(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	func0	#
	cmpl	$2, %eax	#, _4
	je	.L10	#,
# problem79.c:21:     assert(func0("2020") == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$21, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC9(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L10:
# problem79.c:22:     assert(func0("123456789ABCDEF0") == 6);
	leaq	.LC10(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	cmpl	$6, %eax	#, _5
	je	.L11	#,
# problem79.c:22:     assert(func0("123456789ABCDEF0") == 6);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$22, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC11(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L11:
# problem79.c:23:     assert(func0("112233445566778899AABBCCDDEEFF00") == 12);
	leaq	.LC12(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	func0	#
	cmpl	$12, %eax	#, _6
	je	.L12	#,
# problem79.c:23:     assert(func0("112233445566778899AABBCCDDEEFF00") == 12);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$23, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC13(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L12:
# problem79.c:24:     assert(func0("") == 0);
	leaq	.LC14(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	func0	#
	testl	%eax, %eax	# _7
	je	.L13	#,
# problem79.c:24:     assert(func0("") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$24, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC15(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L13:
# problem79.c:26:     return 0;
	movl	$0, %eax	#, _23
# problem79.c:27: }
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
