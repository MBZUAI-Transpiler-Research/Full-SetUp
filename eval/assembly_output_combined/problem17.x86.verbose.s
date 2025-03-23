	.file	"problem17.c"
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
	subq	$1072, %rsp	#,
	movq	%rdi, -1064(%rbp)	# str, str
# problem17.c:5: int func0(const char *str) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.2689
	xorl	%eax, %eax	# tmp115
# problem17.c:6:     int count = 0;
	movl	$0, -1048(%rbp)	#, count
# problem17.c:7:     int char_map[256] = {0};
	leaq	-1040(%rbp), %rdx	#, tmp105
	movl	$0, %eax	#, tmp106
	movl	$128, %ecx	#, tmp107
	movq	%rdx, %rdi	# tmp105, tmp105
	rep stosq
# problem17.c:10:     for (index = 0; str[index]; index++) {
	movl	$0, -1044(%rbp)	#, index
# problem17.c:10:     for (index = 0; str[index]; index++) {
	jmp	.L2	#
.L4:
# problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	movl	-1044(%rbp), %eax	# index, tmp108
	movslq	%eax, %rdx	# tmp108, _1
	movq	-1064(%rbp), %rax	# str, tmp109
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	movzbl	%al, %eax	# _4, _5
	movl	%eax, %edi	# _5,
	call	tolower@PLT	#
# problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	movb	%al, -1049(%rbp)	# _6, ch
# problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	movsbl	-1049(%rbp), %eax	# ch, _7
	cltq
	movl	-1040(%rbp,%rax,4), %eax	# char_map[_7], _8
# problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	testl	%eax, %eax	# _8
	jne	.L3	#,
# problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_9, _10
	movzbl	-1049(%rbp), %eax	# ch, ch.0_11
	movzbl	%al, %eax	# ch.0_11, _12
	addq	%rax, %rax	# _13
	addq	%rdx, %rax	# _10, _14
	movzwl	(%rax), %eax	# *_14, _15
	movzwl	%ax, %eax	# _15, _16
	andl	$1024, %eax	#, _17
# problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	testl	%eax, %eax	# _17
	je	.L3	#,
# problem17.c:13:             char_map[ch] = 1;
	movsbl	-1049(%rbp), %eax	# ch, _18
# problem17.c:13:             char_map[ch] = 1;
	cltq
	movl	$1, -1040(%rbp,%rax,4)	#, char_map[_18]
# problem17.c:14:             count++;
	addl	$1, -1048(%rbp)	#, count
.L3:
# problem17.c:10:     for (index = 0; str[index]; index++) {
	addl	$1, -1044(%rbp)	#, index
.L2:
# problem17.c:10:     for (index = 0; str[index]; index++) {
	movl	-1044(%rbp), %eax	# index, tmp112
	movslq	%eax, %rdx	# tmp112, _19
	movq	-1064(%rbp), %rax	# str, tmp113
	addq	%rdx, %rax	# _19, _20
	movzbl	(%rax), %eax	# *_20, _21
# problem17.c:10:     for (index = 0; str[index]; index++) {
	testb	%al, %al	# _21
	jne	.L4	#,
# problem17.c:18:     return count;
	movl	-1048(%rbp), %eax	# count, _32
# problem17.c:19: }
	movq	-8(%rbp), %rdx	# D.2689, tmp116
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"problem17.c"
.LC2:
	.string	"func0(\"\") == 0"
.LC3:
	.string	"abcde"
.LC4:
	.string	"func0(\"abcde\") == 5"
.LC5:
	.string	"abcdecadeCADE"
.LC6:
	.string	"func0(\"abcdecadeCADE\") == 5"
.LC7:
	.string	"aaaaAAAAaaaa"
.LC8:
	.string	"func0(\"aaaaAAAAaaaa\") == 1"
.LC9:
	.string	"Jerry jERRY JeRRRY"
	.align 8
.LC10:
	.string	"func0(\"Jerry jERRY JeRRRY\") == 4"
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
# problem17.c:26:     assert(func0("") == 0);
	leaq	.LC0(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	func0	#
	testl	%eax, %eax	# _1
	je	.L8	#,
# problem17.c:26:     assert(func0("") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$26, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	leaq	.LC2(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__assert_fail@PLT	#
.L8:
# problem17.c:27:     assert(func0("abcde") == 5);
	leaq	.LC3(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	func0	#
	cmpl	$5, %eax	#, _2
	je	.L9	#,
# problem17.c:27:     assert(func0("abcde") == 5);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$27, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC4(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L9:
# problem17.c:28:     assert(func0("abcdecadeCADE") == 5);
	leaq	.LC5(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	func0	#
	cmpl	$5, %eax	#, _3
	je	.L10	#,
# problem17.c:28:     assert(func0("abcdecadeCADE") == 5);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$28, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC6(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L10:
# problem17.c:29:     assert(func0("aaaaAAAAaaaa") == 1);
	leaq	.LC7(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	cmpl	$1, %eax	#, _4
	je	.L11	#,
# problem17.c:29:     assert(func0("aaaaAAAAaaaa") == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$29, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC8(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L11:
# problem17.c:30:     assert(func0("Jerry jERRY JeRRRY") == 4);
	leaq	.LC9(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	cmpl	$4, %eax	#, _5
	je	.L12	#,
# problem17.c:30:     assert(func0("Jerry jERRY JeRRRY") == 4);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$30, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC10(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L12:
# problem17.c:32:     return 0;
	movl	$0, %eax	#, _17
# problem17.c:33: }
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
